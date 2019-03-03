<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<script type="text/javascript" src="resources/public/js/jquery.js"></script>
<script type="text/javascript"
	src="resources/public/js/jquery.easyui.min.js"></script>
<script type="text/javascript" src="resources/check/js/jqueryUtil.js"></script>
<script type="text/javascript"
	src="resources/public/js/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">
	$(document).ready(
			function() {
				$("#searchMap").click(
						function(event) {
							$.ajax({
								url : "manage/map/ajaxMap",
								type : "post",
								cache : false,
								async : false,
								data : $('#form').serialize(),// 你的formid
								datatype : 'json',
								success : function(data) {
								map.clearOverlays();
								if(typeof($.parseJSON(data).coldchainLogisticsList)!="undefined"){
									$.each($.parseJSON(data).coldchainLogisticsList,
											function(i, item) {
		var content = '企业名称：' + item.companyName + '</br>' + '法人代表：'
				+ item.legalPerson + '</br>' + '联系电话：' + item.tel + '</br>'
				+ '电子邮箱：' + item.email + '</br>' + '通讯地址：' + item.address;
		geocodeSearch('coldchainLogistics', item.lng, item.lat, content);
	});}
								if(typeof($.parseJSON(data).manufacturingLogisticsList)!="undefined"){
									$.each($.parseJSON(data).manufacturingLogisticsList, function(i,
			item) {
		var content = '企业名称：' + item.companyName + '</br>' + '工商部门注册号码：'
				+ item.registrationNumber + '</br>' + '联系电话：' + item.tel
				+ '</br>' + '电子邮箱：' + item.email + '</br>' + '通讯地址：'
				+ item.address;
		geocodeSearch('manufacturingLogistics', item.lng, item.lat, content);
	});}
								if(typeof($.parseJSON(data).forwarderLogisticsList)!="undefined"){
									$.each($.parseJSON(data).forwarderLogisticsList, function(i, item) {
		var content = '企业名称：' + item.companyName + '</br>' + '工商部门注册号码：'
				+ item.registrationNumber + '</br>' + '联系电话：' + item.tel
				+ '</br>' + '电子邮箱：' + item.email + '</br>' + '通讯地址：'
				+ item.address;
		geocodeSearch('forwarderLogistics', item.lng, item.lat, content);
	});}
								if(typeof($.parseJSON(data).gardenLogisticsList)!="undefined"){
									$.each($.parseJSON(data).gardenLogisticsList, function(i, item) {
		var content = '企业名称：' + item.companyName + '</br>' + '法人代表：'
				+ item.legalPerson + '</br>' + '联系电话：' + item.tel + '</br>'
				+ '电子邮箱：' + item.email + '</br>' + '通讯地址：' + item.address;
		geocodeSearch('gardenLogistics', item.lng, item.lat, content);
	});}
								if(typeof($.parseJSON(data).multipleshopLogisticsList)!="undefined"){
									$.each($.parseJSON(data).multipleshopLogisticsList,
			function(i, item) {
				var content = '快递网点名称：' + item.companyName + '</br>' + '联系人：'
						+ item.linkman + '</br>' + '联系电话：' + item.tel + '</br>'
						+ '电子邮箱：' + item.email + '</br>' + '通讯地址：'
						+ item.address;
				geocodeSearch('multipleshopLogistics', item.lng, item.lat,
						content);
			});}
								if(typeof($.parseJSON(data).serviceLogisticsList)!="undefined"){
									$.each($.parseJSON(data).serviceLogisticsList, function(i, item) {
		var content = '企业名称：' + item.companyName + '</br>' + '企业法人：'
				+ item.legalPerson + '</br>' + '联系电话：' + item.tel
				+ '</br>' + '电子邮箱：' + item.email + '</br>' + '通讯地址：'
				+ item.address;
		geocodeSearch('serviceLogistics', item.lng, item.lat, content);
	});}
								if(typeof($.parseJSON(data).storageLogisticsList)!="undefined"){
									$.each($.parseJSON(data).storageLogisticsList, function(i, item) {
		var content = '企业名称：' + item.companyName + '</br>' + '工商部门注册号码：'
				+ item.registrationNumber + '</br>' + '联系电话：' + item.tel
				+ '</br>' + '电子邮箱：' + item.email + '</br>' + '通讯地址：'
				+ item.address;
		geocodeSearch('storageLogistics', item.lng, item.lat, content);
	});}
								if(typeof($.parseJSON(data).transportLogisticsList)!="undefined"){
									$.each($.parseJSON(data).transportLogisticsList, function(i, item) {
		var content = '企业名称：' + item.companyName + '</br>' + '工商部门注册号码：'
				+ item.registrationNumber + '</br>' + '联系电话：' + item.tel
				+ '</br>' + '电子邮箱：' + item.email + '</br>' + '通讯地址：'
				+ item.address;
		geocodeSearch('transportLogistics', item.lng, item.lat, content);
	});}
											return false;
								},
								error : function() {

								}
							});
						});
			})
</script>
<style type="text/css">
body,html,#allmap {
	width: 100%;
	height: 100%;
	overflow: hidden;
	margin: 0;
	font-family: "微软雅黑";
}

.configdock {
	position: fixed;
	height: 30px;
	line-height: 30px;
	width: 100%;
	bottom: 0px;
	background-color: #b0e0e6;
	font-size: 14px;
	text-align: center;
}

.rightClass {
	position: fixed;
	height: 490px;
	line-height: 30px;
	width: 160px;
	top: 50px;
	right: 0px;
	background-color: #b0e0e6;
	font-size: 14px;
	text-align: left;
}
</style>
<script type="text/javascript" src="resources/public/js/jquery.js"></script>
<script type="text/javascript"
	src="http://api.map.baidu.com/api?v=2.0&ak=jWThkODiGhB1GpOSVhSqGVRf"></script>
<title>物流企业地理分布查询</title>
</head>
<body>
	<input type="hidden" id="coldchainLogisticsList"
		value='${coldchainLogisticsList}' />
	<input type="hidden" id="forwarderLogisticsList"
		value='${forwarderLogisticsList}' />
	<input type="hidden" id="manufacturingLogisticsList"
		value='${manufacturingLogisticsList}' />
	<input type="hidden" id="gardenLogisticsList"
		value='${gardenLogisticsList}' />
	<input type="hidden" id="multipleshopLogisticsList"
		value='${multipleshopLogisticsList}' />
	<input type="hidden" id="serviceLogisticsList"
		value='${serviceLogisticsList}' />
	<input type="hidden" id="storageLogisticsList"
		value='${storageLogisticsList}' />
	<input type="hidden" id="transportLogisticsList"
		value='${transportLogisticsList}' />
	<div id="allmap"></div>
	<div id="r-result" class="rightClass">
		<form id="form" target="formsubmit">
			&nbsp&nbsp<label>选择物流企业类型：</label><br /> <input
				id='ckcoldchainLogisticsList' name='ckcoldchainLogisticsList'
				type='checkbox' onclick='deletecoldchainLogistics(this)'><label
				for='ckcoldchainLogisticsList'>冷链物流企业</label><br /> <input
				id='ckforwarderLogisticsList' name='ckforwarderLogisticsList'
				type='checkbox' onclick='deleteforwarderLogistics(this)'><label
				for='ckforwarderLogisticsList'>货代型物流企业</label><br /> <input
				id='ckmanufacturingLogisticsList'
				name='ckmanufacturingLogisticsList' type='checkbox'
				onclick='deletemanufacturingLogistics(this)'><label
				for='ckmanufacturingLogisticsList'>制造类物流企业</label><br /> <input
				id='ckgardenLogisticsList' name='ckgardenLogisticsList'
				type='checkbox' onclick='deletegardenLogistics(this)'><label
				for='ckgardenLogisticsList'>物流园区</label><br /> <input
				id='ckmultipleshopLogisticsList' name='ckmultipleshopLogisticsList'
				type='checkbox' onclick='deletemultipleshopLogistics(this)'><label
				for='ckmultipleshopLogisticsList'>连锁快递物流企业</label><br /> <input
				id='ckserviceLogisticsList' name='ckserviceLogisticsList'
				type='checkbox' onclick='deleteserviceLogistics(this)'><label
				for='ckserviceLogisticsList'>综合服务型物流企业</label><br /> <input
				id='ckstorageLogisticsList' name='ckstorageLogisticsList'
				type='checkbox' onclick='deletestorageLogistics(this)'><label
				for='ckstorageLogisticsList'>仓储型物流企业</label><br /> <input
				id='cktransportLogisticsList' name='cktransportLogisticsList'
				type='checkbox' onclick='deletetransportLogistics(this)'><label
				for='cktransportLogisticsList'>运输型物流企业</label><br /> &nbsp&nbsp<label>企业名称：</label><br />&nbsp&nbsp<input
				id='companyName' name='companyName' type="text"><br />
			&nbsp&nbsp<label>通讯地址：</label><br />&nbsp&nbsp<input id='address'
				name='address' type="text"><br /> &nbsp&nbsp<label>联系电话：</label><br />&nbsp&nbsp<input
				id='tel' name='tel' type="text"><br /> &nbsp&nbsp
			<button id="searchMap">搜索</button>
			&nbsp&nbsp<input type="reset" id="resetInput" value="重置" />
		</form>
		<iframe name="formsubmit" style="display:none;">
    </iframe>
	</div>
</body>
</html>
<script type="text/javascript">
	// 百度地图API功能
	var map = new BMap.Map("allmap");
	map.addControl(new BMap.MapTypeControl()); //添加地图类型控件
	map.centerAndZoom("南阳市", 13);
	map.enableScrollWheelZoom(true);
	map.addControl(new BMap.NavigationControl());
	//var myGeo = new BMap.Geocoder();
	var opts = {
		width : 300, // 信息窗口宽度
		height : 160, // 信息窗口高度
		title : "企业详细信息", // 信息窗口标题
		enableMessage : true
	//设置允许信息窗发送短息
	};
	/*
	$.each($.parseJSON($('#coldchainLogisticsList').val()), function(i, item) {
		var content = '企业名称：' + item.companyName + '</br>' + '法人代表：'
				+ item.legalPerson + '</br>' + '联系电话：' + item.tel + '</br>'
				+ '电子邮箱：' + item.email + '</br>' + '通讯地址：' + item.address;
		geocodeSearch('coldchainLogistics', item.lng, item.lat, content);
	});
	$.each($.parseJSON($('#forwarderLogisticsList').val()), function(i, item) {
		var content = '企业名称：' + item.companyName + '</br>' + '工商部门注册号码：'
				+ item.registrationNumber + '</br>' + '联系电话：' + item.tel
				+ '</br>' + '电子邮箱：' + item.email + '</br>' + '通讯地址：'
				+ item.address;
		geocodeSearch('forwarderLogistics', item.lng, item.lat, content);
	});
	$.each($.parseJSON($('#manufacturingLogisticsList').val()), function(i,
			item) {
		var content = '企业名称：' + item.companyName + '</br>' + '工商部门注册号码：'
				+ item.registrationNumber + '</br>' + '联系电话：' + item.tel
				+ '</br>' + '电子邮箱：' + item.email + '</br>' + '通讯地址：'
				+ item.address;
		geocodeSearch('manufacturingLogistics', item.lng, item.lat, content);
	});
	$.each($.parseJSON($('#gardenLogisticsList').val()), function(i, item) {
		var content = '企业名称：' + item.companyName + '</br>' + '法人代表：'
				+ item.legalPerson + '</br>' + '联系电话：' + item.tel + '</br>'
				+ '电子邮箱：' + item.email + '</br>' + '通讯地址：' + item.address;
		geocodeSearch('gardenLogistics', item.lng, item.lat, content);
	});
	$.each($.parseJSON($('#multipleshopLogisticsList').val()),
			function(i, item) {
				var content = '快递网点名称：' + item.companyName + '</br>' + '联系人：'
						+ item.linkman + '</br>' + '联系电话：' + item.tel + '</br>'
						+ '电子邮箱：' + item.email + '</br>' + '通讯地址：'
						+ item.address;
				geocodeSearch('multipleshopLogistics', item.lng, item.lat,
						content);
			});
	$.each($.parseJSON($('#serviceLogisticsList').val()), function(i, item) {
		var content = '企业名称：' + item.companyName + '</br>' + '企业法人：'
				+ item.legalPerson + '</br>' + '联系电话：' + item.tel
				+ '</br>' + '电子邮箱：' + item.email + '</br>' + '通讯地址：'
				+ item.address;
		geocodeSearch('serviceLogistics', item.lng, item.lat, content);
	});
	$.each($.parseJSON($('#storageLogisticsList').val()), function(i, item) {
		var content = '企业名称：' + item.companyName + '</br>' + '工商部门注册号码：'
				+ item.registrationNumber + '</br>' + '联系电话：' + item.tel
				+ '</br>' + '电子邮箱：' + item.email + '</br>' + '通讯地址：'
				+ item.address;
		geocodeSearch('storageLogistics', item.lng, item.lat, content);
	});
	$.each($.parseJSON($('#transportLogisticsList').val()), function(i, item) {
		var content = '企业名称：' + item.companyName + '</br>' + '工商部门注册号码：'
				+ item.registrationNumber + '</br>' + '联系电话：' + item.tel
				+ '</br>' + '电子邮箱：' + item.email + '</br>' + '通讯地址：'
				+ item.address;
		geocodeSearch('transportLogistics', item.lng, item.lat, content);
	});*/
	function geocodeSearch(id, lng, lat, content) {
		//setTimeout(window.bdGEO, 400);
		var address = new BMap.Point(lng, lat);
		addMarker(id, address, content);
	}
	// 编写自定义函数,创建标注
	function addMarker(id, point, content) {
		var marker = new BMap.Marker(point);
		map.addOverlay(marker);
		addClickHandler(id, content, marker);
	}
	function addClickHandler(id, content, marker) {
		marker.addEventListener("click", function(e) {
			openInfo(content, e);
		});
		marker.setTitle(id);
	}
	function openInfo(content, e) {
		var p = e.target;
		var point = new BMap.Point(p.getPosition().lng, p.getPosition().lat);
		var infoWindow = new BMap.InfoWindow(content, opts); // 创建信息窗口对象 
		map.openInfoWindow(infoWindow, point); //开启信息窗口
	}
	/*
	function deletecoldchainLogistics(obj) {
		if (obj.checked) {
			$
					.each($.parseJSON($('#coldchainLogisticsList').val()),
							function(i, item) {
								var content = '企业名称：' + item.companyName
										+ '</br>' + '法人代表：' + item.legalPerson
										+ '</br>' + '联系电话：' + item.tel
										+ '</br>' + '电子邮箱：' + item.email
										+ '</br>' + '通讯地址：' + item.address;
								geocodeSearch('coldchainLogistics', item.lng,
										item.lat, content);
							});
		} else {
			var allOverlay = map.getOverlays();
			for ( var i = 0; i < allOverlay.length; i++) {
				if (allOverlay[i].getTitle() === 'coldchainLogistics') {
					map.removeOverlay(allOverlay[i]);
				}
			}
		}
	}
	function deleteforwarderLogistics(obj) {
		if (obj.checked) {
			$.each($.parseJSON($('#forwarderLogisticsList').val()),
					function(i, item) {
						var content = '企业名称：' + item.companyName + '</br>'
								+ '工商部门注册号码：' + item.registrationNumber
								+ '</br>' + '联系电话：' + item.tel + '</br>'
								+ '电子邮箱：' + item.email + '</br>' + '通讯地址：'
								+ item.address;
						geocodeSearch('forwarderLogistics', item.lng, item.lat,
								content);
					});
		} else {
			var allOverlay = map.getOverlays();
			for ( var i = 0; i < allOverlay.length; i++) {
				if (allOverlay[i].getTitle() === 'forwarderLogistics') {
					map.removeOverlay(allOverlay[i]);
				}
			}
		}
	}
	function deletemanufacturingLogistics(obj) {
		if (obj.checked) {
			$.each($.parseJSON($('#manufacturingLogisticsList').val()),
					function(i, item) {
						var content = '企业名称：' + item.companyName + '</br>'
								+ '工商部门注册号码：' + item.registrationNumber
								+ '</br>' + '联系电话：' + item.tel + '</br>'
								+ '电子邮箱：' + item.email + '</br>' + '通讯地址：'
								+ item.address;
						geocodeSearch('manufacturingLogistics', item.lng,
								item.lat, content);
					});
		} else {
			var allOverlay = map.getOverlays();
			for ( var i = 0; i < allOverlay.length; i++) {
				if (allOverlay[i].getTitle() === 'manufacturingLogistics') {
					map.removeOverlay(allOverlay[i]);
				}
			}
		}
	}
	function deletegardenLogistics(obj) {
		if (obj.checked) {
			$.each($.parseJSON($('#gardenLogisticsList').val()), function(i,
					item) {
				var content = '企业名称：' + item.companyName + '</br>' + '法人代表：'
						+ item.legalPerson + '</br>' + '联系电话：' + item.tel
						+ '</br>' + '电子邮箱：' + item.email + '</br>' + '通讯地址：'
						+ item.address;
				geocodeSearch('gardenLogistics', item.lng, item.lat, content);
			});
		} else {
			var allOverlay = map.getOverlays();
			for ( var i = 0; i < allOverlay.length; i++) {
				if (allOverlay[i].getTitle() === 'gardenLogistics') {
					map.removeOverlay(allOverlay[i]);
				}
			}
		}
	}
	function deletemultipleshopLogistics(obj) {
		if (obj.checked) {
			$.each($.parseJSON($('#multipleshopLogisticsList').val()),
					function(i, item) {
						var content = '快递网点名称：' + item.companyName + '</br>'
								+ '联系人：' + item.linkman + '</br>' + '联系电话：'
								+ item.tel + '</br>' + '电子邮箱：' + item.email
								+ '</br>' + '通讯地址：' + item.address;
						geocodeSearch('multipleshopLogistics', item.lng,
								item.lat, content);
					});
		} else {
			var allOverlay = map.getOverlays();
			for ( var i = 0; i < allOverlay.length; i++) {
				if (allOverlay[i].getTitle() === 'multipleshopLogistics') {
					map.removeOverlay(allOverlay[i]);
				}
			}
		}
	}
	function deleteserviceLogistics(obj) {
		if (obj.checked) {
			$.each($.parseJSON($('#serviceLogisticsList').val()), function(i,
					item) {
				var content = '企业名称：' + item.companyName + '</br>'
						+ '工商部门注册号码：' + item.registrationNumber + '</br>'
						+ '联系电话：' + item.tel + '</br>' + '电子邮箱：' + item.email
						+ '</br>' + '通讯地址：' + item.address;
				geocodeSearch('serviceLogistics', item.lng, item.lat, content);
			});
		} else {
			var allOverlay = map.getOverlays();
			for ( var i = 0; i < allOverlay.length; i++) {
				if (allOverlay[i].getTitle() === 'serviceLogistics') {
					map.removeOverlay(allOverlay[i]);
				}
			}
		}
	}
	function deletestorageLogistics(obj) {
		if (obj.checked) {
			$.each($.parseJSON($('#storageLogisticsList').val()), function(i,
					item) {
				var content = '企业名称：' + item.companyName + '</br>'
						+ '工商部门注册号码：' + item.registrationNumber + '</br>'
						+ '联系电话：' + item.tel + '</br>' + '电子邮箱：' + item.email
						+ '</br>' + '通讯地址：' + item.address;
				geocodeSearch('storageLogistics', item.lng, item.lat, content);
			});
		} else {
			var allOverlay = map.getOverlays();
			for ( var i = 0; i < allOverlay.length; i++) {
				if (allOverlay[i].getTitle() === 'storageLogistics') {
					map.removeOverlay(allOverlay[i]);
				}
			}
		}
	}
	function deletetransportLogistics(obj) {
		if (obj.checked) {
			$.each($.parseJSON($('#transportLogisticsList').val()),
					function(i, item) {
						var content = '企业名称：' + item.companyName + '</br>'
								+ '工商部门注册号码：' + item.registrationNumber
								+ '</br>' + '联系电话：' + item.tel + '</br>'
								+ '电子邮箱：' + item.email + '</br>' + '通讯地址：'
								+ item.address;
						geocodeSearch('transportLogistics', item.lng, item.lat,
								content);
					});
		} else {
			var allOverlay = map.getOverlays();
			for ( var i = 0; i < allOverlay.length; i++) {
				if (allOverlay[i].getTitle() === 'transportLogistics') {
					map.removeOverlay(allOverlay[i]);
				}
			}
		}
	}*/
</script>