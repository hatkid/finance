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
<link rel="stylesheet" type="text/css" href="resources/public/css/common.css" />
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
							<input id="timedate"  name="timedate" class="easyui-datebox commonWidth" required='required'/>
						</td>
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
