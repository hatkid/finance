var pageSizeGov = 7;
var pageNowGov = 1;
var totalPageGov = 0;
$(document).ready(function() {
	
	 $("#pageUpGov").click(function(){
	    	pageNowGov = pageNowGov - 1; 
	    	if(pageNowGov < 1){
	    		pageNowGov = pageNowGov + 1; 
	    		return;
	    	}
	    	getRequestGov(pageNowGov);
	    });
	$("#pageDownGov").click(function(){
		
			pageNowGov = pageNowGov + 1; 
	    	if(pageNowGov > totalPageGov){
	    		pageNowGov = pageNowGov - 1;
	    		return;
	    	}
	    	getRequestGov(pageNowGov);
	    });
	
	getRequestGov('1');
});
//政府公告信息
function getRequestGov(pageNoGov){
	$.ajax({
		url : "manage/notice/info",
		data : {
			'pageNo' : pageNoGov,
			'pageSize' : pageSizeGov
		},
		method : "POST",
		dataType : "JSON",
		success : function(rsp) {
			totalPageGov = (rsp.total % pageSizeGov == 0 )? (rsp.total / pageSizeGov) : Math.ceil(rsp.total / pageSizeGov);
			var temp = "";
			var count = 0;
			var start = (pageNowGov - 1) * pageSizeGov;
			$.each(rsp.rows,function(index,obj){
				count ++;
				temp += '<tr class="trnewitem">';
				temp += '<td class="tdnewitemtitle"><a onclick=\'go("' + obj.id + '","' + obj.title + '")\'>' + obj.title + '</a></td>';
				temp += '<td class="tdnewdate">' + format(obj.createDate,'yyyy-MM-dd') + '</td>';
				temp += '</tr>';
			});
			if(temp == ''){
				temp = "暂无信息。";
				$("#pageDownGov").hide();
				$("#pageUpGov").hide();
			}
			$("#ulGov").html(temp);
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