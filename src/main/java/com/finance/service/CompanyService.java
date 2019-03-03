package com.finance.service;

import java.util.List;

import com.finance.dao.BaseMapper;
import com.finance.entity.Company;
import com.finance.utils.PageUtil;

/**
 * topic
 * author lvzhi
 * create 2016/4/4 14:23
 */
public interface CompanyService extends BaseMapper<Company> {

    /**
     * 查找所有的公司信息
     * param param
     * param pageUtil
     * return
     */
    List<Company> findComp(PageUtil pageUtil);


    /**
     * 根据ID删除公司信息
     * <p>
     * param compId
     * return
     */
    boolean delComp(String compId);

    /**
     * 持久化公司信息，根据ID判断是insert还是update
     * <p>
     * param company
     * return
     */
    boolean persistenceComp(Company company);

    /**
     * 查找所有的公司信息，用于组织资料添加和修改选择
     * return
     */
    List<Company> findSuperComp();


}
