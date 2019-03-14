package com.finance.service;

import java.util.List;

import com.finance.entity.RunningAccount;

@SuppressWarnings("rawtypes")
public interface RunningAccountService extends BaseService<RunningAccount> {
    boolean persistence(RunningAccount runningAccount);
	List searchByPage(RunningAccount runningAccount);
	int delete(RunningAccount runningAccount);
}
