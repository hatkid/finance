package com.finance.dao;

import java.util.List;

import com.finance.entity.SalesReport;

public interface SalesReportMapper extends BaseMapper<SalesReport> {
	List<SalesReport> searchByPage(SalesReport salesReport);
    int delete(SalesReport salesReport);
}
