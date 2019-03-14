package com.finance.dao;

import java.util.List;

import com.finance.entity.RunningAccount;

public interface RunningAccountMapper extends BaseMapper<RunningAccount> {
	List<RunningAccount> searchByPage(RunningAccount runningAccount);
    int delete(RunningAccount runningAccount);
}
