package com.finance.service;

import java.util.List;
import java.util.Map;

import com.finance.entity.ManufacturingLogistics;
import com.finance.entity.ManufacturingLogistics;
import com.finance.utils.PageUtil;

public interface ManufacturingLogisticsService extends BaseService<ManufacturingLogistics> {
    boolean persistence(ManufacturingLogistics l);
	List searchByPage(PageUtil pageUtil, ManufacturingLogistics l);
	List<ManufacturingLogistics> findAllMap(Map<String, Object> selectMap);
	public int batchInsert(List<Map<String,String>> listMap);
	List<Map<String,Object>> searchDownload(Map<String, Object> paramMap);
	int updateNOLocation(Map<String,Object> paramMap);
    Long getCountNOLocation();
    Map<String, Object> getOne();
}
