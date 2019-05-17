<%@ page language="java" pageEncoding="utf-8"%>
<script type="text/javascript" src="resources/js/easyuiextendvalidate.js"></script>
<script type="text/javascript">
	$(function() {
		$("#form").form({
			url : "manage/runningAccount/saveOrUpdate",
			onSubmit : function() {
				$.messager.progress({
					title : '提示',
					text : '数据处理中，请稍后....'
				});
				var isValid = $(this).form('validate');
				if (!isValid) {
					$.messager.progress('close');
				}
				return isValid;
			},
			success : function(result) {
				$.messager.progress('close');
				result = eval("(" + result + ")");
				if (result.status) {
					//注意这里的datagrid，要和主页面的保持一致
					$.modalDialog.openner.datagrid('reload');
					$.modalDialog.handler.dialog('close');
					$.messager.show({
						title : result.title,
						msg : result.message,
						timeout : 1000 * 2
					});
				} else {
					$.messager.show({
						title : result.title,
						msg : result.message,
						timeout : 1000 * 2
					});
				}
			}
		});
	});
</script>
<style>
.easyui-textbox {
	height: 25px;
	width: 170px;
	line-height: 16px;
	/*border-radius: 3px 3px 3px 3px;*/
	box-shadow: 0 1px 1px rgba(0, 0, 0, 0.075) inset;
	transition: border 0.2s linear 0s, box-shadow 0.2s linear 0s;
}

textarea:focus,input[type="text"]:focus {
	border-color: rgba(82, 168, 236, 0.8);
	box-shadow: 0 1px 1px rgba(0, 0, 0, 0.075) inset, 0 0 8px
		rgba(82, 168, 236, 0.6);
	outline: 0 none;
}

table {
	background-color: transparent;
	border-collapse: collapse;
	border-spacing: 0;
	max-width: 100%;
}

fieldset {
	border: 0 none;
	margin: 0;
	padding: 0;
}

legend {
	-moz-border-bottom-colors: none;
	-moz-border-left-colors: none;
	-moz-border-right-colors: none;
	-moz-border-top-colors: none;
	border-image: none;
	border: 0 none #E5E5E5;
	border-bottom: 1px solid;
	color: #999999;
	line-height: 20px;
	display: block;
	margin-bottom: 10px;
	padding: 0;
	width: 100%;
}

input,textarea {
	font-weight: normal;
}

table,th,td {
	text-align: left;
	padding: 6px;
}
</style>
<div class="easyui-layout" data-options="fit:true,border:false">
	<div data-options="region:'center',border:false" title=""
		style="overflow: hidden;padding: 10px;">
		<form id="form" method="post">
			<fieldset>
				<legend>
					<img src="resources/core/images/fromedit.png"
						style="margin-bottom: -3px;" /> 流水信息显示
				</legend>
				<input name="id" id="id" type="hidden" />
				<table>
					<tr>
						<th>日期</th>
						<td>
							<input id="timedate"  name="timedate" class="easyui-datebox" required='required'/>
						</td>
					</tr>
					<tr>
						<th>费用属性</th>
						<td><input name='costAttribute' id='costAttribute' type="text"
							required='required' class="easyui-textbox easyui-validatebox" />
						</td>
					</tr>
					<tr>
						<th>属性类别</th>
						<td><input name='costAttributeType' id='costAttributeType' type="text"
							required='required' class="easyui-textbox easyui-validatebox" />
						</td>
					</tr>
					<tr>
						<th>单位名称</th>
						<td><input name='companyName' id='companyName' type="text"
							required='required' class="easyui-textbox easyui-validatebox" />
						</td>
					</tr>
					<tr>
						<th>项目</th>
						<td><input name='projectName' id='projectName' type="text"
							required='required' class="easyui-textbox easyui-validatebox"  />
						</td>
					</tr>
					<tr>
						<th>摘要</th>
						<td><input name='abstractContent' id='abstractContent' type="text"
							class="easyui-textbox easyui-validatebox"  />
						</td>
					</tr>
					<tr>
						<th>入账(借)</th>
						<td><input name='entrys' id='entrys' data-options="validType:'isMyNumber'"
							class='easyui-textbox easyui-validatebox' type='text' />
						</td>
					</tr>
					<tr>
						<th>出账(贷)</th>
						<td><input name='outs' id='outs' data-options="validType:'isMyNumber'"
							class='easyui-textbox easyui-validatebox' type='text' />
						</td>
					</tr>
					<tr>
						<th>支付方式</th>
						<td><input name='payment' id='payment' type="text"
							class="easyui-textbox easyui-validatebox"  />
						</td>
					</tr>
					<tr>
						<th>收款人</th>
						<td><input name='payee' id='payee' type="text"
							class="easyui-textbox easyui-validatebox" />
						</td>
					</tr>
					<tr>
						<th>备注</th>
						<td><input name='remark' id='remark' type="text"
						 class="easyui-textbox easyui-validatebox" />
						</td>
					</tr>
				</table>
			</fieldset>
		</form>
	</div>
</div>
