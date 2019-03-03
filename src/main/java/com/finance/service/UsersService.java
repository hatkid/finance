package com.finance.service;

import java.util.List;

import com.finance.entity.Users;
import com.finance.utils.PageUtil;

public interface UsersService extends BaseService<Users> {
    /**
     * 根据名字查询用户,用于shiro权限控制
     * param name
     * return
     */
    Users getUserByName(String name);

    /**
     * 持久化用户信息
     * param user
     * return
     */
    boolean persistenceUser(Users user);

    /**
     * 分页查询用户信息
     * param pageUtil
     * return
     */
    List<Users> allUserByPage(PageUtil pageUtil);
    List<Users> searchUser(Users u);


    boolean delUser(int userId);

	List searchUserByPage(PageUtil pageUtil, Users u);

	int savePass(Users u);
	
	Users getUser(Users u);

}