<%@ page language="java" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>


<!DOCTYPE html>
<html>
<head>
<base href="http://weixin.nygxxz.gov.cn/">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=320px" />
<link href="resources/public/css/ohhweb.css?datetime=<%=System.currentTimeMillis()%>" rel="stylesheet"
	type="text/css" />
<script type="text/javascript" src="resources/public/js/jquery.js"></script>
<script type="text/javascript"
	src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
<script type="text/javascript">
	wx.config({
		debug : true, // 开启调试模式,调用的所有api的返回值会在客户端alert出来，若要查看传入的参数，可以在pc端打开，参数信息会通过log打出，仅在pc端时才会打印。
		appId : '${appId}', // 必填，公众号的唯一标识
		timestamp : '${timestamp}', // 必填，生成签名的时间戳
		nonceStr : '${nonceStr}', // 必填，生成签名的随机串
		signature : '${signature}',// 必填，签名，见附录1
		jsApiList : [ 'checkJsApi', 'onMenuShareTimeline',
				'onMenuShareAppMessage', 'onMenuShareQQ', 'onMenuShareWeibo',
				'onMenuShareQZone', 'hideMenuItems', 'showMenuItems',
				'hideAllNonBaseMenuItem', 'showAllNonBaseMenuItem',
				'translateVoice', 'startRecord', 'stopRecord',
				'onVoiceRecordEnd', 'playVoice', 'onVoicePlayEnd',
				'pauseVoice', 'stopVoice', 'uploadVoice', 'downloadVoice',
				'chooseImage', 'previewImage', 'uploadImage', 'downloadImage',
				'getNetworkType', 'openLocation', 'getLocation',
				'hideOptionMenu', 'showOptionMenu', 'closeWindow',
				'scanQRCode', 'chooseWXPay', 'openProductSpecificView',
				'addCard', 'chooseCard', 'openCard' ]
	// 必填，需要使用的JS接口列表，所有JS接口列表见附录2
	});
</script>
<script type="text/javascript">
	function bind() {
		var deviceId = $("#deviceId").val();
		var openId = $("#openId").val();
		var deviceNickName = $("#deviceNickName").val();
		if ($("#deviceId").val() == "0") {
			alert('请选择设备类型!' + $("#deviceId").val());
			return false;
		}
		if ($("#deviceNickName").val() == "") {
			alert('设备昵称不能为空！');
			return false;
		}
		$.ajax({
			type : "POST",
			url : "front/bindDevice",
			dataType : "json",
			data : {
				"deviceId" : deviceId,
				"openId" : openId,
				"deviceNickName" : deviceNickName
			},
			success : function(result) {
				if (result.success == "true") {
					alert("设备添加成功!");
				} else if (result.success == "false") {
					alert("设备添加失败!");
				} else if (result.success == "binded") {
					alert("已经添加设备，不能重复添加！");
				}
			}
		});
	}
	$(document).ready(
			function() {
				$.ajax({
					url : "front/selectDevice",
					type : "post",
					cache : false,
					async : false,
					datatype : 'json',
					success : function(data) {
						var op = $("#deviceId");
						op.empty();
						op.prepend("<option value='0'>请选择设备类型</option>");
						$.each(data, function(index, value) {
							op.append("<option value="+value.id+" imgUrl="+value.deviceImg+">"
									+ value.deviceName + "</option>");
						});
					},
					error : function() {
					}
				});
				$('#deviceId').change(
						function() {
							var imgUrl = $(this).children('option:selected').attr("imgUrl");
							$("#deviceImage").attr("src",imgUrl);
						});
			});
</script>
<title>添加设备</title>
</head>
<body>

	<div style="height: 1200px;" class="box4">
		<div class="a3">添加设备${openId}</div>
		<form>
			<div class="box5" style="background-color: #ADD8E6;">
				<div class="box10">
					<input type="hidden" id="openId" value="${openId}" />
					<div class="a4">选择设备：</div>
					<select name="deviceId" id="deviceId"></select><br />
					<div class="a4">设备昵称：</div>
					<input id="deviceNickName" type="text" size="20" value="客厅设备"><br />
				</div>
				<div class="box7">
					<div class="bt1" style="background-image: url(bt.png);">
						<button onclick="bind();return false;">添加设备</button>
					</div>
				</div>
			</div>
		</form>
		<div style="text-align: center;">
		<img style="bodder-left:20px" width="300px" height="200px" id="deviceImage" src=""></img>
		</div>
		<div class="box8">
			<div class="a10">说明：</div>
			<div class="a11">识别已添加的设备指令，未添加的设备，不能识别。</div>
		</div>
		<div class="box9" align="center">
			<div class="a14">操作完成后，点击左上角返回图标回到微信</div>
		</div>
	</div>
</body>
</html>

