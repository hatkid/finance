package com.finance.service.impl;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.finance.entity.TransportLogistics;
import com.finance.service.TransportLogisticsService;
import com.finance.entity.TransportLogistics;
import com.finance.utils.PageUtil;
import com.finance.utils.StringUtil;

@Transactional
@Service("TransportLogisticsService")
public class TransportLogisticsServiceImpl extends
		BaseServiceImpl<TransportLogistics> implements TransportLogisticsService {

	private static final Logger LOGGER = LoggerFactory
			.getLogger(TransportLogisticsService.class);

	@Override
	public boolean persistence(TransportLogistics l) {
		int i = 0;
		if (StringUtil.isEmpty(l.getId() + "")) {
			try {
				i = transportLogisticsMapper.insert(l);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			try {
				i = transportLogisticsMapper.update(l);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return i > 0;
	}

	@Override
	public List searchByPage(PageUtil pageUtil, TransportLogistics l) {
		List<TransportLogistics> list = transportLogisticsMapper
				.searchByPage(pageUtil, l);
		return list;
	}

	@Override
	public List<TransportLogistics> findAllMap(Map<String, Object> selectMap) {
		return transportLogisticsMapper.findAllMap(selectMap);
	}

	@Override
	public int batchInsert(List<Map<String, String>> listMap) {
		
		return transportLogisticsMapper.batchInsert(listMap);
	}
	
	@Override
	public List searchDownload(Map<String, Object> paramMap){
		return transportLogisticsMapper.searchDownload(paramMap);
	}
	
	@Override
	public int updateNOLocation(Map<String,Object> paramMap){
		return transportLogisticsMapper.updateNOLocation(paramMap);
	}
	
	@Override
    public Long getCountNOLocation(){
		return transportLogisticsMapper.getCountNOLocation();
    }
	
	@Override
	public Map<String, Object> getOne(){
		return transportLogisticsMapper.getOne();
	}
}
