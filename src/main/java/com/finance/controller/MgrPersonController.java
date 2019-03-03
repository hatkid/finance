package com.finance.controller;

import java.io.IOException;
import java.sql.Timestamp;
import java.text.DateFormat;
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
import com.finance.utils.ReadExcel;
import com.finance.entity.Message;
import com.finance.entity.Person;
import com.finance.entity.StorageLogistics;
import com.finance.model.GridModel;
import com.finance.model.Json;
import com.finance.service.PersonService;
import com.finance.utils.Constants;
import com.finance.utils.ExportExcel;
import com.finance.utils.PageUtil;
import com.finance.utils.StringUtil;

@Controller
@RequestMapping(value = "/manage/person")

public class MgrPersonController extends BaseController {
	private final Logger LOGGER = LoggerFactory
			.getLogger(MgrPersonController.class);

	@Autowired
	private PersonService personService;

	@RequestMapping("/main")
	public String main() {
		return "manage/person/personMain";
	}
	@RequestMapping("/personSendMsg")
	public String personSendMsg() {
		return "manage/person/personSendMsg";
	}
	@ResponseBody
	@RequestMapping("/doSendMsg")
	public String doSendMsg(HttpServletRequest request,HttpServletResponse response) throws Exception {
		String name = "";
		String tel = "";
		String vestInCompany = "";
		String idNumber = "";
		String sex = "";
		if(!StringUtil.isEmpty(request.getParameter("name"))){
			name = request.getParameter("name");
		}
		if(!StringUtil.isEmpty(request.getParameter("tel"))){
			tel = request.getParameter("tel");
		}
		if(!StringUtil.isEmpty(request.getParameter("vestInCompany"))){
			vestInCompany = request.getParameter("vestInCompany");
		}
		if(!StringUtil.isEmpty(request.getParameter("idNumber"))){
			idNumber = request.getParameter("idNumber");
		}
		if(!StringUtil.isEmpty(request.getParameter("sex"))){
			sex = request.getParameter("sex");
		}
		Person l = new Person();
		l.setName(name);
		l.setTel(tel);
		l.setVestInCompany(vestInCompany);
		l.setIdNumber(idNumber);
		l.setSex(sex);
		String msgText=request.getParameter("msgText");
		String username =  (String)request.getSession().getAttribute("currUser");   
        if(username == null){  
            response.sendRedirect( "manage/login");
        }
        Timestamp d = new Timestamp(System.currentTimeMillis());
		Message msg=new Message();
		msg.setContent(msgText);
		personService.addMsg(msg);
		PageUtil pageUtil = new PageUtil(0,10000);
		List<Person> personList=personService.searchByPage(pageUtil, l);
		int result=0;
		for(int i=0;i<personList.size();i++){
			Map<String, Object> itemMap = new HashMap<>();
			itemMap.put("receiver", personList.get(i).getTel());
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
	public GridModel searchByPage(HttpServletRequest request) {
		String name = "";
		String tel = "";
		String vestInCompany = "";
		String idNumber = "";
		String sex = "";
		if(!StringUtil.isEmpty(request.getParameter("name"))){
			name = request.getParameter("name");
		}
		if(!StringUtil.isEmpty(request.getParameter("tel"))){
			tel = request.getParameter("tel");
		}
		if(!StringUtil.isEmpty(request.getParameter("vestInCompany"))){
			vestInCompany = request.getParameter("vestInCompany");
		}
		if(!StringUtil.isEmpty(request.getParameter("idNumber"))){
			idNumber = request.getParameter("idNumber");
		}
		if(!StringUtil.isEmpty(request.getParameter("sex"))){
			sex = request.getParameter("sex");
		}
		Person l = new Person();
		l.setName(name);
		l.setTel(tel);
		l.setVestInCompany(vestInCompany);
		l.setIdNumber(idNumber);
		l.setSex(sex);
		int pageNo = Integer.parseInt(request.getParameter("page"));
		int length = Integer.parseInt(request.getParameter("rows"));
		PageUtil pageUtil = new PageUtil((pageNo - 1) * length, length);
		GridModel gridModel = new GridModel();
		gridModel.setRows(personService.searchByPage(pageUtil, l));
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("name", name);
		map.put("tel", tel);
		gridModel.setTotal(personService.getCount(map));
		return gridModel;
	}

	@RequestMapping("/editDlg")
	public String editDlg() {
		return "manage/person/personEditDlg";
	}

	@ResponseBody
	@RequestMapping(value = "/saveOrUpdate")
	public String saveOrUpdate(HttpServletRequest request,HttpServletResponse response,Person person) throws Exception {
		String username =  (String)request.getSession().getAttribute("currUser");   
        if(username == null){  
            response.sendRedirect( "manage/login");
        }
        Timestamp d = new Timestamp(System.currentTimeMillis());
		person.setCreateDate(d);
		person.setCreater(username);
		Json json = getMessage(personService
				.persistence(person));
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
		int flag = personService.delete(id);
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
				return "manage/person/personMain";
			}
			// 讲listString字符串处理成map对象，一遍在mybatis中遍历使用
			List<Map<String, String>> listMap = new ArrayList<>();
			int i=0;
			for (String itemListString : listString) {
				if(i>0){
				Map<String, String> itemMap = new HashMap<>();
				String[] items = itemListString.split("##", -1);
				if (items.length != new Person().getClass().getDeclaredFields().length) {
					map.put("flag", "fail");
					map.put("msg", "表格中cell个数不够。");
					return "manage/person/personMain";
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
			int result = personService.batchInsert(listMap);
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
		return "manage/person/personMain";
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
		
		titleName.add("姓名");titleName.add("性别");titleName.add("人员种类");titleName.add("联系方式");titleName.add("地址");titleName.add("备注");titleName.add("身份证");titleName.add("创建人");titleName.add("创建时间");
		
		List<String> keyList = new ArrayList<>();
		
		keyList.add("name");keyList.add("sex");keyList.add("nature");keyList.add("tel");keyList.add("address");keyList.add("remark");keyList.add("idNumber");keyList.add("creater");keyList.add("createDate");
		
		List<Map<String, Object>> list = personService.searchDownload(map);
		ExportExcel.createExcel(sheetName, list, titleName, keyList, response);
	}
}
