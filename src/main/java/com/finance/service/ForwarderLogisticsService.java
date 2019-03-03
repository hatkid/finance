package com.finance.service;

import java.util.List;
import java.util.Map;

import com.finance.entity.ForwarderLogistics;
import com.finance.entity.ForwarderLogistics;
import com.finance.utils.PageUtil;

public interface ForwarderLogisticsService extends BaseService<ForwarderLogistics> {
    boolean persistence(ForwarderLogistics l);
	List searchByPage(PageUtil pageUtil, ForwarderLogistics l);
	List<ForwarderLogistics> findAllMap(Map<String, Object> selectMap);
	public int batchInsert(List<Map<String,String>> listMap);
	List<Map<String,Object>> searchDownload(Map<String, Object> paramMap);
	int updateNOLocation(Map<String,Object> paramMap);
    Long getCountNOLocation();
    Map<String, Object> getOne();
}
