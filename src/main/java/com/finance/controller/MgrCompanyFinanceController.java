package com.finance.controller;

import static org.junit.Assert.assertNotNull;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
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
		ExportExcel.createExcel(sheetName, list, titleName, keyList, response);
	}


}
