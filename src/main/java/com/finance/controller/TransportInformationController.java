package com.finance.controller;

import java.util.Calendar;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.finance.entity.TransportInformationPublish;
import com.finance.model.GridModel;
import com.finance.model.Json;
import com.finance.service.TransportInformationService;

/**
 * 
 * @author lvzhi
 * 企业信息管理
 * 
 * 
 *一开始打算把发布货物信息和发布车辆信息分开保存，涉及到需要审核，写审核货物和审核车辆不合适，所以讲发布的货物信息和发布的车辆信息放到同一张表，用字段区别
 * 
 * 
 */
@Controller
@RequestMapping(value = "/manage/transport")
public class TransportInformationController extends BaseController {
	private final Logger LOGGER = LoggerFactory
			.getLogger(TransportInformationController.class);

	
	@Autowired
	private TransportInformationService transportInformationService;

	@RequestMapping("/publishCarMain")
	public String main() {
		return "manage/transport/publishCarMain";
	}
	
	@RequestMapping("/publishCarAdd")
	public String publishAdd() {
		LOGGER.info("进入货运管理主页面！");
		return "manage/transport/publishCarEditDlg";
	}
	
	
	@ResponseBody
	@RequestMapping("/publishCarSave")
	public String publishCarSave(TransportInformationPublish transportInformationPublish, HttpServletRequest request) {
		
		Json json = new Json();
		transportInformationPublish.setType(1);
		String userName = (String)request.getSession().getAttribute("currUser");
		if(StringUtils.isEmpty(transportInformationPublish.getCreater())){
			transportInformationPublish.setCreater(userName);
		}
		transportInformationPublish.setRealCreater(userName);
		
		Calendar cal = Calendar.getInstance();
		transportInformationPublish.setCreateTime(cal.getTime());
		transportInformationPublish.setReview(0);
		
		int result = transportInformationService.insert(transportInformationPublish);
		if(result == 1){
			json.setStatus(true);
			json.setTitle("结果提示");
			json.setMessage("保存成功。");
		}else{
			json.setStatus(false);
			json.setTitle("结果提示");
			json.setMessage("保存失败，请稍微再试。");
		}
		

		return JSONArray.toJSONString(json);
	}
	
	
	
	@RequestMapping("/publishGoodsMain")
	public String Goodsmain() {
		return "manage/transport/publishGoodsMain";
	}
	
	@RequestMapping("/publishGoodsAdd")
	public String publishGoodsAdd() {
		LOGGER.info("进入货运管理主页面！");
		return "manage/transport/publishGoodsEditDlg";
	}
	
	
	
	/**
	 * @param request
	 * @param ransportInformationPublishgoods
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/publishGoodsSave")
	public String publishCarSave(HttpServletRequest request, TransportInformationPublish transportInformationPublish) {
		
		Json json = new Json();
		transportInformationPublish.setType(0);
		String userName = (String)request.getSession().getAttribute("currUser");
		if(StringUtils.isEmpty(transportInformationPublish.getCreater())){
			transportInformationPublish.setCreater(userName);
		}
		transportInformationPublish.setRealCreater(userName);
		
		Calendar cal = Calendar.getInstance();
		transportInformationPublish.setCreateTime(cal.getTime());
		transportInformationPublish.setReview(0);
		
		int result = transportInformationService.insert(transportInformationPublish);
		if(result == 1){
			json.setStatus(true);
			json.setTitle("结果提示");
			json.setMessage("保存成功。");
		}else{
			json.setStatus(false);
			json.setTitle("结果提示");
			json.setMessage("保存失败，请稍微再试。");
		}
		

		return JSONArray.toJSONString(json);
	}
	
	@RequestMapping("/reviewed")
	public String reviewed() {
		LOGGER.info("进入货运管理主页面！");
		return "manage/transport/reviewed";
	}
	
	@ResponseBody
	@RequestMapping(value = "/searchByPage")
	public GridModel searchByPage(HttpServletRequest request) {
		String createTime1 = request.getParameter("createTime1");
		String createTime2 = request.getParameter("createTime2");
		String type = request.getParameter("type");
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("createTime1", createTime1);
		map.put("createTime2", createTime2);
		map.put("type", type);
		
		
		
		int pageNo = Integer.parseInt(request.getParameter("page"));
		int length = Integer.parseInt(request.getParameter("rows"));
		
		int start = (pageNo - 1) * length;
		map.put("start", start);
		map.put("limit", length);
		
		GridModel gridModel = new GridModel();
		List<Map<String, Object>> list = transportInformationService.searchByPage(map);
		gridModel.setRows(list);
		
		gridModel.setTotal(transportInformationService.getCount(map));
		return gridModel;
	}
	
	@ResponseBody
	@RequestMapping(value = "/pass")
	public String pass(HttpServletRequest request) {
		String userName = (String)request.getSession().getAttribute("currUser");
		String id = request.getParameter("ids");
		String[] ids = id.split(",");
		Json json = null;
		try{   
			Calendar cal = Calendar.getInstance();
			int result = transportInformationService.savePass(ids, userName,cal.getTime());
			if(result > 0){
				json = getMessage(true);
				json.setMessage("处理成功");
				json.setTitle("处理结果");
			}else{
				json = getMessage(true);
				json.setMessage("处理异常，请刷新在尝试。");
				json.setTitle("处理结果");
			}
            
        }catch(Exception e){   
            e.printStackTrace();   
            json = getMessage(false);
            json.setMessage("处理异常，请稍后在尝试。");
			json.setTitle("处理结果");
        }
		
		return JSONArray.toJSONString(json);
	}
	
	@ResponseBody
	@RequestMapping(value = "/fail")
	public String fail(HttpServletRequest request) {
		String userName = (String)request.getSession().getAttribute("currUser");
		String id = request.getParameter("ids");
		String[] ids = id.split(",");
		Json json = null;
		try{   
			Calendar cal = Calendar.getInstance();
			int result = transportInformationService.saveFail(ids, userName,cal.getTime());
			if(result > 0){
				json = getMessage(true);
				json.setMessage("处理成功");
				json.setTitle("处理结果");
			}else{
				json = getMessage(true);
				json.setMessage("处理异常，请刷新在尝试。");
				json.setTitle("处理结果");
			}
            
        }catch(Exception e){   
            e.printStackTrace();   
            json = getMessage(false);
            json.setMessage("处理异常，请稍后在尝试。");
			json.setTitle("处理结果");
        }
		
		return JSONArray.toJSONString(json);
	}
	
	
	@RequestMapping("/searchCar")
	public String searchCar() {
		LOGGER.info("进入货运管理主页面！");
		return "manage/transport/searchCar";
	}
	
	@ResponseBody
	@RequestMapping(value = "/searchByPageCar")
	public GridModel searchByPageCar(HttpServletRequest request) {
		String createTime1 = request.getParameter("createTime1");
		String createTime2 = request.getParameter("createTime2");
		String startProvince = request.getParameter("startProvince");
		String endProvince = request.getParameter("endProvince");
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("createTime1", createTime1);
		map.put("createTime2", createTime2);
		map.put("startProvince", startProvince);
		map.put("endProvince", endProvince);
		
		map.put("type", "0");
		map.put("review", "1");
		
		
		int pageNo = Integer.parseInt(request.getParameter("page"));
		int length = Integer.parseInt(request.getParameter("rows"));
		
		int start = (pageNo - 1) * length;
		map.put("start", start);
		map.put("limit", length);
		
		GridModel gridModel = new GridModel();
		List<Map<String, Object>> list = transportInformationService.searchByPage(map);
		gridModel.setRows(list);
		
		gridModel.setTotal(transportInformationService.getCount(map));
		return gridModel;
	}
	
	
	@RequestMapping("/searchGoods")
	public String searchGoods() {
		LOGGER.info("进入货运管理主页面！");
		return "manage/transport/searchGoods";
	}
	
	@ResponseBody
	@RequestMapping(value = "/searchByPageGoods")
	public GridModel searchByPageGoods(HttpServletRequest request) {
		String createTime1 = request.getParameter("createTime1");
		String createTime2 = request.getParameter("createTime2");
		String startProvince = request.getParameter("startProvince");
		String endProvince = request.getParameter("endProvince");
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("createTime1", createTime1);
		map.put("createTime2", createTime2);
		map.put("startProvince", startProvince);
		map.put("endProvince", endProvince);
		
		map.put("type", "1");
		map.put("review", "1");
		
		
		
		int pageNo = Integer.parseInt(request.getParameter("page"));
		int length = Integer.parseInt(request.getParameter("rows"));
		
		int start = (pageNo - 1) * length;
		map.put("start", start);
		map.put("limit", length);
		
		GridModel gridModel = new GridModel();
		List<Map<String, Object>> list = transportInformationService.searchByPage(map);
		gridModel.setRows(list);
		
		gridModel.setTotal(transportInformationService.getCount(map));
		return gridModel;
	}
	
	
	
	@RequestMapping("/publishInfo")
	public String publishInfo() {
		return "manage/transport/publishInfo";
	}
	
	
	@ResponseBody
	@RequestMapping(value = "/searchByPageReview")
	public GridModel searchByPageReview(HttpServletRequest request) {
		String createTime1 = request.getParameter("createTime1");
		String createTime2 = request.getParameter("createTime2");
		String type = request.getParameter("type");
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("createTime1", createTime1);
		map.put("createTime2", createTime2);
		map.put("type", type);
		map.put("review", "0");
		
		
		
		int pageNo = Integer.parseInt(request.getParameter("page"));
		int length = Integer.parseInt(request.getParameter("rows"));
		
		int start = (pageNo - 1) * length;
		map.put("start", start);
		map.put("limit", length);
		
		GridModel gridModel = new GridModel();
		List<Map<String, Object>> list = transportInformationService.searchByPage(map);
		gridModel.setRows(list);
		
		gridModel.setTotal(transportInformationService.getCount(map));
		return gridModel;
	}
	
	@ResponseBody
	@RequestMapping(value = "/searchByPagePublish")
	public GridModel searchByPagePublish(HttpServletRequest request) {
		String createTime1 = request.getParameter("createTime1");
		String createTime2 = request.getParameter("createTime2");
		String type = request.getParameter("type");
		String review = request.getParameter("review");
		
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("createTime1", createTime1);
		map.put("createTime2", createTime2);
		map.put("type", type);
		map.put("review", review);
		
		
		
		int pageNo = Integer.parseInt(request.getParameter("page"));
		int length = Integer.parseInt(request.getParameter("rows"));
		
		int start = (pageNo - 1) * length;
		map.put("start", start);
		map.put("limit", length);
		
		GridModel gridModel = new GridModel();
		List<Map<String, Object>> list = transportInformationService.searchByPage(map);
		gridModel.setRows(list);
		
		gridModel.setTotal(transportInformationService.getCount(map));
		return gridModel;
	}
	
	
	
	/**
	 * 由于公告的controller还没有提交，所以该功能先放在该controller中
	 * @param request
	 * @return
	 */
	@ResponseBody
	@RequestMapping(value = "/info")
	public GridModel info(HttpServletRequest request) {
		
		
		String userName = (String)request.getSession().getAttribute("currUser");
		int pageNo = Integer.parseInt(request.getParameter("pageNo"));
		int length = Integer.parseInt(request.getParameter("pageSize"));
		
		int start = (pageNo - 1) * length;
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("start", start);
		map.put("limit", length);
		map.put("name", userName);
		GridModel gridModel = new GridModel();
		List<Map<String, Object>> list = transportInformationService.searchByPageNews(map);
		gridModel.setRows(list);
		
		gridModel.setTotal(transportInformationService.getCountNews(map));
		return gridModel;
	}
	
	/**
	 * 由于公告的controller还没有提交，所以该功能先放在该controller中
	 * @param request
	 * @return
	 */
	@RequestMapping("/detailMain")
	public String detailMain(HttpServletRequest request, ModelMap map) {
		String id = request.getParameter("id");
		Map<String, Object> m = transportInformationService.detail(id);
		
		map.put("title", m.get("title").toString());
		map.put("createDate", m.get("createDate").toString());
		map.put("content", m.get("content").toString());
		
		return "manage/transport/detail";
	}
}
