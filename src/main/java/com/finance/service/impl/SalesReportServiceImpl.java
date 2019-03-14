package com.finance.service.impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.finance.entity.SalesReport;
import com.finance.service.SalesReportService;
import com.finance.utils.StringUtil;

@Transactional
@Service("SalesReportService")
@SuppressWarnings({"unused","rawtypes"})
public class SalesReportServiceImpl extends
		BaseServiceImpl<SalesReport> implements SalesReportService {

	private static final Logger LOGGER = LoggerFactory
			.getLogger(SalesReportServiceImpl.class);

	@Override
	public boolean persistence(SalesReport salesReport) {
		int i = 0;
		if (StringUtil.isEmpty(salesReport.getId() + "")) {
			try {
				i = salesReportMapper.insert(salesReport);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			try {
				i = salesReportMapper.update(salesReport);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return i > 0;
	}


	@Override
	public List searchByPage(SalesReport salesReport) {
		List<SalesReport> list = salesReportMapper
				.searchByPage(salesReport);
		return list;
	}
	
	@Override
	public int delete(SalesReport salesReport) {
		return salesReportMapper.delete(salesReport);
	}

}
