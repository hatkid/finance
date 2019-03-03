<%@ page language="java" pageEncoding="utf-8"%>
<script type="text/javascript">
	$(function() {
		$("#form").form({
			url : "manage/businessmanagement/saveOrUpdate",
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
		<form id="form" method="post"  enctype="multipart/form-data">
			<fieldset>
				<legend>
					<img src="resources/core/images/fromedit.png"
						style="margin-bottom: -3px;" /> 企业信息编辑
				</legend>
				<input name="id" id="id" type="hidden" />
				<table>
					<tr>
						<th>公司名称</th>
						<td><input name='companyName' id='companyName' data-options="validType:'length[1,50]'"
							required="required" class='easyui-textbox easyui-validatebox'
							type='text' /></td>
						<th>注册资金</th>
						<td><input name='registeredCapital' id='registeredCapital' data-options="validType:'length[1,15]'"
							required="required"  class="easyui-numberbox" size='26'
							type='text' /></td>
					</tr>
					<tr>
						<th>公司性质</th>
						<td><input name='companyNature' id='companyNature' required="required" data-options="validType:'length[1,50]'"
							class='easyui-textbox easyui-validatebox' type='text' /></td>
						<th>资质</th>
						<td><input name='qualifications' id='qualifications' data-options="validType:'length[1,200]'"
							size="26" class='easyui-textbox easyui-validatebox' type='text' /></td>
					</tr>
					<tr>
						<th>法人</th>
						<td><input name='companyLegalPerson' id='companyLegalPerson' data-options="validType:'length[1,50]'"
							required="required" class='easyui-textbox easyui-validatebox'
							type='text' /></td>
						<th>法人联系方式</th>
						<td><input name='legalPersonContact' id='legalPersonContact' required="required"
							validType='telNum' class='easyui-textbox easyui-validatebox'
							type='text' /></td>
					</tr>
					<tr>
						<th>公司地址</th>
						<td><input name='address' id='address' required="required" data-options="validType:'length[1,200]'"
							 class='easyui-textbox easyui-validatebox'
							type='text' /></td>
						<th>经营范围</th>
						<td><input name='businessScope' id='businessScope' size="26" class="easyui-combobox"
							data-options="multiple:true,valueField: 'value',textField: 'label',data: 
								[{label: '运输型物流',value: 'transportLogistics'}
								,{label: '仓储型物流',value: 'storageLogistics'}
								,{label: '货运代理',value: 'forwarder'}
								,{label: '综合型物流（仓储、运输等）',value: 'integratedlogistics'}
								,{label: '零担物流',value: 'lessThanTruckLLoad'}
								,{label: '快递物流',value: 'expressLogistics'}]" />
						</td>
					</tr>
					<tr>
						<th>是否安装安检机</th>
						<td><input type="radio" name='install'
							id='install1' value="1" />是  <input
							type="radio" name='install'
							id='install2' value="0" />否</td>
							<th>是否实名制</th>
						<td><input type="radio" id='realName1' name="realName"
							value="1" />是  <input type="radio" id='realName2'
							name="realName" value="0" />否</td>
					</tr>
					<tr>
						<th>营业执照</th>
						<td><input name='filedata' 
							id='file' size="26" 
							type='file' /> <input type="hidden" name="imageName" value="true"/></td>
					</tr>
					<tr>
							<th>备注</th>
						<td colspan="3"><input name='remarks' id='remarks' data-options="multiline:true,validType:'length[1,200]'"
							class="easyui-textbox" type='text' style="width: 435px;height: 100px;"/></td>
					</tr>
				</table>
			</fieldset>
		</form>
	</div>
</div>
