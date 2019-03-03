/**
 * Title: PermissionMapper.java
 * Package com.lvzhi.dao
 * author dingdongliang
 * date 2015年9月14日 下午4:17:46
 * version V1.0
 * Copyright (c) 2015,lvzhi163.com All Rights Reserved.
 */

package com.finance.dao;

import java.util.List;

import com.finance.entity.Permission;

/**
 * ClassName: PermissionMapper
 * Description: 权限表查询类
 * author lvzhi
 */

public interface PermissionMapper extends BaseMapper<Permission> {
    /**
     * Title: adminMenu
     * Description: 超级管理员权限查询，type标志查询是菜单项(F)还是操作项(O)
     * param   type
     * param   参数
     * return List<Permission> 返回类型
     * throws
     */
    List<Permission> adminMenu(String type);

    /**
     * Title: usersMenu
     * Description: 普通用户权限查询，type标志查询是菜单项(F)还是操作项(O)
     * param   userId
     * param   type
     * param   参数
     * return List<Permission> 返回类型
     * throws
     */
    List<Permission> usersMenu(int userId, String type);

    /**
     * Title: findByPid
     * Description: 查询某个父菜单的子项
     * param   pid
     * param return 参数
     * return List<Permission> 返回类型
     * throws
     */
    List<Permission> findByPid(int pid);

    /**
     * Title: updateById
     * Description: 更新权限信息为过期
     * param param id
     * param return 参数
     * return int 返回类型
     * throws
     */
    int updateById(int id);

    /**
     * Title: findSuperFunc
     * Description: 获取所有可添加子项的权限信息
     * param return 参数
     * return List<Permission> 返回类型
     * throws
     */
    List<Permission> findSuperFunc();

    /**
     * 获取所有的权限，用于角色权限分配
     * return
     */
    List<Permission> findAllMenu();

    /**
     * 获取所有的默认有效权限，用于默认权限分配
     * return
     */
    List<Permission> findAllDefault();

}
