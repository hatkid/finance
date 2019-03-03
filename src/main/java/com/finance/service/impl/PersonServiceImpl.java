package com.finance.service.impl;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.finance.entity.Message;
import com.finance.entity.Person;
import com.finance.service.PersonService;
import com.finance.utils.PageUtil;
import com.finance.utils.StringUtil;

@Transactional
@Service("PersonService")
public class PersonServiceImpl extends
		BaseServiceImpl<Person> implements PersonService {

	private static final Logger LOGGER = LoggerFactory
			.getLogger(PersonService.class);

	@Override
	public boolean persistence(Person l) {
		int i = 0;
		if (StringUtil.isEmpty(l.getId() + "")) {
			try {
				i = personMapper.insert(l);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			try {
				i = personMapper.update(l);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return i > 0;
	}

	@Override
	public List searchByPage(PageUtil pageUtil, Person l) {
		List<Person> list = personMapper
				.searchByPage(pageUtil, l);
		return list;
	}

	@Override
	public List<Person> findAllMap() {
		return personMapper.findAllMap();
	}

	@Override
	public int batchInsert(List<Map<String, String>> listMap) {
		
		return personMapper.batchInsert(listMap);
	}
	
	@Override
	public List searchDownload(Map<String, Object> paramMap){
		return personMapper.searchDownload(paramMap);
	}

	@Override
	public int addMsg(Message msg) {
		return personMapper.addMsg(msg);
	}

	@Override
	public int addMsgLog(List<Map<String, Object>> msgMap) {
		return personMapper.addMsgLog(msgMap);
	}

	@Override
	public int addOneMsgLog(Map<String, Object> map) {
		return personMapper.addOneMsgLog(map);
	}
}
