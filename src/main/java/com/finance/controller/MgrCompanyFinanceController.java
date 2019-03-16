package com.finance.controller;

import static org.junit.Assert.assertNotNull;

import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanMap;
import org.apache.commons.lang3.StringUtils;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.aspectj.weaver.JoinPointSignature;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.finance.entity.CompanyFinance;
import com.finance.entity.SupplierDetail;
import com.finance.model.GridModel;
import com.finance.model.Json;
import com.finance.service.CompanyFinanceService;
import com.finance.service.SupplierDetailService;
import com.finance.utils.Constants;
import com.finance.utils.EntityUtil;
import com.finance.utils.ExportExcel;
import com.finance.utils.PageUtil;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;

@Controller
@RequestMapping(value = "/manage/companyFinance")
@SuppressWarnings({"rawtypes","unused"})
public class MgrCompanyFinanceController extends BaseController {
	
	private final Logger LOGGER = LoggerFactory
			.getLogger(MgrCompanyFinanceController.class);

	@Autowired
	private CompanyFinanceService companyFinanceService;
	
	@Autowired
	private SupplierDetailService supplierDetailService;

	@RequestMapping("/main")
	public String main() {
		return "manage/companyFinance/companyFinanceMain";
	}

	@ResponseBody
	@RequestMapping(value = "/searchByPage")
	public GridModel searchByPage(CompanyFinance companyFinance) {
		GridModel gridModel = new GridModel();
		Page page = PageHelper.startPage(companyFinance.getPage(), companyFinance.getRows(), true);
		gridModel.setRows(companyFinanceService.searchByPage(companyFinance));
		gridModel.setTotal(page.getTotal());
		return gridModel;
	}

	@RequestMapping("/editDlg")
	public String editDlg() {
		return "manage/companyFinance/companyFinanceEditDlg";
	}

	@ResponseBody
	@RequestMapping(value = "/saveOrUpdate")
	public String saveOrUpdate(CompanyFinance companyFinance) {
		Json json = null;
		// 校验公司名字是否存在，
		// 如果是编辑的话，相同id，名字不能重复
		int result = companyFinanceService.getCountByCompanyName(companyFinance);
		if (result > 0) {
			json = new Json();
			json.setStatus(false);
			json.setMessage("添加公司名字重复");
			return JSONArray.toJSONString(json);
		}
		
		EntityUtil.setCommonInfo(companyFinance);
		json = getMessage(companyFinanceService
				.persistence(companyFinance));
		return JSONArray.toJSONString(json);
	}

	@ResponseBody
	@RequestMapping(value = "/delete")
	public String delete(CompanyFinance companyFinance) {
		Json json = new Json();
		EntityUtil.setCommonInfo(companyFinance);
		int flag = companyFinanceService.delete(companyFinance);
		if (flag > 0) {
			json.setStatus(true);
			json.setMessage(Constants.POST_DATA_SUCCESS);
		} else {
			json.setMessage(Constants.POST_DATA_FAIL + Constants.IS_EXT_SUBMENU);
		}
		return JSONArray.toJSONString(json);
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping("/download")
	public void download(CompanyFinance companyFinance,HttpServletResponse response) throws Exception{
		
		String sheetName = "采购明细表";
		List<String> titleName = new ArrayList<>();
		titleName.add("公司名字");
		titleName.add("货款金额");
		titleName.add("年初欠款");
		titleName.add("已付款");
		titleName.add("总欠款额");
		
		List<String> keyList = new ArrayList<>();
		
		keyList.add("companyName");
		keyList.add("loanAmount");
		keyList.add("arrears");
		keyList.add("paid");
		keyList.add("totalArrears");
		
		@SuppressWarnings("unchecked")
		List<CompanyFinance> list = companyFinanceService.searchByPage(companyFinance);
		try {
			response.setContentType("APPLICATION/OCTET-STREAM");
			response.setHeader("Content-Disposition",
					"attachment; filename=" + URLEncoder.encode("result.xls", "UTF-8"));
			OutputStream os = response.getOutputStream();
			// 第一步，创建一个webbook，对应一个Excel文件
			HSSFWorkbook wb = new HSSFWorkbook();
			// 第二步，在webbook中添加一个sheet,对应Excel文件中的sheet
			HSSFSheet sheet = wb.createSheet(sheetName);
			// 第三步，在sheet中添加表头第0行,注意老版本poi对Excel的行数列数有限制short
			HSSFRow row = sheet.createRow(0);
			// 第四步，创建单元格，并设置值表头 设置表头居中
			HSSFCellStyle style = wb.createCellStyle();
			style.setAlignment(HSSFCellStyle.ALIGN_CENTER); // 创建一个居中格式

			// 表头不为null，不为空
			if (titleName != null && titleName.size() > 0 && keyList != null && keyList.size() == titleName.size()) {
				for (int titleIndex = 0; titleIndex < titleName.size(); titleIndex++) {
					HSSFCell cell = row.createCell(titleIndex);
					cell.setCellValue(titleName.get(titleIndex).toString());
					cell.setCellStyle(style);
				}

				// 第五步，写入实体数据 实际应用中这些数据从数据库得到，
				for (int valueIndex = 0; valueIndex < list.size(); valueIndex++) {
					row = sheet.createRow(valueIndex + 1);
					Object obj = null;
					Map<String, Object> map = null;
					try {
						obj = list.get(valueIndex);
						map = EntityUtil.object2Map(obj);
					} catch (Exception e) {
						e.printStackTrace();
					}
					// 第四步，创建单元格，并设置值
					for (int cellIndex = 0; cellIndex < keyList.size(); cellIndex++) {
						Object temp = map.get(keyList.get(cellIndex));
						String result = temp == null ? "" : temp.toString();
						row.createCell(cellIndex).setCellValue(result);
					}

				}
				// 将每个公司的明细都写入到excel中
				SupplierDetail supplierDetail = null;
				List<SupplierDetail> supplierDetailsList = null;
				titleName = new ArrayList<>();
				titleName.add("日期");
				titleName.add("公司名称");
				titleName.add("采购名称");
				titleName.add("单位");
				titleName.add("数量");
				titleName.add("单价");
				titleName.add("金额");
				titleName.add("已付款");
				titleName.add("付款方式");
				keyList = new ArrayList<>();
				keyList.add("timedate");
				keyList.add("companyName");
				keyList.add("purchaseName");
				keyList.add("unit");
				keyList.add("amount");
				keyList.add("price");
				keyList.add("total");
				keyList.add("paid");
				keyList.add("payment");
				for (CompanyFinance cf: list) {
					supplierDetail = new SupplierDetail();
					supplierDetail.setCompanyId(cf.getId());
					supplierDetailsList = supplierDetailService.searchByPage(supplierDetail);
					sheetName = cf.getCompanyName();
					// 第二步，在webbook中添加一个sheet,对应Excel文件中的sheet
					HSSFSheet sheetCompany = wb.createSheet(sheetName);
					// 第三步，在sheet中添加表头第0行,注意老版本poi对Excel的行数列数有限制short
					HSSFRow rowCompany = sheetCompany.createRow(0);
					// 第四步，创建单元格，并设置值表头 设置表头居中
					HSSFCellStyle styleCompany = wb.createCellStyle();
					styleCompany.setAlignment(HSSFCellStyle.ALIGN_CENTER); // 创建一个居中格式
					for (int titleIndex = 0; titleIndex < titleName.size(); titleIndex++) {
						HSSFCell cell = rowCompany.createCell(titleIndex);
						cell.setCellValue(titleName.get(titleIndex).toString());
						cell.setCellStyle(styleCompany);
					}

					// 第五步，写入实体数据 实际应用中这些数据从数据库得到，
					for (int valueIndex = 0; valueIndex < supplierDetailsList.size(); valueIndex++) {
						rowCompany = sheetCompany.createRow(valueIndex + 1);
						Object obj = null;
						Map<String, Object> map = null;
						try {
							obj = supplierDetailsList.get(valueIndex);
							map = EntityUtil.object2Map(obj);
						} catch (Exception e) {
							e.printStackTrace();
						}
						// 第四步，创建单元格，并设置值
						for (int cellIndex = 0; cellIndex < keyList.size(); cellIndex++) {
							Object temp = map.get(keyList.get(cellIndex));
							String result = temp == null ? "" : temp.toString();
							rowCompany.createCell(cellIndex).setCellValue(result);
						}

					}
				}
				
			} else {
				System.out.println("error");
			}
			
			// 第六步，将文件存到指定位置
			try {
				wb.write(os);
				os.flush();
				os.close();
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				if (wb != null) {
					wb.close();
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}


}
