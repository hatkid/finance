/**
 * Title: MgrUserController.java
 * Package com.lvzhi.controller
 * author dingdongliang
 * date 2015年10月26日 下午2:49:45
 * version V1.0
 * Copyright (c) 2015,lvzhi@163.com All Rights Reserved.
 */

package com.finance.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
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
import com.finance.entity.Role;
import com.finance.entity.Users;
import com.finance.model.GridModel;
import com.finance.model.Json;
import com.finance.service.UserRoleService;
import com.finance.service.UsersService;
import com.finance.utils.Constants;
import com.finance.utils.PageUtil;
import com.finance.utils.StringUtil;
import com.finance.utils.security.Md5Utils;

/**
 * ClassName: MgrUserController
 * Description: 用户管理控制类（跳转和业务控制）
 * author lvzhi
 * date 2015年10月26日 下午2:49:45
 */
@Controller
@RequestMapping(value = "/manage/users")
public class MgrUsersController extends BaseController {
    private final Logger LOGGER = LoggerFactory.getLogger(MgrUsersController.class);

    @Autowired
    private UsersService usersService;
    @Autowired
    private UserRoleService userRoleService;

    @RequestMapping("/usersMain")
    public String main() {
        LOGGER.debug("main() is executed!");
        return "manage/users/usersMain";
    }

    /**
     * Title: findAllOrganList
     * Description: 查询所有用户
     * param   request
     * param return 参数
     * return List<Organization> 返回类型
     * throws
     */
    @ResponseBody
    @RequestMapping(value = "/findAllUserList")
    public GridModel findAllUserList(HttpServletRequest request) {
        LOGGER.debug("findAllUserList() is executed!");
    	String account = "";
    	String name = "";
    	String vestInCompany = "";
    	Users u=new Users();
    	if(request.getParameter("account")!=null){
    		account = request.getParameter("account");
    	}
    	if(request.getParameter("name")!=null){
    		name = request.getParameter("name");
    	}
    	if(request.getParameter("name")!=null){
    		vestInCompany = request.getParameter("vestInCompany");
    	}
        u.setAccount(account);
        u.setName(name);
        u.setVestInCompany(vestInCompany);
        int pageNo = Integer.parseInt(request.getParameter("page"));
        int length = Integer.parseInt(request.getParameter("rows"));
        PageUtil pageUtil = new PageUtil((pageNo - 1) * length, length);
        GridModel gridModel = new GridModel();
        gridModel.setRows(usersService.searchUserByPage(pageUtil,u));
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("account", account);
		map.put("name", name);
		map.put("vestInCompany", vestInCompany);
        gridModel.setTotal(usersService.getCount(map));
        return gridModel;
    }

    @RequestMapping("/usersEditDlg")
    public String usersEditDlg() {
        LOGGER.debug("usersEditDlg() is executed!");
        return "manage/users/usersEditDlg";
    }


    /**
     * 搜索所有的用户信息，分页
     * request
     */
    @ResponseBody
    @RequestMapping(value = "/allUserByPage")
    public GridModel allUserByPage(HttpServletRequest request) {
        LOGGER.debug("allUserByPage() is executed!");
        int pageNo = Integer.parseInt(request.getParameter("page"));
        int length = Integer.parseInt(request.getParameter("rows"));
        PageUtil pageUtil = new PageUtil((pageNo - 1) * length, length);
        GridModel gridModel = new GridModel();
        gridModel.setRows(usersService.allUserByPage(pageUtil));
        gridModel.setTotal(usersService.getCount(null));
        return gridModel;
    }


    /**
     * param    request
     * param return 参数
     * return String 返回类型
     * throws
     * Title: saveOrUpdateUser
     * Description: 新增用户或者更新用户处理
     */
    @ResponseBody
    @RequestMapping(value = "/saveOrUpdateUser")
    public String saveOrUpdateUser(Users user) {
    	//修改
    	if(StringUtils.isNotBlank(user.getUserId()+"")  && !(user.getUserId()+"").equals("null")){
    		Users u = usersService.getUser(user);
    		if(u != null){
        		Json json = new Json();
        		json.setStatus(false);
        		json.setTitle("结果提醒");
        		json.setMessage("该用户已经存在");
        		return JSONArray.toJSONString(json);
        	}
    	}else{//新增
    		Users u = usersService.getUserByName(user.getName());
    		if(u != null){
        		Json json = new Json();
        		json.setStatus(false);
        		json.setTitle("结果提醒");
        		json.setMessage("该用户已经存在");
        		return JSONArray.toJSONString(json);
        	}
    	}
    	
    	
    	
    	
    	user.setPassword(Md5Utils.hash(Constants.DEFAULT_PASSWORD));
        Json json = getMessage(usersService.persistenceUser(user));
        return JSONArray.toJSONString(json);
    }

    @ResponseBody
    @RequestMapping(value = "/savePass")
    public String savePass(HttpServletRequest request) {
        String name = request.getParameter("name");
        String password = request.getParameter("password");
        String passwordOld = request.getParameter("passwordOld");
        Users u=new Users();
        u.setName(name);
    	u.setPassword(Md5Utils.hash(password));
    	u.setEmail(Md5Utils.hash(passwordOld));
        int num=usersService.savePass(u);
        Json json = new Json();
        if(num>0){
                json.setStatus(true);
                json.setMessage("密码修改成功！");
        }else {
            	json.setStatus(false);
                json.setMessage(Constants.POST_DATA_FAIL + "原始密码输入错误，请重新输入！");
            }
        return JSONArray.toJSONString(json);
    }

    @ResponseBody
    @RequestMapping(value = "/delUser")
    public String delUser(HttpServletRequest request) {
        String id = request.getParameter("userId");

        Json json = new Json();
        boolean flag = usersService.delUser(Integer.parseInt(id));

        if (flag) {
            json.setStatus(true);
            json.setMessage(Constants.POST_DATA_SUCCESS);
        } else {
            json.setMessage(Constants.POST_DATA_FAIL + Constants.IS_EXT_SUBMENU);
        }

        return JSONArray.toJSONString(json);
    }

    @ResponseBody
    @RequestMapping(value = "/usersRoleList")
    public List<Role> usersRoleList(HttpServletRequest request) {
        String id = request.getParameter("userId");
        List<Role> rList = new ArrayList<>();
        if (StringUtil.compareRegex(Constants.REGEX_INTEGER, id)) {
            rList = userRoleService.findAllByUserId(Integer.parseInt(id));
        }
        return rList;
    }

    /**
     * 保存某个用户的角色分配
     * param request
     * return
     */
    @ResponseBody
    @RequestMapping(value = "/saveUserRoles")
    public String saveUserRoles(HttpServletRequest request) {
        String userId = request.getParameter("userId");
        String checkedIds = request.getParameter("isCheckedIds");
        Json json = new Json();
        if (StringUtil.compareRegex(Constants.REGEX_INTEGER, userId)) {
            if (userRoleService.saveRole(Integer.parseInt(userId), checkedIds)) {
                json.setStatus(true);
                json.setMessage(Constants.POST_DATA_SUCCESS);
            } else {
                json.setMessage(Constants.POST_DATA_FAIL);
            }
        } else {
            json.setMessage(Constants.POST_DATA_FAIL);
        }
        return JSONArray.toJSONString(json);
    }
}
