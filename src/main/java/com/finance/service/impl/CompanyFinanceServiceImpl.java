package com.finance.service.impl;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.finance.entity.CompanyFinance;
import com.finance.service.CompanyFinanceService;
import com.finance.utils.StringUtil;

@Transactional
@Service("CompanyFinanceService")
@SuppressWarnings({"unused","rawtypes"})
public class CompanyFinanceServiceImpl extends
		BaseServiceImpl<CompanyFinance> implements CompanyFinanceService {

	private static final Logger LOGGER = LoggerFactory
			.getLogger(CompanyFinanceServiceImpl.class);

	@Override
	public boolean persistence(CompanyFinance l) {
		int i = 0;
		if (StringUtil.isEmpty(l.getId() + "")) {
			try {
				i = companyFinanceMapper.insert(l);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			try {
				i = companyFinanceMapper.update(l);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return i > 0;
	}


	@Override
	public List searchByPage( CompanyFinance l) {
		List<CompanyFinance> list = companyFinanceMapper
				.searchByPage( l);
		return list;
	}
	
	@Override
	public int delete(CompanyFinance companyFinance) {
		return companyFinanceMapper.delete(companyFinance);
	}

	/**
	 * 根据公司名字查询是否已经存在
	 */
	@Override
	public int getCountByCompanyName(CompanyFinance companyFinance) {
		return companyFinanceMapper.getCountByCompanyName(companyFinance);
	}
}
