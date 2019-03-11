package com.finance.service;

import java.util.List;
import java.util.Map;

import com.finance.entity.CompanyFinance;
import com.finance.utils.PageUtil;

public interface CompanyFinanceService extends BaseService<CompanyFinance> {
    boolean persistence(CompanyFinance l);
	List searchByPage( CompanyFinance l);
	List<CompanyFinance> findAllMap(Map<String, Object> selectMap);
	public int batchInsert(List<Map<String,String>> listMap);
	List<Map<String,Object>> searchDownload(Map<String, Object> paramMap);
	int updateNOLocation(Map<String,Object> paramMap);
    Long getCountNOLocation();
    Map<String, Object> getOne();
    int getCountByCompanyName(CompanyFinance companyFinance);
	int delete(CompanyFinance companyFinance);
}
