package com.finance.service.impl;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.finance.entity.Car;
import com.finance.service.CarService;
import com.finance.utils.PageUtil;
import com.finance.utils.StringUtil;

@Transactional
@Service("CarService")
public class CarServiceImpl extends
		BaseServiceImpl<Car> implements CarService {

	private static final Logger LOGGER = LoggerFactory
			.getLogger(CarService.class);

	@Override
	public boolean persistence(Car l) {
		int i = 0;
		if (StringUtil.isEmpty(l.getId() + "")) {
			try {
				i = carMapper.insert(l);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			try {
				i = carMapper.update(l);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return i > 0;
	}

	@Override
	public List searchByPage(PageUtil pageUtil, Car l, Map<String, Object> m) {
		List<Car> list = carMapper
				.searchByPage(pageUtil, l,m);
		return list;
	}
	public Long getCount1(Car l, Map<String, Object> m) {
		return carMapper.getCount1(l,m);
	}

	@Override
	public List<Car> findAllMap() {
		return carMapper.findAllMap();
	}

	@Override
	public int batchInsert(List<Map<String, String>> listMap) {
		
		return carMapper.batchInsert(listMap);
	}
	
	@Override
	public List searchDownload(Map<String, Object> paramMap){
		return carMapper.searchDownload(paramMap);
	}
	
	@Override
	public Long getCountOverTime(Map<String, Object> map){
		return carMapper.getCountOverTime(map);
	}
	
	@Override
	public Long getCountOverTimePre(Map<String, Object> map){
		return carMapper.getCountOverTimePre(map);
	}
	
	public List searchByPageRemind(PageUtil pageUtil, Map<String, Object> m){
		return carMapper.searchByPageRemind(pageUtil, m);
	}
	public Long getCountRemind(Map<String, Object> m){
		return carMapper.getCountRemind(m);
	}
}
