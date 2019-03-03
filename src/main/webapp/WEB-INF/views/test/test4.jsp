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
<script type="text/javascript" src="resources/swf/swfupload.js"></script>
<script type="text/javascript" src="resources/swf/handlers.js"></script>
<script type="text/javascript">
	
	var swfu;   
    window.onload = function(){   
    	
        swfu = new SWFUpload({   
            upload_url: "<%=basePath%>test/upload",    //上传或解析处理类的URL   
               
            file_size_limit : 0, // 限制上传文件的大小, 0表示不受限制   
            file_types : "*.*",           // 上传文件类型，多个文件用分号隔开   
            file_types_description : "", // 上传文件类型描述   
            file_upload_limit : "0",    // 限制上传文件选择的个数, "0"表示不受限制   
            file_post_name:"filedata",
       
            file_queue_error_handler : fileQueueError,   
            file_dialog_complete_handler : fileDialogComplete,   
            upload_progress_handler : uploadProgress,         //上传过程中调用的方法   
            upload_error_handler : uploadError,           //上传错误调用的方法   
            upload_success_handler : uploadSuccess,             
            upload_complete_handler : uploadComplete,         //上传完成调用的方法   
               

            // Button settings   
            button_image_url : "",  // Relative to the SWF file   
            button_placeholder_id : "spanButtonPlaceholder",//html标签ID，如DIV或SPAN   
            button_width: 100,   
            button_height: 22,   
            button_text : '添加附件2',//生成的按钮内容   
            button_text_style : '.button {font-size: 14pt;cursor:pointer;text-align:right} .buttonSmall { font-size: 10pt;cursor:pointer;text-align:right }',   
            button_text_top_padding: 1,   
            button_text_left_padding: 45,   

            // Flash Settings   
            flash_url : "<%=basePath%>resources/swf/swfupload.swf",   // Relative to this file   
            // Debug Settings   
            debug: true  
        });   
        
        
    	
    }  
    function fileDialogComplete(file){
		//swfu.startUpload();
		
	}
	function uploadComplete(){
		//swfu.startUpload();
		alert("上传完成");
	}
	
	function uploadProgress(file, bytesLoaded, bytesTotal){
	}
	
	
	
	function fileQueueError(file,errorCode,message){
	}
	
	</script>
<title>上传</title>
</head>
<body>



<div id="spanButtonPlaceholder"></div><br/>
</body>
</html>
