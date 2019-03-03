/**
 * Title: MgrFunController.java
 * Package com.lvzhi.web
 * author dingdongliang
 * date 2015年9月17日 下午3:20:40
 * version V1.0
 * Copyright (c) 2015,lvzhi@163.com All Rights Reserved.
 */

package com.finance.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONArray;
import com.finance.entity.Permission;
import com.finance.model.Json;
import com.finance.model.MultiMenu;
import com.finance.model.TreeGridModel;
import com.finance.model.TreeModel;
import com.finance.service.PermissionService;
import com.finance.utils.Constants;

/**
 * author lvzhi
 * ClassName: MgrFunController
 * Description: 菜单控制（跳转and业务调用）
 */
@Controller
@RequestMapping(value = "/manage/menu")
public class MgrMenuController extends BaseController {

    private final Logger LOGGER = LoggerFactory.getLogger(MgrMenuController.class);

    @Autowired
    private PermissionService permissionService;

    /**
     * param return 参数
     * return String 返回类型
     * throws
     * Title: main
     * Description: 打开操作菜单页面
     */
    @RequestMapping(value = "/menuMain", method = RequestMethod.GET )
    public String main() {

        LOGGER.debug("main() is executed!");

        return "manage/menu/menuMain";
    }

    /**
     * param    request
     * param return 参数
     * return List<TreeGridModel> 返回类型
     * throws
     * Title: findAllFunctionList
     * Description: 显示所有可操作的菜单项，用于菜单编辑页面
     */
    @ResponseBody
    @RequestMapping(value = "/findAllMenuList")
    public List<TreeGridModel> findAllMenuList(HttpServletRequest request) {
        String pid = request.getParameter("id");
        return permissionService.findByPid(pid);
    }


    /**
     * 用于角色权限菜单分配
     */
    @ResponseBody
    @RequestMapping(value = "/findAllRoleMenu")
    public List<MultiMenu> findAllRoleMenu() {
        return permissionService.multiMenu();
    }


    /**
     * param return 参数
     * return List<TreeModel> 返回类型
     * throws
     * Title: findSuperFunc
     * Description:显示所有可添加子项的菜单项
     */
    @ResponseBody
    @RequestMapping(value = "/findSuperMenu")
    public List<TreeModel> findSuperFunc() {
        return permissionService.findSuperFunc();
    }

    /**
     * param    request
     * param return 参数
     * return String 返回类型
     * throws
     * Title: delFunction
     * Description: 删除菜单处理
     */
    @ResponseBody
    @RequestMapping(value = "/delMenu")
    public String delFunction(HttpServletRequest request) {
        String id = request.getParameter("id");

        Json json = new Json();
        if (permissionService.deleteById(id)) {
            json.setStatus(true);
            json.setMessage(Constants.POST_DATA_SUCCESS);
        } else {
            json.setMessage(Constants.POST_DATA_FAIL + Constants.IS_EXT_SUBMENU);
        }
        return JSONArray.toJSONString(json);
    }

    /**
     * param    request
     * param return 参数
     * return ModelAndView 返回类型
     * throws
     * Title: functionEditDlg
     * Description: 跳转到编辑菜单页面
     */
    @RequestMapping(value = "/menuEditDlg", method = RequestMethod.GET)
    public ModelAndView functionEditDlg() {

        LOGGER.debug("functionEditDlg() is executed!");

        ModelAndView model = new ModelAndView();
        model.setViewName("manage/menu/menuEditDlg");

        return model;
    }

    /**
     * param    request
     * param return 参数
     * return String 返回类型
     * throws
     * Title: saveOrUpdateFunc
     * Description: 新增菜单或者更新菜单处理
     */
    @RequiresPermissions({"menuAdd", "menuEdit"})
    @ResponseBody
    @RequestMapping(value = "/saveOrUpdateMenu")
    public String saveOrUpdateFunc(Permission permission) {
        Json json = getMessage(permissionService.persistenceFunction(permission));
        return JSONArray.toJSONString(json);
    }
}
