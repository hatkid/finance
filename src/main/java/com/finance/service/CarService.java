package com.finance.service;

import java.util.List;
import java.util.Map;

import com.finance.entity.Car;
import com.finance.utils.PageUtil;

public interface CarService extends BaseService<Car> {
    boolean persistence(Car l);
	List searchByPage(PageUtil pageUtil, Car l, Map<String, Object> m);
    Long getCount1( Car l, Map<String, Object> m);
	List<Car> findAllMap();
	public int batchInsert(List<Map<String,String>> listMap);
	List<Map<String,Object>> searchDownload(Map<String, Object> paramMap);
	
	
	 Long getCountOverTime(Map<String, Object> map);
	 Long getCountOverTimePre(Map<String, Object> map);
	 
	 
	 List searchByPageRemind(PageUtil pageUtil, Map<String, Object> m);
	 Long getCountRemind(Map<String, Object> m);
}
