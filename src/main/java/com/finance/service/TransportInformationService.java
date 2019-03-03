package com.finance.service;

import java.util.Date;
import java.util.List;
import java.util.Map;


import com.finance.entity.TransportInformationPublish;


/**
 * 
 * @author lvzhi
 *
 */
public interface TransportInformationService extends BaseService<TransportInformationPublish> {
	List searchByPage(Map<String, Object> map);
	int savePass(String[] ids, String userName, Date date);
	int saveFail(String[] ids, String userName, Date date);
	
	List searchByPageNews(Map<String, Object> map);
	Long getCountNews(Map<String,Object> paramMap);
	
	Map<String,Object> detail(String id);
}