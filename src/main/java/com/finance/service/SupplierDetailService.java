package com.finance.service;

import java.util.List;
import java.util.Map;

import com.finance.entity.SupplierDetail;

@SuppressWarnings("rawtypes")
public interface SupplierDetailService extends BaseService<SupplierDetail> {
    boolean persistence(SupplierDetail supplierDetail);
	List searchByPage(SupplierDetail supplierDetail);
	int delete(SupplierDetail supplierDetail);
	List<Map<String, String>> getCompanyName();
}
