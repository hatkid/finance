<%@ page language="java" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
<base href="http://weixin.nygxxz.gov.cn/">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=320px" />
<link href="resources/public/css/ohhweb.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="resources/public/js/jquery.js"></script>
<script type="text/javascript"
	src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
<script type="text/javascript">
		wx.config({
		    debug: true, // 开启调试模式,调用的所有api的返回值会在客户端alert出来，若要查看传入的参数，可以在pc端打开，参数信息会通过log打出，仅在pc端时才会打印。
		    appId: '${appId}', // 必填，公众号的唯一标识
		    timestamp: '${timestamp}', // 必填，生成签名的时间戳
		    nonceStr: '${nonceStr}', // 必填，生成签名的随机串
		    signature: '${signature}',// 必填，签名，见附录1
		    jsApiList: [
			    'checkJsApi',
		        'onMenuShareTimeline',
		        'onMenuShareAppMessage',
		        'onMenuShareQQ',
		        'onMenuShareWeibo',
		        'onMenuShareQZone',
		        'hideMenuItems',
		        'showMenuItems',
		        'hideAllNonBaseMenuItem',
		        'showAllNonBaseMenuItem',
		        'translateVoice',
		        'startRecord',
		        'stopRecord',
		        'onVoiceRecordEnd',
		        'playVoice',
		        'onVoicePlayEnd',
		        'pauseVoice',
		        'stopVoice',
		        'uploadVoice',
		        'downloadVoice',
		        'chooseImage',
		        'previewImage',
		        'uploadImage',
		        'downloadImage',
		        'getNetworkType',
		        'openLocation',
		        'getLocation',
		        'hideOptionMenu',
		        'showOptionMenu',
		        'closeWindow',
		        'scanQRCode',
		        'chooseWXPay',
		        'openProductSpecificView',
		        'addCard',
		        'chooseCard',
		        'openCard'
		    ] // 必填，需要使用的JS接口列表，所有JS接口列表见附录2
		});
		
</script>
<script type="text/javascript">    
function unbind(id,fromUserName,serialNo){
	     $.ajax({  
	    	 type:'post',  
	    	 cache:false,  
	    	 dataType:'json',    
	         url:'front/unbind',
	         data : {
	        	 id : id,
	             fromUserName : fromUserName,
	             serialNo : serialNo
	         },
	         success:function(data){ 
	             if (data.success) {  
	                 alert("解绑成功！");
	                 location.href='https://open.weixin.qq.com/connect/oauth2/authorize?appid=wxdfcc0448285a5d4e&redirect_uri=http%3A%2F%2Fweixin.nygxxz.gov.cn%2Ffront%2FfindAllBind&response_type=code&scope=snsapi_base&state=123#wechat_redirect';
	             } else {  
	                 alert("解绑失败！");
	             }  
	         },  
	         error : function() { 
	        	 alert("异常！");  
	         }  
	     });
}
</script>
<title>主机解除绑定</title>
</head>
<body>

	<div
		style="height: 1200px;"
		class="box4">
		<div class="a3">售后服务信息</div>
		<form>
			<div class="box5" style="background-color: #ADD8E6;">
				<div class="box10" style="float: left;">
					<input type="hidden" id="openId" value="" />
					<div class="a4"> 用户：${openId}已绑定的主机列表：</div>
					<ul style="list-style-type:none;color:#000;font-size:15px;">
					<c:forEach items="${bindList}" var="bind">
					    <li>
					    &nbsp&nbsp&nbsp&nbsp主机编号：${bind.serialNo}&nbsp&nbsp&nbsp&nbsp
					    <button onclick="unbind('${bind.id}','${bind.fromUserName}','${bind.serialNo}');return false;">解绑</button>
					    </li>
					</c:forEach>
					</ul>
				</div>
			</div>
		</form>
		<div class="box8">
			<div class="a10">解绑说明：</div>
			<div class="a11">解绑后将无法使用微信控制主机</div>
			<div class="a12">如需绑定请点击主机服务激活菜单</div>
		</div>
		<div class="box9" align="center">
			<div class="a14">操作完成后，点击左上角返回图标回到微信</div>
		</div>
	</div>
</body>
</html>

