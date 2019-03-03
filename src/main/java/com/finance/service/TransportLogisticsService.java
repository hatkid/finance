package com.finance.service;

import java.util.List;
import java.util.Map;

import com.finance.entity.TransportLogistics;
import com.finance.entity.TransportLogistics;
import com.finance.utils.PageUtil;

public interface TransportLogisticsService extends BaseService<TransportLogistics> {
    boolean persistence(TransportLogistics l);
	List searchByPage(PageUtil pageUtil, TransportLogistics l);
	List<TransportLogistics> findAllMap(Map<String, Object> selectMap);
	public int batchInsert(List<Map<String,String>> listMap);
	List<Map<String,Object>> searchDownload(Map<String, Object> paramMap);
	int updateNOLocation(Map<String,Object> paramMap);
    Long getCountNOLocation();
    Map<String, Object> getOne();
}
