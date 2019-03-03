<%--
  Created by IntelliJ IDEA.
  User: lvzhi
  Date: 2016/4/4
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
<title>指令管理</title>
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
	$(document).ready(
			function() {
				$.ajax({
					url : "front/selectDevice",
					type : "post",
					cache : false,
					async : false,
					datatype : 'json',
					success : function(data) {
						var op = $("#deviceId1");
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
			});
	var $dg;
	var $grid;
	$(function() {
		$dg = $("#dg");
		$grid = $dg.datagrid({
			url : "manage/orderBind/findObn",
			width : 'auto',
			height : $(this).height() - 17,
			pagination : true,
			rownumbers : true,
			border : true,
			idField : 'id',
			striped : true,
			singleSelect : true,
			columns : [ [ {
				field : 'order',
				title : '指令',
				width : parseInt($(this).width() * 0.1)
			}, {
				field : 'resMsg',
				title : '回复内容',
				width : parseInt($(this).width() * 0.1),
				align : 'left'
			}, {
				field : 'deviceId',
				title : '设备类型',
				width : parseInt($(this).width() * 0.1),
				align : 'left',
				formatter: function(value,row,index){
					return $("#deviceId1 option[value='"+value+"']").text();
				}
			},  {
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

		//弹窗增加公司
		$("#addOrder").click(function() {
			$.modalDialog({
				title : '添加公司',
				width : 600,
				height : 400,
				href : 'manage/orderBind/orderBindEditDlg',
				buttons : [ {
					text : '保存',
					iconCls : 'icon-yes',
					handler : function() {
						$.modalDialog.openner = $grid;//因为添加成功之后，需要刷新这个dataGrid，所以先预定义好
						var f = $.modalDialog.handler.find("#form");
						f.submit();
					}
				}, {
					text : '取消',
					iconCls : 'icon-no',
					handler : function() {
						$.modalDialog.handler.dialog('destroy');
						$.modalDialog.handler = undefined;
					}
				} ]
			});
		});

		//弹窗修改公司
		$("#updateOrder").click(function() {
			var row = $dg.datagrid('getSelected');
			if (row) {
				$.modalDialog({
					title : '编辑公司',
					width : 600,
					height : 400,
					href : "manage/orderBind/orderBindEditDlg",
					onLoad : function() {
						var f = $.modalDialog.handler.find("#form");
						f.form("load", row);
					},
					buttons : [ {
						text : '编辑',
						iconCls : 'icon-yes',
						handler : function() {
							$.modalDialog.openner = $grid;//因为添加成功之后，需要刷新这个dataGrid，所以先预定义好
							var f = $.modalDialog.handler.find("#form");
							f.submit();
						}
					}, {
						text : '取消',
						iconCls : 'icon-no',
						handler : function() {
							$.modalDialog.handler.dialog('destroy');
							$.modalDialog.handler = undefined;
						}
					} ]
				});
			} else {
				parent.$.messager.show({
					title : "提示",
					msg : "请选择一行记录!",
					timeout : 1000 * 2
				});
			}
		});

		$("#delOrder").click(function() {
			var row = $dg.datagrid('getSelected');
			if (row) {
				var rowIndex = $dg.datagrid('getRowIndex', row);
				$.messager.confirm("提示", "确定要删除记录吗?", function(r) {
					if (r) {
						$.ajax({
							url : "manage/orderBind/delObn",
							data : "id=" + row.id,
							success : function(rsp) {
								if (rsp.status) {
									$dg.datagrid('deleteRow', rowIndex);
								}
								$.messager.show({
									title : rsp.title,
									msg : rsp.message,
									timeout : 1000 * 2
								});
							}
						});
					}
				});
			} else {
				$.messager.show({
					title : "提示",
					msg : "请选择一行记录!",
					timeout : 1000 * 2
				});
			}
		});
            $("#searchOrder").click(function () {
            	$('#dg').datagrid('load',{
            		order: $('#order').val(),
            		resMsg: $('#resMsg').val(),
            		deviceId: $('#deviceId1').val()
            	});
            });
            $("#searchClean").click(function () {
            		$('#order').val("");
            		$('#resMsg').val("");
            		$('#deviceId1').val("0");
            });
	});
</script>
</head>
<body>
	<div class="rightinfo">
		<div id="tb" class="easyui-layout">
			<ul class="toolbar">
				<shiro:hasPermission name="orderBindAdd">
					<li id="addOrder"><span><img
							src="resources/core/images/t01.png" /> </span>添加</li>
				</shiro:hasPermission>
				<shiro:hasPermission name="orderBindEdit">
					<li id="updateOrder"><span><img
							src="resources/core/images/t02.png" /> </span>修改</li>
				</shiro:hasPermission>
				<shiro:hasPermission name="orderBindDel">
					<li id="delOrder"><span><img
							src="resources/core/images/t03.png" /> </span>删除</li>
				</shiro:hasPermission>
            <li style="border:0px;cursor: auto;background: url(../images/toolbg.gif) repeat-x;">指令:</li>
            <li style="border:0px;cursor: auto;background: url(../images/toolbg.gif) repeat-x;"><input id="order" style="line-height:26px;border:1px solid #ccc"></li>
            <li style="border:0px;cursor: auto;background: url(../images/toolbg.gif) repeat-x;">回复内容:</li>
            <li style="border:0px;cursor: auto;background: url(../images/toolbg.gif) repeat-x;"><input id="resMsg" style="line-height:26px;border:1px solid #ccc"></li>
            <li style="border:0px;cursor: auto;background: url(../images/toolbg.gif) repeat-x;">设备类型:</li>
            <li style="border:0px;cursor: auto;background: url(../images/toolbg.gif) repeat-x;"><select id="deviceId1" style="line-height:26px;border:1px solid #ccc"></select></li>
            <li id="searchOrder"><span><img
                        src="resources/core/images/ico06.png" height="24px" width="24px"/></span>查询</li>
            <li id="searchClean"><span><img
                        src="resources/core/images/refresh.png" height="24px" width="24px"/></span>重置</li>
			</ul>
		</div>

		<table id="dg" title="指令管理"></table>
	</div>
</body>
</html>

