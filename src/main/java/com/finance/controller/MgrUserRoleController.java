package com.finance.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * topic 用户角色分配处理器 TODO
 * author lvzhi
 * create 2016/4/2 18:58
 */
@Controller
@RequestMapping(value = "/manage/userRole")
public class MgrUserRoleController {
    private final Logger LOGGER = LoggerFactory.getLogger(MgrUserRoleController.class);

    @RequestMapping("/setRole")
    public String setRole() {
        LOGGER.debug("setRole() is executed!");
        return "manage/userRole/userRoleMain";
    }
}
