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
<title>通告管理</title>
<base href="<%=basePath%>">
<script type="text/javascript" src="resources/public/js/jquery.js"></script>
<link href="resources/core/css/style.css" rel="stylesheet"
	type="text/css" />
<link rel="stylesheet" type="text/css"
	href="resources/public/css/easyui.css">
<link rel="stylesheet" type="text/css"
	href="resources/public/css/icon.css">
<style type="text/css">
.mystyle{
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
.mysearch{
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

.file {
    position: relative;
    display: inline-block;
    background: #F4F4F4;
    border: 1px solid #D3DBDE;
    border-radius: 4px;
    padding: 6px 11px;
    margin-top: 6px;
    margin-left: 5px;
    overflow: hidden;
    color: #000000;
    text-decoration: none;
    text-indent: 0;
    line-height: 20px;
}
.file input {
    position: absolute;
    font-size: 100px;
    right: 0;
    top: 0;
    opacity: 0;
}
.file:hover {
    background: #AADFFD;
    border-color: #78C3F3;
    color: #004974;
    text-decoration: none;
}  

.mysubmit{
    line-height: 33px;
    height: 50px;
    border: solid 1px #d3dbde;
    float: inherit;
    padding-right: 10px;
    padding-top: 8px;
    padding-bottom: 8px;
    border-radius: 3px;
    cursor: pointer;
    display:inline;
}   
</style>
<script type="text/javascript"
	src="resources/public/js/jquery.easyui.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="resources/check/css/common.css">
<script type="text/javascript" src="resources/check/js/jqueryUtil.js"></script>
<script type="text/javascript"
	src="resources/public/js/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript">
	var $dg;
	var $grid;
	$(function() {
		$dg = $("#dg");
		$grid = $dg.datagrid({
			width : 'auto',
			height : $(this).height() - 17,
			pagination : true,
			url : "manage/notice/searchByPage",
			rownumbers : true,
			animate : true,
			fitColumns : true,
			striped : true,
			border : true,
			idField : 'id',
			singleSelect : true,
			columns : [ [ {
				field : 'title',
				title : '标题',
				align : 'left',
				editor : 'text'
			}, {
				field : 'vestInCompany',
				title : '所属公司',
				align : 'left',
				editor : 'text'
			}, {
				field : 'createBy',
				title : '创建人',
				align : 'left',
				editor : 'text'
			}, {
				field : 'createDate',
				title : '创建时间',
				align : 'left',
				formatter : function(value, row, index) {
					var unixTimestamp = new Date(value);
					return unixTimestamp.toLocaleString();
				}
			} ] ],
			toolbar : '#tb'
		});

		$("#add").click(function() {
			$.modalDialog({
				title : "添加数据",
				width : 700,
				height : 600,
				href : "manage/notice/editDlg",
				buttons : [ {
					text : '保存',
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
		});

		$("#update").click(function() {
			var row = $dg.datagrid('getSelected');
			if (row) {
				$.modalDialog({
					title : "编辑数据",
					width : 700,
					height : 600,
					href : "manage/notice/editDlg",
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
							url : "manage/notice/delete",
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
		$("#search").click(function() {
			$('#dg').datagrid('load', {
				title : $('#title').val(),
				vestInCompany : $('#vestInCompany').val()
			});
		});
		$("#searchClean").click(function() {
			$('#title').textbox('setValue','');
			$('#vestInCompany').textbox('setValue','');
		});
	});

	function load() {
		var flag = "${flag}";
		if (flag == "success") {
			$.messager.alert("操作提示", "上传文件成功");
		} else if (flag == "fail") {
			$.messager.alert("操作提示", "上传文件失败");
		}
	}
</script>
</head>
<body onload="load()">
	<div class="rightinfo">
		<div class="easyui-layout" id="tb">
			<div>
				<shiro:hasPermission name="noticeAdd">
					<span id="add" class = "mystyle"><img src="resources/core/images/t01.png" style="vertical-align:middle; margin-left: 5px;padding-left:5px;" /> 添加</span>
				</shiro:hasPermission>
				<shiro:hasPermission name="noticeEdit">
					<span id="update" class = "mystyle"><img src="resources/core/images/t02.png" style="vertical-align:middle; margin-left: 5px;padding-left:5px;" /> 修改</span>
				</shiro:hasPermission>
				<shiro:hasPermission name="noticeDel">
					<span id="delete" class="mystyle"><img src="resources/core/images/t03.png"  style="vertical-align:middle; margin-left: 5px;padding-left:5px;"  /> 删除</span>
				</shiro:hasPermission><br/><br/><br/>
				<span style="margin-left: 5px;display:inline;"> 标题:<input id='title' data-options="validType:'length[1,200]'"
							class='easyui-textbox easyui-validatebox' type='text' /></span>
				<span style="margin-left: 5px;display:inline;"> 所属公司:<input
					id="vestInCompany" style="line-height:26px;border:1px solid #ccc;height:22px;"></span>
					<span id="search" class="mysearch" style="display: inline;"><img src="resources/core/images/ico06.png" height="24px" width="24px" style="vertical-align:middle; margin: 5px;padding:5px;" /> 查询</span>
					<span id="searchClean" class="mysearch" style="display: inline;"><img src="resources/core/images/refresh.png" height="24px" width="24px" style="vertical-align:middle; margin: 5px;padding:5px;"  /> 重置</span>
			</div>
		</div>
		<table class="tablelist" id="dg" title="通告管理"></table>

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
