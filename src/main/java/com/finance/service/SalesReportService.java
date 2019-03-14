package com.finance.service;

import java.util.List;

import com.finance.entity.SalesReport;

@SuppressWarnings("rawtypes")
public interface SalesReportService extends BaseService<SalesReport> {
    boolean persistence(SalesReport supplierDetail);
	List searchByPage(SalesReport supplierDetail);
	int delete(SalesReport supplierDetail);
}
