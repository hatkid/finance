package com.finance.controller;

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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.finance.entity.ColdchainLogistics;
import com.finance.entity.ForwarderLogistics;
import com.finance.entity.GardenLogistics;
import com.finance.entity.ManufacturingLogistics;
import com.finance.entity.MultipleshopLogistics;
import com.finance.entity.ServiceLogistics;
import com.finance.entity.StorageLogistics;
import com.finance.entity.TransportLogistics;
import com.finance.model.GridModel;
import com.finance.model.Json;
import com.finance.service.ColdchainLogisticsService;
import com.finance.service.ForwarderLogisticsService;
import com.finance.service.GardenLogisticsService;
import com.finance.service.ManufacturingLogisticsService;
import com.finance.service.MultipleshopLogisticsService;
import com.finance.service.ServiceLogisticsService;
import com.finance.service.StorageLogisticsService;
import com.finance.service.TransportLogisticsService;
import com.finance.utils.Constants;
import com.finance.utils.PageUtil;

/**
 * ClassName: MgrStorageLogisticsController Description: 仓储型物流企业信息统计 yanggang
 * date 2016年6月14日
 */
@Controller
@RequestMapping(value = "/manage/map")
public class MgrMapController extends BaseController {
	private final Logger LOGGER = LoggerFactory
			.getLogger(MgrMapController.class);

	@Autowired
	private ColdchainLogisticsService coldchainLogisticsService;
	@Autowired
	private ForwarderLogisticsService forwarderLogisticsService;
	@Autowired
	private GardenLogisticsService gardenLogisticsService;
	@Autowired
	private ManufacturingLogisticsService manufacturingLogisticsService;
	@Autowired
	private MultipleshopLogisticsService multipleshopLogisticsService;
	@Autowired
	private ServiceLogisticsService serviceLogisticsService;
	@Autowired
	private StorageLogisticsService storageLogisticsService;
	@Autowired
	private TransportLogisticsService transportLogisticsService;

	@RequestMapping("/main")
	public String main(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		return "manage/map/map";
	}
	@ResponseBody
	@RequestMapping("/ajaxMap")
	public String ajaxMap(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String companyName = request.getParameter("companyName");
		String address = request.getParameter("address");
		String tel = request.getParameter("tel");
		String ckcoldchainLogisticsList = request
				.getParameter("ckcoldchainLogisticsList");// on选中，null不选
		String ckforwarderLogisticsList = request
				.getParameter("ckforwarderLogisticsList");
		String ckmanufacturingLogisticsList = request
				.getParameter("ckmanufacturingLogisticsList");
		String ckgardenLogisticsList = request
				.getParameter("ckgardenLogisticsList");
		String ckmultipleshopLogisticsList = request
				.getParameter("ckmultipleshopLogisticsList");
		String ckserviceLogisticsList = request
				.getParameter("ckserviceLogisticsList");
		String ckstorageLogisticsList = request
				.getParameter("ckstorageLogisticsList");
		String cktransportLogisticsList = request
				.getParameter("cktransportLogisticsList");
		Map<String, Object> selectMap=new HashMap<String, Object>();
		selectMap.put("companyName", companyName);
		selectMap.put("address", address);
		selectMap.put("tel", tel);
		List<ColdchainLogistics> coldchainLogisticsList = null;
		List<ForwarderLogistics> forwarderLogisticsList = null;
		List<GardenLogistics> gardenLogisticsList = null;
		List<ManufacturingLogistics> manufacturingLogisticsList = null;
		List<MultipleshopLogistics> multipleshopLogisticsList = null;
		List<ServiceLogistics> serviceLogisticsList = null;
		List<StorageLogistics> storageLogisticsList = null;
		List<TransportLogistics> transportLogisticsList = null;
		if (ckcoldchainLogisticsList!=null&&ckcoldchainLogisticsList.equals("on")) {
			coldchainLogisticsList = coldchainLogisticsService
					.findAllMap(selectMap);
		}
		if (ckforwarderLogisticsList!=null&&ckforwarderLogisticsList.equals("on")) {
			forwarderLogisticsList = forwarderLogisticsService
					.findAllMap(selectMap);
		}
		if (ckgardenLogisticsList!=null&&ckgardenLogisticsList.equals("on")) {
			gardenLogisticsList = gardenLogisticsService
					.findAllMap(selectMap);
		}
		if (ckmanufacturingLogisticsList!=null&&ckmanufacturingLogisticsList.equals("on")) {
			manufacturingLogisticsList = manufacturingLogisticsService
					.findAllMap(selectMap);
		}
		if (ckmultipleshopLogisticsList!=null&&ckmultipleshopLogisticsList.equals("on")) {
			multipleshopLogisticsList = multipleshopLogisticsService
					.findAllMap(selectMap);
		}
		if (ckserviceLogisticsList!=null&&ckserviceLogisticsList.equals("on")) {
			serviceLogisticsList = serviceLogisticsService
					.findAllMap(selectMap);
		}
		if (ckstorageLogisticsList!=null&&ckstorageLogisticsList.equals("on")) {
			storageLogisticsList = storageLogisticsService
					.findAllMap(selectMap);
		}
		if (cktransportLogisticsList!=null&&cktransportLogisticsList.equals("on")) {
			transportLogisticsList = transportLogisticsService
					.findAllMap(selectMap);
		}
		Map<String,Object> returnMap=new HashMap<String,Object>();
		if (coldchainLogisticsList != null) {
			returnMap.put("coldchainLogisticsList", coldchainLogisticsList);
		}
		if (forwarderLogisticsList != null) {
			returnMap.put("coldchainLogisticsList", coldchainLogisticsList);
		}
		if (gardenLogisticsList != null) {
			returnMap.put("coldchainLogisticsList", coldchainLogisticsList);
		}
		if (manufacturingLogisticsList != null) {
			returnMap.put("manufacturingLogisticsList", manufacturingLogisticsList);
		}
		if (multipleshopLogisticsList != null) {
			returnMap.put("multipleshopLogisticsList", multipleshopLogisticsList);
		}
		if (serviceLogisticsList != null) {
			returnMap.put("serviceLogisticsList", serviceLogisticsList);
		}
		if (storageLogisticsList != null) {
			returnMap.put("storageLogisticsList", storageLogisticsList);
		}
		if (transportLogisticsList != null) {
			returnMap.put("transportLogisticsList", transportLogisticsList);
		}
		return JSONArray.toJSONString(returnMap);
	}

	@ResponseBody
	@RequestMapping(value = "/searchByPage")
	public GridModel searchByPage(HttpServletRequest request) {
		String companyName = request.getParameter("companyName");
		String registrationNumber = request.getParameter("registrationNumber");
		StorageLogistics l = new StorageLogistics();
		l.setCompanyName(companyName);
		l.setRegistrationNumber(registrationNumber);
		int pageNo = Integer.parseInt(request.getParameter("page"));
		int length = Integer.parseInt(request.getParameter("rows"));
		PageUtil pageUtil = new PageUtil((pageNo - 1) * length, length);
		GridModel gridModel = new GridModel();
		gridModel.setRows(storageLogisticsService.searchByPage(pageUtil, l));
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("companyName", companyName);
		map.put("registrationNumber", registrationNumber);
		gridModel.setTotal(storageLogisticsService.getCount(map));
		return gridModel;
	}

	@RequestMapping("/editDlg")
	public String editDlg() {
		return "manage/storageLogistics/storageLogisticsEditDlg";
	}

	@ResponseBody
	@RequestMapping(value = "/saveOrUpdate")
	public String saveOrUpdate(StorageLogistics storageLogistics) {
		Json json = getMessage(storageLogisticsService
				.persistence(storageLogistics));
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
		int flag = storageLogisticsService.delete(id);
		if (flag > 0) {
			json.setStatus(true);
			json.setMessage(Constants.POST_DATA_SUCCESS);
		} else {
			json.setMessage(Constants.POST_DATA_FAIL + Constants.IS_EXT_SUBMENU);
		}
		return JSONArray.toJSONString(json);
	}
}
