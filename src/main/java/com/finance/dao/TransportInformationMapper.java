package com.finance.dao;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;

import com.finance.entity.TransportInformationPublish;

/**
 * 
 * @author lvzhi
 *
 */
public interface TransportInformationMapper extends BaseMapper<TransportInformationPublish> {
	List searchByPage(Map<String, Object> map);
	int savePass(@Param("ids")String[] ids, @Param("userName")String userName, @Param("reviewTime")Date date);
	int saveFail(@Param("ids")String[] ids, @Param("userName")String userName, @Param("reviewTime")Date date);
	
	List searchByPageNews(Map<String, Object> map);
	Long getCountNews(Map<String, Object> paramMap);
	
	Map<String, Object> detail(String id);
}
