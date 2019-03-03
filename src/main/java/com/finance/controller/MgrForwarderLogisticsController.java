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
import com.finance.entity.ForwarderLogistics;
import com.finance.entity.StorageLogistics;
import com.finance.model.GridModel;
import com.finance.model.Json;
import com.finance.service.ForwarderLogisticsService;
import com.finance.utils.Constants;
import com.finance.utils.ExportExcel;
import com.finance.utils.HttpUtil;
import com.finance.utils.PageUtil;

@Controller
@RequestMapping(value = "/manage/forwarderLogistics")

public class MgrForwarderLogisticsController extends BaseController {
	private final Logger LOGGER = LoggerFactory
			.getLogger(MgrForwarderLogisticsController.class);

	@Autowired
	private ForwarderLogisticsService forwarderLogisticsService;

	@RequestMapping("/main")
	public String main() {
		return "manage/forwarderLogistics/forwarderLogisticsMain";
	}

	@ResponseBody
	@RequestMapping(value = "/searchByPage")
	public GridModel searchByPage(HttpServletRequest request) {
		String companyName = request.getParameter("companyName");
		String registrationNumber = request.getParameter("registrationNumber");
		ForwarderLogistics l = new ForwarderLogistics();
		l.setCompanyName(companyName);
		l.setRegistrationNumber(registrationNumber);
		int pageNo = Integer.parseInt(request.getParameter("page"));
		int length = Integer.parseInt(request.getParameter("rows"));
		PageUtil pageUtil = new PageUtil((pageNo - 1) * length, length);
		GridModel gridModel = new GridModel();
		gridModel.setRows(forwarderLogisticsService.searchByPage(pageUtil, l));
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("companyName", companyName);
		map.put("registrationNumber", registrationNumber);
		gridModel.setTotal(forwarderLogisticsService.getCount(map));
		return gridModel;
	}

	@RequestMapping("/editDlg")
	public String editDlg() {
		return "manage/forwarderLogistics/forwarderLogisticsEditDlg";
	}

	@ResponseBody
	@RequestMapping(value = "/saveOrUpdate")
	public String saveOrUpdate(ForwarderLogistics forwarderLogistics) {
		if(StringUtils.isNotEmpty(forwarderLogistics.getAddress())){
			String url = Constants.BaidDuMapConstants.getURL(forwarderLogistics.getAddress());
			JSONObject obj = HttpUtil.httpGetRequest(url);
			if (obj.getJSONObject("result") != null) {
			forwarderLogistics.setLng(obj.getJSONObject("result").getJSONObject("location").getString("lng"));
			forwarderLogistics.setLat(obj.getJSONObject("result").getJSONObject("location").getString("lat"));}
		}
		Json json = getMessage(forwarderLogisticsService
				.persistence(forwarderLogistics));
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
		int flag = forwarderLogisticsService.delete(id);
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
				return "manage/forwarderLogistics/forwarderLogisticsMain";
			}
			// 讲listString字符串处理成map对象，一遍在mybatis中遍历使用
			List<Map<String, String>> listMap = new ArrayList<>();
			int i=0;
			for (String itemListString : listString) {
				if(i>0){
				Map<String, String> itemMap = new HashMap<>();
				String[] items = itemListString.split("##", -1);
				if (items.length != new ForwarderLogistics().getClass().getDeclaredFields().length) {
					map.put("flag", "fail");
					map.put("msg", "表格中cell个数不够。");
					return "manage/forwarderLogistics/forwarderLogisticsMain";
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
			int result = forwarderLogisticsService.batchInsert(listMap);
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
		return "manage/forwarderLogistics/forwarderLogisticsMain";
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
		
		titleName.add("企业名称");titleName.add("工商部门注册号码");titleName.add("通讯地址");titleName.add("联系电话");titleName.add("邮箱");titleName.add("员工总数（人）");titleName.add("员工物流师（人）");titleName.add("获得A级物流企业称号");titleName.add("是否有物流信息平台");titleName.add("物流信息类型与范围");titleName.add("挂靠车辆数（台/吨位）");titleName.add("年度平均运载量（万吨）");titleName.add("2016年1-5月运载量（万吨）");titleName.add("运输线路");titleName.add("服务对象");titleName.add("年度总产值（万元）");titleName.add("年度总成本（万元）");titleName.add("主营业务收入（万元）");titleName.add("年份");
		
		List<String> keyList = new ArrayList<>();
		
		keyList.add("companyName");keyList.add("registrationNumber");keyList.add("address");keyList.add("tel");keyList.add("email");keyList.add("logisticsEmpSum");keyList.add("logisticianEmpNum");keyList.add("isGradeA");keyList.add("haveInformationPlatform");keyList.add("logisticiaType");keyList.add("inkedVehiclesNumber");keyList.add("averageCapacity");keyList.add("capacity");keyList.add("transportLinks");keyList.add("serviceObject");keyList.add("totalValueOfOutput");keyList.add("totalVariableCost");keyList.add("totaFixedCost");keyList.add("year");
		
		List<Map<String, Object>> list = forwarderLogisticsService.searchDownload(map);
		ExportExcel.createExcel(sheetName, list, titleName, keyList, response);
	}
}
