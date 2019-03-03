package com.finance.service.impl;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.finance.entity.ManufacturingLogistics;
import com.finance.service.ManufacturingLogisticsService;
import com.finance.entity.ManufacturingLogistics;
import com.finance.utils.PageUtil;
import com.finance.utils.StringUtil;

@Transactional
@Service("ManufacturingLogisticsService")
public class ManufacturingLogisticsServiceImpl extends
		BaseServiceImpl<ManufacturingLogistics> implements ManufacturingLogisticsService {

	private static final Logger LOGGER = LoggerFactory
			.getLogger(ManufacturingLogisticsService.class);

	@Override
	public boolean persistence(ManufacturingLogistics l) {
		int i = 0;
		if (StringUtil.isEmpty(l.getId() + "")) {
			try {
				i = manufacturingLogisticsMapper.insert(l);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			try {
				i = manufacturingLogisticsMapper.update(l);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return i > 0;
	}

	@Override
	public List searchByPage(PageUtil pageUtil, ManufacturingLogistics l) {
		List<ManufacturingLogistics> list = manufacturingLogisticsMapper
				.searchByPage(pageUtil, l);
		return list;
	}

	@Override
	public List<ManufacturingLogistics> findAllMap(Map<String, Object> selectMap) {
		return manufacturingLogisticsMapper.findAllMap(selectMap);
	}

	@Override
	public int batchInsert(List<Map<String, String>> listMap) {
		
		return manufacturingLogisticsMapper.batchInsert(listMap);
	}
	
	@Override
	public List searchDownload(Map<String, Object> paramMap){
		return manufacturingLogisticsMapper.searchDownload(paramMap);
	}
	
	@Override
	public int updateNOLocation(Map<String,Object> paramMap){
		return manufacturingLogisticsMapper.updateNOLocation(paramMap);
	}
	
	@Override
    public Long getCountNOLocation(){
		return manufacturingLogisticsMapper.getCountNOLocation();
    }
	
	@Override
	public Map<String, Object> getOne(){
		return manufacturingLogisticsMapper.getOne();
	}
}
