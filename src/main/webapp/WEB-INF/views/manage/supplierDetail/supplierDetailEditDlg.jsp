<%@ page language="java" pageEncoding="utf-8"%>
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
						style="margin-bottom: -3px;" /> 明细信息显示
				</legend>
				<input name="id" id="id" type="hidden" />
				<table>
					<tr>
						<th>供应商名称</th>
						<td>
							<input class="easyui-combobox" name="companyId" id="companyId" editable=false
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
					</tr>
					<tr>
						<th>单位</th>
						<td><input name='unit' id='unit' type="text"
							required='required' class="easyui-textbox easyui-validatebox" />
						</td>
					</tr>
					<tr>
						<th>数量</th>
						<td><input name='amount' id='amount' required='required' data-options="min:0,precision:0"
							class='easyui-numberbox' type='number' />
						</td>
					</tr>
					<tr>
						<th>单价</th>
						<td><input name='price' id='price' required='required' data-options="min:0,precision:2"
							class='easyui-numberbox' type='number' />
						</td>
					</tr>
					<tr>
						<th>金额</th>
						<td><input name='total' id='total' required='required' data-options="min:0,precision:2"
							class='easyui-numberbox' type='number' />
						</td>
					</tr>
					<tr>
						<th>已付款</th>
						<td><input name='paid' id='paid' required='required' data-options="min:0,precision:2"
							class='easyui-numberbox' type='number' />
						</td>
					</tr>
					<tr>
						<th>付款方式</th>
						<td><input name='payment' id='payment' type="text"
							required='required' class="easyui-textbox easyui-validatebox" />
						</td>
					</tr>
				</table>
			</fieldset>
		</form>
	</div>
</div>
