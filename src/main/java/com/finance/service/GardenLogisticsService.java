package com.finance.service;

import java.util.List;
import java.util.Map;

import com.finance.entity.GardenLogistics;
import com.finance.entity.GardenLogistics;
import com.finance.utils.PageUtil;

public interface GardenLogisticsService extends BaseService<GardenLogistics> {
    boolean persistence(GardenLogistics l);
	List searchByPage(PageUtil pageUtil, GardenLogistics l);
	List<GardenLogistics> findAllMap(Map<String, Object> selectMap);
	public int batchInsert(List<Map<String,String>> listMap);
	List<Map<String,Object>> searchDownload(Map<String, Object> paramMap);
	int updateNOLocation(Map<String,Object> paramMap);
    Long getCountNOLocation();
    Map<String, Object> getOne();
}
