package com.finance.utils;

import javax.servlet.http.HttpServletRequest;

import org.springframework.web.servlet.support.RequestContextUtils;

public class ServletContextUtil {

	public static javax.servlet.ServletContext getServletContext(HttpServletRequest request){
		return RequestContextUtils.getWebApplicationContext(request).getServletContext();
	}
}
