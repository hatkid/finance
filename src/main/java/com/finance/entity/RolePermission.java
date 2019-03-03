/**
 * Title: RolePermission.java
 * Package com.lvzhi.entity
 * author dingdongliang
 * date 2015年9月14日 下午2:37:30
 * version V1.0
 * Copyright (c) 2015,lvzhi@163.com All Rights Reserved.
 */

package com.finance.entity;

/**
 * author lvzhi
 * ClassName: RolePermission
 * Description: 权限许可
 * date 2015年9月14日 下午2:37:30
 */

public class RolePermission extends BaseDomain {

    private Integer rpId;
    private Integer roleId;
    private Integer permissionId;
    private String status;

    public Integer getRpId() {
        return rpId;
    }

    public void setRpId(Integer rpId) {
        this.rpId = rpId;
    }

    public Integer getRoleId() {
        return roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    public Integer getPermissionId() {
        return permissionId;
    }

    public void setPermissionId(Integer permissionId) {
        this.permissionId = permissionId;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
