<%@ page language="java" pageEncoding="UTF-8"%>
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
<title>内容</title>
<base href="<%=basePath%>">
<style>
.txtcon {background:#fff;margin:0;padding:0;font:12px/150% Arial,\5b8b\4f53,Helvetica, sans-serif;color:#545454;text-align:justify;text-justify:inter-ideograph;}
	/*---13.文章内容显示---*/
.txtcon{width:100%;padding:0;margin-bottom:20px;}
.txtcon img{max-width:650px;width:expression(this.width > 650 ? "650px": (this.width+"px"));height:auto;}
.txtcon h1{color:#2f8965;line-height:24px;font-family:arial;font-weight:normal;font-size:18px;text-align:center;margin-bottom:10px;}
.txtcon .subtitle{border-bottom:1px dotted #ccc;padding-bottom:10px;font-size:14px;font-weight:bold;text-align:center;margin-bottom:10px;}
.txtcon .info {color:#666;text-align:center;padding-bottom:30px;}
.txtcon .info a{margin:0 2px;}
.txtcon .info span{margin:0 10px;}
.txtcon .info .fontsize{color:#0079CE; margin:0 2px; cursor:pointer;}

.cont ul,.cont li,.cont ol,.cont dl{list-style:inherit}

.txtcon p{line-height:40px;font-size:14px;}


.txtcon .cont{padding:0 32px;}
.txtcon .tool{text-align:right;margin:20px 0;}
.txtcon .tool .correction{float:left;color:#ff0000;}

.txtcon .tspan1{font-weight:bold;}
.txtcon .tspan16{font-style: italic;}
.txtcon .tspan17{font-style: italic;font-weight:bold;} 
</style>
</head>
<body>
<div class="marginb102">

<div objid="6009">
	<div objid="6009">
		<!--startprint-->

		<div objid="6011" class="txtcon">
		
		 
			<h1>
				<span id="title" class="tspan0" style="color:null" objparam="fieldname:Title" tag="_ddfield" objid="6080">${ title }</span>
			</h1>
	
		
			<div objid="6012" class="subtitle">
				<span objparam="fieldname:Subhead" tag="_ddfield" objid="6081"></span>
			</div>

			<div objid="6013" class="info">发布日期：
				<span id="date" objparam="fieldname:DateTime" tag="_ddfield" objid="6082">${ createDate }</span>				
		        	
			</div>

			<div objid="6014" class="cont">
				<p>
					<span id="content" objparam="fieldname:Content" tag="_ddfield" objid="6084"></span></p><p style="TEXT-ALIGN: left">　　${ content }</p>
				<p></p>
			</div>
		</div>
		<!--endprint-->
		
	</div>
</div>

</div>
</body>

</html>