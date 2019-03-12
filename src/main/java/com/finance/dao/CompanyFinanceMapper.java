package com.finance.dao;

import java.util.List;

import com.finance.entity.CompanyFinance;

public interface CompanyFinanceMapper extends BaseMapper<CompanyFinance> {
	List<CompanyFinance> searchByPage(CompanyFinance l);
    int getCountByCompanyName(CompanyFinance companyFinance);
    int delete(CompanyFinance companyFinance);
}
