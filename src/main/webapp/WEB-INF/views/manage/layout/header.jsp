<%@ page language="java" pageEncoding="utf-8" %>

<body class="wuliubody">
	<script type="text/javascript">
	$(function(){
		
	});
	function loginout(){
		window.location.href = "logout";
	}
	</script>
	<link href="resources/core/css/min.css" rel="stylesheet" />
    <div class="wuliuheadstyle">
        <div class="wuliuheadtitle">财务信息管理系统</div>
        <div class="wuliuheadtoolsright">
            <span style="display:inline">欢迎</span><span style="color: #F38B76;display:inline;">${currUser}</span><span style="display:inline">关于</span> <span style="display:inline" onclick="loginout()">退出</span>
        </div>
        <img class="wuliuheadtouxiang" src="resources/public/css/images/touxiang.png" width="50" height="50" />
    </div>
</body>