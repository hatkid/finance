<%--
  Created by IntelliJ IDEA.
  User: 杨刚
  Date: 2016/6/8
  Time: 8:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE html>
<html>
<head>
<title>用户查询</title>
<base href="<%=basePath%>">
<script type="text/javascript" src="resources/public/js/jquery.js"></script>
<link href="resources/core/css/style.css" rel="stylesheet"
	type="text/css" />
<link rel="stylesheet" type="text/css"
	href="resources/public/css/easyui.css" />
<link rel="stylesheet" type="text/css"
	href="resources/public/css/icon.css" />
<script type="text/javascript"
	src="resources/public/js/jquery.easyui.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="resources/check/css/common.css" />
<script type="text/javascript" src="resources/check/js/jqueryUtil.js"></script>
<script type="text/javascript"
	src="resources/public/js/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">
	var $dg;
	var $grid;
	$(function() {
		$dg = $("#dg");
		$grid = $dg
				.datagrid({
					url : "manage/orderBind/searchUserByPage",
					width : 'auto',
					height : $(this).height() - 17,
					pagination : true,
					rownumbers : true,
					border : true,
					idField : 'id',
					striped : true,
					singleSelect : true,
					columns : [ [
							{
								field : 'fromUserName',
								title : '用户编号',
								width : parseInt($(this).width() * 0.2)
							},
							{
								field : 'userName',
								title : '用户名',
								width : parseInt($(this).width() * 0.1)
							},
							{
								field : 'phone',
								title : '手机号码',
								width : parseInt($(this).width() * 0.1),
								align : 'left'
							}, 
							{
								field : 'createTime',
								title : '创建时间',
								width : parseInt($(this).width() * 0.1),
								align : 'left',
								formatter : function(value, row, index) {
									var unixTimestamp = new Date(value);
									return unixTimestamp.toLocaleString();
								}
							} ] ],
					toolbar : '#tb'
				});
		$("#search").click(function() {
			$('#dg').datagrid('load', {
				userName : $('#userName').val(),
				phone : $('#phone').val()
			});
		});
		$("#searchClean").click(function() {
			$('#userName').val("");
			$('#phone').val("");
		});
	});
</script>
</head>
<body>
	<div class="rightinfo">
		<div id="tb" class="easyui-layout">
			<ul class="toolbar">
				<li
					style="border:0px;cursor: auto;background: url(../images/toolbg.gif) repeat-x;">用户名:</li>
				<li
					style="border:0px;cursor: auto;background: url(../images/toolbg.gif) repeat-x;"><input
					id="userName" style="line-height:26px;border:1px solid #ccc">
				</li>
				<li
					style="border:0px;cursor: auto;background: url(../images/toolbg.gif) repeat-x;">手机号码:</li>
				<li
					style="border:0px;cursor: auto;background: url(../images/toolbg.gif) repeat-x;"><input
					id="phone" style="line-height:26px;border:1px solid #ccc">
				</li>
				<li id="search"><span><img
						src="resources/core/images/ico06.png" height="24px" width="24px" />
				</span>查询</li>
				<li id="searchClean"><span><img
						src="resources/core/images/refresh.png" height="24px" width="24px" />
				</span>重置</li>
			</ul>
		</div>

		<table id="dg" title="用户管理"></table>
	</div>
</body>
</html>

