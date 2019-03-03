package com.finance.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.finance.entity.Notice;
import com.finance.utils.PageUtil;

public interface NoticeMapper extends BaseMapper<Notice> {
	List<Notice> searchByPage(@Param("pageUtil")PageUtil pageUtil,@Param("l")Notice l);
	
	List searchByPageNews(Map<String, Object> map);
	Long getCountNews(Map<String, Object> paramMap);
	
	Map<String, Object> detail(String id);
}
