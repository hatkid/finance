package com.finance.service.impl;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.finance.entity.ForwarderLogistics;
import com.finance.service.ForwarderLogisticsService;
import com.finance.entity.ForwarderLogistics;
import com.finance.utils.PageUtil;
import com.finance.utils.StringUtil;

@Transactional
@Service("ForwarderLogisticsService")
public class ForwarderLogisticsServiceImpl extends
		BaseServiceImpl<ForwarderLogistics> implements ForwarderLogisticsService {

	private static final Logger LOGGER = LoggerFactory
			.getLogger(ForwarderLogisticsService.class);

	@Override
	public boolean persistence(ForwarderLogistics l) {
		int i = 0;
		if (StringUtil.isEmpty(l.getId() + "")) {
			try {
				i = forwarderLogisticsMapper.insert(l);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			try {
				i = forwarderLogisticsMapper.update(l);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return i > 0;
	}

	@Override
	public List searchByPage(PageUtil pageUtil, ForwarderLogistics l) {
		List<ForwarderLogistics> list = forwarderLogisticsMapper
				.searchByPage(pageUtil, l);
		return list;
	}

	@Override
	public List<ForwarderLogistics> findAllMap(Map<String, Object> selectMap) {
		return forwarderLogisticsMapper.findAllMap(selectMap);
	}

	@Override
	public int batchInsert(List<Map<String, String>> listMap) {
		
		return forwarderLogisticsMapper.batchInsert(listMap);
	}
	
	@Override
	public List searchDownload(Map<String, Object> paramMap){
		return forwarderLogisticsMapper.searchDownload(paramMap);
	}
	
	@Override
	public int updateNOLocation(Map<String,Object> paramMap){
		return forwarderLogisticsMapper.updateNOLocation(paramMap);
	}
	
	@Override
    public Long getCountNOLocation(){
		return forwarderLogisticsMapper.getCountNOLocation();
    }
	
	@Override
	public Map<String, Object> getOne(){
		return forwarderLogisticsMapper.getOne();
	}
}
