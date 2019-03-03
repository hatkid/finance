package com.finance.service.impl;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.finance.entity.StorageLogistics;
import com.finance.service.StorageLogisticsService;
import com.finance.entity.StorageLogistics;
import com.finance.utils.PageUtil;
import com.finance.utils.StringUtil;

@Transactional
@Service("StorageLogisticsService")
public class StorageLogisticsServiceImpl extends
		BaseServiceImpl<StorageLogistics> implements StorageLogisticsService {

	private static final Logger LOGGER = LoggerFactory
			.getLogger(StorageLogisticsService.class);

	@Override
	public boolean persistence(StorageLogistics l) {
		int i = 0;
		if (StringUtil.isEmpty(l.getId() + "")) {
			try {
				i = storageLogisticsMapper.insert(l);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			try {
				i = storageLogisticsMapper.update(l);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return i > 0;
	}

	@Override
	public List searchByPage(PageUtil pageUtil, StorageLogistics l) {
		List<StorageLogistics> list = storageLogisticsMapper
				.searchByPage(pageUtil, l);
		return list;
	}

	@Override
	public List<StorageLogistics> findAllMap(Map<String, Object> selectMap) {
		return storageLogisticsMapper.findAllMap(selectMap);
	}

	@Override
	public int batchInsert(List<Map<String, String>> listMap) {
		
		return storageLogisticsMapper.batchInsert(listMap);
	}
	
	@Override
	public List searchDownload(Map<String, Object> paramMap){
		return storageLogisticsMapper.searchDownload(paramMap);
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
