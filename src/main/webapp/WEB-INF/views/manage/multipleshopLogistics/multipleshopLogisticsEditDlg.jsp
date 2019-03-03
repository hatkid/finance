<%@ page language="java" pageEncoding="utf-8"%>
<script type="text/javascript">
	$(function() {
		$("#form").form({
			url : "manage/multipleshopLogistics/saveOrUpdate",
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
	$
			.extend(
					$.fn.validatebox.defaults.rules,
					{
						phoneNum : { //验证手机号  
							validator : function(value, param) {
								return /^1[3-8]+\d{9}$/.test(value);
							},
							message : '请输入正确的手机号码。'
						},

						telNum : { //既验证手机号，又验证座机号
							validator : function(value, param) {
								return /(^(0[0-9]{2,3}\-)?([2-9][0-9]{6,7})+(\-[0-9]{1,4})?$)|(^((\d3)|(\d{3}\-))?(1[358]\d{9})$)/
										.test(value);
							},
							message : '请输入正确的电话号码。'
						}
					});
</script>
<style>
.easyui-textbox {
	height: 18px;
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
						style="margin-bottom: -3px;" /> 企业信息编辑
				</legend>
				<input name="id" id="id" type="hidden" />
				<table>
					<tr>
						<th>快递网点名称</th>
						<td><input name='companyName' id='companyName' data-options="validType:'length[1,100]'"
							required='required' class='easyui-textbox easyui-validatebox'
							type='text' />
						</td>
						<th>通讯地址</th>
						<td><input name='address' id='address' required='required' data-options="validType:'length[1,100]'"
							class='easyui-textbox easyui-validatebox' type='text' />
						</td>
					</tr>
					<tr>
						<th>联系人</th>
						<td><input name='linkman' id='linkman' required='required' data-options="validType:'length[1,100]'"
							class='easyui-textbox easyui-validatebox' type='text' />
						</td>
						<th>联系电话</th>
						<td><input name='tel' id='tel' required='required'
							validType='telNum' class='easyui-textbox easyui-validatebox'
							type='text' />
						</td>
					</tr>
					<tr>
						<th>邮箱</th>
						<td><input name='email' id='email' required='required' data-options="validType:'length[1,50]'"
							validType='email' class='easyui-textbox easyui-validatebox'
							type='text' />
						</td>
						<th>总公司类型</th>
						<td><input name='headOfficeType' id='headOfficeType' data-options="validType:'length[1,100]'"
							class='easyui-textbox easyui-validatebox' type='text' />
						</td>
					</tr>
					<tr>
						<th>总公司所在地</th>
						<td><input name='headOfficeAddress' id='headOfficeAddress' data-options="validType:'length[1,100]'"
							class='easyui-textbox easyui-validatebox' type='text' />
						</td>
						<th>快递物流类别</th>
						<td><input name='logisticsType' id='logisticsType' data-options="validType:'length[1,100]'"
							class='easyui-textbox easyui-validatebox' type='text' />
						</td>
					</tr>
					<tr>
						<th>员工总数（人）</th>
						<td><input name='logisticsEmpSum' id='logisticsEmpSum' data-options="validType:'length[1,6]'"
							size='26' class='easyui-numberbox' type='text' />
						</td>
						<th>员工物流师（人）</th>
						<td><input name='logisticianEmpNum' id='logisticianEmpNum' data-options="validType:'length[1,6]'"
							size='26' class='easyui-numberbox' type='text' />
						</td>
					</tr>
					<tr>
						<th>仓储面积（平方米）</th>
						<td><input name='storageArea' id='storageArea' size='26' data-options="validType:'length[1,6]'"
							class='easyui-numberbox'  type='text' />
						</td>
						<th>仓储温度（摄氏度）</th>
						<td><input name='storageTemperature' id='storageTemperature' data-options="validType:'length[1,6]'"
							size='26' class='easyui-numberbox'  type='text' />
						</td>
					</tr>
					<tr>
						<th>快递运输车辆类型</th>
						<td><input name='carType' id='carType' data-options="validType:'length[1,100]'"
							class='easyui-textbox easyui-validatebox' type='text' />
						</td>
						<th>快递运输车辆数量</th>
						<td><input name='carNum' id='carNum' size='26' data-options="validType:'length[1,6]'"
							class='easyui-numberbox' type='text' />
						</td>
					</tr>
					<tr>
						<th>经营优势</th>
						<td><input name='businessAdvantage' id='businessAdvantage' data-options="validType:'length[1,100]'"
							class='easyui-textbox easyui-validatebox' type='text' />
						</td>
						<th>经营短板或不足</th>
						<td><input name='businessDisadvantage' data-options="validType:'length[1,100]'"
							id='businessDisadvantage'
							class='easyui-textbox easyui-validatebox' type='text' />
						</td>
					</tr>
					<tr>
						<th>年总产值（万元）</th>
						<td><input name='totalValueOfOutput' id='totalValueOfOutput' data-options="validType:'length[1,6]'"
							size='26' class='easyui-numberbox'  type='text' />
						</td>
						<th>年利税（万元）</th>
						<td><input name='profitsTax' id='profitsTax' size='26' data-options="validType:'length[1,6]'"
							class='easyui-numberbox'  type='text' />
						</td>
					</tr>
					<tr>
						<th>1-5月份产值（万元）</th>
						<td><input name='valueOfOutput' id='valueOfOutput' size='26' data-options="validType:'length[1,6]'"
							class='easyui-numberbox'  type='text' />
						</td>
						<th>1-5月份利税（万元）</th>
						<td><input name='profitsTaxFive' id='profitsTaxFive' data-options="validType:'length[1,6]'"
							size='26' class='easyui-numberbox'  type='text' />
						</td>
					</tr>
					<tr>
						<th>年度总单数（万个）</th>
						<td><input name='orderQuantity' id='orderQuantity' size='26' data-options="validType:'length[1,6]'"
							class='easyui-numberbox' type='text' />
						</td>
						<th>年份</th>
						<td><input name='year' id='year' min='1000' max='9999'
							class='easyui-numberbox' size='26' type='text' />
						</td>
					</tr>
				</table>
			</fieldset>
		</form>
	</div>
</div>
