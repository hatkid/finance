package com.finance.service.impl;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.finance.entity.GardenLogistics;
import com.finance.service.GardenLogisticsService;
import com.finance.entity.GardenLogistics;
import com.finance.utils.PageUtil;
import com.finance.utils.StringUtil;

@Transactional
@Service("GardenLogisticsService")
public class GardenLogisticsServiceImpl extends
		BaseServiceImpl<GardenLogistics> implements GardenLogisticsService {

	private static final Logger LOGGER = LoggerFactory
			.getLogger(GardenLogisticsService.class);

	@Override
	public boolean persistence(GardenLogistics l) {
		int i = 0;
		if (StringUtil.isEmpty(l.getId() + "")) {
			try {
				i = gardenLogisticsMapper.insert(l);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			try {
				i = gardenLogisticsMapper.update(l);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return i > 0;
	}

	@Override
	public List searchByPage(PageUtil pageUtil, GardenLogistics l) {
		List<GardenLogistics> list = gardenLogisticsMapper
				.searchByPage(pageUtil, l);
		return list;
	}

	@Override
	public List<GardenLogistics> findAllMap(Map<String, Object> selectMap) {
		return gardenLogisticsMapper.findAllMap(selectMap);
	}

	@Override
	public int batchInsert(List<Map<String, String>> listMap) {
		
		return gardenLogisticsMapper.batchInsert(listMap);
	}
	
	@Override
	public List searchDownload(Map<String, Object> paramMap){
		return gardenLogisticsMapper.searchDownload(paramMap);
	}
	
	@Override
	public int updateNOLocation(Map<String,Object> paramMap){
		return gardenLogisticsMapper.updateNOLocation(paramMap);
	}
	
	@Override
    public Long getCountNOLocation(){
		return gardenLogisticsMapper.getCountNOLocation();
    }
	
	@Override
	public Map<String, Object> getOne(){
		return gardenLogisticsMapper.getOne();
	}
}
