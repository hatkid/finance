package com.finance.controller;

import java.sql.Timestamp;
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

import com.alibaba.fastjson.JSONArray;
import com.finance.entity.Notice;
import com.finance.entity.Users;
import com.finance.model.GridModel;
import com.finance.model.Json;
import com.finance.service.BusinessManagementService;
import com.finance.service.NoticeService;
import com.finance.service.UsersService;
import com.finance.utils.Constants;
import com.finance.utils.PageUtil;

@Controller
@RequestMapping(value = "/manage/notice")

public class MgrNoticeController extends BaseController {
	private final Logger LOGGER = LoggerFactory
			.getLogger(MgrNoticeController.class);

	@Autowired
	private NoticeService noticeService;
    @Autowired
    private UsersService usersService;
	@Autowired
	private BusinessManagementService businessManagementService;

	@RequestMapping("/main")
	public String main() {
		return "manage/notice/noticeMain";
	}

	@ResponseBody
	@RequestMapping(value = "/searchByPage")
	public GridModel searchByPage(HttpServletRequest request) throws Exception {
		String title = "";
		String vestInCompany = "";
		if(request.getParameter("title")!=null){
			title = request.getParameter("title");
		}
		if(request.getParameter("vestInCompany")!=null){
			vestInCompany = request.getParameter("vestInCompany");
		}
		Notice l = new Notice();
		l.setTitle(title);
		l.setVestInCompany(vestInCompany);
		int pageNo = Integer.parseInt(request.getParameter("page"));
		int length = Integer.parseInt(request.getParameter("rows"));
		PageUtil pageUtil = new PageUtil((pageNo - 1) * length, length);
		GridModel gridModel = new GridModel();
		gridModel.setRows(noticeService.searchByPage(pageUtil, l));
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("title", title);
		map.put("vestInCompany", vestInCompany);
		gridModel.setTotal(noticeService.getCount(map));
		return gridModel;
	}

	@RequestMapping("/editDlg")
	public String editDlg(HttpServletRequest request, ModelMap map) {
		String username =  (String)request.getSession().getAttribute("currUser");   
		Users u=usersService.getUserByName(username);
		map.put("myid", u.getMyid());
		return "manage/notice/noticeEditDlg";
	}

	@ResponseBody
	@RequestMapping(value = "/saveOrUpdate")
	public String saveOrUpdate(HttpServletRequest request,HttpServletResponse response,Notice notice) throws Exception {
		String username =  (String)request.getSession().getAttribute("currUser");   
        if(username == null){  
            response.sendRedirect( "manage/login");
        }
        Users u=usersService.getUserByName(username);
        Timestamp d = new Timestamp(System.currentTimeMillis());
        notice.setCreateBy(username);
        notice.setCreateDate(d);
        notice.setVestInCompany(u.getVestInCompany());
        
        String gov = request.getParameter("gov");
        if(gov.equals("0")){
        	notice.setMyid("A");
        }
		Json json = getMessage(noticeService
				.persistence(notice));
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
		int flag = noticeService.delete(id);
		if (flag > 0) {
			json.setStatus(true);
			json.setMessage(Constants.POST_DATA_SUCCESS);
		} else {
			json.setMessage(Constants.POST_DATA_FAIL + Constants.IS_EXT_SUBMENU);
		}
		return JSONArray.toJSONString(json);
	}
	
	
	
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
		List<Map<String, Object>> list = noticeService.searchByPageNews(map);
		gridModel.setRows(list);
		
		gridModel.setTotal(noticeService.getCountNews(map));
		return gridModel;
	}
	
	@RequestMapping("/detailMain")
	public String detailMain(HttpServletRequest request, ModelMap map) {
		String id = request.getParameter("id");
		Map<String, Object> m = noticeService.detail(id);
		
		map.put("title", m.get("title").toString());
		map.put("createDate", m.get("createDate").toString());
		map.put("content", m.get("content").toString());
		
		return "manage/transport/detail";
	}
}
