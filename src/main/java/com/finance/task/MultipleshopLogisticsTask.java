package com.finance.task;

import java.util.Map;

import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.scheduling.quartz.QuartzJobBean;

import com.alibaba.fastjson.JSONObject;
import com.finance.service.ColdchainLogisticsService;
import com.finance.service.ForwarderLogisticsService;
import com.finance.service.GardenLogisticsService;
import com.finance.service.ManufacturingLogisticsService;
import com.finance.service.MultipleshopLogisticsService;
import com.finance.service.ServiceLogisticsService;
import com.finance.service.StorageLogisticsService;
import com.finance.service.TransportLogisticsService;
import com.finance.utils.Constants;
import com.finance.utils.HttpUtil;
import com.finance.utils.SpringUtil;

/**
 * @author lvzhi
 *
 */
public class MultipleshopLogisticsTask extends QuartzJobBean {

	private final Logger LOGGER = LoggerFactory.getLogger(MultipleshopLogisticsTask.class);

	@Override
	protected void executeInternal(JobExecutionContext context) throws JobExecutionException {
		LOGGER.info("MultipleshopLogisticsTask is begin ...");
		MultipleshopLogisticsService multipleshopLogisticsService = SpringUtil.getBean("MultipleshopLogisticsService");
		long result5 = multipleshopLogisticsService.getCountNOLocation();
		recursion(result5, multipleshopLogisticsService);
	}
	
	public void recursion(long l, MultipleshopLogisticsService serviceLogisticsService){
		if(l > 0){
			LOGGER.info("开始处理。。。");
			Map<String, Object> result = serviceLogisticsService.getOne();
			String address = Constants.BaidDuMapConstants.getURL(result.get("address").toString());
			JSONObject obj = HttpUtil.httpGetRequest(address);
			
			result.put("lng", obj.getJSONObject("result").getJSONObject("location").getString("lng"));
			result.put("lat", obj.getJSONObject("result").getJSONObject("location").getString("lat"));
			
			serviceLogisticsService.updateNOLocation(result);
			long recursionResult = serviceLogisticsService.getCountNOLocation();
			recursion(recursionResult, serviceLogisticsService);
			
		}else{
			LOGGER.info("MultipleshopLogisticsService is over ...");
		}
	}
}
