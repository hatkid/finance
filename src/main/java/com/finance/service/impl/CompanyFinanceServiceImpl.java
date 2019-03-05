package com.finance.service.impl;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.finance.entity.CompanyFinance;
import com.finance.service.CompanyFinanceService;
import com.finance.service.ForwarderLogisticsService;
import com.finance.utils.PageUtil;
import com.finance.utils.StringUtil;

@Transactional
@Service("CompanyFinanceService")
public class CompanyFinanceServiceImpl extends
		BaseServiceImpl<CompanyFinance> implements CompanyFinanceService {

	private static final Logger LOGGER = LoggerFactory
			.getLogger(ForwarderLogisticsService.class);

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
	public List<CompanyFinance> findAllMap(Map<String, Object> selectMap) {
		return companyFinanceMapper.findAllMap(selectMap);
	}

	@Override
	public int batchInsert(List<Map<String, String>> listMap) {
		
		return companyFinanceMapper.batchInsert(listMap);
	}
	
	@Override
	public List searchDownload(Map<String, Object> paramMap){
		return companyFinanceMapper.searchDownload(paramMap);
	}
	
	@Override
	public int updateNOLocation(Map<String,Object> paramMap){
		return companyFinanceMapper.updateNOLocation(paramMap);
	}
	
	@Override
    public Long getCountNOLocation(){
		return companyFinanceMapper.getCountNOLocation();
    }
	
	@Override
	public Map<String, Object> getOne(){
		return companyFinanceMapper.getOne();
	}
}
