package com.finance.service.impl;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.finance.entity.ServiceLogistics;
import com.finance.service.ServiceLogisticsService;
import com.finance.utils.PageUtil;
import com.finance.utils.StringUtil;

@Transactional
@Service("ServiceLogisticsService")
public class ServiceLogisticsServiceImpl extends
		BaseServiceImpl<ServiceLogistics> implements ServiceLogisticsService {

	private static final Logger LOGGER = LoggerFactory
			.getLogger(ServiceLogisticsService.class);

	@Override
	public boolean persistence(ServiceLogistics l) {
		int i = 0;
		if (StringUtil.isEmpty(l.getId() + "")) {
			try {
				i = serviceLogisticsMapper.insert(l);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			try {
				i = serviceLogisticsMapper.update(l);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return i > 0;
	}

	@Override
	public List searchByPage(PageUtil pageUtil, ServiceLogistics l) {
		List<ServiceLogistics> list = serviceLogisticsMapper
				.searchByPage(pageUtil, l);
		return list;
	}

	@Override
	public List<ServiceLogistics> findAllMap(Map<String, Object> selectMap) {
		return serviceLogisticsMapper.findAllMap(selectMap);
	}

	@Override
	public int batchInsert(List<Map<String, String>> listMap) {
		
		return serviceLogisticsMapper.batchInsert(listMap);
	}
	
	@Override
	public List searchDownload(Map<String, Object> paramMap){
		return serviceLogisticsMapper.searchDownload(paramMap);
	}
	
	@Override
	public int updateNOLocation(Map<String,Object> paramMap){
		return serviceLogisticsMapper.updateNOLocation(paramMap);
	}
	
	@Override
    public Long getCountNOLocation(){
		return serviceLogisticsMapper.getCountNOLocation();
    }
	
	@Override
	public Map<String, Object> getOne(){
		return serviceLogisticsMapper.getOne();
	}
}
