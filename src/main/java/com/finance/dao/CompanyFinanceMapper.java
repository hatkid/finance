package com.finance.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.finance.entity.CompanyFinance;
import com.finance.entity.ForwarderLogistics;
import com.finance.entity.ForwarderLogistics;
import com.finance.utils.PageUtil;

public interface CompanyFinanceMapper extends BaseMapper<CompanyFinance> {
	List<CompanyFinance> searchByPage(CompanyFinance l);
	List<CompanyFinance> findAllMap(Map<String, Object> selectMap);
	public int batchInsert(List<Map<String,String>> listMap);
	List<Map<String,Object>> searchDownload(Map<String, Object> paramMap);
	int updateNOLocation(Map<String,Object> paramMap);
    Long getCountNOLocation();
    Map<String, Object> getOne();
    int getCountByCompanyName(String companyName);
}
