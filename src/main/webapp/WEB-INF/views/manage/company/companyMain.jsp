<%--
  Created by IntelliJ IDEA.
  User: lvzhi
  Date: 2016/4/4
  Time: 8:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
    <title>公司管理</title>
    <base href="<%=basePath%>">
    <script type="text/javascript" src="resources/public/js/jquery.js"></script>
    <link href="resources/core/css/style.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" type="text/css" href="resources/public/css/easyui.css"/>
    <link rel="stylesheet" type="text/css" href="resources/public/css/icon.css"/>
    <script type="text/javascript" src="resources/public/js/jquery.easyui.min.js"></script>
    <link rel="stylesheet" type="text/css" href="resources/check/css/common.css"/>
    <script type="text/javascript" src="resources/check/js/jqueryUtil.js"></script>
    <script type="text/javascript" src="resources/public/js/locale/easyui-lang-zh_CN.js"></script>
    <script type="text/javascript">
        var $dg;
        var $grid;
        $(function () {
            $dg = $("#dg");
            $grid = $dg.datagrid({
                url: "manage/comp/findComp",
                width: 'auto',
                height: $(this).height() - 17,
                pagination: true,
                rownumbers: true,
                border: true,
                idField: 'companyId',
                striped: true,
                singleSelect: true,
                columns: [[{
                    field: 'name',
                    title: '公司名称',
                    width: parseInt($(this).width() * 0.1),
                    editor: {type: 'validatebox', options: {required: true}}
                }, {field: 'tel', title: '公司电话', width: parseInt($(this).width() * 0.1), editor: "validatebox"},
                    {field: 'fax', title: '传真', width: parseInt($(this).width() * 0.1), align: 'left', editor: "text"},
                    {
                        field: 'address',
                        title: '地址',
                        align: 'left',
                        editor: "text"
                    },
                    {
                        field: 'zip',
                        title: '邮政编码',
                        align: 'left',
                        editor: "text"
                    },
                    {
                        field: 'email',
                        title: '邮箱',
                        align: 'left',
                        editor: {type: 'validatebox', options: {required: true, validType: 'email'}}
                    },
                    {
                        field: 'contact',
                        title: '联系人',
                        align: 'left',
                        editor: "text"
                    },
                    {
                        field: 'description',
                        title: '描述',
                        align: 'left',
                        editor: "text"
                    }
                ]], toolbar: '#tb'
            });

            //弹窗增加公司
            $("#addComp").click(function () {
                $.modalDialog({
                    title: '添加公司',
                    width: 600,
                    height: 400,
                    href: 'manage/comp/companyEditDlg',
                    buttons: [{
                        text: '保存',
                        iconCls: 'icon-yes',
                        handler: function () {
                            $.modalDialog.openner = $grid;//因为添加成功之后，需要刷新这个dataGrid，所以先预定义好
                            var f = $.modalDialog.handler.find("#form");
                            f.submit();
                        }
                    }, {
                        text: '取消',
                        iconCls: 'icon-no',
                        handler: function () {
                            $.modalDialog.handler.dialog('destroy');
                            $.modalDialog.handler = undefined;
                        }
                    }
                    ]
                });
            });

            //弹窗修改公司
            $("#updateComp").click(function () {
                var row = $dg.datagrid('getSelected');
                if (row) {
                    $.modalDialog({
                        title: '编辑公司',
                        width: 600,
                        height: 400,
                        href: "manage/comp/companyEditDlg",
                        onLoad: function () {
                            var f = $.modalDialog.handler.find("#form");
                            f.form("load", row);
                        },
                        buttons: [{
                            text: '编辑',
                            iconCls: 'icon-yes',
                            handler: function () {
                                $.modalDialog.openner = $grid;//因为添加成功之后，需要刷新这个dataGrid，所以先预定义好
                                var f = $.modalDialog.handler.find("#form");
                                f.submit();
                            }
                        }, {
                            text: '取消',
                            iconCls: 'icon-no',
                            handler: function () {
                                $.modalDialog.handler.dialog('destroy');
                                $.modalDialog.handler = undefined;
                            }
                        }
                        ]
                    });
                } else {
                    parent.$.messager.show({
                        title: "提示",
                        msg: "请选择一行记录!",
                        timeout: 1000 * 2
                    });
                }
            });

            $("#delComp").click(function () {
                var row = $dg.datagrid('getSelected');
                if (row) {
                    var rowIndex = $dg.datagrid('getRowIndex', row);
                    $.messager.confirm("提示", "确定要删除记录吗?", function (r) {
                        if (r) {
                            $.ajax({
                                url: "manage/comp/delComp",
                                data: "companyId=" + row.companyId,
                                success: function (rsp) {
                                    if (rsp.status) {
                                        $dg.datagrid('deleteRow', rowIndex);
                                    }
                                    $.messager.show({
                                        title: rsp.title,
                                        msg: rsp.message,
                                        timeout: 1000 * 2
                                    });
                                }
                            });
                        }
                    });
                } else {
                    $.messager.show({
                        title: "提示",
                        msg: "请选择一行记录!",
                        timeout: 1000 * 2
                    });
                }
            });

            $("#toExcel").click(function () {
                var row = $dg.datagrid('getSelected');
                if (row) {
                    window.location.href = "manage/comp/excelExport/" + row.companyId;
                } else {
                    $.messager.show({
                        title: "提示",
                        msg: "暂无导出数据!",
                        timeout: 1000 * 2
                    });
                }
            });
        });
    </script>
</head>
<body>
<div class="rightinfo">
    <div id="tb" class="easyui-layout">
        <ul class="toolbar">
            <shiro:hasPermission name="compAdd">
                <li id="addComp"><span><img
                        src="resources/core/images/t01.png"/></span>添加
                </li>
            </shiro:hasPermission>
            <shiro:hasPermission name="compEdit">
                <li id="updateComp"><span><img
                        src="resources/core/images/t02.png"/></span>修改
                </li>
            </shiro:hasPermission>
            <shiro:hasPermission name="compDel">
                <li id="delComp"><span><img
                        src="resources/core/images/t03.png"/></span>删除
                </li>
            </shiro:hasPermission>
            <li id="toExcel">
            <span><img
                    src="resources/core/images/excel.png"/></span>导出Excel
            </li>
        </ul>
    </div>

    <table id="dg" title="公司管理"></table>
</div>
</body>
</html>

