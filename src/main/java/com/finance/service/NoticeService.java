package com.finance.service;

import java.util.List;
import java.util.Map;

import com.finance.entity.Notice;
import com.finance.utils.PageUtil;

public interface NoticeService extends BaseService<Notice> {
    boolean persistence(Notice l);
	List searchByPage(PageUtil pageUtil, Notice l);
	
	List searchByPageNews(Map<String, Object> map);
	Long getCountNews(Map<String,Object> paramMap);
	
	Map<String,Object> detail(String id);
}
