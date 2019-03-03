package com.finance.controller;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.finance.redis.RedisCache;
import com.finance.redis.RedisManager;

/**
 * 后台页面布局控制器
 */
@Controller
@RequestMapping(value = "/manage")
public class MgrJumpController {

    private final Logger LOGGER = LoggerFactory.getLogger(MgrJumpController.class);
    
    private static RedisCache redis ;
	private static RedisManager cache;
	static{
		cache = new RedisManager();
		redis = new RedisCache<>(cache);
	}

    @RequestMapping(value = "/mTop", method = RequestMethod.GET)
    public String mTop() {

        LOGGER.debug("mTop() is executed!");

        return "manage/layout/header";
    }

    @RequestMapping(value = "/mLeft", method = RequestMethod.GET)
    public String mLeft() {

        LOGGER.debug("mLeft() is executed!");

        return "manage/layout/left";
    }

    @RequestMapping(value = "/mFoot", method = RequestMethod.GET)
    public String mFoot() {

        LOGGER.debug("mFoot() is executed!");

        return "manage/layout/footer";
    }

    @RequestMapping(value = "/mCenter", method = RequestMethod.GET)
    public String mCenter() {

        LOGGER.debug("mCenter() is executed!");

        return "manage/layout/center";
    }

    @RequestMapping("/login")
    public String login(HttpServletRequest request) {
        LOGGER.debug("来自IP[" + request.getRemoteHost() + "]的访问");
        
        
      
        
        return "manage/login";
    }

    @RequestMapping("/main")
    public String main(@CookieValue(value="JSESSIONID", defaultValue="") String jsessionId) {
//    	  @SuppressWarnings("unchecked")
//		String test = redis.get(jsessionId).toString();
//          System.out.println("redis:" + test);
//        LOGGER.debug("main() is executed!");

        return "manage/main";
    }

}
