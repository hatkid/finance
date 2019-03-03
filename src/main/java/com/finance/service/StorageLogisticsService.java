package com.finance.service;

import java.util.List;
import java.util.Map;

import com.finance.entity.StorageLogistics;
import com.finance.entity.StorageLogistics;
import com.finance.utils.PageUtil;

public interface StorageLogisticsService extends BaseService<StorageLogistics> {
    boolean persistence(StorageLogistics l);
	List searchByPage(PageUtil pageUtil, StorageLogistics l);
	List<StorageLogistics> findAllMap(Map<String, Object> selectMap);
	public int batchInsert(List<Map<String,String>> listMap);
	List<Map<String,Object>> searchDownload(Map<String, Object> paramMap);
	int updateNOLocation(Map<String,Object> paramMap);
    Long getCountNOLocation();
    Map<String, Object> getOne();
}
