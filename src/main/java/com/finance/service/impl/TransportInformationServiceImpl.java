package com.finance.service.impl;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.finance.entity.TransportInformationPublish;
import com.finance.service.TransportInformationService;


/**
 * 
 * @author lvzhi
 *
 */
@Transactional
@Service("TransportInformationService")
public class TransportInformationServiceImpl extends
		BaseServiceImpl<TransportInformationPublish> implements TransportInformationService {

	private static final Logger LOGGER = LoggerFactory
			.getLogger(TransportInformationServiceImpl.class);

	@Override
	public List searchByPage(Map<String, Object> map) {
		List list = transportInformationPublishMapper
				.searchByPage(map);
		return list;
	}
	
	@Override
	public int savePass(String[] ids, String userName, Date date) {
		return transportInformationPublishMapper.savePass(ids, userName,date);
	}
	
	@Override
	public int saveFail(String[] ids, String userName, Date date) {
		return transportInformationPublishMapper.saveFail(ids, userName,date);
	}
	
	public List searchByPageNews(Map<String, Object> map){
		List list = transportInformationPublishMapper
				.searchByPageNews(map);
		return list;
	}
	public Long getCountNews(Map<String,Object> paramMap){
	
		return transportInformationPublishMapper.getCountNews(paramMap);
	}
	
	
	public Map<String,Object> detail(String id){
		return transportInformationPublishMapper.detail(id);
	}
	
}
