<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Backstage.aspx.cs" Inherits="Play_And_Ate.Admin.Backstage" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title></title>
    <script src="../Plugin/jquery-easyui-1.7.0/jquery.min.js"></script>
    <script src="../Plugin/jquery-easyui-1.7.0/jquery.easyui.min.js"></script>
    <link href="../Plugin/jquery-easyui-1.7.0/themes/black/easyui.css" rel="stylesheet" />
    <link href="../Plugin/jquery-easyui-1.7.0/themes/icon.css" rel="stylesheet" />
    <script src="../Plugin/jquery-easyui-1.7.0/locale/easyui-lang-zh_CN.js"></script>
    <script src="../Plugin/jquery-easyui-1.7.0/datagrid-detailview.js"></script>
    <script src="../Plugin/jquery-easyui-1.7.0/jquery.portal.js"></script>
    <style>
        #welcome {
            background-image: url('../Images/Admin/Admin.jpg');
            overflow:hidden;
            background-repeat: no-repeat;
            background-size: cover;
            background-attachment:fixed;
        }
    </style>
</head>
<body class="easyui-layout">
    <div region="north" data-options="split:true,height:200" id="welcome"></div>
    <div region="center" data-options="split:true,height:200,title:'主界面',resizable:true">
        <div id="content"></div>
    </div>
    <div region="west" data-options="split:true,width:200,title:'管理选项'">
        <div id="tree"></div>
    </div>
    <script>

        <%if (role == "admin")
        { %>
        let data = [{
            'id': 1,
            'text': '商户管理',
            'children': [{
                'id': 1,
                'text': '商户信息管理',
                'url': '/Admin/PartialView/ShowData.html',
            },
            {
                'id': 2,
                'text': '商户产品申请管理'
            },
            ]
        },
        {
            'id': 2,
            'text': '用户管理',
            'children': [{
                'id': 1,
                'text': '所有用户信息',
            }]

        }]

        //渲染DataGridView
        function ShowData() {
            $("#dataContext").datagrid({
                fit: true,
                method: 'GET',
                url: '../Services/Main.ashx?id=2',
                fitColumns: true,
                columns: [[
                    {
                        field: 'UserName',
                        title: '用户名',
                        width: 80,
                    },
                    {
                        field: 'Address',
                        title: '地址',
                        width: 80,
                    },
                    {
                        field: 'Email',
                        title: '邮箱',
                        width: 80,
                    }, {
                        field: 'QQ',
                        title: 'QQ',
                        width: 80,
                    },
                    {
                        field: 'Phone',
                        title: '电话',
                        width: 80,
                    },
                    {
                        field: 'Pwd',
                        title: '密码',
                        width: 80,
                    },
                    {
                        field: 'Product',
                        title: '产品',
                        width: 80,
                        hidden: true,
                    }
                ]],
                view: detailview,
                detailFormatter: function (rowIndex, rowData) {
                    console.log(rowData);
                    let html = '<table style="width:100%;">';
                    $.each(rowData.Product, function (index, data) {
                        console.log(data);
                        html += '<tr><td>' +
                            '<p>产品名称: ' + data.ProductName + '</p>' +
                            '<p>产品价格: ' + data.ProductPrice + '</p>' +
                            '</td></tr>';
                    });
                    return html + '</table>';
                }
            });
        }
        <%}
        else if (role == "business")
        {%>

        let data = [{
            'id': 1,
            'text': '订单管理',
            'children': [{
                'id': 1,
                'text': '订单信息',
                'url': '/Admin/PartialView/ShowData.html',
            },
            {
                'id': 2,
                'text': '收入统计'
            }]
        }]

        //渲染DataGridView
        function ShowData() {
            $("#dataContext").datagrid({
                fit: true,
                method: 'GET',
                url: '../Services/Main.ashx?id=2',
                fitColumns: true,
                columns: [[
                    {
                        field: 'UserName',
                        title: '用户名',
                        width: 80,
                    },
                    {
                        field: 'Address',
                        title: '地址',
                        width: 80,
                    },
                    {
                        field: 'Email',
                        title: '邮箱',
                        width: 80,
                    }, {
                        field: 'QQ',
                        title: 'QQ',
                        width: 80,
                    },
                    {
                        field: 'Phone',
                        title: '电话',
                        width: 80,
                    },
                    {
                        field: 'Pwd',
                        title: '密码',
                        width: 80,
                    },
                    {
                        field: 'Product',
                        title: '产品',
                        width: 80,
                        hidden: true,
                    }
                ]],
                view: detailview,
                detailFormatter: function (rowIndex, rowData) {
                    console.log(rowData);
                    let html = '<table style="width:100%;">';
                    $.each(rowData.Product, function (index, data) {
                        console.log(data);
                        html += '<tr><td>' +
                            '<p>产品名称: ' + data.ProductName + '</p>' +
                            '<p>产品价格: ' + data.ProductPrice + '</p>' +
                            '</td></tr>';
                    });
                    return html + '</table>';
                }
            });
        }
        <%}%>

        //主函数
        $(function () {


            //渲染tab
            $("#content").tabs({
                fit: true,
            });

            //显示主界面
            $("#content").tabs('add', {
                method: "GET",
                title: '主界面',
                href: '/Admin/PartialView/Welcome.html',
                loadingMessage: '正在加载中',
                closable: true,
            })

            //显示树形下拉框
            $("#tree").tree({
                data: data,
                onClick: function (node) {
                    //显示主界面
                    if (node.children == null) {
                        let isExist = $("#content").tabs('getTab', node.text)
                        if (isExist == null) {
                            $("#content").tabs('add', {
                                method: 'GET',
                                title: node.text,
                                href: node.url,
                                loadingMessage: '正在加载中',
                                closable: true,
                            })
                        } else {
                            $("#content").tabs("select", node.text);
                        }
                    }
                },
            });
        });
    </script>
</body>
</html>
