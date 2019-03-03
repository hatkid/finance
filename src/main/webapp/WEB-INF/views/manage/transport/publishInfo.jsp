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
<title>发布信息查询</title>
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
	href="resources/check/css/common.css">
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
			url : "manage/transport/searchByPagePublish",
			rownumbers : true,
			animate : true,
			fitColumns : true,
			striped : true,
			border : true,
			idField : 'id',
			singleSelect : false,
			frozenColumns:[[
			                {
			    				field : 'id',
			    				title : '序号',
			    				align : 'left',
			    				editor : 'text'
			    			}, {
			    				field : 'review',
			    				title : '审核状态',
			    				align : 'left',
			    				editor : 'text',
			    				formatter : function(value, row, index) {
			    					if(value == "0"){
			    						return "未审核";
			    					}else if(value == "1"){
			    						return "通过";
			    					}else if(value == "2"){
			    						return "未通过";
			    					}
			    				}
			    			}, {
			    				field : 'startProvince',
			    				title : '起运省份',
			    				align : 'left',
			    				editor : 'text'
			    			}, {
			    				field : 'startCity',
			    				title : '起运市',
			    				align : 'left',
			    				editor : 'text'
			    			}
			            ]],
			columns : [ [{
				field : 'startCounty',
				title : '起运县',
				align : 'left',
				editor : 'text'
			}, {
				field : 'startAddress',
				title : '起运地址',
				align : 'left',
				editor : 'text'
			}, {
				field : 'endProvince',
				title : '目的省份',
				align : 'left',
				editor : 'text'
			}, {
				field : 'endCity',
				title : '目的市',
				align : 'left',
				editor : 'text'
			}, {
				field : 'endCounty',
				title : '目的县',
				align : 'left',
				editor : 'text'
			}, {
				field : 'endAddress',
				title : '目的地址',
				align : 'left',
				editor : 'text'
			}, {
				field : 'details',
				title : '详情',
				align : 'left',
				editor : 'text'
			}, {
				field : 'vehicleLoad',
				title : '吨位	',
				align : 'left',
				editor : 'text'
			}, {
				field : 'contact',
				title : '联系人',
				align : 'left',
				editor : 'text'
			}, {
				field : 'tel',
				title : '联系方式',
				align : 'left',
				editor : 'text'
			}, {
				field : 'effectiveTime',
				title : '有效时间(天)',
				align : 'left',
				editor : 'text'
			}, {
				field : 'creater',
				title : '创建人',
				align : 'left',
				editor : 'text'
			}, {
				field : 'createTime',
				title : '发布时间',
				align : 'left',
				editor : 'text',
				formatter : function(value, row, index) {
					return format(value, 'yyyy-MM-dd HH:mm:ss');
				}
			}, {
				field : 'reviewTime',
				title : '审核时间',
				align : 'left',
				editor : 'text',
				formatter : function(value, row, index) {
					if(value){
					return format(value, 'yyyy-MM-dd HH:mm:ss');
					}
				}
			}, {
				field : 'remarks',
				title : '描述',
				align : 'left',
				editor : 'text'
			}] ],
			toolbar : '#tb'
		});


		
		
		$("#search").click(function() {
			$('#dg').datagrid('load', {
				createTime1 : $('#createTime1').datetimebox('getValue'),
				createTime2 : $('#createTime2').datetimebox('getValue'),
				type : $('input[name="type"]:checked').val(),
				review : $('input[name="review"]:checked').val()
			});
		});
		
		$("#searchClean").click(function() {
			$('#createTime1').datetimebox('setValue','');
			$('#createTime2').datetimebox('setValue','');
			$("#type1").attr("checked",false);
			$("#type2").attr("checked",false);
			$("#review1").attr("checked",false);
			$("#review2").attr("checked",false);
			$("#review3").attr("checked",false);
		});
		
		
	});
	
	var format = function(time, format){
	    var t = new Date(time);
	    var tf = function(i){return (i < 10 ? '0' : '') + i};
	    return format.replace(/yyyy|MM|dd|HH|mm|ss/g, function(a){
	        switch(a){
	            case 'yyyy':
	                return tf(t.getFullYear());
	                break;
	            case 'MM':
	                return tf(t.getMonth() + 1);
	                break;
	            case 'mm':
	                return tf(t.getMinutes());
	                break;
	            case 'dd':
	                return tf(t.getDate());
	                break;
	            case 'HH':
	                return tf(t.getHours());
	                break;
	            case 'ss':
	                return tf(t.getSeconds());
	                break;
	        }
	    })
	}
</script>
</head>
<body>
	<div class="rightinfo">
		<div class="easyui-layout" id="tb">
			<div>
					<span style="margin-left: 5px;display:inline;"> 发布时间 从 : <input id="createTime1" class="easyui-datetimebox" /></span> 
					<span style="margin-left: 5px;display:inline;"> 到  : <input id="createTime2" style="line-height:26px;border:1px solid #ccc;height:22px;" class="easyui-datetimebox"/></span> 
					<span style="margin-left: 5px;display:inline;"> 类型  : <input type="radio" name='type'
							id='type1' value="1" />  货物       <input
							type="radio" name='type'
							id='type2' value="0" />  车辆       </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<span style="margin-left: 5px;display:inline;">状态  : <input type="radio" name='review'
							id='review1' value="0" />  未审核      <input
							type="radio" name='review'
							id='review2' value="1" />  通过      <input
							type="radio" name='review'
							id='review3' value="2" />  未通过       </span>
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
	</div>
</body>
</html>