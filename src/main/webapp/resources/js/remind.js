
$(document).ready(function() {
	getRequestRemind();
	
});
//政府公告信息
function getRequestRemind(){
	$.ajax({
		url : "manage/car/remind",
		method : "POST",
		dataType : "JSON",
		success : function(rsp) {
			if(rsp.overTime > 0){
				$("#overTime").html("即将在10天过期的车辆有：" + rsp.overTime + "  辆, <a style=\"color:red;\" onclick=\"detail('1')\">点击查看详情</a>");
			}else{
				$("#overTime").html("即将在10天过期的车辆有： 0  辆");
			}
			
			if(rsp.overTimePre > 0){
				$("#overTimePre").html("已经超期的车辆有：" + rsp.overTimePre + "  辆, <a style=\"color:red;\" onclick=\"detail('0')\">点击查看详情</a>");
			}else{
				$("#overTimePre").html("已经超期的车辆有：0  辆");
			}
			
		},
		error : function() {
			$.messager.show({
				title : "提示",
				msg : "异常稍后再试！",
				timeout : 1000 * 2
			});
		}
	});
}

function detail(type){
	var content = '提醒详情页面' + '||icon-company||manage/car/remindDetailMain?type=' + type;
	addTab(content);
}