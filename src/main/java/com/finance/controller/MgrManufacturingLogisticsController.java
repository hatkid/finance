package com.finance.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.finance.utils.ReadExcel;
import com.finance.entity.ManufacturingLogistics;
import com.finance.entity.StorageLogistics;
import com.finance.model.GridModel;
import com.finance.model.Json;
import com.finance.service.ManufacturingLogisticsService;
import com.finance.utils.Constants;
import com.finance.utils.ExportExcel;
import com.finance.utils.HttpUtil;
import com.finance.utils.PageUtil;

@Controller
@RequestMapping(value = "/manage/manufacturingLogistics")

public class MgrManufacturingLogisticsController extends BaseController {
	private final Logger LOGGER = LoggerFactory
			.getLogger(MgrManufacturingLogisticsController.class);

	@Autowired
	private ManufacturingLogisticsService manufacturingLogisticsService;

	@RequestMapping("/main")
	public String main() {
		return "manage/manufacturingLogistics/manufacturingLogisticsMain";
	}

	@ResponseBody
	@RequestMapping(value = "/searchByPage")
	public GridModel searchByPage(HttpServletRequest request) {
		String companyName = request.getParameter("companyName");
		String registrationNumber = request.getParameter("registrationNumber");
		ManufacturingLogistics l = new ManufacturingLogistics();
		l.setCompanyName(companyName);
		l.setRegistrationNumber(registrationNumber);
		int pageNo = Integer.parseInt(request.getParameter("page"));
		int length = Integer.parseInt(request.getParameter("rows"));
		PageUtil pageUtil = new PageUtil((pageNo - 1) * length, length);
		GridModel gridModel = new GridModel();
		gridModel.setRows(manufacturingLogisticsService.searchByPage(pageUtil, l));
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("companyName", companyName);
		map.put("registrationNumber", registrationNumber);
		gridModel.setTotal(manufacturingLogisticsService.getCount(map));
		return gridModel;
	}

	@RequestMapping("/editDlg")
	public String editDlg() {
		return "manage/manufacturingLogistics/manufacturingLogisticsEditDlg";
	}

	@ResponseBody
	@RequestMapping(value = "/saveOrUpdate")
	public String saveOrUpdate(ManufacturingLogistics manufacturingLogistics) {
		if(StringUtils.isNotEmpty(manufacturingLogistics.getAddress())){
			String url = Constants.BaidDuMapConstants.getURL(manufacturingLogistics.getAddress());
			JSONObject obj = HttpUtil.httpGetRequest(url);
			if (obj.getJSONObject("result") != null) {
			manufacturingLogistics.setLng(obj.getJSONObject("result").getJSONObject("location").getString("lng"));
			manufacturingLogistics.setLat(obj.getJSONObject("result").getJSONObject("location").getString("lat"));}
		}
		Json json = getMessage(manufacturingLogisticsService
				.persistence(manufacturingLogistics));
		return JSONArray.toJSONString(json);
	}

	@ResponseBody
	@RequestMapping(value = "/delete")
	public String delete(HttpServletRequest request) {
		int id = 0;
		if (!StringUtils.isEmpty(request.getParameter("id"))) {
			id = Integer.parseInt(request.getParameter("id"));
		}
		Json json = new Json();
		int flag = manufacturingLogisticsService.delete(id);
		if (flag > 0) {
			json.setStatus(true);
			json.setMessage(Constants.POST_DATA_SUCCESS);
		} else {
			json.setMessage(Constants.POST_DATA_FAIL + Constants.IS_EXT_SUBMENU);
		}
		return JSONArray.toJSONString(json);
	}

	/**
	 * 上传解析excle表格
	 * @param request
	 * @param response
	 * @param map
	 * @return
	 */
	@RequestMapping("/upload")
	public String upload(HttpServletRequest request,
			HttpServletResponse response, ModelMap map) {
		LOGGER.info("upload");
		try {
			MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;
			CommonsMultipartFile file = (CommonsMultipartFile) multipartRequest
					.getFile("filedata");
			// 读取excel表格，将每行数据处理一个一个的字符串，分隔符为##
			List<String> listString = ReadExcel
					.readExcel(file.getInputStream());
			// 如果listString为null，就代表解析excel的时出错;如果size为0，可能excel为空
			if (listString == null || listString.size() == 0) {
				map.put("flag", "fail");
				return "manage/manufacturingLogistics/manufacturingLogisticsMain";
			}
			// 讲listString字符串处理成map对象，一遍在mybatis中遍历使用
			List<Map<String, String>> listMap = new ArrayList<>();
			int i=0;
			for (String itemListString : listString) {
				if(i>0){
				Map<String, String> itemMap = new HashMap<>();
				String[] items = itemListString.split("##", -1);
				if (items.length != new ManufacturingLogistics().getClass().getDeclaredFields().length) {
					map.put("flag", "fail");
					map.put("msg", "表格中cell个数不够。");
					return "manage/manufacturingLogistics/manufacturingLogisticsMain";
				}
				for (int itemsIndex = 0; itemsIndex < items.length - 1; itemsIndex++) {
					if(items[itemsIndex].equals("true")||items[itemsIndex].equals("是")){
						itemMap.put("item" + itemsIndex, "1");
					}else if(items[itemsIndex].equals("false")||items[itemsIndex].equals("否")){
						itemMap.put("item" + itemsIndex, "0");
					}else if(items[itemsIndex].equals("")){
						itemMap.put("item" + itemsIndex, null);
					}else{
						itemMap.put("item" + itemsIndex, items[itemsIndex]);
					}
				}
				listMap.add(itemMap);}
				i++;
			}
			// 讲数据批量入库，返回的结果即为入库的条数
			int result = manufacturingLogisticsService.batchInsert(listMap);
			// 如果入库条数小于1，则入库出现问题
			if (result >= 1) {
				map.put("flag", "success");
			} else {
				map.put("flag", "fail");
			}
		} catch (Exception e) {
			e.printStackTrace();
			map.put("flag", "fail");
		}
		return "manage/manufacturingLogistics/manufacturingLogisticsMain";
	}
	
	
	@RequestMapping("/download")
	public void download(HttpServletRequest request, HttpServletResponse response) throws Exception{
		String companyName = request.getParameter("companyNameDownload");
		String registrationNumber = request.getParameter("registrationNumberDownload");
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("companyName", companyName);
		map.put("registrationNumber", registrationNumber);
		
		String sheetName = "mysheet";
		List<String> titleName = new ArrayList<>();
		
		titleName.add("企业名称");titleName.add("通讯地址");titleName.add("联系电话");titleName.add("邮箱");titleName.add("工商部门注册号码");titleName.add("从事物流作业的员工总数（人）");titleName.add("从事物流作业的物流师（人）");titleName.add("自营物流总费用（万元）（不含企业采购费和物流外包费）");titleName.add("类型（普仓或其他特殊仓）");titleName.add("面积（M2）");titleName.add("主要设备（台或套）");titleName.add("物流业务是否外包");titleName.add("外包的业务类型");titleName.add("外包企业名称");titleName.add("外包费用（万元）");titleName.add("企业类型");titleName.add("合作时间");titleName.add("是否在外租仓");titleName.add("外租仓储面积");titleName.add("仓储类型");titleName.add("年租金（万元）");titleName.add("年份");
		
		List<String> keyList = new ArrayList<>();
		
		keyList.add("companyName");keyList.add("address");keyList.add("tel");keyList.add("email");keyList.add("registrationNumber");keyList.add("logisticsEmpSum");keyList.add("logisticianEmpNum");keyList.add("selfRunLogisticsTotalCost");keyList.add("storageType");keyList.add("storageArea");keyList.add("deviceNum");keyList.add("isLogisticsOutsourcing");keyList.add("outsourcingType");keyList.add("outsourcingCompanyName");keyList.add("outsourcingCost");keyList.add("companyType");keyList.add("collaborationTime");keyList.add("isRentStorage");keyList.add("rentStorageArea");keyList.add("logisticsType");keyList.add("rentStorageCost");keyList.add("year");
		
		List<Map<String, Object>> list = manufacturingLogisticsService.searchDownload(map);
		ExportExcel.createExcel(sheetName, list, titleName, keyList, response);
	}
}
