<%--
  Created by IntelliJ IDEA.
  User: lvzhi
  Date: 2016/4/4
  Time: 8:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<script type="text/javascript">
	$(document).ready(
			function() {
				$.ajax({
					url : "front/selectDevice",
					type : "post",
					cache : false,
					async : false,
					datatype : 'json',
					success : function(data) {
						var op = $("#deviceId");
						op.empty();
						op.prepend("<option value='0'>请选择设备类型</option>");
						$.each(data, function(index, value) {
							op.append("<option value="+value.id+" imgUrl="+value.deviceImg+">"
									+ value.deviceName + "</option>");
						});
					},
					error : function() {
					}
				});
			});
    $(function () {
        $("#form").form({
            url: "manage/orderBind/saveOrUpdateOrderBind",
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
                $.messager.progress('close');
                result = $.parseJSON(result);
                if (result.status) {
                    $.modalDialog.openner.datagrid('reload');
                    $.modalDialog.handler.dialog('close');
                    $.messager.show({
                        title: result.title,
                        msg: result.message,
                        timeout: 1000 * 2
                    });
                } else {
                    $.messager.show({
                        title: result.title,
                        msg: result.message,
                        timeout: 1000 * 2
                    });
                }
            }
        });
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
        <form id="form" method="POST">
                <legend><img src="resources/core/images/fromedit.png" style="margin-bottom: -3px;"/> 指令编辑</legend>
                <input name="id" id="id" type="hidden"/>
                <table>
                    <tr>
                        <th>指令名称</th>
                        <td><input name="order" id="order"  class="easyui-textbox easyui-validatebox" required="required"
                                   type="text"/></td>
                        <th>回复内容</th>
                        <td><input id="resMsg" name="resMsg"  type="text" class="easyui-textbox easyui-validatebox"
                                   required="required"/></td>
                    </tr>
                    <tr>
                        <th>设备类型</th>
                        <td><select id="deviceId" name="deviceId" style="line-height:26px;border:1px solid #ccc;width:170px"></select></td>
                    </tr>
                </table>
        </form>
    </div>
</div>

