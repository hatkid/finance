package com.finance.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.finance.entity.SalesReport;
import com.finance.entity.SupplierDetail;
import com.finance.model.GridModel;
import com.finance.model.Json;
import com.finance.service.SupplierDetailService;
import com.finance.utils.Constants;
import com.finance.utils.EntityUtil;
import com.finance.utils.ExportExcel;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;

@Controller
@RequestMapping(value = "/manage/supplierDetail")
@SuppressWarnings({"rawtypes","unused"})
public class MgrSupplierDetailController extends BaseController {
	
	private final Logger LOGGER = LoggerFactory
			.getLogger(MgrSupplierDetailController.class);

	@Autowired
	private SupplierDetailService supplierDetailService;

	@RequestMapping("/main")
	public String main() {
		return "manage/supplierDetail/supplierDetailMain";
	}

	@ResponseBody
	@RequestMapping(value = "/searchByPage")
	public GridModel searchByPage(SupplierDetail supplierDetail) {
		GridModel gridModel = new GridModel();
		Page page = PageHelper.startPage(supplierDetail.getPage(), supplierDetail.getRows(), true);
		gridModel.setRows(supplierDetailService.searchByPage(supplierDetail));
		gridModel.setTotal(page.getTotal());
		return gridModel;
	}

	@RequestMapping("/editDlg")
	public String editDlg() {
		return "manage/supplierDetail/supplierDetailEditDlg";
	}

	@ResponseBody
	@RequestMapping(value = "/saveOrUpdate")
	public String saveOrUpdate(SupplierDetail supplierDetail) {
		Json json = null;
		EntityUtil.setCommonInfo(supplierDetail);
		json = getMessage(supplierDetailService
				.persistence(supplierDetail));
		return JSONArray.toJSONString(json);
	}

	@ResponseBody
	@RequestMapping(value = "/delete")
	public String delete(SupplierDetail supplierDetail) {
		Json json = new Json();
		EntityUtil.setCommonInfo(supplierDetail);
		int flag = supplierDetailService.delete(supplierDetail);
		if (flag > 0) {
			json.setStatus(true);
			json.setMessage(Constants.POST_DATA_SUCCESS);
		} else {
			json.setMessage(Constants.POST_DATA_FAIL + Constants.IS_EXT_SUBMENU);
		}
		return JSONArray.toJSONString(json);
	}
	
	@ResponseBody
	@RequestMapping(value = "/getCompanyName")
	public String getCompanyName(SupplierDetail supplierDetail) {
		List<Map<String, String>> list = supplierDetailService.getCompanyName();
		return JSONArray.toJSONString(list);
	}
	
	@RequestMapping("/download")
	public void download(SupplierDetail supplierDetail,HttpServletResponse response) throws Exception{
		
		String sheetName = "采购明细表";
		List<String> titleName = new ArrayList<>();
		titleName.add("日期");
		titleName.add("公司名称");
		titleName.add("采购名称");
		titleName.add("单位");
		titleName.add("数量");
		titleName.add("单价");
		titleName.add("金额");
		titleName.add("已付款");
		titleName.add("付款方式");
		
		List<String> keyList = new ArrayList<>();
		
		keyList.add("createTime");
		keyList.add("companyName");
		keyList.add("purchaseName");
		keyList.add("unit");
		keyList.add("amount");
		keyList.add("price");
		keyList.add("total");
		keyList.add("paid");
		keyList.add("payment");
		
		@SuppressWarnings("unchecked")
		List<SupplierDetail> list = supplierDetailService.searchByPage(supplierDetail);
		ExportExcel.createExcel(sheetName, list, titleName, keyList, response);
	}

}
