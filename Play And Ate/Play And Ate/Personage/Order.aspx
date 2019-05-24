<%@ Page Title="" Language="C#" MasterPageFile="~/Shared/Main.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="Play_And_Ate.Personage.Order" %>

<asp:Content ID="Header" ContentPlaceHolderID="Style" runat="server">
    <link href="../Content/Personage/lv-bought.css" rel="stylesheet" />
    <link rel="stylesheet" href="../Content/Personage/global_pop.css" />
    <link rel="stylesheet" href="../Content/Personage/newmember.css" />
    <link rel="stylesheet" href="../Content/Personage/newcommon.css" />
    <link rel="stylesheet" href="../Content/Personage/integral.css" />
    <link rel="stylesheet" href="../Content/Personage/jquery.common.css" />
    <script src="../Scripts/Personage/Index.js"></script>
    <style>
        .order-v1-box {
            background: #fff;
            border-top: 1px solid #ddd;
            margin-bottom: 20px;
            box-shadow: 0px 5px 8px #ddd
        }

        .order-head-tab {
            background: #FAFAFA;
            margin-left: -1px
        }

        .order-head-tab {
            height: 50px;
            line-height: 50px
        }

            .order-head-tab
            li {
                cursor: pointer;
                float: left;
                padding: 0 20px;
                font-size: 18px;
                color: #333
            }

                .order-head-tab li
                em {
                    color: #f90;
                    margin-left: 4px
                }

                .order-head-tab li:hover {
                    color: #d37
                }

            .order-head-tab
            .active {
                background: #fff;
                border-top: 3px solid #d37;
                border-right: 1px solid #ddd;
                border-left: 1px solid #ddd;
                height: 48px
            }

        .order-body-tab {
            height: 44px;
            border-top: 1px solid #ddd
        }

        .order-body-list {
            height: 44px;
            line-height: 44px;
            margin-left: 20px
        }

            .order-body-list
            li {
                position: relative;
                float: left;
                font-size: 13px;
                color: #666
            }

        .order-width330 {
            width: 330px
        }

        .order-width280 {
            width: 280px;
            margin-left: 30px
        }

        .order-width160 {
            width: 160px;
            margin-left: 30px
        }

        .order-width110 {
            width: 110px;
            margin-left: 30px
        }

        .order-select {
            border: 1px solid #ddd;
            background: #fafafa;
            padding: 5px 0 5px 10px
        }

        .order-col-name {
            height: 40px;
            line-height: 40px;
            background: #fff;
            border-bottom: 1px solid #EBEBEB;
            border-right: 1px solid #EBEBEB;
            font-size: 13px;
            color: #999
        }

            .order-col-name
            th {
                font-weight: 400
            }
        /*订单的第一个空格*/
        .order_td {
            width: 320px;
        }

        .order_number {
            height: 80px;
            line-height: 80px;
            width: 220px;
            float: right;
        }
    </style>
</asp:Content>
<asp:Content ID="Content" ContentPlaceHolderID="Content" runat="server">

    <!---会员中心导航结束--->
    <!-- 主体部分开始-->
    <div class="newmember_main">
        <!-- 会员中心左侧菜单栏 -->
        <div class="newmember_leftside">
            <dl>
                <dt><i class="per_icon"></i>个人资料<i class="downarr"></i></dt>
                <dd><a href="/Personage/Personage.aspx" id="lvnav_perinfo">个人信息</a></dd>
            </dl>
            <dl>
                <dt><i class="safe_icon"></i>账户安全<i class="downarr"></i></dt>
                <dd>
                    <a href="#" id="lvnav_safeset">安全设置</a>
                    <a href="#" id="lvnav_passwd">修改登录密码</a>
                    <a href="#" id="lvnav_logout">注销用户</a>
                </dd>
            </dl>
            <dl>
                <dt><i class="info_icon"></i>个人订单<i class="downarr"></i></dt>
                <dd><a href="/Personage/Order.aspx" id="lvnav_tourinfo">个人订单</a></dd>
            </dl>
        </div>
        <link rel="stylesheet" href="../Content/Personage/index(7).php" />
        <link href="../Content/Personage/lv-bought.css" rel="stylesheet" />
        <link href="../Content/Personage/invoice.css" rel="stylesheet" />
        <link href="../Content/Personage/popup.css" rel="stylesheet" />
        <link rel="stylesheet" href="../Content/Personage/global_pop.css" />
        <link href="../Content/Personage/lv-user-mytrip.css" rel="stylesheet" />
        <!-- 新的订单列表开始----------------------------------------------------------------------------------------------------- -->
        <div class="newmember_rightside">
            <!--近期订单开始-->
            <div class="mod_box">
                <input type="hidden" id="bodyStyle" value="lvnav_order">
                <!-- 新下单页 -->
                <div class="order-v1-box">
                    <ul class="order-head-tab js-order-tab" id="tabId">
                        <li class="active" data="ALL">全部订单</li>

                    </ul>
                    <div class="order-body-tab ">
                        <ul class="order-body-list">
                            <li class="order-width330">产品信息</li>
                            <li class="order-width280">产品简单明细</li>
                            <li class="order-width160">订单状态</li>
                            <li class="order-width100">操作</li>
                        </ul>
                    </div>
                </div>
                <div class="order-mod-tcontent js_con" style="display: block;">
                    <!--全部订单列表开始-->
                    <div id="tableContent">
                    </div>
                    <!--列表结束-->
                    <!--分页-->
                    <div class="page_box mart20">
                        <div id="pages_" class="pages">
                            <div id="lv_page">
                                <div class="Pages" id="pageId_tabs-1">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <!--近期订单结束-->
        </div>
        <table cellspacing="0" cellpadding="0" id="contactList" class="contact_list">
            <tbody>
                <tr>
                    <th width="8%" style="text-align: center;">序号</th>
                    <th width="15%" style="text-align: center;">合同编号</th>
                    <th width="20%" style="text-align: center;">合同类型</th>
                    <th width="20%" style="text-align: center;">商品名称</th>
                    <th width="15%" style="text-align: center;">游玩时间</th>
                    <th width="15%" style="text-align: center;">操作栏</th>
                </tr>
            </tbody>
        </table>
        <!-- 公共js -->
        <!--  右边部分结束 -->
    </div>
    <!-- 主体部分结束-->

</asp:Content>
<asp:Content ID="Footer" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
