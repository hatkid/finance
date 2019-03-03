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
<link
	href="resources/public/css/ohhweb.css?datetime=<%=System.currentTimeMillis()%>"
	rel="stylesheet" type="text/css" />
<script type="text/javascript" src="resources/public/js/jquery.js"></script>
<script type="text/javascript"
	src="http://res.wx.qq.com/open/js/jweixin-1.0.0.js"></script>
<script type="text/javascript"
	src="http://api.map.baidu.com/api?v=2.0&ak=jWThkODiGhB1GpOSVhSqGVRf"></script>
<script charset="utf-8"
	src="http://map.qq.com/api/js?v=2.exp&key=GLDBZ-GL4WX-6ZT4I-ZL3LW-UAR76-DXFQL"></script>
<script type="text/javascript">
	var latitude = 0;
	var longitude = 0;
	var province = "";
	var city = "";
	var district = "";
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
	wx.error(function(res) {
		alert(res.errMsg);
	});
	function bind() {
		var serialNo = $("#serialNo").val();
		var openId = $("#openId").val();
		var userName = $("#userName").val();
		var phone = $("#phone").val();
		var myregNo = /^((ID)+\d{8})$/;
		if ($("#serialNo").val() == "" || !myregNo.test($("#serialNo").val())) {
			alert('请输入有效的主机序号！');
			return false;
		}
		var myreg = /^((1)+\d{10})$/;
		if ($("#phone").val() == "" || !myreg.test($("#phone").val())) {
			alert('请输入有效的手机号码！');
			return false;
		}
		wx.getLocation({
			type : 'wgs84', // 默认为wgs84的gps坐标，如果要返回直接给openLocation用的火星坐标，可传入'gcj02'
			success : function(res) {
				latitude = res.latitude; // 纬度，浮点数，范围为90 ~ -90
				longitude = res.longitude; // 经度，浮点数，范围为180 ~ -180。
				// 百度地图API功能
				var point = new BMap.Point(parseFloat(longitude),
						parseFloat(latitude));
				var geoc = new BMap.Geocoder();
				geoc.getLocation(point, function(rs) {
					var addComp = rs.addressComponents;
					//alert(addComp.province + ", " + addComp.city + ", "
					//		+ addComp.district + ", " + addComp.street + ", "
					//		+ addComp.streetNumber);
					province = addComp.province;
					city = addComp.city;
					district = addComp.district;
					$.ajax({
						type : "POST",
						url : "front/bind",
						dataType : "json",
						data : {
							"serialNo" : serialNo,
							"openId" : openId,
							"userName" : userName,
							"phone" : phone,
							"latitude" : latitude,
							"longitude" : longitude,
							"province" : province,
							"city" : city,
							"district" : district
						},
						success : function(result) {
							if (result.success == "true") {
								alert("绑定成功!");
							} else if (result.success == "false") {
								alert("绑定失败!");
							} else if (result.success == "binded") {
								alert("已经绑定设备，不能重复绑定！");
							}
						}
					});
				});
			}
		});
	}
</script>
<title>主机服务激活</title>
</head>
<body>
	<div id="allmap"></div>
	<div id="container"></div>
	<div style="height: 1200px;" class="box4">
		<div class="a3">售后服务信息${openId}</div>
		<form>
			<div class="box5" style="background-color: #ADD8E6;">
				<div class="box10">
					<input type="hidden" id="openId" value="${openId}" />
					<div class="a4">主机序号：</div>
					<input id="serialNo" type="text" size="20" value="ID00000000"><br />
					<div class="a4">用户名称：</div>
					<input id="userName" type="text" size="20" value="张三"><br />
					<div class="a4">用户手机号：</div>
					<input id="phone" type="text" size="20" value="18567289682"><br />
				</div>
				<div class="box7">
					<div class="bt1" style="background-image: url(bt.png);">
						<button onclick="bind();return false;">激活服务</button>
					</div>
				</div>
			</div>
		</form>
		<div class="box8">
			<div class="a10">激活说明：</div>
			<div class="a11">主机在首次使用必须联网激活服务，否则无法使用</div>
			<div class="a12">第一步：将主机接通电源，并连接网络</div>
			<div class="a13">第二步：点击微信菜单中的主机激活</div>
			<div class="a13">第三步：填写产品售后服务信息并确认提交</div>
			<div class="a13">
				第四步：激活完成！
			</div>
		</div>
		<div class="box9" align="center">
			<div class="a14">操作完成后，点击左上角返回图标回到微信</div>
		</div>
	</div>
</body>
</html>

