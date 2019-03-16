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
import com.finance.entity.RunningAccount;
import com.finance.entity.SalesReport;
import com.finance.entity.SupplierDetail;
import com.finance.model.GridModel;
import com.finance.model.Json;
import com.finance.service.SalesReportService;
import com.finance.service.SupplierDetailService;
import com.finance.utils.Constants;
import com.finance.utils.EntityUtil;
import com.finance.utils.ExportExcel;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;

@Controller
@RequestMapping(value = "/manage/salesReport")
@SuppressWarnings({"rawtypes","unused"})
public class MgrSalesReportController extends BaseController {
	
	private final Logger LOGGER = LoggerFactory
			.getLogger(MgrSalesReportController.class);

	@Autowired
	private SalesReportService salesReportService;

	@RequestMapping("/main")
	public String main() {
		return "manage/salesReport/salesReportMain";
	}

	@ResponseBody
	@RequestMapping(value = "/searchByPage")
	public GridModel searchByPage(SalesReport salesReport) {
		GridModel gridModel = new GridModel();
		Page page = PageHelper.startPage(salesReport.getPage(), salesReport.getRows(), true);
		gridModel.setRows(salesReportService.searchByPage(salesReport));
		gridModel.setTotal(page.getTotal());
		return gridModel;
	}

	@RequestMapping("/editDlg")
	public String editDlg() {
		return "manage/salesReport/salesReportEditDlg";
	}

	@ResponseBody
	@RequestMapping(value = "/saveOrUpdate")
	public String saveOrUpdate(SalesReport salesReport) {
		Json json = null;
		EntityUtil.setCommonInfo(salesReport);
		json = getMessage(salesReportService
				.persistence(salesReport));
		return JSONArray.toJSONString(json);
	}

	@ResponseBody
	@RequestMapping(value = "/delete")
	public String delete(SalesReport salesReport) {
		Json json = new Json();
		EntityUtil.setCommonInfo(salesReport);
		int flag = salesReportService.delete(salesReport);
		if (flag > 0) {
			json.setStatus(true);
			json.setMessage(Constants.POST_DATA_SUCCESS);
		} else {
			json.setMessage(Constants.POST_DATA_FAIL + Constants.IS_EXT_SUBMENU);
		}
		return JSONArray.toJSONString(json);
	}
	
	@RequestMapping("/download")
	public void download(SalesReport salesReport,HttpServletResponse response) throws Exception{
		
		String sheetName = "销售表";
		List<String> titleName = new ArrayList<>();
		titleName.add("日期");
		titleName.add("客户名称");
		titleName.add("品名");
		titleName.add("色别");
		titleName.add("件数 套数");
		titleName.add("发货件数");
		titleName.add("合计数量");
		titleName.add("单价");
		titleName.add("合计金额");
		titleName.add("小计");
		titleName.add("备注");
		
		List<String> keyList = new ArrayList<>();
		
		keyList.add("createTime");
		keyList.add("customerName");
		keyList.add("teaName");
		keyList.add("color");
		keyList.add("setCount");
		keyList.add("saleCount");
		keyList.add("totalCount");
		keyList.add("price");
		keyList.add("totalPrice");
		keyList.add("subtotal");
		keyList.add("remark");
		
		@SuppressWarnings("unchecked")
		List<SalesReport> list = salesReportService.searchByPage(salesReport);
		ExportExcel.createExcel(sheetName, list, titleName, keyList, response);
	}

}
