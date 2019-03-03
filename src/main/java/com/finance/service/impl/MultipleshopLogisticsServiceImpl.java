package com.finance.service.impl;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.finance.entity.MultipleshopLogistics;
import com.finance.service.MultipleshopLogisticsService;
import com.finance.entity.MultipleshopLogistics;
import com.finance.utils.PageUtil;
import com.finance.utils.StringUtil;

@Transactional
@Service("MultipleshopLogisticsService")
public class MultipleshopLogisticsServiceImpl extends
		BaseServiceImpl<MultipleshopLogistics> implements MultipleshopLogisticsService {

	private static final Logger LOGGER = LoggerFactory
			.getLogger(MultipleshopLogisticsService.class);

	@Override
	public boolean persistence(MultipleshopLogistics l) {
		int i = 0;
		if (StringUtil.isEmpty(l.getId() + "")) {
			try {
				i = multipleshopLogisticsMapper.insert(l);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			try {
				i = multipleshopLogisticsMapper.update(l);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return i > 0;
	}

	@Override
	public List searchByPage(PageUtil pageUtil, MultipleshopLogistics l) {
		List<MultipleshopLogistics> list = multipleshopLogisticsMapper
				.searchByPage(pageUtil, l);
		return list;
	}

	@Override
	public List<MultipleshopLogistics> findAllMap(Map<String, Object> selectMap) {
		return multipleshopLogisticsMapper.findAllMap(selectMap);
	}

	@Override
	public int batchInsert(List<Map<String, String>> listMap) {
		
		return multipleshopLogisticsMapper.batchInsert(listMap);
	}
	
	@Override
	public List searchDownload(Map<String, Object> paramMap){
		return multipleshopLogisticsMapper.searchDownload(paramMap);
	}
	
	@Override
	public int updateNOLocation(Map<String,Object> paramMap){
		return multipleshopLogisticsMapper.updateNOLocation(paramMap);
	}
	
	@Override
    public Long getCountNOLocation(){
		return multipleshopLogisticsMapper.getCountNOLocation();
    }
	
	@Override
	public Map<String, Object> getOne(){
		return multipleshopLogisticsMapper.getOne();
	}
}
