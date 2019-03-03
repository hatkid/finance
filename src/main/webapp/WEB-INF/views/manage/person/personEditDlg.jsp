<%@ page language="java" pageEncoding="utf-8"%>
<script type="text/javascript">
	$(function() {
		$("#form").form({
			url : "manage/person/saveOrUpdate",
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
						},
						idcard : {// 验证身份证

							validator : function(value) {

								return /^\d{15}(\d{2}[A-Za-z0-9])?$/i
										.test(value);

							},

							message : '身份证号码格式不正确'

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
						style="margin-bottom: -3px;" /> 信息编辑
				</legend>
				<input name="id" id="id" type="hidden" />
				<table>
					<tr>
						<th>姓名</th>
						<td><input name='name' id='name' required='required'
							data-options="validType:'length[1,25]'"
							class='easyui-textbox easyui-validatebox' type='text' />
						</td>
						<th>性别</th>
						<td><input type="radio" name="sex" value="男" checked />男 <input
							type="radio" name="sex" value="女" />女</td>
					</tr>
					<tr>
						<th>所属公司</th>
						<td><select class="easyui-combobox" name="vestInCompany"
							required='required' id='vestInCompany' style="width:170px;"
							data-options="valueField:'companyName', textField:'companyName', panelHeight:'auto'"></select>
							<script type="text/javascript">
								$("#vestInCompany")
										.combobox(
												{
													onChange : function(n, o) {
														$('#vestInCompany')
																.val("");
														if (n != "") {
															$
																	.ajax({
																		url : "manage/businessmanagement/findBusinessCmb",
																		type : "post",
																		data : {
																			'companyName' : n
																		},
																		cache : false,
																		async : false,
																		datatype : 'json',
																		success : function(
																				data) {
																			var op = $("#vestInCompany");
																			op
																					.empty();
																			obj = $
																					.parseJSON(data);
																			$(
																					"#vestInCompany")
																					.combobox(
																							"loadData",
																							obj);
																		},
																		error : function() {
																			alert("错误，请重新登录或联系管理员。");
																		}
																	});
														} else {
															$('#vestInCompany')
																	.combo(
																			'panel')
																	.empty();
														}
													},
													onHidePanel : function() {
														var _options = $(this)
																.combobox(
																		'options');
														var _data = $(this)
																.combobox(
																		'getData');/* 下拉框所有选项 */
														var _value = $(this)
																.combobox(
																		'getValue');/* 用户输入的值 */
														var _b = false;/* 标识是否在下拉列表中找到了用户输入的字符 */
														for ( var i = 0; i < _data.length; i++) {
															if (_data[i][_options.valueField] == _value) {
																_b = true;
																break;
															}
														}
														if (!_b) {
															$(this).combobox(
																	'setValue',
																	'');
														}
													}
												});
							</script>
						</td>
						<th>身份证</th>
						<td><input name='idNumber' id='idNumber' validType='idcard'
							required='required' class='easyui-textbox easyui-validatebox'
							type='text' />
						</td>
					</tr>
					<tr>
						<th>地址</th>
						<td><input name='address' id='address' required='required'
							data-options="validType:'length[1,50]'"
							class='easyui-textbox easyui-validatebox' type='text' />
						</td>
						<th>联系方式</th>
						<td><input name='tel' id='tel' required='required'
							validType='telNum' class='easyui-textbox easyui-validatebox'
							type='text' />
						</td>
					</tr>
					<tr>
						<th>人员种类</th>
						<td><input name='nature' id='nature'
							data-options="validType:'length[1,20]'"
							class='easyui-textbox easyui-validatebox' type='text' />
						</td>
					</tr>
					<tr>
						<th>备注</th>
						<td colspan="3"><input name='remark' id='remark'
							data-options="multiline:true,validType:'length[1,200]'"
							class='easyui-textbox' type='text' style="width: 435px;height: 100px;" />
						</td>
					</tr>
				</table>
			</fieldset>
		</form>
	</div>
</div>
