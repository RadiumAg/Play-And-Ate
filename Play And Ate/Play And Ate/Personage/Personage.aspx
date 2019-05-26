<%@ Page Title="" Language="C#" MasterPageFile="~/Shared/Main.Master" AutoEventWireup="true" CodeBehind="Personage.aspx.cs" Inherits="Play_And_Ate.Personage.Personage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Style" runat="server">
    <link rel="stylesheet" href="../Content/Personage/newmember.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <!-- 无搜索版，公共头部结束 -->
    <!---会员中心导航开始--->
    <!---会员中心导航结束--->
    <!---账户安全主体部分--->
    <div class="newmember_main">
        <div class="newmember_leftside">
            <dl>
                <dt><i class="per_icon"></i>个人资料<i class="downarr"></i></dt>
                <dd><a href="#" id="lvnav_perinfo">个人信息</a></dd>
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
                <dd><a href="Order.aspx" id="lvnav_tourinfo">个人订单</a></dd>
            </dl>

        </div>
        <!-- 会员中心左边菜单部分 -->
        <div class="newmember_rightside">
            <div class="mod_box">
                <div class="mod_content p20_4">
                    <div class="password_edit_title">
                        <span class="password-bar-box"><i class="vip-tip-icon"></i>这里是你的个人信息(*^▽^*)！</span>

                    </div>
                    <div class="per_info_content clearfix">

                        <div class="per_right_box">
                            <p class="clearfix">
                                <label><em>*</em>用户名:</label><%= this.Request.Cookies["UserName"].Value.ToString() %>
                            </p>


                            <p class="clearfix">
                                <label><em>*</em>手机号：</label><%= user.Phone %>
                            </p>

                            <p class="col9 clearfix">
                                <label><em>*</em>电子邮箱：</label>
                                <a href="#" class="per_mod mar_right10"><%= user.Email %></a>
                            </p>
                            <p class="clearfix">
                                <label>所在地：</label>
                                <%= user.Address %>
                            </p>
                            <p class="clearfix">
                                <label>QQ：</label><%= user.QQ %>
                            </p>
                            <p class="per_btn_box">
                                <a href="javascript:;" class="per_btn" id="savaPersonalInformation">修改</a>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
