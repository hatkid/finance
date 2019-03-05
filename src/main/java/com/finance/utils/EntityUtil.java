package com.finance.utils;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;

import com.finance.entity.CommonEntity;
import com.finance.shiro.ShiroUser;

/**
 * @author lvzhi
 * @version 创建时间：2019年3月5日 下午1:34:45
 * @ClassName 类名称
 * @Description 类描述
 */
public class EntityUtil {

	private static final DateTimeFormatter DATE_TIME_FORMATTER = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");

	
	/**
	 * 设置数据库中通用字段
	 * @param commonEntity
	 */
	public static void setCommonInfo(CommonEntity commonEntity) {
		LocalDateTime localDateTime = LocalDateTime.now();
		ShiroUser user = Constants.getCurrendUser();
		commonEntity.setRow_state(1);
		commonEntity.setRow_create_time(localDateTime.format(DATE_TIME_FORMATTER));
		commonEntity.setRow_modify_time(localDateTime.format(DATE_TIME_FORMATTER));
		commonEntity.setRow_creater(user.getUserId());
		commonEntity.setRow_modifier(user.getUserId());
	}

}
