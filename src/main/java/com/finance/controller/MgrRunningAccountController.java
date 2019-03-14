package com.finance.controller;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

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
import com.finance.service.RunningAccountService;
import com.finance.service.SalesReportService;
import com.finance.service.SupplierDetailService;
import com.finance.utils.Constants;
import com.finance.utils.EntityUtil;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;

@Controller
@RequestMapping(value = "/manage/runningAccount")
@SuppressWarnings({"rawtypes","unused"})
public class MgrRunningAccountController extends BaseController {
	
	private final Logger LOGGER = LoggerFactory
			.getLogger(MgrRunningAccountController.class);

	@Autowired
	private RunningAccountService runningAccountService;

	@RequestMapping("/main")
	public String main() {
		return "manage/runningAccount/runningAccountMain";
	}

	@ResponseBody
	@RequestMapping(value = "/searchByPage")
	public GridModel searchByPage(RunningAccount runningAccount) {
		GridModel gridModel = new GridModel();
		Page page = PageHelper.startPage(runningAccount.getPage(), runningAccount.getRows(), true);
		gridModel.setRows(runningAccountService.searchByPage(runningAccount));
		gridModel.setTotal(page.getTotal());
		return gridModel;
	}

	@RequestMapping("/editDlg")
	public String editDlg() {
		return "manage/runningAccount/runningAccountEditDlg";
	}

	@ResponseBody
	@RequestMapping(value = "/saveOrUpdate")
	public String saveOrUpdate(RunningAccount runningAccount) {
		Json json = null;
		EntityUtil.setCommonInfo(runningAccount);
		json = getMessage(runningAccountService
				.persistence(runningAccount));
		return JSONArray.toJSONString(json);
	}

	@ResponseBody
	@RequestMapping(value = "/delete")
	public String delete(RunningAccount runningAccount) {
		Json json = new Json();
		EntityUtil.setCommonInfo(runningAccount);
		int flag = runningAccountService.delete(runningAccount);
		if (flag > 0) {
			json.setStatus(true);
			json.setMessage(Constants.POST_DATA_SUCCESS);
		} else {
			json.setMessage(Constants.POST_DATA_FAIL + Constants.IS_EXT_SUBMENU);
		}
		return JSONArray.toJSONString(json);
	}

}
