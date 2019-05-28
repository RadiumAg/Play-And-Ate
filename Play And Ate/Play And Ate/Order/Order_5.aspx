<%@ Page Title="" Language="C#" MasterPageFile="~/Shared/Main.Master" AutoEventWireup="true" CodeBehind="Order_5.aspx.cs" Inherits="Play_And_Ate.Order.Order_5" %>

<asp:Content runat="server" ID="Header" ContentPlaceHolderID="Style">
    <link href="../Content/Order/common_wm.css" rel="stylesheet" media="screen" type="text/css" />
    <link href="../Content/Order/style.css" rel="stylesheet" media="screen" type="text/css" />
    <link href="../Content/Order/order.css" rel="stylesheet" media="screen" type="text/css" />
</asp:Content>
<asp:Content runat="server" ID="Content" ContentPlaceHolderID="Content">
    <div class="head1">
        <div id="page">
            <div style="float: left; margin-top: 10px">
                <div class="order">
                    <!--订单步骤 START-->
                    <div class="orderStep">
                        <ul class="step5">
                            <li class="li1">填写订单</li>
                            <li class="li2">填写游客信息</li>
                            <li class="li3">核对订单</li>
                            <li class="li4">付款</li>
                            <li class="li5 on">预订成功</li>
                        </ul>
                    </div>
                </div>
                <!--订单步骤 END-->
                <div class="orderWrap">
                    <div class="orderPay">
                        <p class="p1">
                            <em><%= this.isSuccess %></em>
                        </p>
                        <br/>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content runat="server" ID="Footer" ContentPlaceHolderID="Footer"></asp:Content>
