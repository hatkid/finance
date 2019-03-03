package com.finance.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.finance.entity.Permission;
import com.finance.entity.Role;
import com.finance.model.GridModel;
import com.finance.model.Json;
import com.finance.service.RolePermissionService;
import com.finance.service.RoleService;
import com.finance.utils.Constants;
import com.finance.utils.PageUtil;
import com.finance.utils.StringUtil;

/**
 * topic 角色与权限分配控制器
 * author lvzhi
 * create 2016/4/2 18:57
 */
@Controller
@RequestMapping(value = "/manage/role")
public class MgrRoleController extends BaseController {
    private final Logger LOGGER = LoggerFactory.getLogger(MgrRoleController.class);

    @Autowired
    private RoleService roleService;
    @Autowired
    private RolePermissionService rolePermissionService;

    /**
     * 跳转到主页面
     * return
     */
    @RequestMapping("/roleMgr")
    public String roleMain() {
        LOGGER.debug("roleMain() is executed!");
        return "manage/role/roleMain";
    }

    /**
     * 搜索所有的角色信息，分页
     * request
     */
    @ResponseBody
    @RequestMapping(value = "/allRoleByPage")
    public GridModel allRoleByPage(HttpServletRequest request) {
        LOGGER.debug("allRoleByPage() is executed!");
        int pageNo = Integer.parseInt(request.getParameter("page"));
        int length = Integer.parseInt(request.getParameter("rows"));
        PageUtil pageUtil = new PageUtil((pageNo - 1) * length, length);
        GridModel gridModel = new GridModel();
        gridModel.setRows(roleService.findAllRoleList(pageUtil));
        gridModel.setTotal(roleService.getCount(null));
        return gridModel;
    }

    /**
     * Title: findAllRoleList
     * Description: 查询所有权限
     * param   request
     * param return 参数
     * return List<Role> 返回类型
     * throws
     */
    @ResponseBody
    @RequestMapping(value = "/findAllRoleList")
    public List<Role> findAllRoleList() {
        return roleService.findAll();
    }

    /**
     * 跳转到添加和编辑子页面
     * return
     */
    @RequestMapping("/roleEditDlg")
    public String roleEditDlg() {
        LOGGER.debug("roleEditDlg() is executed!");
        return "manage/role/roleEditDlg";
    }

    /**
     * 持久化角色对象，提交到业务处理层后根据roleId来判断是新增还是编辑
     */
    @ResponseBody
    @RequestMapping(value = "/saveOrUpdateRole")
    public String saveOrUpdateRole( Role role) {
        Json json = getMessage(roleService.persistenceRole(role));
        return JSONArray.toJSONString(json);
    }

    /**
     * 删除角色信息  TODO 同时需要删除相关的权限配置，在业务层进行事务处理（包含用户角色和权限角色两种）
     * param request
     * return
     */
    @ResponseBody
    @RequestMapping(value = "/delRole")
    public String delRole(HttpServletRequest request) {
        String id = request.getParameter("roleId");

        Json json = new Json();
        boolean flag = roleService.delRole(Integer.parseInt(id));

        if (flag) {
            json.setStatus(true);
            json.setMessage(Constants.POST_DATA_SUCCESS);
        } else {
            json.setMessage(Constants.POST_DATA_FAIL + Constants.IS_EXT_SUBMENU);
        }

        return JSONArray.toJSONString(json);
    }

    /**
     * 获取某个角色的所有权限
     * param request
     * return
     */
    @ResponseBody
    @RequestMapping(value = "/getRolePermission")
    public List<Permission> getRolePermission(HttpServletRequest request) {
        String roleId = request.getParameter("roleId");
        List<Permission> permissions = new ArrayList<>();
        if (StringUtil.compareRegex(Constants.REGEX_INTEGER, roleId)) {
            permissions = rolePermissionService.findAllByRoleId(Integer.parseInt(roleId));
        }
        return permissions;
    }

    /**
     * 保存某个角色的权限分配
     * param request
     * return
     */
    @ResponseBody
    @RequestMapping(value = "/savePermission")
    public String savePermission(HttpServletRequest request) {
        String roleId = request.getParameter("roleId");
        String checkedIds = request.getParameter("allCheck");
        Json json = new Json();
        if (StringUtil.compareRegex(Constants.REGEX_INTEGER, roleId)) {
            if (rolePermissionService.savePermission(Integer.parseInt(roleId), checkedIds)) {
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
