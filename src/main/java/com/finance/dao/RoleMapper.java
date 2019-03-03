package com.finance.dao;

import java.util.List;

import com.finance.entity.Role;
import com.finance.utils.PageUtil;

/**
 * topic
 * author: lvzhi
 * create: 2016/4/8 9:30
 */
public interface RoleMapper extends BaseMapper<Role> {
    /**
     * 好名字自己会说话
     * param pageUtil
     * return
     */
    List<Role> findAllByPage(PageUtil pageUtil);
}
