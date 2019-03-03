package com.finance.controller;

import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
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
import com.finance.entity.Car;
import com.finance.entity.Message;
import com.finance.entity.Person;
import com.finance.model.GridModel;
import com.finance.model.Json;
import com.finance.service.CarService;
import com.finance.service.PersonService;
import com.finance.utils.Constants;
import com.finance.utils.ExportExcel;
import com.finance.utils.PageUtil;
import com.finance.utils.ReadExcel;
import com.finance.utils.StringUtil;

@Controller
@RequestMapping(value = "/manage/car")

public class MgrCarController extends BaseController {
	private final Logger LOGGER = LoggerFactory
			.getLogger(MgrCarController.class);

	@Autowired
	private CarService carService;
	@Autowired
	private PersonService personService;

	@RequestMapping("/main")
	public String main() {
		return "manage/car/carMain";
	}
	@RequestMapping("/carSendMsg")
	public String carSendMsg() {
		return "manage/car/carSendMsg";
	}
	@ResponseBody
	@RequestMapping("/doSendMsg")
	public String doSendMsg(HttpServletRequest request,HttpServletResponse response) throws Exception {
		String plateNumber = "";
		String ownerName = "";
		String displacement = "0";
		String onwerTel = "";
		String vestInCompany = "";
		String carNumberDate1 = "";
		String carNumberDate2 = "";
		String gps = "";
		if(!StringUtil.isEmpty(request.getParameter("plateNumber"))){
			plateNumber = request.getParameter("plateNumber");
		}
		if(!StringUtil.isEmpty(request.getParameter("ownerName"))){
			ownerName = request.getParameter("ownerName");
		}
		if(!StringUtil.isEmpty(request.getParameter("displacement"))){
			displacement = request.getParameter("displacement");
		}
		if(!StringUtil.isEmpty(request.getParameter("onwerTel"))){
			onwerTel = request.getParameter("onwerTel");
		}
		if(!StringUtil.isEmpty(request.getParameter("vestInCompany"))){
			vestInCompany = request.getParameter("vestInCompany");
		}
		if(!StringUtil.isEmpty(request.getParameter("gps"))){
			gps = request.getParameter("gps");
		}
		if(!StringUtil.isEmpty(request.getParameter("carNumberDate1"))){
			carNumberDate1 = request.getParameter("carNumberDate1");
		}
		if(!StringUtil.isEmpty(request.getParameter("carNumberDate2"))){
			carNumberDate2 = request.getParameter("carNumberDate2");
		}
		Car l = new Car();
		l.setPlateNumber(plateNumber);
		l.setOwnerName(ownerName);
		l.setDisplacement(Double.parseDouble(displacement));
		l.setOnwerTel(onwerTel);
		l.setVestInCompany(vestInCompany);
		l.setGps(gps);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		PageUtil pageUtil = new PageUtil(0, 10000);
		Map<String,Object> m=new HashMap<String,Object>();
		if(!StringUtil.isEmpty(carNumberDate1)&&!StringUtil.isEmpty(carNumberDate1)){
			m.put("carNumberDate1", sdf.parse(carNumberDate1));
			m.put("carNumberDate2", sdf.parse(carNumberDate2));
		}else{
			m.put("carNumberDate1", null);
			m.put("carNumberDate2", null);
		}
		List<Car> carList=carService.searchByPage(pageUtil, l,m);
		String msgText=request.getParameter("msgText");
		String username =  (String)request.getSession().getAttribute("currUser");   
        if(username == null){  
            response.sendRedirect( "manage/login");
        }
        Timestamp d = new Timestamp(System.currentTimeMillis());
		Message msg=new Message();
		msg.setContent(msgText);
		personService.addMsg(msg);
		int result=0;
		for(int i=0;i<carList.size();i++){
			Map<String, Object> itemMap = new HashMap<>();
			itemMap.put("receiver", carList.get(i).getOnwerTel());
			itemMap.put("sender", username);
			itemMap.put("sendTime", d);
			itemMap.put("status", 1);
			itemMap.put("msgId", msg.getId());
			result=personService.addOneMsgLog(itemMap);
		}
		Json json = new Json();
		if (result>0) {
			json.setStatus(true);
			json.setMessage("短信发送成功！");
		} else {
			json.setMessage("短信发送失败！");
		}
		return JSONArray.toJSONString(json);
	}

	@ResponseBody
	@RequestMapping(value = "/searchByPage")
	public GridModel searchByPage(HttpServletRequest request) throws Exception {
		String plateNumber = "";
		String ownerName = "";
		String displacement = "0";
		String onwerTel = "";
		String vestInCompany = "";
		String carNumberDate1 = "";
		String carNumberDate2 = "";
		String gps = "";
		if(!StringUtil.isEmpty(request.getParameter("plateNumber"))){
			plateNumber = request.getParameter("plateNumber");
		}
		if(!StringUtil.isEmpty(request.getParameter("ownerName"))){
			ownerName = request.getParameter("ownerName");
		}
		if(!StringUtil.isEmpty(request.getParameter("displacement"))){
			displacement = request.getParameter("displacement");
		}
		if(!StringUtil.isEmpty(request.getParameter("onwerTel"))){
			onwerTel = request.getParameter("onwerTel");
		}
		if(!StringUtil.isEmpty(request.getParameter("vestInCompany"))){
			vestInCompany = request.getParameter("vestInCompany");
		}
		if(!StringUtil.isEmpty(request.getParameter("gps"))){
			gps = request.getParameter("gps");
		}
		if(!StringUtil.isEmpty(request.getParameter("carNumberDate1"))){
			carNumberDate1 = request.getParameter("carNumberDate1");
		}
		if(!StringUtil.isEmpty(request.getParameter("carNumberDate2"))){
			carNumberDate2 = request.getParameter("carNumberDate2");
		}
		Car l = new Car();
		l.setPlateNumber(plateNumber);
		l.setOwnerName(ownerName);
		l.setDisplacement(Double.parseDouble(displacement));
		l.setOnwerTel(onwerTel);
		l.setVestInCompany(vestInCompany);
		l.setGps(gps);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		int pageNo = Integer.parseInt(request.getParameter("page"));
		int length = Integer.parseInt(request.getParameter("rows"));
		PageUtil pageUtil = new PageUtil((pageNo - 1) * length, length);
		GridModel gridModel = new GridModel();
		Map<String,Object> m=new HashMap<String,Object>();
		if(!StringUtil.isEmpty(carNumberDate1)&&!StringUtil.isEmpty(carNumberDate1)){
			m.put("carNumberDate1", sdf.parse(carNumberDate1));
			m.put("carNumberDate2", sdf.parse(carNumberDate2));
		}else{
			m.put("carNumberDate1", null);
			m.put("carNumberDate2", null);
		}
		gridModel.setRows(carService.searchByPage(pageUtil, l,m));
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("plateNumber", plateNumber);
		map.put("ownerName", ownerName);
		gridModel.setTotal(carService.getCount1(l,m));
		return gridModel;
	}

	@RequestMapping("/editDlg")
	public String editDlg() {
		return "manage/car/carEditDlg";
	}

	@ResponseBody
	@RequestMapping(value = "/saveOrUpdate")
	public String saveOrUpdate(HttpServletRequest request,HttpServletResponse response,Car car) throws Exception {
		String carNumberDate1 = request.getParameter("carNumberDate1");
		String insuranceDate1 = request.getParameter("insuranceDate1");
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date carNumberDate = sdf.parse(carNumberDate1);
		Date insuranceDate = sdf.parse(insuranceDate1);
		car.setCarNumberDate(carNumberDate);
		car.setInsuranceDate(insuranceDate);
		String username =  (String)request.getSession().getAttribute("currUser");   
        if(username == null){  
            response.sendRedirect( "manage/login");
        }
        Timestamp d = new Timestamp(System.currentTimeMillis());
        car.setCreateDate(d);
		car.setCreater(username);
		Json json = getMessage(carService
				.persistence(car));
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
		int flag = carService.delete(id);
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
				return "manage/car/carMain";
			}
			// 讲listString字符串处理成map对象，一遍在mybatis中遍历使用
			List<Map<String, String>> listMap = new ArrayList<>();
			int i=0;
			for (String itemListString : listString) {
				if(i>0){
				Map<String, String> itemMap = new HashMap<>();
				String[] items = itemListString.split("##", -1);
				if (items.length != new Car().getClass().getDeclaredFields().length) {
					map.put("flag", "fail");
					map.put("msg", "表格中cell个数不够。");
					return "manage/car/carMain";
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
			int result = carService.batchInsert(listMap);
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
		return "manage/car/carMain";
	}
	
	
	@RequestMapping("/download")
	public void download(HttpServletRequest request, HttpServletResponse response) throws Exception{
		String plateNumber = request.getParameter("plateNumberDownload");
		String ownerName = request.getParameter("ownerNameDownload");
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("plateNumber", plateNumber);
		map.put("ownerName", ownerName);
		
		String sheetName = "mysheet";
		List<String> titleName = new ArrayList<>();
		
		titleName.add("车牌");titleName.add("车架号");titleName.add("发动机号");titleName.add("排量");titleName.add("所有人姓名");titleName.add("所有人联系方式");titleName.add("是否有GPS");titleName.add("吨位");titleName.add("车长（米）");titleName.add("行驶证编号");titleName.add("年审日期");titleName.add("保险公司");titleName.add("到期日期");titleName.add("所有者");titleName.add("创建时间");
		
		List<String> keyList = new ArrayList<>();
		
		keyList.add("plateNumber");keyList.add("vin");keyList.add("engineNumber");keyList.add("displacement");keyList.add("ownerName");keyList.add("onwerTel");keyList.add("gps");keyList.add("tonnage");keyList.add("long");keyList.add("carNumber");keyList.add("carNumberDate");keyList.add("insuranceCompany");keyList.add("insuranceDate");keyList.add("creater");keyList.add("createDate");
		
		List<Map<String, Object>> list = carService.searchDownload(map);
		ExportExcel.createExcel(sheetName, list, titleName, keyList, response);
	}
	
	
	@ResponseBody
	@RequestMapping("/remind")
	public Map<String, Object> remind(HttpServletRequest request){
		Map<String, Object> map = new HashMap<String, Object>();
		String username =  (String)request.getSession().getAttribute("currUser");
		map.put("currUserName", username);
		long overTime = carService.getCountOverTime(map);
		long overTimePre = carService.getCountOverTimePre(map);
		map.put("overTime", overTime);
		map.put("overTimePre", overTimePre);
		return map;
	}
	
	@RequestMapping("/remindDetailMain")
	public String remindDetailMain(HttpServletRequest request, ModelMap map){
		String type = request.getParameter("type");
		map.put("type", type);
		return "manage/car/remindDetail";
	}
	
	
	@ResponseBody
	@RequestMapping(value = "/searchByPageRemind")
	public GridModel searchByPageRemind(HttpServletRequest request) throws Exception {
		String plateNumber = "";
		String type = "";
		Map<String,Object> map =new HashMap<String,Object>();
		if(!StringUtil.isEmpty(request.getParameter("plateNumber"))){
			plateNumber = request.getParameter("plateNumber");
		}
		
		
		if(!StringUtil.isEmpty(request.getParameter("type"))){
			type = request.getParameter("type");
		}else{
			type = request.getParameter("myType");
		}
		
		
		map.put("type", type);
		map.put("plateNumber", plateNumber);
		
		int pageNo = Integer.parseInt(request.getParameter("page"));
		int length = Integer.parseInt(request.getParameter("rows"));
		PageUtil pageUtil = new PageUtil((pageNo - 1) * length, length);
		GridModel gridModel = new GridModel();
		
		
		gridModel.setRows(carService.searchByPageRemind(pageUtil, map));
		gridModel.setTotal(carService.getCountRemind(map));
		return gridModel;
	}
	
	
}
