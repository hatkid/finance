package com.finance.service.impl;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.finance.entity.SupplierDetail;
import com.finance.service.SupplierDetailService;
import com.finance.utils.StringUtil;

@Transactional
@Service("SupplierDetailService")
@SuppressWarnings({"unused","rawtypes"})
public class SupplierDetailServiceImpl extends
		BaseServiceImpl<SupplierDetail> implements SupplierDetailService {

	private static final Logger LOGGER = LoggerFactory
			.getLogger(SupplierDetailServiceImpl.class);

	@Override
	public boolean persistence(SupplierDetail supplierDetail) {
		int i = 0;
		if (StringUtil.isEmpty(supplierDetail.getId() + "")) {
			try {
				i = supplierDetailMapper.insert(supplierDetail);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			try {
				i = supplierDetailMapper.update(supplierDetail);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return i > 0;
	}


	@Override
	public List searchByPage(SupplierDetail supplierDetail) {
		List<SupplierDetail> list = supplierDetailMapper
				.searchByPage(supplierDetail);
		return list;
	}
	
	@Override
	public int delete(SupplierDetail supplierDetail) {
		return supplierDetailMapper.delete(supplierDetail);
	}


	@Override
	public List<Map<String, String>> getCompanyName() {
		return supplierDetailMapper.getCompanyName();
	}

}
