package com.finance.service.impl;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.finance.entity.RunningAccount;
import com.finance.entity.SalesReport;
import com.finance.service.RunningAccountService;
import com.finance.service.SalesReportService;
import com.finance.utils.StringUtil;

@Transactional
@Service("RunningAccountService")
@SuppressWarnings({"unused","rawtypes"})
public class RunningAccountServiceImpl extends
		BaseServiceImpl<RunningAccount> implements RunningAccountService {

	private static final Logger LOGGER = LoggerFactory
			.getLogger(RunningAccountServiceImpl.class);

	@Override
	public boolean persistence(RunningAccount runningAccount) {
		int i = 0;
		if (StringUtil.isEmpty(runningAccount.getId() + "")) {
			try {
				i = runningAccountMapper.insert(runningAccount);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			try {
				i = runningAccountMapper.update(runningAccount);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return i > 0;
	}


	@Override
	public List searchByPage(RunningAccount runningAccount) {
		List<RunningAccount> list = runningAccountMapper
				.searchByPage(runningAccount);
		return list;
	}
	
	@Override
	public int delete(RunningAccount runningAccount) {
		return runningAccountMapper.delete(runningAccount);
	}

}
