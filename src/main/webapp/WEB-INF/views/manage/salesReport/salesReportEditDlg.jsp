<%@ page language="java" pageEncoding="utf-8"%>
<script type="text/javascript" src="resources/js/easyuiextendvalidate.js"></script>
<script type="text/javascript">
	$(function() {
		$("#form").form({
			url : "manage/salesReport/saveOrUpdate",
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
						<th>客户名称</th>
						<td><input name='customerName' id='customerName' type="text"
							required='required' class="easyui-textbox easyui-validatebox" />
						</td>
					</tr>
					<tr>
						<th>品名</th>
						<td><input name='teaName' id='teaName' type="text"
							required='required' class="easyui-textbox easyui-validatebox" />
						</td>
						<th>色别</th>
						<td><input name='color' id='color' type="text"
							required='required' class="easyui-textbox easyui-validatebox" />
						</td>
					</tr>
					<tr>
						<th>件数/套数</th>
						<td><input name='setCount' id='setCount' data-options="validType:'isDigitsOrEmpty'"
							class='easyui-textbox easyui-validatebox' type='text' />
						</td>
						<th>发货件数</th>
						<td><input name='saleCount' id='saleCount' data-options="validType:'isDigitsOrEmpty'"
							class='easyui-textbox easyui-validatebox' type='text'/>
						</td>
					</tr>
					<tr>
						<th>合计数量</th>
						<td><input name='totalCount' id='totalCount' data-options="validType:'isDigitsOrEmpty'"
							class='easyui-textbox easyui-validatebox' type='text'/>
						</td>
						<th>单价</th>
						<td><input name='price' id='price'  data-options="validType:'isMyNumber'"
							class='easyui-textbox easyui-validatebox' type='text' />
						</td>
					</tr>
					<tr>
						<th>合计金额</th>
						<td><input name='totalPrice' id='totalPrice' data-options="validType:'isMyNumber'"
							class='easyui-textbox easyui-validatebox' type='text' />
						</td>
						<th>小计</th>
						<td><input name='subtotal' id='subtotal' type="text"
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
