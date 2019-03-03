package com.finance.service.impl;

import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.finance.entity.Notice;
import com.finance.service.NoticeService;
import com.finance.utils.PageUtil;
import com.finance.utils.StringUtil;

@Transactional
@Service("NoticeService")
public class NoticeServiceImpl extends
		BaseServiceImpl<Notice> implements NoticeService {

	private static final Logger LOGGER = LoggerFactory
			.getLogger(NoticeService.class);

	@Override
	public boolean persistence(Notice l) {
		int i = 0;
		if (StringUtil.isEmpty(l.getId() + "")) {
			try {
				i = noticeMapper.insert(l);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			try {
				i = noticeMapper.update(l);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		return i > 0;
	}

	@Override
	public List searchByPage(PageUtil pageUtil, Notice l) {
		List<Notice> list = noticeMapper
				.searchByPage(pageUtil, l);
		return list;
	}
	
	public List searchByPageNews(Map<String, Object> map){
		List list = noticeMapper
				.searchByPageNews(map);
		return list;
	}
	public Long getCountNews(Map<String,Object> paramMap){
	
		return noticeMapper.getCountNews(paramMap);
	}
	
	
	public Map<String,Object> detail(String id){
		return noticeMapper.detail(id);
	}
}
