package com.finance.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.finance.entity.GardenLogistics;
import com.finance.entity.GardenLogistics;
import com.finance.utils.PageUtil;

public interface GardenLogisticsMapper extends BaseMapper<GardenLogistics> {
	List<GardenLogistics> searchByPage(@Param("pageUtil")PageUtil pageUtil,@Param("l")GardenLogistics l);
	List<GardenLogistics> findAllMap(Map<String, Object> selectMap);
	public int batchInsert(List<Map<String,String>> listMap);
	List<Map<String,Object>> searchDownload(Map<String, Object> paramMap);
	int updateNOLocation(Map<String,Object> paramMap);
    Long getCountNOLocation();
    Map<String, Object> getOne();
}
