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
<title>企业信息通知</title>
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
			//height : $(this).height() - 17,
			pagination : true,
			url : "manage/businessmanagement/searchByPage",
			rownumbers : true,
			animate : true,
			fitColumns : true,
			striped : true,
			border : true,
			idField : 'id',
			singleSelect : true,
			frozenColumns:[[
			                {
			    				field : 'id',
			    				title : '序号',
			    				align : 'left',
			    				editor : 'text'
			    			}, {
			    				field : 'companyName',
			    				title : '公司名称',
			    				align : 'left',
			    				editor : 'text'
			    			}, {
			    				field : 'companyLegalPerson',
			    				title : '公司法人',
			    				align : 'left',
			    				editor : 'text'
			    			}
			            ]],
			columns : [ [{
				field : 'companyNature',
				title : '公司性质',
				align : 'left',
				editor : 'text'
			}, {
				field : 'legalPersonContact',
				title : '法人联系方式',
				align : 'left',
				editor : 'text'
			}, {
				field : 'registeredCapital',
				title : '注册资金',
				align : 'left',
				editor : 'text'
			}, {
				field : 'realName',
				title : '是否实名制',
				align : 'left',
				editor : 'text',
				formatter : function(value, row, index) {
					if (value == '1') {
						return "是";
					}else{
						return "否";
					}
				}
			}, {
				field : 'install',
				title : '是否安装安检机',
				align : 'left',
				editor : 'text',
				formatter : function(value, row, index) {
					if (value == '1') {
						return "是";
					}else{
						return "否";
					}
				}
			}, {
				field : 'qualifications',
				title : '资质',
				align : 'left',
				editor : 'text'
			}, {
				field : 'businessScope',
				title : '经营范围',
				align : 'left',
				editor : 'text'
			}, {
				field : 'remarks',
				title : '备注',
				align : 'left',
				editor : 'text'
			}, {
				field : 'address',
				title : '公司地址',
				align : 'left',
				editor : 'text'
			}, {
				field : 'imageName',
				title : '图片名称',
				align : 'left',
				editor : 'text',
				hidden : true
			}] ],
			toolbar : '#tb'
		});

		$("#add").click(function() {
			$.modalDialog({
				title : "添加数据",
				width : 700,
				height : 600,
				href : "manage/businessmanagement/editDlg",
				buttons : [ {
					text : '保存',
					iconCls : 'icon-yes',
					handler : function() {
						$.modalDialog.openner = $grid;
						var file = $("#file").val();
						console.log(file.toLowerCase());
						if(file == null || file == ""){
							$.messager.alert("操作提示", "请选择上传文件");  
							return;
						}else if(file.toLowerCase().indexOf("jpg") <= -1 && file.toLowerCase().indexOf("png") <= -1 && file.toLowerCase().indexOf("jpeg") <= -1){
							$.messager.alert("操作提示", "请选上传图片文件");  
							return;
						}
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
					href : "manage/businessmanagement/editDlg",
					onLoad : function() {
						var f = $.modalDialog.handler.find("#form");
						console.log(row);
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
							url : "manage/businessmanagement/delete",
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
				companyNature : $('#companyNature').val(),
				legalPersonContact : $('#legalPersonContact').val(),
				address : $('#address').val(),
				registeredCapital1 : $('#registeredCapital1').val(),
				registeredCapital2 : $('#registeredCapital2').val(),
				realName : $('input[name="realName"]:checked').val()
			});
		});
		$("#searchClean").click(function() {
			$('#companyName').textbox('setValue','');
			$('#companyNature').textbox('setValue','');
			$('#legalPersonContact').textbox('setValue','');
			$('#address').textbox('setValue','');
			$('#registeredCapital1').textbox('setValue','');
			$('#registeredCapital2').textbox('setValue','');
			$("#realName1").attr("checked",false);
			$("#realName2").attr("checked",false);
		});
		
		$("#sendmsg").click(function(){
			$("#sendmsg").attr({"disabled":"disabled"});
			var sendmsg = $("#msg").val();
			if(sendmsg == "请输入文字.."){
				$("#sendmsg").removeAttr("disabled");
				return;
			}
			var data = {
						companyName : $('#companyName').val(),
						companyNature : $('#companyNature').val(),
						legalPersonContact : $('#legalPersonContact').val(),
						address : $('#address').val(),
						registeredCapital1 : $('#registeredCapital1').val(),
						registeredCapital2 : $('#registeredCapital2').val(),
						realName : $('input[name="realName"]:checked').val(),
						sendmsg : sendmsg
					  }
			$.ajax({
				url : "manage/businessmanagement/sendmsg/send",
				data : data,
				method : "POST",
				dataType : "JSON",
				success : function(rsp) {
					if (rsp.status) {
						$.messager.show({
							title : rsp.title,
							msg : rsp.message,
							timeout : 1000 * 2
						});
					}
					
					$("#sendmsg").removeAttr("disabled");
				},
				error : function() {
					$.messager.show({
						title : "提示",
						msg : "异常，请稍后再尝试。",
						timeout : 1000 * 2
					});
					$("#sendmsg").removeAttr("disabled");
				}
			});
		});
		
	});
	
	
	function upload(){
		var file = $("#uploadfile").val();
		if(file == null || file == ""){
			$.messager.alert("操作提示", "请选择上传文件");  
			return;
		}else if(file.indexOf("xls") <= -1 && file.indexOf("xlsx")){
			$.messager.alert("操作提示", "请选上传excel文件");  
			return;
		}else{
			$("#formid").submit();
		}
	}
	
	
	function load(){
		var flag = "${flag}";
		if(flag == "success"){
			$.messager.alert("操作提示", "上传文件成功");  
		}else if(flag == "fail"){
			$.messager.alert("操作提示", "上传文件失败");  
		}
	}
	
	
</script>
</head>
<body onload="load()">
	<div class="rightinfo">
		<div class="easyui-layout" id="tb">
			<div>
			<br/>
					<span style="margin-left: 5px;display:inline;"> 公司名称: <input id='companyName' data-options="validType:'length[1,100]'"
							class='easyui-textbox easyui-validatebox'
							type='text' /></span>
					<span style="margin-left: 5px;display:inline;"> 公司性质: <input id='companyNature' data-options="validType:'length[1,50]'"
							class='easyui-textbox easyui-validatebox' type='text' /></span>
					<span style="margin-left: 5px;display:inline;"> 法人联系方式: <input id='legalPersonContact' data-options="validType:'length[1,13]'"
							class='easyui-textbox easyui-validatebox'
							type='text' /></span>
					<span style="margin-left: 5px;display:inline;"> 公司地址: <input id='address' data-options="validType:'length[1,200]'"
							 class='easyui-textbox easyui-validatebox'
							type='text' /></span><br/>
					<span style="margin-left: 5px;display:inline;"> 注册资金 从: <input id='registeredCapital1' data-options="validType:'length[1,15]'"
							class="easyui-numberbox"
							type='text' /></span> 万元
					<span style="margin-left: 5px;display:inline;"> 到: <input id='registeredCapital2' data-options="validType:'length[1,15]'"
							class="easyui-numberbox"
							type='text' /></span> 万元
					<span style="margin-left: 5px;display:inline;"> 是否实名制: <input type="radio" name='realName'
							id='realName1' value="1" />是  <input
							type="radio" name='realName'
							id='realName2' value="0" />否</td></span>
					<span id="search" class="mysearch" style="display: inline;"><img src="resources/core/images/ico06.png" height="24px" width="24px" style="vertical-align:middle; margin: 5px;padding:5px;" /> 查询</span>
					<span id="searchClean" class="mysearch" style="display: inline;"><img src="resources/core/images/refresh.png" height="24px" width="24px" style="vertical-align:middle; margin: 5px;padding:5px;"  /> 重置</span>
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
		<br/>
		<br/>
		<div>
			  <span>
			  <textarea name="textarea" id="msg" class="easyui-textbox" data-options="validType:'length[1,500]'"
                                                  style="width: 435px;height: 100px;"
    onfocus="if (value =='请输入文字..'){value =''}"  
    onblur="if (value ==''){value='请输入文字..'}">请输入文字..</textarea>
			  </span>
			  <span>
			  <input type="button" id="sendmsg" value="发送短信" style="width:120px;height:25px;margin-bottom:3px; border:2px solid #F4F4F4;background-color: #CAD4DD"/>
			  </span>
		</div>
	</div>
</body>
</html>