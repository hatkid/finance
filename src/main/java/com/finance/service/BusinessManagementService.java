package com.finance.service;

import java.util.List;
import java.util.Map;

import com.finance.entity.BusinessManagement;


/**
 * 
 * @author lvzhi
 *
 */
public interface BusinessManagementService extends BaseService<BusinessManagement> {
	List searchByPage(Map<String, Object> map);
	boolean persistence(BusinessManagement businessManagement);
	List search(Map<String, Object> map);
	List<BusinessManagement> findBusinessCmb(BusinessManagement bm);
}