package com.finance.dao;

import java.util.List;
import java.util.Map;

import com.finance.entity.SupplierDetail;

public interface SupplierDetailMapper extends BaseMapper<SupplierDetail> {
	List<SupplierDetail> searchByPage(SupplierDetail supplierDetail);
    int delete(SupplierDetail supplierDetail);
	List<Map<String, String>> getCompanyName();
}
