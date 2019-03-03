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
<title>车辆管理</title>
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
    Date.prototype.format = function (format) {  
        var o = {  
            "M+": this.getMonth() + 1, // month  
            "d+": this.getDate(), // day  
            "h+": this.getHours(), // hour  
            "m+": this.getMinutes(), // minute  
            "s+": this.getSeconds(), // second  
            "q+": Math.floor((this.getMonth() + 3) / 3), // quarter  
            "S": this.getMilliseconds()  
            // millisecond  
        }  
        if (/(y+)/.test(format))  
            format = format.replace(RegExp.$1, (this.getFullYear() + "")  
                .substr(4 - RegExp.$1.length));  
        for (var k in o)  
            if (new RegExp("(" + k + ")").test(format))  
                format = format.replace(RegExp.$1, RegExp.$1.length == 1 ? o[k] : ("00" + o[k]).substr(("" + o[k]).length));  
        return format;  
    }  
    function formatDatebox(value) {  
        if (value == null || value == '') {  
            return '';  
        }  
        var dt;  
        if (value instanceof Date) {  
            dt = value;  
        } else {  
            dt = new Date(value);  
        }  
      
        return dt.format("yyyy-MM-dd"); //扩展的Date的format方法(上述插件实现)  
    }  
	var $dg;
	var $grid;
	$(function() {
		$dg = $("#dg");
		$grid = $dg.datagrid({
			width : 'auto',
			height : $(this).height() - 17,
			pagination : true,
			url : "manage/car/searchByPage",
			rownumbers : true,
			animate : true,
			fitColumns : true,
			striped : true,
			border : true,
			idField : 'id',
			singleSelect : true,
			columns : [ [ {
				field : 'plateNumber',
				title : '车牌',
				align : 'left',
				editor : 'text'
			}, {
				field : 'vin',
				title : '车架号',
				align : 'left',
				editor : 'text'
			}, {
				field : 'engineNumber',
				title : '发动机号',
				align : 'left',
				editor : 'text'
			}, {
				field : 'displacement',
				title : '排量',
				align : 'left',
				editor : 'text'
			}, {
				field : 'ownerName',
				title : '所有人姓名',
				align : 'left',
				editor : 'text'
			}, {
				field : 'onwerTel',
				title : '所有人联系方式',
				align : 'left',
				editor : 'text'
			}, {
				field : 'gps',
				title : '是否有GPS',
				align : 'left',
				editor : 'text'
			}, {
				field : 'tonnage',
				title : '吨位',
				align : 'left',
				editor : 'text'
			}, {
				field : 'carLong',
				title : '车长（米）',
				align : 'left',
				editor : 'text'
			}, {
				field : 'carNumber',
				title : '行驶证编号',
				align : 'left',
				editor : 'text'
			}, {
				field : 'carNumberDate',
				title : '年审日期',
				align : 'left',
				formatter: formatDatebox
			}, {
				field : 'insuranceCompany',
				title : '保险公司',
				align : 'left',
				editor : 'text'
			}, {
				field : 'insuranceDate',
				title : '到期日期',
				align : 'left',
				formatter: formatDatebox
			}, {
				field : 'vestInCompany',
				title : '所属公司',
				align : 'left'
			}, {
				field : 'creater',
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
				href : "manage/car/editDlg",
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
					href : "manage/car/editDlg",
					onLoad : function() {
						var myDate = new Date(row['insuranceDate']);
						var myDate1 = new Date(row['carNumberDate']);
						var f = $.modalDialog.handler.find("#form");
						f.form("load", row);
						f.find('#insuranceDate').textbox({value:myDate.getFullYear()+"-"+myDate.getMonth()+"-"+myDate.getDate()});
						f.find('#carNumberDate').textbox({value:myDate1.getFullYear()+"-"+myDate1.getMonth()+"-"+myDate1.getDate()});
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
							url : "manage/car/delete",
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
				plateNumber : $('#plateNumber').val(),
				ownerName : $('#ownerName').val(),
				displacement : $('#displacement').val(),
				onwerTel : $('#onwerTel').val(),
				vestInCompany : $("#vestInCompany1").val(),
				carNumberDate1 : $('#carNumberDate1').datebox('getValue'),
				carNumberDate2 : $('#carNumberDate2').datebox('getValue'),
				gps : $('input[name="gps"]:checked ').val()
			});
		});
		$("#searchClean").click(function() {
			$('#plateNumber').textbox('setValue','');
			$('#ownerName').textbox('setValue','');
			$('#displacement').textbox('setValue','');
			$('#onwerTel').textbox('setValue','');
			$('#vestInCompany1').textbox('setValue','');
			$("input:radio[name='gps']").attr("checked",false);
			$('#carNumberDate1').combo("setValue", "");
			$('#carNumberDate2').combo("setValue", "");
			$('#carNumberDate1').combo('setText','');
			$('#carNumberDate2').combo('setText','');
		});
		$("#export").click(function() {
			var plateNumber = $('#plateNumber').val();
			var ownerName = $('#ownerName').val();
			$("#plateNumberDownload").val(plateNumber);
			$("#ownerNameDownload").val(ownerName);
			$("#download").submit();
		});
		$("#upload").click(function() {
			var file = $("#uploadfile").val();
			if (file == null || file == "") {
				$.messager.alert("操作提示", "请选择上传文件");
				return;
			} else if (file.indexOf("xls") <= -1 && file.indexOf("xlsx")) {
				$.messager.alert("操作提示", "请选上传excel文件");
				return;
			} else {
				$("#uploadForm").submit();
			}
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
				<shiro:hasPermission name="carAdd">
					<span id="add" class = "mystyle"><img src="resources/core/images/t01.png" style="vertical-align:middle; margin-left: 5px;padding-left:5px;" /> 添加</span>
				</shiro:hasPermission>
				<shiro:hasPermission name="carEdit">
					<span id="update" class = "mystyle"><img src="resources/core/images/t02.png" style="vertical-align:middle; margin-left: 5px;padding-left:5px;" /> 修改</span>
				</shiro:hasPermission>
				<shiro:hasPermission name="carDel">
					<span id="delete" class="mystyle"><img src="resources/core/images/t03.png"  style="vertical-align:middle; margin-left: 5px;padding-left:5px;"  /> 删除</span>
				</shiro:hasPermission><br/><br/><br/>
				<span style="margin-left: 5px;display:inline;"> 车牌:<input id='plateNumber' data-options="validType:'length[1,10]'"
							class='easyui-textbox easyui-validatebox' type='text' /></span>
				<span style="margin-left: 5px;display:inline;"> 排量:<input id='displacement' size='26' data-options="validType:'length[1,6]'"
							class='easyui-numberbox'  type='text' /></span>
				<span style="margin-left: 5px;display:inline;"> 所有人姓名:<input id='ownerName' data-options="validType:'length[1,20]'"
							class='easyui-textbox easyui-validatebox' type='text' /></span>
				<span style="margin-left: 5px;display:inline;"> 所有人联系方式:<input id='onwerTel' data-options="validType:'length[1,13]'"
							class='easyui-textbox easyui-validatebox' type='text' /></span>
				<br />
				<span style="margin-left: 5px;display:inline;"> 所属公司:<input
					id="vestInCompany1" data-options="validType:'length[1,50]'"
							class='easyui-textbox easyui-validatebox' type='text' /></span>
				<span style="margin-left: 5px;display:inline;"> 年审日期从:<input id="carNumberDate1"
							class='easyui-datebox' type='text' /></span>
				<span style="margin-left: 5px;display:inline;"> 到:<input id="carNumberDate2"
							class='easyui-datebox' type='text' /></span>
				<span style="margin-left: 5px;display:inline;"> 是否有GPS:<input type="radio" name="gps" value="是" />是<input
					type="radio" name="gps" value="否" />否</span>
					<span id="search" class="mysearch" style="display: inline;"><img src="resources/core/images/ico06.png" height="24px" width="24px" style="vertical-align:middle; margin: 5px;padding:5px;" /> 查询</span>
					<span id="searchClean" class="mysearch" style="display: inline;"><img src="resources/core/images/refresh.png" height="24px" width="24px" style="vertical-align:middle; margin: 5px;padding:5px;"  /> 重置</span>
			</div>
			<div style="display:none;">
				<form action="manage/car/download" method="get" id="download">
					<input type="hidden" name="plateNumberDownload"
						id="plateNumberDownload" /> <input type="hidden"
						name="ownerNameDownload" id="ownerNameDownload" />
				</form>
			</div>
		</div>
		<table class="tablelist" id="dg" title="车辆管理"></table>

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
