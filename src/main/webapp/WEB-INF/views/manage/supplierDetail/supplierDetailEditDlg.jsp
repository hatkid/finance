<%@ page language="java" pageEncoding="utf-8"%>
<script type="text/javascript" src="resources/js/easyuiextendvalidate.js"></script>
<script type="text/javascript">
	$(function() {
		$("#form").form({
			url : "manage/supplierDetail/saveOrUpdate",
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
						style="margin-bottom: -3px;" /> 明细信息显示
				</legend>
				<input name="id" id="id" type="hidden" />
				<table>
					<tr>
						<th>日期</th>
						<td>
							<input id="timedate"  name="timedate" class="easyui-datebox commonWidth" required='required'/>
						</td>
						<th>供应商名称</th>
						<td>
							<input class="easyui-combobox commonWidth" name="companyId" id="companyId" required='required' editable=false
								data-options="
									url: 'manage/supplierDetail/getCompanyName',
									valueField:'id',
									textField:'companyName'
								">
						</td>
					</tr>
					<tr>
						<th>采购名称</th>
						<td><input name='purchaseName' id='purchaseName' type="text"
							required='required' class="easyui-textbox easyui-validatebox" />
						</td>
						<th>单位</th>
						<td><input name='unit' id='unit' type="text"
							 class="easyui-textbox easyui-validatebox" />
						</td>
					</tr>
					<tr>
						<th>数量</th>
						<td><input name='amount' id='amount' type="text" data-options="validType:'isMyNumber'"
							class='easyui-textbox easyui-validatebox'  />
						</td>
						<th>单价</th>
						<td><input name='price' id='price' type="text" data-options="validType:'isMyNumber'"
							class='easyui-textbox easyui-validatebox'/>
						</td>
					</tr>
					<tr>
						<th>金额</th>
						<td><input name='total' id='total' data-options="validType:'isMyNumber'"
							class='easyui-textbox easyui-validatebox' type='text' />
						</td>
						<th>已付款</th>
						<td><input name='paid' id='paid' data-options="validType:'isMyNumber'"
							class='easyui-textbox easyui-validatebox' type='text' />
						</td>
					</tr>
					<tr>
						<th>付款方式</th>
						<td><input name='payment' id='payment' type="text"
							class="easyui-textbox easyui-validatebox" />
						</td>
					</tr>
				</table>
			</fieldset>
		</form>
	</div>
</div>
