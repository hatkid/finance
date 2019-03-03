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
<title>综合服务型物流企业信息统计</title>
<base href="<%=basePath%>">
<script type="text/javascript" src="resources/public/js/jquery.js"></script>
<link href="resources/core/css/style.css" rel="stylesheet"
	type="text/css" />
<link rel="stylesheet" type="text/css"
	href="resources/public/css/easyui.css">
<link rel="stylesheet" type="text/css"
	href="resources/public/css/icon.css">
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
			height : $(this).height() - 17,
			pagination : true,
			url : "manage/serviceLogistics/searchByPage",
			rownumbers : true,
			animate : true,
			fitColumns : true,
			striped : true,
			border : true,
			idField : 'id',
			singleSelect : true,
			frozenColumns : [ [ {
				field : 'companyName',
				title : '企业名称',
				align : 'left',
				editor : 'text'
			}, {
				field : 'registrationNumber',
				title : '工商部门注册号码',
				align : 'left',
				editor : 'text'
			} ] ],
			columns : [ [ {
				field : 'address',
				title : '通讯地址',
				align : 'left',
				editor : 'text'
			}, {
				field : 'isGradeA',
				title : '是否获得A级物流企业称号',
				align : 'left',
				editor : 'text',
				formatter : function(value, row, index) {
					if (value === true) {
						return '是';
					} else if (value === false) {
						return '否';
					} else {
						return '';
					}
				}
			}, {
				field : 'legalPerson',
				title : '企业法人',
				align : 'left',
				editor : 'text'
			}, {
				field : 'tel',
				title : '联系电话',
				align : 'left',
				editor : 'text'
			}, {
				field : 'email',
				title : '邮箱',
				align : 'left',
				editor : 'text'
			}, {
				field : 'companyType',
				title : '企业性质',
				align : 'left',
				editor : 'text'
			}, {
				field : 'employeesNumber',
				title : '员工总数（人）',
				align : 'left',
				editor : 'text'
			}, {
				field : 'collegeOrAboveEmpNum',
				title : '大专及以上学历（人）',
				align : 'left',
				editor : 'text'
			}, {
				field : 'logisticianEmpNum',
				title : '物流师（人）',
				align : 'left',
				editor : 'text'
			}, {
				field : 'carNumber',
				title : '拥有车辆总数（吨）',
				align : 'left',
				editor : 'text'
			}, {
				field : 'storageType',
				title : '仓储类型',
				align : 'left',
				editor : 'text'
			}, {
				field : 'warehouseSpace',
				title : '仓储面积（平方米）',
				align : 'left',
				editor : 'text'
			}, {
				field : 'haveInformationPlatform',
				title : '是否有信息平台',
				align : 'left',
				editor : 'text',
				formatter : function(value, row, index) {
					if (value === true) {
						return '是';
					} else if (value === false) {
						return '否';
					} else {
						return '';
					}
				}
			}, {
				field : 'haveLandDeed',
				title : '是否有土地证',
				align : 'left',
				editor : 'text',
				formatter : function(value, row, index) {
					if (value === true) {
						return '是';
					} else if (value === false) {
						return '否';
					} else {
						return '';
					}
				}
			}, {
				field : 'areaOfLand',
				title : '土地面积（亩）',
				align : 'left',
				editor : 'text'
			}, {
				field : 'businessAdvantage',
				title : '经营优势',
				align : 'left',
				editor : 'text'
			}, {
				field : 'businessDisadvantage',
				title : '经营短板',
				align : 'left',
				editor : 'text'
			}, {
				field : 'mainSourceOfIncome',
				title : '主要营业收于来源',
				align : 'left',
				editor : 'text'
			}, {
				field : 'totalValueOfOutput',
				title : '年总产值（万元）',
				align : 'left',
				editor : 'text'
			}, {
				field : 'profitsTax',
				title : '年利税（万元）',
				align : 'left',
				editor : 'text'
			}, {
				field : 'valueOfOutput',
				title : '1-5月份产值（万元）',
				align : 'left',
				editor : 'text'
			}, {
				field : 'year',
				title : '年份',
				align : 'left',
				editor : 'text'
			} ] ],
			toolbar : '#tb'
		});

		$("#add").click(function() {
			$.modalDialog({
				title : "添加数据",
				width : 700,
				height : 600,
				href : "manage/serviceLogistics/editDlg",
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
					href : "manage/serviceLogistics/editDlg",
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
							url : "manage/serviceLogistics/delete",
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
				companyName : $('#companyName').val(),
				legalPerson : $('#legalPerson').val()
			});
		});
		$("#searchClean").click(function() {
			$('#companyName').textbox('setValue','');
			$('#legalPerson').textbox('setValue','');
		});
		$("#export").click(function() {
			var companyName = $('#companyName').val();
			var legalPerson = $('#legalPerson').val();
			$("#companyNameDownload").val(companyName);
			$("#legalPersonDownload").val(legalPerson);
			$("#download").submit();
		});
	});
	function upload() {
		var file = $("#uploadfile").val();
		if (file == null || file == "") {
			$.messager.alert("操作提示", "请选择上传文件");
			return;
		} else if (file.indexOf("xls") <= -1 && file.indexOf("xlsx")) {
			$.messager.alert("操作提示", "请选上传excel文件");
			return;
		} else {
			$("#formid").submit();
		}
	}

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
			<span style="display:none;"><input name='companyType1'
				id='companyType1' size="26" class="easyui-combobox"
				data-options="multiple:true,valueField: 'value',textField: 'label',data: 
								[{label: '运输型物流',value: 'transportLogistics'}
								,{label: '仓储型物流',value: 'storageLogistics'}
								,{label: '货运代理',value: 'forwarder'}
								,{label: '综合型物流（仓储、运输等）',value: 'integratedlogistics'}
								,{label: '零担物流',value: 'lessThanTruckLLoad'}
								,{label: '快递物流',value: 'expressLogistics'}]" />
				<input name='mainSourceOfIncome1' id='mainSourceOfIncome1' size="26"
				class="easyui-combobox"
				data-options="multiple:true,valueField: 'value',textField: 'label',data: 
								[{label: '运输',value: 'transport'}
								,{label: '仓储',value: 'storage'}
								,{label: '货运代理',value: 'forwarder'}
								,{label: '其他',value: 'other'}]" />
			</span>
			<div>
				<shiro:hasPermission name="serviceLogisticsAdd">
					<span id="add" class="mystyle"><img
						src="resources/core/images/t01.png"
						style="vertical-align:middle; margin-left: 5px;padding-left:5px;" />
						添加</span>
				</shiro:hasPermission>
				<shiro:hasPermission name="serviceLogisticsEdit">
					<span id="update" class="mystyle"><img
						src="resources/core/images/t02.png"
						style="vertical-align:middle; margin-left: 5px;padding-left:5px;" />
						修改</span>
				</shiro:hasPermission>
				<shiro:hasPermission name="serviceLogisticsDel">
					<span id="delete" class="mystyle"><img
						src="resources/core/images/t03.png"
						style="vertical-align:middle; margin-left: 5px;padding-left:5px;" />
						删除</span>
				</shiro:hasPermission>
				<shiro:hasPermission name="serviceLogisticsExport">
					<span id="export" class="mystyle"><img
						src="resources/core/images/excel.png"
						style="vertical-align:middle; margin-left: 5px;padding-left:5px;" />
						导出</span>
				</shiro:hasPermission>
				<shiro:hasPermission name="serviceLogisticsUpload">
					<span id="upload" onclick="upload()" class="mystyle"
						style="float:right;margin-right: 710px;"><img
						src="resources/core/images/excel.png"
						style="vertical-align:middle; margin-left: 5px;padding-left:5px;" />
						上传</span>
					<form action="manage/serviceLogistics/upload" method="post"
						enctype="multipart/form-data" id="formid">
						<a href="javascript:;" class="file">选择文件 <input type="file"
							id="uploadfile" name="filedata"> </a>
					</form>
				</shiro:hasPermission>
				<br /> <span style="margin-left: 5px;display:inline;"> 企业名称:
					<input id='companyName' data-options="validType:'length[1,100]'"
							class='easyui-textbox easyui-validatebox'
							type='text' /> </span> <span
					style="margin-left: 5px;display:inline;"> 工商部门注册号码: <input id='registrationNumber' data-options="validType:'length[1,50]'"
							class='easyui-textbox easyui-validatebox' type='text' /> </span> <span
					id="search" class="mysearch" style="display: inline;"><img
					src="resources/core/images/ico06.png" height="24px" width="24px"
					style="vertical-align:middle; margin: 5px;padding:5px;" /> 查询</span> <span
					id="searchClean" class="mysearch" style="display: inline;"><img
					src="resources/core/images/refresh.png" height="24px" width="24px"
					style="vertical-align:middle; margin: 5px;padding:5px;" /> 重置</span>
			</div>
			<div style="display:none;">
				<form action="manage/serviceLogistics/download" method="get"
					id="download">
					<input type="hidden" name="companyNameDownload"
						id="companyNameDownload" /> <input type="hidden"
						name="legalPersonDownload" id="legalPersonDownload" />
				</form>
			</div>
		</div>
		<table class="tablelist" id="dg" title="综合服务型物流企业信息统计"></table>

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
