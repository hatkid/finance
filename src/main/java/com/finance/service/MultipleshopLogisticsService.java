package com.finance.service;

import java.util.List;
import java.util.Map;

import com.finance.entity.MultipleshopLogistics;
import com.finance.entity.MultipleshopLogistics;
import com.finance.utils.PageUtil;

public interface MultipleshopLogisticsService extends BaseService<MultipleshopLogistics> {
    boolean persistence(MultipleshopLogistics l);
	List searchByPage(PageUtil pageUtil, MultipleshopLogistics l);
	List<MultipleshopLogistics> findAllMap(Map<String, Object> selectMap);
	public int batchInsert(List<Map<String,String>> listMap);
	List<Map<String,Object>> searchDownload(Map<String, Object> paramMap);
	int updateNOLocation(Map<String,Object> paramMap);
    Long getCountNOLocation();
    Map<String, Object> getOne();
}
