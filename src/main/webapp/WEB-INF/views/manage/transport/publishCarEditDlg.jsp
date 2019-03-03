<%@ page language="java" pageEncoding="utf-8" %>
<script type="text/javascript">
    $(function () {
        $("#form").form({
            url: "manage/transport/publishCarSave",
            onSubmit: function () {
                $.messager.progress({
                    title: '提示',
                    text: '数据处理中，请稍后....'
                });
                var isValid = $(this).form('validate');
                if (!isValid) {
                    $.messager.progress('close');
                }
                return isValid;
            },
            success: function (result) {
            console.log("start");
            	$.messager.progress('close');
            	
                var obj = eval("(" + result + ")");
                if (obj.status) {
                    $.messager.show({
                        title: obj.title,
                        msg: obj.message,
                        timeout: 1000
                    });
                } else {
                    $.messager.show({
                        title: obj.title,
                        msg: obj.message,
                        timeout: 1000
                    });
                }
                $('#form').form('clear');
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
        box-shadow: 0 1px 1px rgba(0, 0, 0, 0.075) inset;
        transition: border 0.2s linear 0s, box-shadow 0.2s linear 0s;
    }

    textarea:focus, input[type="text"]:focus {
        border-color: rgba(82, 168, 236, 0.8);
        box-shadow: 0 1px 1px rgba(0, 0, 0, 0.075) inset, 0 0 8px rgba(82, 168, 236, 0.6);
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

    input, textarea {
        font-weight: normal;
    }

    table, th, td {
        text-align: left;
        padding: 6px;
    }
</style>
<div class="easyui-layout" data-options="fit:true,border:false">
    <div data-options="region:'center',border:false" title="" style="overflow: hidden;padding: 10px;">
        <form id="form" method="post">
            <fieldset>
                <table>
                    <tr>
                        <th>起运省份</th>
                        <td>
                        	<input id="startProvince" name="startProvince" type="text" class="easyui-textbox easyui-validatebox" data-options="validType:'length[1,10]'"
                                   required="required"/>
                        </td>
                        <th>市</th>
                        <td>
                        	<input id="startCity" name="startCity" type="text" class="easyui-textbox easyui-validatebox" data-options="validType:'length[1,10]'"
                                   required="required"/>
                        </td>
                    </tr>
                    <tr>
                        <th>县</th>
                        <td>
                        	<input id="startCounty" name="startCounty" type="text" class="easyui-textbox easyui-validatebox" data-options="validType:'length[1,10]'"
                                   required="required"/>
                        </td>
                        <th>地址</th>
                        <td>
                       		 <input id="startAddress" name="startAddress" type="text" class="easyui-textbox easyui-validatebox" data-options="validType:'length[1,100]'"
                                   required="required"/>
                        </td>
                    </tr>
                
                   <tr>
                        <th>目的省份</th>
                        <td>
                        	<input id="endProvince" name="endProvince" type="text" class="easyui-textbox easyui-validatebox" data-options="validType:'length[1,10]'"
                                   required="required"/>
                        </td>
                        <th>市</th>
                        <td>
                        	<input id="endCity" name="endCity" type="text" class="easyui-textbox easyui-validatebox" data-options="validType:'length[1,10]'"
                                    required="required"/>
                        </td>
                    </tr>
                    <tr>
                        <th>县</th>
                        <td>
                        	<input id="endCounty" name="endCounty" type="text" class="easyui-textbox easyui-validatebox" data-options="validType:'length[1,10]'"
                                   required="required"/>
                        </td>
                        <th>地址</th>
                        <td>
                       		 <input id="endAddress" name="endAddress" type="text" class="easyui-textbox easyui-validatebox" data-options="validType:'length[1,100]'"
                                   required="required"/>
                        </td>
                    </tr>
                
                    <tr>
                        <th>车辆详情</th>
                        <td>
                        	<input id="details" name="carDetails" type="text" class="easyui-textbox easyui-validatebox" data-options="validType:'length[1,200]'"
                                   required="required"/>
                        </td>
                        <th>车辆吨位</th>
                        <td>
                        	<input id="vehicleLoad" name="vehicleLoad" type="text" class="easyui-numberbox easyui-validatebox" data-options="validType:'length[1,11]'"
                                   required="required"/>
                        </td>
                    </tr>
                    
                     <tr>
                        <th>联系人</th>
                        <td>
                        	<input id="contact" name="contact" type="text" class="easyui-textbox easyui-validatebox" data-options="validType:'length[1,10]'"
                                   required="required"/>
                        </td>
                        <th>联系方式</th>
                        <td>
                        	<input id="tel" name="tel" type="text" class="easyui-textbox easyui-validatebox" validType='telNum'
                                   required="required"/>
                        </td>
                    </tr>
                    
                    <tr>
                        <th>有效时间(天)</th>
                        <td>
                        	<input id="effectiveTime" name="effectiveTime" type="text" class="easyui-numberbox easyui-validatebox" data-options="validType:'length[1,10]'"
                                   required="required"/>
                        </td>
                        <th>创建人</th>
                        <td>
                        	<input id="creater" name="creater" type="text" class="easyui-textbox easyui-validatebox" data-options="validType:'length[1,10]'"
                                  />
                        </td>
                    </tr>
                   <tr>
                        <th>描述</th>
                        <td colspan="3"><textarea class="easyui-textbox" name="remarks" data-options="validType:'length[1,300]'"
                                                  style="width: 435px;height: 100px;"></textarea></td>
                    </tr>
                </table>
            </fieldset>
        </form>
    </div>
</div>
