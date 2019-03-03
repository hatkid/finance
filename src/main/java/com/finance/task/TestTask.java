package com.finance.task;

import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.scheduling.quartz.QuartzJobBean;

import com.alibaba.fastjson.JSONObject;
import com.finance.utils.Constants;
import com.finance.utils.HttpUtil;

/**
 * @author lvzhi
 *
 */
public class TestTask extends QuartzJobBean {

	private final Logger LOGGER = LoggerFactory.getLogger(TestTask.class);

	@Override
	protected void executeInternal(JobExecutionContext context) throws JobExecutionException {
		
		System.out.println("test");
		
	}

}
