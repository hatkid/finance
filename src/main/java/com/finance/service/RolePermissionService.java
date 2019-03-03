package com.finance.service;

import java.util.List;

import com.finance.entity.Permission;
import com.finance.entity.RolePermission;

/**
 * topic
 * author: lvzhi
 * create: 2016/4/8 9:22
 */
public interface RolePermissionService extends BaseService<RolePermission> {

    /**
     * 好代码自己会说话
     * param roleId
     * return
     */
    List<Permission> findAllByRoleId(int roleId);

    /**
     * 保存分配角色权限
     * param roleId 角色id
     * param checkedIds 菜单权限ID集合
     * return
     */
    boolean savePermission(int roleId, String checkedIds);

}
