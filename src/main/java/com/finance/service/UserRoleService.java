package com.finance.service;

import java.util.List;

import com.finance.entity.Role;
import com.finance.entity.UserRole;

/**
 * topic
 * author: lvzhi
 * create: 2016/4/8 9:22
 */
public interface UserRoleService extends BaseService<UserRole> {

    /**
     * 好代码自己会说话
     * param roleId
     * return
     */
    List<Role> findAllByUserId(int userId);

    /**
     * 保存分配角色权限
     * param roleId 角色id
     * param checkedIds 菜单权限ID集合
     * return
     */
    boolean saveRole(int userId, String checkedIds);

}
