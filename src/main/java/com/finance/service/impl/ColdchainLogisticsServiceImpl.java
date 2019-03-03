package com.finance.service.impl;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.finance.entity.ColdchainLogistics;
import com.finance.service.ColdchainLogisticsService;
import com.finance.entity.ColdchainLogistics;
import com.finance.utils.PageUtil;
import com.finance.utils.StringUtil;

@Transactional
@Service("ColdchainLogisticsService")
public class ColdchainLogisticsServiceImpl extends
		BaseServiceImpl<ColdchainLogistics> implements ColdchainLogisticsService {

	private static final Logger LOGGER = LoggerFactory
			.getLogger(ColdchainLogisticsService.class);

	@Override
	public boolean persistence(ColdchainLogistics l) {
		int i = 0;
		if (StringUtil.isEmpty(l.getId() + "")) {
			try {
				i = coldchainLogisticsMapper.insert(l);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			try {
				i = coldchainLogisticsMapper.update(l);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return i > 0;
	}

	@Override
	public List searchByPage(PageUtil pageUtil, ColdchainLogistics l) {
		List<ColdchainLogistics> list = coldchainLogisticsMapper
				.searchByPage(pageUtil, l);
		return list;
	}

	@Override
	public List<ColdchainLogistics> findAllMap(Map<String, Object> selectMap) {
		return coldchainLogisticsMapper.findAllMap(selectMap);
	}

	@Override
	public int batchInsert(List<Map<String, String>> listMap) {
		
		return coldchainLogisticsMapper.batchInsert(listMap);
	}
	
	@Override
	public List searchDownload(Map<String, Object> paramMap){
		return coldchainLogisticsMapper.searchDownload(paramMap);
	}
	
	@Override
	public int updateNOLocation(Map<String,Object> paramMap){
		return coldchainLogisticsMapper.updateNOLocation(paramMap);
	}
	
	@Override
    public Long getCountNOLocation(){
		return coldchainLogisticsMapper.getCountNOLocation();
    }
	
	@Override
	public Map<String, Object> getOne(){
		return coldchainLogisticsMapper.getOne();
	}
}
