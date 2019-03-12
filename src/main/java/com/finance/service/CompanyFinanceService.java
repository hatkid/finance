package com.finance.service;

import java.util.List;

import com.finance.entity.CompanyFinance;

@SuppressWarnings("rawtypes")
public interface CompanyFinanceService extends BaseService<CompanyFinance> {
    boolean persistence(CompanyFinance l);
	List searchByPage( CompanyFinance l);
    int getCountByCompanyName(CompanyFinance companyFinance);
	int delete(CompanyFinance companyFinance);
}
