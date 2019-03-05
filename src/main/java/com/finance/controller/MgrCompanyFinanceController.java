package com.finance.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.finance.entity.CompanyFinance;
import com.finance.model.GridModel;
import com.finance.model.Json;
import com.finance.service.CompanyFinanceService;
import com.finance.utils.Constants;
import com.finance.utils.EntityUtil;
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
		
		// 校验
		
		EntityUtil.setCommonInfo(companyFinance);
		Json json = getMessage(companyFinanceService
				.persistence(companyFinance));
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
		int flag = companyFinanceService.delete(id);
		if (flag > 0) {
			json.setStatus(true);
			json.setMessage(Constants.POST_DATA_SUCCESS);
		} else {
			json.setMessage(Constants.POST_DATA_FAIL + Constants.IS_EXT_SUBMENU);
		}
		return JSONArray.toJSONString(json);
	}

}
