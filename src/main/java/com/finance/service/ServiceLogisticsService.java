package com.finance.service;

import java.util.List;
import java.util.Map;

import com.finance.entity.ServiceLogistics;
import com.finance.utils.PageUtil;

public interface ServiceLogisticsService extends BaseService<ServiceLogistics> {
    boolean persistence(ServiceLogistics l);
	List searchByPage(PageUtil pageUtil, ServiceLogistics l);
	List<ServiceLogistics> findAllMap(Map<String, Object> selectMap);
	public int batchInsert(List<Map<String,String>> listMap);
	List<Map<String,Object>> searchDownload(Map<String, Object> paramMap);
	
	int updateNOLocation(Map<String,Object> paramMap);
    Long getCountNOLocation();
    Map<String, Object> getOne();
}
