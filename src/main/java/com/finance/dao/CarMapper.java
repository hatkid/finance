package com.finance.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.finance.entity.Car;
import com.finance.utils.PageUtil;

public interface CarMapper extends BaseMapper<Car> {
	List<Car> searchByPage(@Param("pageUtil")PageUtil pageUtil,@Param("l")Car l, @Param("m")Map<String, Object> m);
    Long getCount1(@Param("l")Car l, @Param("m")Map<String, Object> m);
	List<Car> findAllMap();
	public int batchInsert(List<Map<String,String>> listMap);
	List<Map<String,Object>> searchDownload(Map<String, Object> paramMap);
	
	Long getCountOverTime(Map<String, Object> map);
	Long getCountOverTimePre(Map<String, Object> map);
	
	List searchByPageRemind(@Param("pageUtil")PageUtil pageUtil, @Param("m")Map<String, Object> m);
	Long getCountRemind(@Param("m")Map<String, Object> m);
}
