package com.finance.dao;

import java.util.List;

import com.finance.entity.UserRole;

/**
 * author:lvzhi
 * time: 2015/10/8 9:31
 */
public interface UserRoleMapper extends BaseMapper<UserRole> {

    List<UserRole> findAllByUserId(int userId);

}
