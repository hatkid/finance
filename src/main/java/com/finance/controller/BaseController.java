package com.finance.controller;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.mgt.RealmSecurityManager;

import com.finance.model.Json;
import com.finance.shiro.LoginRealm;
import com.finance.utils.Constants;

/**
 * Description: 控制器基类，用于编写统一使用方法
 */

public class BaseController {

    protected Json getMessage(boolean flag) {
        Json json = new Json();
        if (flag) {
            json.setStatus(true);
            json.setMessage(Constants.POST_DATA_SUCCESS);
        } else {
            json.setMessage(Constants.POST_DATA_FAIL);
        }
        return json;
    }

    /**
     * 更改权限后，调用该方法刷新用户权限缓存,在用户角色控制器里调用 TODO
     */
    protected void refreshRealm() {
        RealmSecurityManager securityManager =
                (RealmSecurityManager) SecurityUtils.getSecurityManager();
        LoginRealm userRealm = (LoginRealm) securityManager.getRealms().iterator().next();
        userRealm.clearCachedAuthorizationInfo(SecurityUtils.getSubject().getPrincipal().toString());
    }
}
