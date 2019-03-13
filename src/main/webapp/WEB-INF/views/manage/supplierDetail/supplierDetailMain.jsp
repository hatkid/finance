<%@ page language="java" pageEncoding="UTF-8"%>
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
<meta charset="UTF-8">
<title>公司管理</title>
<base href="<%=basePath%>">
<script type="text/javascript" src="resources/public/js/jquery.js"></script>
<link href="resources/core/css/style.css" rel="stylesheet"
	type="text/css" />
<link rel="stylesheet" type="text/css"
	href="resources/public/css/easyui.css">
<link rel="stylesheet" type="text/css"
	href="resources/public/css/icon.css">
<script type="text/javascript"
	src="resources/public/js/jquery.easyui.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="resources/check/css/common.css"/>
<style type="text/css">
.mystyle {
	line-height: 33px;
	height: 33px;
	border: solid 1px #d3dbde;
	float: left;
	padding-right: 10px;
	margin-right: 5px;
	margin-top: 5px;
	margin-left: 5px;
	border-radius: 3px;
	behavior: url(../js/PIE.htc);
	cursor: pointer;
}

.mysearch {
	line-height: 33px;
	height: 50px;
	border: solid 1px #d3dbde;
	float: inherit;
	padding-right: 10px;
	padding-top: 8px;
	padding-bottom: 8px;
	margin-right: 5px;
	margin-top: 5px;
	margin-left: 5px;
	border-radius: 3px;
	cursor: pointer;
}

.mysubmit {
	line-height: 33px;
	height: 50px;
	border: solid 1px #d3dbde;
	float: inherit;
	padding-right: 10px;
	padding-top: 8px;
	padding-bottom: 8px;
	border-radius: 3px;
	cursor: pointer;
	display: inline;
}
</style>
<script type="text/javascript" src="resources/check/js/jqueryUtil.js"></script>
<script type="text/javascript"
	src="resources/public/js/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">
	var $dg;
	var $grid;
	var width = 50;
	$(function() {
		$dg = $("#dg");
		$grid = $dg.datagrid({
			height : $(this).height() - 80,
			pagination : true,
			url : "manage/supplierDetail/searchByPage",
			rownumbers : true,
			animate : true,
			nowrap:false,//允许换行
	        fitColumns:true,//宽度自适应
			striped : true,
			border : true,
			idField : 'id',
			singleSelect : true,
			columns : [ [{
				field : 'companyId',
				hiddle : true
			},{
				field : 'companyName',
				title : '公司名称',
				align : 'left',
				width : width,
				editor : 'text'
			}, {
				field : 'purchaseName',
				title : '采购名称',
				align : 'left',
				width : width,
				editor : 'text'
			}, {
				field : 'unit',
				title : '单位',
				align : 'left',
				width : width,
				editor : 'text'
			}, {
				field : 'amount',
				title : '数量',
				align : 'left',
				width : width,
				editor : 'text'
			}, {
				field : 'price',
				title : '单价',
				align : 'left',
				width : width,
				editor : 'text'
			}, {
				field : 'total',
				title : '金额',
				align : 'left',
				width : width,
				editor : 'text'
			}, {
				field : 'paid',
				title : '已付款',
				align : 'left',
				width : width,
				editor : 'text'
			}, {
				field : 'payment',
				title : '付款方式',
				align : 'left',
				width : width,
				editor : 'text'
			}, {
				field : 'createTime',
				title : '日期',
				align : 'left',
				width : width,
				editor : 'text'
			}] ],
			toolbar :  "#tb"
		});
		$("#search").click(function() {
			$('#dg').datagrid('load',{
				companyId : $('#companyName').combobox('getValue'),
				createTimeStart : $('#createTimeStart').datetimebox('getValue'),
				createTimeEnd : $('#createTimeEnd').datetimebox('getValue')
			});
		});
		$("#searchClean").click(function() {
			$('#companyName').combobox('setValue', ''); 
			$('#createTimeStart').datebox('setValue','');
			$('#createTimeEnd').datebox('setValue','');
		});
		$("#add").click(function() {
			$.modalDialog({
				title : "添加数据",
				width : 500,
				height : 500,
				href : "manage/supplierDetail/editDlg",
				buttons : [ {
					text : '保存',
					iconCls : 'icon-yes',
					handler : function() {
						$.modalDialog.openner = $grid;
						var f = $.modalDialog.handler.find("#form");
						console.log(f);
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

		$("#update").click(function() {
			var row = $dg.datagrid('getSelected');
			console.log(row);
			if (row) {
				$.modalDialog({
					title : "编辑数据",
					width : 500,
					height : 500,
					href : "manage/supplierDetail/editDlg",
					onLoad : function() {
						var f = $.modalDialog.handler.find("#form");
						f.form("load", row);
					},
					buttons : [ {
						text : '编辑',
						iconCls : 'icon-yes',
						handler : function() {
							$.modalDialog.openner = $grid;
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
				$.messager.show({
					title : "提示",
					msg : "请选择一行记录!",
					timeout : 1000 * 2
				});
			}
		});

		$("#delete").click(function() {
			var node = $dg.datagrid('getSelected');
			if (node) {
				var rowIndex = $dg.datagrid('getRowIndex', node);
				$.messager.confirm("提示", "确定要删除记录吗?", function(result) {
					if (result) {
						$.ajax({
							url : "manage/supplierDetail/delete",
							data : {
								'id' : node.id
							},
							method : "POST",
							dataType : "JSON",
							success : function(rsp) {
								if (rsp.status) {
									$dg.datagrid('deleteRow', rowIndex);
								}
								$.messager.show({
									title : rsp.title,
									msg : rsp.message,
									timeout : 1000 * 2
								});
							},
							error : function() {
								$.messager.show({
									title : "提示",
									msg : "提交错误了！",
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
	});
</script>
</head>
<body>
	<div class="rightinfo">
			<div id="tb">
				<span style="display:inline-block;width:60%;word-wrap:break-word;white-space:normal;">
					<shiro:hasPermission name="supplierDetailAdd">
						<span id="add" class="easyui-linkbutton" data-options="iconCls:'icon-add',plain:true">
							添加</span>
					</shiro:hasPermission>
					<shiro:hasPermission name="supplierDetailUpdate">
						<span id="update" class="easyui-linkbutton" data-options="iconCls:'icon-edit',plain:true">
							修改</span>
					</shiro:hasPermission>
					<shiro:hasPermission name="supplierDetailRemove">
						<span id="delete" class="easyui-linkbutton" data-options="iconCls:'icon-remove',plain:true">
							删除</span>
					</shiro:hasPermission>
				</span>
			</div>
			<span style="margin-left: 5px;display:inline;"> 公司名称:
				<input class="easyui-combobox" name="language" id="companyName"
				data-options="
					url: 'manage/supplierDetail/getCompanyName',
					valueField:'id',
					textField:'companyName'
				">
			</span> 
			<span style="margin-left: 5px;display:inline;"> 创建时间: 
				<input id="createTimeStart" class="easyui-datebox" />
			</span> 
			至
			<span style="margin-left: 5px;display:inline;">
				<input id="createTimeEnd" class="easyui-datebox" />
			</span> 
			<span id="search" class="mysearch" style="display: inline;"><img
					src="resources/core/images/ico06.png" height="24px" width="24px"
					style="vertical-align:middle; margin: 5px;padding:5px;" /> 查询</span> <span
					id="searchClean" class="mysearch" style="display: inline;"><img
					src="resources/core/images/refresh.png" height="24px" width="24px"
					style="vertical-align:middle; margin: 5px;padding:5px;" /> 重置</span>
		<table class="tablelist" id="dg" title="供应商明细信息统计"></table>

		<div class="tip">
			<div class="tiptop">
				<span>提示信息</span><a></a>
			</div>
			<div class="tipinfo">
				<span><img src="resources/core/images/ticon.png" /> </span>
				<div class="tipright">
					<p>是否确认对信息的修改 ？</p>
					<cite>如果是请点击确定按钮 ，否则请点取消。</cite>
				</div>
			</div>
			<div class="tipbtn">
				<input name="" type="button" class="sure" value="确定" />&nbsp; <input
					name="" type="button" class="cancel" value="取消" />
			</div>
		</div>
	</div>
</body>
</html>
