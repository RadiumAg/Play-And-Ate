<%@ Page Title="" Language="C#" MasterPageFile="~/Shared/Main.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="Play_And_Ate.Personage.Order" %>

<asp:Content ID="Header" ContentPlaceHolderID="Style" runat="server">
    <link rel="stylesheet" href="../Content/Personage/newcommon.css" />
    <script src="/Scripts/Personage/Index.js"></script>
    <link href="/Content/Order/Index.css" rel="stylesheet" />
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
        <!-- 新的订单列表开始----------------------------------------------------------------------------------------------------- -->
        <div class="newmember_rightside">
            <!--近期订单开始-->
            <div class="mod_box">
                <input type="hidden" id="bodyStyle" value="lvnav_order" />
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
                    <div id="page" class="page_div"></div>
                </div>
            </div>
            <!--近期订单结束-->
        </div>
        <!--  右边部分结束 -->
    </div>
    <!-- 主体部分结束-->
</asp:Content>
<asp:Content ID="Footer" ContentPlaceHolderID="Footer" runat="server">
    <script src="../Plugin/Pager/js/pageMe.js"></script>
</asp:Content>
