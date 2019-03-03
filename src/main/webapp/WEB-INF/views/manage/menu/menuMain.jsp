<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="shiro" uri="http://shiro.apache.org/tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <base href="<%=basePath%>">
    <title>菜单管理</title>
    <script type="text/javascript" src="resources/public/js/jquery.js"></script>
    <link href="resources/core/css/style.css" rel="stylesheet" type="text/css"/>
    <link rel="stylesheet" type="text/css" href="resources/public/css/easyui.css"/>
    <link rel="stylesheet" type="text/css" href="resources/public/css/icon.css"/>
    <script type="text/javascript" src="resources/public/js/jquery.easyui.min.js"></script>
    <link rel="stylesheet" type="text/css" href="resources/check/css/common.css"/>
    <script type="text/javascript" src="resources/check/js/jqueryUtil.js"></script>
    <script type="text/javascript">
        var $dg;
        var $grid;
        var typedata = [{"type": "F", "typeName": "菜单"}, {"type": "O", "typeName": "操作"}];
        $(function () {
            $dg = $("#dg");
            $grid = $dg.treegrid({
                width: 'auto',
                height: $(this).height()-17,
                url: "manage/menu/findAllMenuList",
                rownumbers: true,
                animate: true,
                fitColumns: true,
                striped: true,
                border: true,
                idField: 'permissionId',
                treeField: 'name',
                frozenColumns: [[{
                    title: '菜单名称',
                    field: 'name',
                    editor: {
                        type: 'validatebox',
                        options: {
                            required: true
                        }
                    },
                    width: parseInt($(this).width() * 0.15),
                    formatter: function (value) {
                        return '<span style="color:red">' + value + '</span>';
                    }
                }]],
                columns: [[{
                    field: 'pname',
                    title: '父菜单名称',
                    width: parseInt($(this).width() * 0.08),
                    align: 'center'
                }, {
                    field: 'sort',
                    title: '排序编码',
                    width: parseInt($(this).width() * 0.07),
                    editor: {
                        type: 'numberbox'
                    },
                    align: 'center'
                }, {
                    field: 'ifDefault',
                    title: '是否默认',
                    align: 'center',
                    width: parseInt($(this).width() * 0.07),
                    formatter: function (value, row) {
                        if ("Y" == row.ifDefault) return "<font color=green>是<font>";
                        else return "<font color=red>否<font>";
                    },
                }, {
                    field: 'url',
                    title: '菜单路径',
                    width: parseInt($(this).width() * 0.24),
                    align: 'left',
                    editor: {
                        type: 'validatebox',
                        options: {
                            required: true
                        }
                    }
                }, {
                    field: 'myId',
                    title: '菜单编码',
                    width: parseInt($(this).width() * 0.1),
                    align: 'left',
                    editor: {
                        type: 'validatebox',
                        options: {
                            required: true
                        }
                    }
                }, {
                    field: 'type',
                    title: '菜单类型',
                    width: parseInt($(this).width() * 0.07),
                    align: 'center',
                    formatter: function (value, row) {
                        if ("F" == row.type) return "<font color=green>菜单<font>";
                        else return "<font color=red>操作<font>";
                    },
                    editor: {
                        type: 'combobox',
                        options: {
                            valueField: 'type',
                            textField: 'typeName',
                            data: typedata,
                            required: true
                        }
                    }
                }, {
                    field: 'isused',
                    title: '是否启用',
                    width: parseInt($(this).width() * 0.07),
                    align: 'center',
                    formatter: function (value, row) {
                        if ("Y" == row.isused) return "<font color=green>是<font>";
                        else return "<font color=red>否<font>";
                    },
                    editor: {
                        type: 'checkbox',
                        options: {
                            on: 'Y',
                            off: 'N'
                        }
                    }
                }, {
                    field: 'description',
                    title: '菜单描述',
                    width: parseInt($(this).width() * 0.25),
                    align: 'left',
                    editor: "text"
                }]],
                toolbar: '#tb',
                onDblClickRow:menuEdit
            });

            $("#addFunc").click(function () {
                var row = $dg.treegrid('getSelected');
                if (row) {
                    if (row.type == "O") {
                        $.messager.alert('错误提示', '该操作没有下层!', 'error');
                    } else {
                        $.modalDialog({
                            title: "添加菜单",
                            width: 600,
                            height: 400,
                            href: "manage/menu/menuEditDlg",
                            onLoad: function () {
                                if (row) {
                                    var f = $.modalDialog.handler.find("#form");
                                    f.form("load", {
                                        "pid": row.permissionId,
                                        "pname": row.name
                                    });
                                }
                            },
                            buttons: [{
                                text: '保存',
                                iconCls: 'icon-yes',
                                handler: function () {
                                    $.modalDialog.openner = $grid; //因为添加成功之后，需要刷新这个treegrid，所以先预定义好
                                    var f = $.modalDialog.handler.find("#form");
                                    f.submit();
                                }
                            },
                                {
                                    text: '取消',
                                    iconCls: 'icon-no',
                                    handler: function () {
                                        $.modalDialog.handler.dialog('destroy');
                                        $.modalDialog.handler = undefined;
                                    }
                                }]
                        });
                    }
                } else {
                    $.modalDialog({
                        title: "添加菜单",
                        width: 600,
                        height: 400,
                        href: "manage/menu/menuEditDlg",
                        onLoad: function () {
                            if (row) {
                                var f = $.modalDialog.handler.find("#form");
                                f.form("load", {
                                    "pid": row.permissionId,
                                    "pname": row.pname
                                });
                            }
                        },
                        buttons: [{
                            text: '保存',
                            iconCls: 'icon-yes',
                            handler: function () {
                                $.modalDialog.openner = $grid;
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
                        }]
                    });
                }
            });

            $("#updateFunc").click(function () {
                menuEdit();
            });

            $("#delFunc").click(function () {
                var node = $dg.treegrid('getSelected');
                if (node) {
                    $.messager.confirm("提示", "确定要删除记录吗?",
                            function (result) {
                                if (result) {
                                    var request = $.ajax({
                                        url: "manage/menu/delMenu",
                                        data: {
                                            'id': node.permissionId
                                        },
                                        method: "POST",
                                        dataType: "JSON"
                                    });

                                    request.done(function (rsp) {
                                        if (rsp.status) {
                                            $dg.treegrid('remove', node.permissionId);
                                        }
                                        $.messager.show({
                                            title: rsp.title,
                                            msg: rsp.message,
                                            timeout: 1000 * 2
                                        });
                                    });

                                    request.fail(function () {
                                        $.messager.show({
                                            title: "提示",
                                            msg: "提交错误了！",
                                            timeout: 1000 * 2
                                        });
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
        });

        function menuEdit(){
            var row = $dg.treegrid('getSelected');
            if (row) {
                $.modalDialog({
                    title: "编辑菜单",
                    width: 600,
                    height: 400,
                    href: "manage/menu/menuEditDlg",
                    onLoad: function () {
                        var f = $.modalDialog.handler.find("#form");
                        f.form("load", row);
                    },
                    buttons: [{
                        text: '编辑',
                        iconCls: 'icon-yes',
                        handler: function () {
                            $.modalDialog.openner = $grid; //因为添加成功之后，需要刷新这个treegrid，所以先预定义好
                            var f = $.modalDialog.handler.find("#form");
                            f.submit();
                        }
                    },
                        {
                            text: '取消',
                            iconCls: 'icon-no',
                            handler: function () {
                                $.modalDialog.handler.dialog('destroy');
                                $.modalDialog.handler = undefined;
                            }
                        }]
                });
            } else {
                $.messager.show({
                    title: "提示",
                    msg: "请选择一行记录!",
                    timeout: 1000 * 2
                });
            }
        }
    </script>
</head>
<body>
<div class="rightinfo">
    <div id="tb" class="easyui-layout">
        <ul class="toolbar">
            <shiro:hasPermission name="menuAdd">
                <li id="addFunc"><span><img
                        src="resources/core/images/t01.png"/></span>添加
                </li>
            </shiro:hasPermission>
            <shiro:hasPermission name="menuEdit">
                <li id="updateFunc"><span><img
                        src="resources/core/images/t02.png"/></span>修改
                </li>
            </shiro:hasPermission>
            <shiro:hasPermission name="menuDel">
                <li id="delFunc"><span><img
                        src="resources/core/images/t03.png"/></span>删除
                </li>
            </shiro:hasPermission>
        </ul>
    </div>
    <table class="tablelist" id="dg" title="菜单"></table>

    <div class="tip">
        <div class="tiptop">
            <span>提示信息</span><a></a>
        </div>
        <div class="tipinfo">
            <span><img src="resources/core/images/ticon.png"/></span>
            <div class="tipright">
                <p>是否确认对信息的修改 ？</p>
                <cite>如果是请点击确定按钮 ，否则请点取消。</cite>
            </div>
        </div>
        <div class="tipbtn">
            <input name="" type="button" class="sure" value="确定"/>&nbsp; <input
                name="" type="button" class="cancel" value="取消"/>
        </div>
    </div>
</div>
</body>
</html>