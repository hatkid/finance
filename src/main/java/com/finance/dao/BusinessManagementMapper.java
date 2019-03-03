package com.finance.dao;

import java.util.List;
import java.util.Map;

import com.finance.entity.BusinessManagement;

/**
 * 
 * @author lvzhi
 *
 */
public interface BusinessManagementMapper extends BaseMapper<BusinessManagement> {
	List searchByPage(Map<String, Object> map);
	List search(Map<String, Object> map);
	List<BusinessManagement> findBusinessCmb(BusinessManagement bm);
}
