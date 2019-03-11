package com.finance.dao;

import java.util.List;
import java.util.Map;

import com.finance.entity.CompanyFinance;

public interface CompanyFinanceMapper extends BaseMapper<CompanyFinance> {
	List<CompanyFinance> searchByPage(CompanyFinance l);
	List<CompanyFinance> findAllMap(Map<String, Object> selectMap);
	public int batchInsert(List<Map<String,String>> listMap);
	List<Map<String,Object>> searchDownload(Map<String, Object> paramMap);
	int updateNOLocation(Map<String,Object> paramMap);
    Long getCountNOLocation();
    Map<String, Object> getOne();
    int getCountByCompanyName(CompanyFinance companyFinance);
    int delete(CompanyFinance companyFinance);
}
