package com.finance.controller;

import java.io.File;
import java.sql.Timestamp;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.json.JsonArray;
import javax.json.JsonArrayBuilder;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.io.FileUtils;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import com.alibaba.fastjson.JSONArray;
import com.finance.entity.BusinessManagement;
import com.finance.entity.Message;
import com.finance.model.GridModel;
import com.finance.model.Json;
import com.finance.service.BusinessManagementService;
import com.finance.service.PersonService;
import com.finance.utils.Constants;

/**
 * 
 * @author lvzhi
 * 企业信息管理
 */
@Controller
@RequestMapping(value = "/manage/businessmanagement")
public class BusinessManagementController extends BaseController {
	private final Logger LOGGER = LoggerFactory
			.getLogger(BusinessManagementController.class);

	
	@Autowired
	private BusinessManagementService businessManagementService;
	@Autowired
	private PersonService personService;

	@RequestMapping("/main")
	public String main() {
		LOGGER.info("进入企业管理主页面！");
		return "manage/businessmanagement/businessMain";
		
	}
	
	
	@ResponseBody
	@RequestMapping(value = "/searchByPage")
	public GridModel searchByPage(HttpServletRequest request) {
		String companyName = request.getParameter("companyName");
		String companyNature = request.getParameter("companyNature");
		String legalPersonContact = request.getParameter("legalPersonContact");
		String address = request.getParameter("address");
		String registeredCapital1 = request.getParameter("registeredCapital1");
		String registeredCapital2 = request.getParameter("registeredCapital2");
		String realName = request.getParameter("realName");
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("companyName", companyName);
		map.put("companyNature", companyNature);
		map.put("legalPersonContact", legalPersonContact);
		map.put("address", address);
		map.put("registeredCapital1", registeredCapital1);
		map.put("registeredCapital2", registeredCapital2);
		map.put("realName", realName);
		
		
		
		int pageNo = Integer.parseInt(request.getParameter("page"));
		int length = Integer.parseInt(request.getParameter("rows"));
		
		int start = (pageNo - 1) * length;
		map.put("start", start);
		map.put("limit", length);
		
		GridModel gridModel = new GridModel();
		gridModel.setRows(businessManagementService.searchByPage(map));
		
		gridModel.setTotal(businessManagementService.getCount(map));
		return gridModel;
	}
	
	
	@RequestMapping("/editDlg")
	public String editDlg() {
		return "manage/businessmanagement/businessEdit";
	}
	
	
	@ResponseBody
	@RequestMapping(value = "/saveOrUpdate")
	public String saveOrUpdate(BusinessManagement businessManagement,HttpServletRequest request) {
		
		Json json = null;
		try{   
            String uploadDir = request.getRealPath("/upload/");   
            System.out.println(uploadDir);
            File dirPath = new File(uploadDir);   
            if (!dirPath.exists()) {   
                dirPath.mkdirs();   
            }   
               
            MultipartHttpServletRequest multipartRequest = (MultipartHttpServletRequest) request;   
            CommonsMultipartFile file = (CommonsMultipartFile) multipartRequest.getFile("filedata");//这里是表单的名字，在swfupload.js中this.ensureDefault("file_post_name", "filedata");   
            if(StringUtils.isNotEmpty(file.getOriginalFilename())){
            	String[] names = file.getOriginalFilename().split("\\.");
                businessManagement.setImageName(businessManagement.getCompanyName() + "."+ names[names.length-1]);
                file.transferTo(new File(uploadDir + "/" + businessManagement.getCompanyName() + "."+ names[names.length-1]));
            }else{
            	BusinessManagement m = businessManagementService.findById(businessManagement.getId());
            	String[] names = m.getImageName().split("\\.");
            	String imageName = m.getImageName();
            	businessManagement.setImageName(businessManagement.getCompanyName() + "."+ names[names.length-1]);
            	FileUtils.copyFile(new File(uploadDir + "/" + imageName), new File(uploadDir + "/" + businessManagement.getImageName())); 
            	FileUtils.forceDelete(new File(uploadDir + "/" + imageName));
            }
            
            
            json = getMessage(businessManagementService
    				.persistence(businessManagement));
        }catch(Exception e){   
            e.printStackTrace();   
            json = getMessage(false);
        }
		
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
		int flag = businessManagementService.delete(id);
		if (flag > 0) {
			json.setStatus(true);
			json.setMessage(Constants.POST_DATA_SUCCESS);
		} else {
			json.setMessage(Constants.POST_DATA_FAIL + Constants.IS_EXT_SUBMENU);
		}
		return JSONArray.toJSONString(json);
	}
	@ResponseBody
	@RequestMapping(value = "/findBusinessCmb")
	public String findBusinessCmb(HttpServletRequest request) {
		String companyName = request.getParameter("companyName");
		BusinessManagement bm=new BusinessManagement();
		bm.setCompanyName(companyName);
		List<BusinessManagement> flag = businessManagementService.findBusinessCmb(bm);
		String jsonArray = JSONArray.toJSONString(flag);
		return jsonArray;
	}
	
	
	@RequestMapping("/sendmsg/main")
	public String sendMain() {
		return "manage/businessmanagement/businessSendMain";
		
	}
	
	
	
	@ResponseBody
	@RequestMapping("/sendmsg/send")
	public String search(HttpServletRequest request,HttpServletResponse response) throws Exception {
		String companyName = request.getParameter("companyName");
		String companyNature = request.getParameter("companyNature");
		String legalPersonContact = request.getParameter("legalPersonContact");
		String address = request.getParameter("address");
		String registeredCapital1 = request.getParameter("registeredCapital1");
		String registeredCapital2 = request.getParameter("registeredCapital2");
		String realName = request.getParameter("realName");
		String sendmsg = request.getParameter("sendmsg");
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("companyName", companyName);
		map.put("companyNature", companyNature);
		map.put("legalPersonContact", legalPersonContact);
		map.put("address", address);
		map.put("registeredCapital1", registeredCapital1);
		map.put("registeredCapital2", registeredCapital2);
		map.put("realName", realName);
		Json json = new Json();
		try {
			List<Map<String,String>> list = businessManagementService.search(map);

			String username =  (String)request.getSession().getAttribute("currUser");   
	        if(username == null){  
	            response.sendRedirect( "manage/login");
	        }
	        Timestamp d = new Timestamp(System.currentTimeMillis());
			Message msg=new Message();
			msg.setContent(sendmsg);
			personService.addMsg(msg);
			int result=0;
			for(Map<String,String> m : list){
			    String tel = m.get("legalPersonContact").toString();
				Map<String, Object> itemMap = new HashMap<>();
				itemMap.put("receiver", tel);
				itemMap.put("sender", username);
				itemMap.put("sendTime", d);
				itemMap.put("status", 1);
				itemMap.put("msgId", msg.getId());
				result=personService.addOneMsgLog(itemMap);
			    //do something send sms message;
			    System.out.println(tel + " : " + sendmsg);
			}
			json.setStatus(true);
			json.setMessage("发送成功!");
			json.setTitle("发送结果");
		} catch (Exception e) {
			e.printStackTrace();
			json.setStatus(false);
			json.setMessage("fail");
		}
		try {
			Thread.sleep(1 * 1000);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		
		return JSONArray.toJSONString(json);
	}
}
