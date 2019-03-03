package com.finance.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.finance.entity.Message;
import com.finance.entity.Person;
import com.finance.utils.PageUtil;

public interface PersonMapper extends BaseMapper<Person> {
	List<Person> searchByPage(@Param("pageUtil")PageUtil pageUtil,@Param("l")Person l);
	List<Person> findAllMap();
	public int batchInsert(List<Map<String,String>> listMap);
	List<Map<String,Object>> searchDownload(Map<String, Object> paramMap);
	int addMsg(Message msg);
	int addMsgLog(List<Map<String, Object>> msgMap);
	int addOneMsgLog(Map<String, Object> map);
}
