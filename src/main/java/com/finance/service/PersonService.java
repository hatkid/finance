package com.finance.service;

import java.util.List;
import java.util.Map;

import com.finance.entity.Message;
import com.finance.entity.Person;
import com.finance.utils.PageUtil;

public interface PersonService extends BaseService<Person> {
    boolean persistence(Person l);
	List searchByPage(PageUtil pageUtil, Person l);
	List<Person> findAllMap();
	public int batchInsert(List<Map<String,String>> listMap);
	List<Map<String,Object>> searchDownload(Map<String, Object> paramMap);
	int addMsg(Message msg);
	int addMsgLog(List<Map<String, Object>> listMap);
	int addOneMsgLog(Map<String, Object> map);
}
