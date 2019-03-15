<%@ page language="java" pageEncoding="UTF-8" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <base href="<%=basePath%>">
    <title>财务信息管理系统</title>
    <link href="resources/core/css/min.css" rel="stylesheet"
          type="text/css"/>
    <script type="text/javascript"
            src="resources/public/js/jquery.js"></script>
            <script type="text/javascript">
		if(window !=top){  
		    top.location.href=location.href;  
		} 
        $(function () {

            $('#kaptchaImage').click(function () {//生成验证码
                  $(this).hide().attr('src', 'captcha?' + Math.floor(Math.random() * 100))
                  .fadeIn();
            });
            
            
            var errorMsg = '${ message_login }';
            if(errorMsg != null && errorMsg != ''){
            	$("#errorMsg").html(errorMsg);
            	$("#errorMsg").css("color","red");
            }
            
            
            
        });
        function load() {
        	$("form").submit();
        }
    </script>
</head>
<body class="loginbody" onload="load()">
    <table class="logintable" border="0" cellspacing="0">
        <tr class="loginhead">
            <td class="headwelcometitle">
                <img class="headwelcomeimg" src="resources/public/css/images/loginsj.png" />
                <div class="headwelcometext">欢迎登录财务信息管理系统</div>
            </td>
            <td class="headtoolestitle" align="right">
                <span><a href="#">回首页</a></span>
                <span><a href="#">帮助</a></span>
                <span><a href="#">关于</a></span>
            </td>
        </tr>
        <tr class="loginmiddle">
            <td class="loginmidleft" align="center">
                <div class="divviewbox"></div>
            </td>
            <td class="loginmidright">
                <div class="divinputbox">
                    <div class="divinputboxtitle">登录 Login</div>
                    <div class="divinputboxinput">
                    <form action="login" method="post" id="form">
                        <input type="text" name="username"  class="inputusername" value="lvzhi" />
                        <input type="password" name="password"  class="inputpassword" value="111111" />
                        <input type="text" class="inputvalidatecode" value="" name="verifyCode" />
                        <img id="kaptchaImage" src="captcha" class="imgvalidatecode" />
                        <input type="submit" class="inputloginbutton" value="登        录" />
                    </form>
                    </div>
                </div>
            </td>
        </tr>
        <tr class="loginbottom">
            <td colspan="2" align="center" class="loginbottomcopyrignt">
                <span>Copyright</span><span>lvzhi</span><span>版权所有</span>
            </td>
        </tr>
    </table>
</body>
</html>
