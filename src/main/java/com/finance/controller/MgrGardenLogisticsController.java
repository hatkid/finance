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
import com.finance.entity.GardenLogistics;
import com.finance.entity.StorageLogistics;
import com.finance.model.GridModel;
import com.finance.model.Json;
import com.finance.service.GardenLogisticsService;
import com.finance.utils.Constants;
import com.finance.utils.ExportExcel;
import com.finance.utils.HttpUtil;
import com.finance.utils.PageUtil;

@Controller
@RequestMapping(value = "/manage/gardenLogistics")

public class MgrGardenLogisticsController extends BaseController {
	private final Logger LOGGER = LoggerFactory
			.getLogger(MgrGardenLogisticsController.class);

	@Autowired
	private GardenLogisticsService gardenLogisticsService;

	@RequestMapping("/main")
	public String main() {
		return "manage/gardenLogistics/gardenLogisticsMain";
	}

	@ResponseBody
	@RequestMapping(value = "/searchByPage")
	public GridModel searchByPage(HttpServletRequest request) {
		String companyName = request.getParameter("companyName");
		String legalPerson = request.getParameter("legalPerson");
		GardenLogistics l = new GardenLogistics();
		l.setCompanyName(companyName);
		l.setLegalPerson(legalPerson);
		int pageNo = Integer.parseInt(request.getParameter("page"));
		int length = Integer.parseInt(request.getParameter("rows"));
		PageUtil pageUtil = new PageUtil((pageNo - 1) * length, length);
		GridModel gridModel = new GridModel();
		gridModel.setRows(gardenLogisticsService.searchByPage(pageUtil, l));
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("companyName", companyName);
		map.put("legalPerson", legalPerson);
		gridModel.setTotal(gardenLogisticsService.getCount(map));
		return gridModel;
	}

	@RequestMapping("/editDlg")
	public String editDlg() {
		return "manage/gardenLogistics/gardenLogisticsEditDlg";
	}

	@ResponseBody
	@RequestMapping(value = "/saveOrUpdate")
	public String saveOrUpdate(GardenLogistics gardenLogistics) {
		if(StringUtils.isNotEmpty(gardenLogistics.getAddress())){
			String url = Constants.BaidDuMapConstants.getURL(gardenLogistics.getAddress());
			JSONObject obj = HttpUtil.httpGetRequest(url);
			if (obj.getJSONObject("result") != null) {
			gardenLogistics.setLng(obj.getJSONObject("result").getJSONObject("location").getString("lng"));
			gardenLogistics.setLat(obj.getJSONObject("result").getJSONObject("location").getString("lat"));}
		}
		Json json = getMessage(gardenLogisticsService
				.persistence(gardenLogistics));
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
		int flag = gardenLogisticsService.delete(id);
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
				return "manage/gardenLogistics/gardenLogisticsMain";
			}
			// 讲listString字符串处理成map对象，一遍在mybatis中遍历使用
			List<Map<String, String>> listMap = new ArrayList<>();
			int i=0;
			for (String itemListString : listString) {
				if(i>0){
				Map<String, String> itemMap = new HashMap<>();
				String[] items = itemListString.split("##", -1);
				if (items.length != new GardenLogistics().getClass().getDeclaredFields().length) {
					map.put("flag", "fail");
					map.put("msg", "表格中cell个数不够。");
					return "manage/gardenLogistics/gardenLogisticsMain";
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
			int result = gardenLogisticsService.batchInsert(listMap);
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
		return "manage/gardenLogistics/gardenLogisticsMain";
	}
	
	
	@RequestMapping("/download")
	public void download(HttpServletRequest request, HttpServletResponse response) throws Exception{
		String companyName = request.getParameter("companyNameDownload");
		String legalPerson = request.getParameter("legalPersonDownload");
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("companyName", companyName);
		map.put("legalPerson", legalPerson);
		
		String sheetName = "mysheet";
		List<String> titleName = new ArrayList<>();
		
		titleName.add("园区名称");titleName.add("通讯地址");titleName.add("法人代表");titleName.add("联系电话");titleName.add("邮箱");titleName.add("获得荣誉");titleName.add("园区类别");titleName.add("园区内企业数（个）");titleName.add("仓储面积（平方米）");titleName.add("运输车辆数（吨位）");titleName.add("园区入住率（%）");titleName.add("是否有信息平台");titleName.add("是否有土地证");titleName.add("土地面积（亩）");titleName.add("经营优势");titleName.add("经营短板或不足");titleName.add("年总产值（万元）");titleName.add("年利税（万元）");titleName.add("2016年1-5月份产值（万元）");titleName.add("2016年1-5月份利税（万元）");titleName.add("年份");
		
		List<String> keyList = new ArrayList<>();
		
		keyList.add("companyName");keyList.add("address");keyList.add("legalPerson");keyList.add("tel");keyList.add("email");keyList.add("achieveDistinction");keyList.add("gardenType");keyList.add("cmpNumInGarden");keyList.add("storageArea");keyList.add("vehiclesNumber");keyList.add("occupancyRate");keyList.add("haveInformationPlatform");keyList.add("haveLandDeed");keyList.add("areaOfLand");keyList.add("businessAdvantage");keyList.add("businessDisadvantage");keyList.add("totalValueOfOutput");keyList.add("profitsTax");keyList.add("valueOfOutput");keyList.add("profitsTaxFive");keyList.add("year");
		
		List<Map<String, Object>> list = gardenLogisticsService.searchDownload(map);
		ExportExcel.createExcel(sheetName, list, titleName, keyList, response);
	}
}
