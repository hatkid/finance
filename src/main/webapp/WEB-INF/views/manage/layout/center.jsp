<%@ page language="java" pageEncoding="UTF-8"%>
<style>
.divnewleft {
	float: left;
	width: 15%;
	height: 100%;
	min-height: 500px;
}

.divnewright {
	float: left;
	width: 15%;
	height: 100%;
	min-height: 500px;
}
/*新闻表*/
.tablenewlist {
	float: left;
	width: 65%;
	height: 100%;
	margin: 0px auto;
	font-family: "微软雅黑";
}
/*标题行*/
.trnewtitle {
	height: 60px;
}
/*新闻标题*/
.thnewtitle {
	
}

/*新闻行*/
.trnewitem {
	height: 30px;
}

/*新闻编号*/
.tdnewnumber {
	width: 60px;
	color: #666666;
	font-size: 20px;
	border-bottom: 1px solid #CCCCCC;
}
/*新闻标题*/
.tdnewitemtitle {
	color: #666666;
	text-align: left;
	/* border-bottom: 1px solid #CCCCCC; */
}
/*新闻日期*/
.tdnewdate {
	color: #666666;
	text-align: center;
	width: 270px;
	/* border-bottom: 1px solid #CCCCCC; */
}

.tdnewitemtitle a {
	text-decoration: none;
	color: #666666;
	white-space:nowrap;
	overflow:hidden;
	text-overflow:ellipsis; 
	width:300px;
	display:block;
}


a:hover {
	color: #000000;
}
.divpageback {
    width: 48px;
    height: 100px;
    color: #FFFFFF;
    font-size: 13px;
    text-align: center;
    margin: 200px auto;
    background-image: url("resources/public/css/images/leftpage.png");
}

.divpagenext {
    width: 48px;
    height: 100px;
    color: #FFFFFF;
    font-size: 13px;
    text-align: center;
    margin: 200px auto;
    background-image: url("resources/public/css/images/rightpage.png");
}

</style>
<style>
#pageGro .pageUp {
    text-indent: 23px;
    background: url(resources/core/images/pageUp.png) 5px 7px no-repeat;
}
#pageGro .pageUp, #pageGro .pageDown {
    width: 63px;
    border: 1px solid #999;
    cursor: pointer;
}

#pageGro div, #pageGro div ul li {
    font-size: 12px;
    color: #999;
    line-height: 23px;
    float: left;
    margin-left: 5px;
}
#pageGro .pageDown {
    text-indent: 5px;
    background: url(resources/core/images/pageDown.png) 46px 6px no-repeat;
}


</style>
<script type="text/javascript" charset="utf-8">
	var centerTabs;
	var tabsMenu;
	var pageSize = 7;
	var pageNow = 1;
	var totalPage = 0;
	$(function() {
		tabsMenu = $('#tabsMenu').menu(
				{
					onClick : function(item) {
						var curTabTitle = $(this).data('tabTitle');
						var type = $(item.target).attr('type');
						if (type === 'refresh') {
							refreshTab(curTabTitle);
							return;
						}
						if (type === 'close') {
							var t = centerTabs.tabs('getTab', curTabTitle);
							if (t.panel('options').closable) {
								centerTabs.tabs('close', curTabTitle)
							}
							return;
						}
						var allTabs = centerTabs.tabs('tabs');
						var closeTabsTitle = [];
						$.each(allTabs, function() {
							var opt = $(this).panel('options');
							if (opt.closable && opt.title != curTabTitle
									&& type === 'closeOther') {
								closeTabsTitle.push(opt.title)
							} else if (opt.closable && type === 'closeAll') {
								closeTabsTitle.push(opt.title)
							}
						});
						for ( var i = 0; i < closeTabsTitle.length; i++) {
							centerTabs.tabs('close', closeTabsTitle[i])
						}
					}
				});
		centerTabs = $('#centerTabs')
				.tabs(
						{
							tools : [
									{
										iconCls : 'icon-reload',
										handler : function() {
											var href = $('#centerTabs').tabs(
													'getSelected').panel(
													'options').href;
											if (href) {
												var index = $('#centerTabs')
														.tabs(
																'getTabIndex',
																$('#centerTabs')
																		.tabs(
																				'getSelected'));
												$('#centerTabs').tabs('getTab',
														index).panel('refresh')
											} else {
												var panel = $('#centerTabs')
														.tabs('getSelected')
														.panel('panel');
												var frame = panel
														.find('iframe');
												try {
													if (frame.length > 0) {
														for ( var i = 0; i < frame.length; i++) {
															frame[i].contentWindow.document
																	.write('');
															frame[i].contentWindow
																	.close();
															frame[i].src = frame[i].src
														}
														if ($.browser.msie) {
															CollectGarbage()
														}
													}
												} catch (e) {
												}
											}
										}
									},
									{
										iconCls : 'icon-no',
										handler : function() {
											var index = $('#centerTabs').tabs(
													'getTabIndex',
													$('#centerTabs').tabs(
															'getSelected'));
											var tab = $('#centerTabs').tabs(
													'getTab', index);
											if (tab.panel('options').closable) {
												$('#centerTabs').tabs('close',
														index)
											} else {
												$.messager
														.alert(
																'提示',
																'['
																		+ tab
																				.panel('options').title
																		+ ']不可以被关闭',
																'error')
											}
										}
									},
									{
										iconCls : 'icon-color',
										handler : function() {
											$('#theme')
													.menu(
															{
																onClick : function(
																		item) {
																	var cookiesColor1 = jqueryUtil.cookies
																			.get("cookiesColor");
																	if (cookiesColor1 != item.id) {
																		jqueryUtil.cookies
																				.set(
																						"cookiesColor",
																						item.id,
																						30);
																		jqueryUtil
																				.chgSkin(
																						item.id,
																						cookiesColor1)
																	}
																}
															});
											$('#theme').menu('show', {
												left : '91%',
												top : 97
											})
										}
									} ],
							fit : true,
							border : false,
							onContextMenu : function(e, title) {
								e.preventDefault();
								tabsMenu.menu('show', {
									left : e.pageX,
									top : e.pageY
								}).data('tabTitle', title)
							}
						});
		
		
		 $("#pageUp").click(function(){
		    	pageNow = pageNow - 1; 
		    	if(pageNow < 1){
		    		pageNow = pageNow + 1; 
		    		return;
		    	}
		    	 getRequest(pageNow);
		    });
		$("#pageDown").click(function(){
				pageNow = pageNow + 1; 
		    	if(pageNow > totalPage){
		    		pageNow = pageNow - 1;
		    		return;
		    	}
		    	 getRequest(pageNow);
		    });
		    
		    getRequest('1');
	});
	
	
	function addTab(node) {
		var nodes = node.split("||");
		if (centerTabs.tabs('exists', nodes[0])) {
			centerTabs.tabs('select', nodes[0])
		} else {
			centerTabs
					.tabs(
							'add',
							{
								title : nodes[0],
								closable : true,
								iconCls : nodes[1],
								content : "<iframe src="
										+ nodes[2]
										+ " frameborder=\"0\" style=\"border:0;width:100%;height:100%;\"></iframe>",
								tools : [ {
									iconCls : 'icon-mini-refresh',
									handler : function() {
										refreshTab(nodes[0])
									}
								} ]
							})
		}
	}
	function refreshTab(title) {
		var tab = centerTabs.tabs('getTab', title);
		centerTabs.tabs('update', {
			tab : tab,
			options : tab.panel('options')
		})
	}
	function submitPass() {
		if ($('#password1').val() != ''
				&& $('#password1').val() === $('#password').val()) {
			$.ajax({
				url : "manage/users/savePass",
				data : {
					'passwordOld' : $('#passwordOld').val(),
					'password' : $('#password').val(),
					'name' : $('#name').val()
				},
				method : "POST",
				dataType : "JSON",
				success : function(rsp) {
					$.messager.show({
						title : rsp.title,
						msg : rsp.message,
						timeout : 1000 * 2
					});
					if (rsp.status) {
						window.location.href = "logout";
					}
				},
				error : function() {
					$.messager.show({
						title : "提示",
						msg : "提交错误了！",
						timeout : 1000 * 2
					});
				}
			});
		} else {
			alert("两次输入的新密码不一致或为空，请重新输入。");
		}
	}
	
	


</script>
<script type="text/javascript" src="resources/js/governmentNotice.js"></script>
<script type="text/javascript" src="resources/js/remind.js"></script>
<div id="centerTabs">
	<div iconCls="icon-home" title="首页" border="false"
		style="overflow: hidden;">
		<div class="mainindex">
			<div class="welinfo">
				<span><img src="resources/core/images/sun.png" alt="天气" /> </span>
				<b>${currUser}早上好，欢迎使用信息管理系统</b> <a href="javascript:void(0)"
					onclick="$('#dlg').dialog('open')">帐号设置</a>
			</div>
			<div class="xline"></div>
			<div class="box"></div>





			
		</div>
	</div>
</div>
<div id="dlg" class="easyui-dialog" title="修改密码"
	data-options="iconCls:'icon-save',
				buttons: [{
					text:'保存',
					iconCls:'icon-ok',
					handler:function(){
						submitPass();
					}
				},{
					text:'取消',
					iconCls: 'icon-cancel',
					handler:function(){
						$('#dlg').dialog('close');
					}
				}]"
	closed="true" style="width: 400px; height: 200px; padding: 10px">
	<form id="fm" method="post" action="manage/users/savePass">
		<input type="hidden" id="name" name="name" value="${currUser}" />
		<div class="fitem">
			<label>原始密码：</label> <input type="password" id="passwordOld"
				name="passwordOld" class="easyui-validatebox" required="true" />
		</div>
		<br />
		<div class="fitem">
			<label>&nbsp&nbsp&nbsp新密码：</label> <input type="password"
				id="password1" name="password1" class="easyui-validatebox"
				required="true" />
		</div>
		<br />
		<div class="fitem">
			<label>确认密码：</label> <input type="password" id="password"
				name="password" class="easyui-validatebox" required="true" />
		</div>
	</form>
</div>
<div id="tabsMenu" style="width: 120px; display: none;">
	<div type="refresh">刷新</div>
	<div class="menu-sep"></div>
	<div type="close">关闭</div>
	<div type="closeOther">关闭其他</div>
	<div type="closeAll">关闭所有</div>
</div>
<div id="theme" class="easyui-menu" style="width: 120px; display: none">
	<div id="default" data-options="iconCls:'icon-save'">default</div>
	<div id="black">black</div>
	<div id="bootstrap" data-options="iconCls:'icon-save'">bootstrap</div>
	<div id="gray" data-options="iconCls:'icon-save'">gray</div>
	<div id="metro" data-options="iconCls:'icon-save'">metro</div>
</div>