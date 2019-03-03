package com.finance.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.finance.entity.Users;
import com.finance.utils.PageUtil;

/**
 * author:lvzhi
 * time: 2015/10/8 9:31
 */
public interface UsersMapper extends BaseMapper<Users> {

    Users findByName(String name);

    /**
     * 好名字自己会说话
     * param pageUtil
     * return
     */
    List<Users> findAllByPage(PageUtil pageUtil);

	List<Users> searchUser(Users u);

	List<Users> searchUserByPage(@Param("pageUtil")PageUtil pageUtil,@Param("user")Users u);

	int savePass(Users u);
	
	Users getUser(Users u);
}
