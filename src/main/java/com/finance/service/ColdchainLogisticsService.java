package com.finance.service;

import java.util.List;
import java.util.Map;

import com.finance.entity.ColdchainLogistics;
import com.finance.entity.ColdchainLogistics;
import com.finance.utils.PageUtil;

public interface ColdchainLogisticsService extends BaseService<ColdchainLogistics> {
    boolean persistence(ColdchainLogistics l);
	List searchByPage(PageUtil pageUtil, ColdchainLogistics l);
	List<ColdchainLogistics> findAllMap(Map<String, Object> selectMap);
	public int batchInsert(List<Map<String,String>> listMap);
	List<Map<String,Object>> searchDownload(Map<String, Object> paramMap);
	int updateNOLocation(Map<String,Object> paramMap);
    Long getCountNOLocation();
    Map<String, Object> getOne();
}
