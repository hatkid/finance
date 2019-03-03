<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<link   href="resources/swf/css/default.css">
<script type="text/javascript" src="resources/public/js/jquery.js"></script>
<script type="text/javascript">
	
	</script>
<title>上传</title>
</head>
<body>



<form action="test/upload" method="post" enctype="multipart/form-data">  
<input type="file" name="filedata" />
<input type="text" name="username"/>
 <input type="submit" value="Submit" />
</form> 
</body>
</html>
