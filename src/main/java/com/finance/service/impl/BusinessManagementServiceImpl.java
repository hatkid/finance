package com.finance.service.impl;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.finance.entity.BusinessManagement;
import com.finance.entity.ServiceLogistics;
import com.finance.service.BusinessManagementService;
import com.finance.utils.PageUtil;
import com.finance.utils.StringUtil;


/**
 * 
 * @author lvzhi
 *
 */
@Transactional
@Service("BusinessManagementService")
public class BusinessManagementServiceImpl extends
		BaseServiceImpl<BusinessManagement> implements BusinessManagementService {

	private static final Logger LOGGER = LoggerFactory
			.getLogger(BusinessManagementServiceImpl.class);


	@Override
	public List searchByPage(Map<String, Object> map) {
		List list = businessManagementMapper
				.searchByPage(map);
		return list;
	}
	
	@Override
	public boolean persistence(BusinessManagement businessManagement) {
		int i = 0;
		if (StringUtil.isEmpty(businessManagement.getId() + "")) {
			try {
				i = businessManagementMapper.insert(businessManagement);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			try {
				i = businessManagementMapper.update(businessManagement);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return i > 0;
	}
	
	@Override
	public List search(Map<String, Object> map){
		List list = businessManagementMapper
				.search(map);
		return list;
	}

	@Override
	public List<BusinessManagement> findBusinessCmb(BusinessManagement bm) {
		List<BusinessManagement> list = businessManagementMapper
		.findBusinessCmb(bm);
		return list;
	}

}
