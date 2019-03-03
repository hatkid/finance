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
<title>寻找车辆</title>
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
<script type="text/javascript" src="resources/check/js/jqueryUtil.js"></script>
<script type="text/javascript"
	src="resources/public/js/locale/easyui-lang-zh_CN.js"></script>
	

<script type="text/javascript">

    $(function () {
    	$('#add').dialog({
            title: "发布车辆信息",
            width: 600,
            height: 500,
            left:5,
            top:5,
            closable: false,
            href: "manage/transport/publishCarAdd",
            buttons: [{
                text: '保存',
                iconCls: 'icon-yes',
                handler: function () {
                	$("#form").submit();
                }
            }, {
                text: '重置',
                iconCls: 'icon-no',
                handler: function () {
                	$('#form').form('clear');
                }
            }]
        })
    })
</script>

</head>
<body>

<div id="add">
</div>


</body>
</html>