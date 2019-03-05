
/**
 * Title: LoginController.java
 * author lvzhi
 * version V1.0
 */


package com.finance.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.builder.ReflectionToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authc.AuthenticationException;
import org.apache.shiro.authc.ExcessiveAttemptsException;
import org.apache.shiro.authc.IncorrectCredentialsException;
import org.apache.shiro.authc.LockedAccountException;
import org.apache.shiro.authc.UnknownAccountException;
import org.apache.shiro.authc.UsernamePasswordToken;
import org.apache.shiro.subject.Subject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.InternalResourceViewResolver;

import com.finance.model.MenuModel;
import com.finance.service.PermissionService;

/**
 * author lvzhi
 * ClassName: LoginController
 * Description: 登录处理
 */
@Controller
public class LoginController {
	
	
	
    private final Logger LOGGER = LoggerFactory.getLogger(LoginController.class);

    @Autowired
    private PermissionService permissionService;

    /**
     * param request
     * param return 参数
     * return String 返回类型
     * throws
     * Title: login
     * Description: 用户登录
     */
    @RequestMapping(value = "/login", method = RequestMethod.POST)
    public String login(HttpServletRequest request, RedirectAttributes attr, @CookieValue(value="JSESSIONID", defaultValue="") String jsessionId) {
        String resultPageURL = InternalResourceViewResolver.REDIRECT_URL_PREFIX + "/";
        String username = request.getParameter("username");
        // MD5加密
        // 数据库中密码数据为98a6a31a7801d0418606e2d8cbc9d4a0，输入密码为system
        String password = request.getParameter("password");
//        // 获取HttpSession中的验证码
//        String verifyCode = (String) request.getSession().getAttribute(
//                Constants.KAPTCHA_SESSION_KEY);
//        // 获取用户请求表单中输入的验证码
//        String submitCode = WebUtils.getCleanParam(request, "verifyCode");
//        LOGGER.debug("用户[" + username + "]登录时输入的验证码为[" + submitCode + "],HttpSession中的验证码为["
//                + verifyCode + "]");
//        if (StringUtils.isEmpty(submitCode)
//                || !StringUtils.equals(verifyCode, submitCode.toLowerCase())) {
//        	attr.addFlashAttribute("message_login", "验证码不正确");
//            return resultPageURL + "manage/login";
//        }
        UsernamePasswordToken token = new UsernamePasswordToken(username, password);
        LOGGER.debug("为了验证登录用户而封装的token为"
                + ReflectionToStringBuilder.toString(token, ToStringStyle.MULTI_LINE_STYLE));
        // 获取当前的Subject
        Subject subject = SecurityUtils.getSubject();
        try {
            // 在调用了login方法后,SecurityManager会收到AuthenticationToken,并将其发送给已配置的Realm执行必须的认证检查
            // 每个Realm都能在必要时对提交的AuthenticationTokens作出反应
            // 所以这一步在调用login(token)方法时,它会走到MyRealm.doGetAuthenticationInfo()方法中,具体验证方式详见此方法
            LOGGER.debug("对用户[" + username + "]进行登录验证..验证开始");
            if (!subject.isAuthenticated()) {
                token.setRememberMe(true);
                subject.login(token);
            }
            LOGGER.debug("对用户[" + username + "]进行登录验证..验证通过");
            
            
            //redis
//            redis.put(jsessionId, "test jsessionId");
            
            
            
            //TODO 这里要获取登录的时间，方便前台页面显示
            request.getSession().setAttribute("currUser", username);
            resultPageURL += "manage/main";
            LOGGER.debug(resultPageURL);
        } catch (UnknownAccountException uae) {
            LOGGER.debug("对用户[" + username + "]进行登录验证..验证未通过,未知账户");
            attr.addFlashAttribute("message_login", "未知账户");
            resultPageURL += "manage/login";
        } catch (IncorrectCredentialsException ice) {
            LOGGER.debug("对用户[" + username + "]进行登录验证..验证未通过,错误的凭证");
            attr.addFlashAttribute("message_login", "密码不正确");
            resultPageURL += "manage/login";
        } catch (LockedAccountException lae) {
            LOGGER.debug("对用户[" + username + "]进行登录验证..验证未通过,账户已锁定");
            attr.addFlashAttribute("message_login", "账户已锁定");
            resultPageURL += "manage/login";
        } catch (ExcessiveAttemptsException eae) {
            LOGGER.debug("对用户[" + username + "]进行登录验证..验证未通过,错误次数过多");
            attr.addFlashAttribute("message_login", "用户名或密码错误次数过多");
            resultPageURL += "manage/login";
        } catch (AuthenticationException ae) {
            // 通过处理Shiro的运行时AuthenticationException就可以控制用户登录失败或密码错误时的情景
            LOGGER.debug("对用户[" + username + "]进行登录验证..验证未通过,堆栈轨迹如下");
            ae.printStackTrace();
            attr.addFlashAttribute("message_login", "用户名或密码不正确");
            resultPageURL += "manage/login";
        }
        // 验证是否登录成功
        if (subject.isAuthenticated()) {
            // 这里可以进行一些认证通过后的一些系统参数初始化操作
            LOGGER.debug("用户[" + username + "]登录认证通过.");
        } else {
            token.clear();
        }
        return resultPageURL;
    }

    /**
     * param    request
     * param return 参数
     * return String 返回类型
     * throws
     * Title: logout
     * Description: 用户登出
     */
    @RequestMapping("/logout")
    public String logout() {
        String result = "manage/login";
        SecurityUtils.getSubject().logout();
        return result;
    }

    /**
     * param    response
     * param return 参数
     * return String 返回类型
     * throws
     * Title: getUsersMenu
     * Description:查询用户所有权限菜单
     */
    @ResponseBody
    @RequestMapping(value = "/getUsersMenu")
    public List<MenuModel> getUsersMenu() {
        return permissionService.createMenu();
    }

}
