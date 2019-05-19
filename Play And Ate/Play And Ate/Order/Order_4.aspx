<%@ Page Title="" Language="C#" MasterPageFile="~/Shared/Main.Master" AutoEventWireup="true" CodeBehind="Order_4.aspx.cs" Inherits="Play_And_Ate.Order.Order_4" %>

<asp:Content ContentPlaceHolderID="Style" runat="server" ID="Stype">
    <link href="../Content/Order/common_wm.css" rel="stylesheet" media="screen" type="text/css" />
    <link href="../Content/Order/style.css" rel="stylesheet" media="screen" type="text/css" />
    <link href="../Content/Order/order.css" rel="stylesheet" media="screen" type="text/css" />
</asp:Content>
<asp:Content ContentPlaceHolderID="Content" runat="server" ID="Content">
    <div class="head1">
        <div id="page">
            <div style="float: left; margin-top: 10px">
                <form name="formpay" id="formpay" method="post" action="http://xianlu.01nz.com.cn/order/pay/alipay/jishi/alipayto.php" target="_blank">
                    <div class="order">
                        <!--订单步骤 START-->
                        <div class="orderStep">
                            <ul class="step4">
                                <li class="li1">填写订单</li>
                                <li class="li2">填写游客信息</li>
                                <li class="li3">核对订单</li>
                                <li class="li4 on">付款</li>
                                <li class="li5 ">预订成功</li>
                            </ul>
                        </div>
                        <!--订单步骤 END-->
                        <div class="orderWrap">
                            <div class="orderPay">
                                <p class="p1">
                                    <em>恭喜，您的订单已经提交，请在本页提交付款!</em>
                                </p>
                                <center>
                                     </center>
                                <br />
                                <div class="orderPayInfo">
                                    <div class="hd">
                                        订单信息
                                    </div>
                                    <div class="bd">
                                        <table width="100%">
                                            <tbody>
                                                <tr>
                                                    <td>订单号：<%= Play_And_Ate.Helper.OrderMessage.OrderName %></td>
                                                    <td>名称：上海出发 【临安】东天目山、青山湖2日农家行 </td>
                                                </tr>
                                                <tr>
                                                    <td><span id="renshu">人数：2人（2成人+0儿童）</span>
                                                    </td>
                                                    <td>应付总额：<i>￥</i><b id="bprice">378</b>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <script>
                                    //显示人数，金额
                                    $(function () {
                                        var crrs = sessionStorage.getItem("crrs");
                                        var etrs = sessionStorage.getItem("etrs");
                                        var zongrs = Number(crrs) + Number(etrs);
                                        $("#renshu").html("人数：" + zongrs + "人（" + crrs + "成人" + etrs + "儿童）");
                                        $("#bprice").html(sessionStorage.getItem("zje"));
                                    })
                                </script>
                                <div class="orderPayTip">
                                    <div class="d1">
                                        <p class="pT">
                                            温馨提示
                                        </p>
                                        <p class="p2">
                                            请您全额支付，以确保您的预订能得到最快安排<br>
                                            您的支付记录会保存在本网站、第三方支付（支付宝、微信、财付通、快钱）、银行<br>
                                            支付完成后，相关客服会尽快与您联系确定出游事宜<br>
                                        </p>
                                    </div>
                                    <div class="clearfix">
                                    </div>
                                </div>
                            </div>
                            <a name="payWay" id="payWay"></a>
                            <div class="orderPayBank">
                                <h2>支付方式</h2>
                                <div class="zffs_sll">
                                    <div class="zffsmain_sll">
                                        <div class="zffsmaintitle_sll">
                                            <div class="titleft_sll">
                                                <ul id="tags">
                                                    <li class="nowa_sll"><a href="javascript:void(0);" onclick="selectTag(&#39;tagContent0&#39;,this)">在线支付</a></li>
                                                </ul>
                                            </div>
                                        </div>
                                        <div id="tagContent0" class="zfffcontent_sll" style="display: block;">
                                            <div class="zftable_sll">
                                                <p id="sptip" class="colorhe_sll">
                                                    支付宝支持信用卡和储蓄卡在线支付
                                                </p>

                                                <table cellspacing="0" cellpadding="0" border="0" style="width: 100%">
                                                    <tbody>
                                                        <tr>
                                                            <td width="3%" class="padleft5_sll">
                                                                <input type="radio" checked="true" value="alipay" name="pay_bank" id="third_party_radio_ZFB" onclick="alipay();" runat="server">
                                                            </td>
                                                            <td width="21%">
                                                                <img width="162" height="45" border="0" alt="支付宝" src="../Images/Order/qyfk43_03.jpg" class="on">
                                                            </td>
                                                            <td width="2%" class="padleft5_sll">
                                                                <input type="radio" value="CFT" name="pay_bank" id="third_party_radio_WX" onclick="tenpay();" runat="server">
                                                            </td>
                                                            <td width="24%">
                                                                <img width="162" height="45" border="0" alt="微信" src="../Images/Order/微信支付.jpg">
                                                            </td>
                                                            <td width="2%" class="padleft5_sll">
                                                                <input type="radio" value="KuaiQian" name="pay_bank" id="third_party_radio_CFT" onclick="alipay1();" runat="server">
                                                            </td>
                                                            <td width="28%">
                                                                <img width="162" height="45" border="0" alt="财付通" src="../Images/Order/tenpay_buy.gif">
                                                            </td>
                                                            <td width="2%" class="padleft5_sll">
                                                                <input type="radio" value="KuaiQian" name="pay_bank" id="radio" onclick="paypal();" runat="server"></td>
                                                            <td width="18%">
                                                                <img width="162" height="45" border="0" alt="银行卡" src="../Images/Order/paypal_logo.gif">
                                                            </td>
                                                        </tr>
                                                        <tr style="height: 10px;">
                                                            <td colspan="8">
                                                                <p style="border-bottom: 1px solid #efefef; margin: 0; padding: 0; margin-bottom: 15px;">
                                                                    &nbsp;
                                                                </p>
                                                            </td>
                                                        </tr>

                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="zfbut_sll">
                                                <table cellspacing="0" cellpadding="0" border="0" width="100%">
                                                    <tbody>
                                                        <tr>
                                                            <td style="width: 80px;">
                                                                <asp:ImageButton ID="ClickPay" runat="server" ImageUrl="../Images/Order/order6.gif" OnClick="ClickPay_Click" />
                                                            </td>
                                                            <td>若超出支付限额，请致电400-021-3158由客服人员为您拆单后分批支付。<br>
                                                                完成支付后，您可以<a target="_blank" href="#" class="colorblue_sll">查看订单状态</a>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>

                                            <div class="orderPayTip orderPayTipTrim1">
                                                <div class="d1">
                                                    <p class="pT">
                                                        温馨提示
                                                    </p>
                                                    <p class="p2">
                                                        如果付款页面没有打开，请设置您的浏览器为允许弹出；<br />
                                                        如果您多次点击产生多个支付页面，请在一个页面完成支付，其他页面请直接关闭。<br />
                                                        如果您的银行卡或账户已被扣款，但支付没有成功，这可能是网络传输问题造成，不必担心，悠哉旅游网将尽快为您确认付款。<br>
                                                    </p>
                                                    <p class="p3">
                                                        客服电话：<b>400-021-3158</b>
                                                    </p>
                                                </div>
                                                <div class="clearfix">
                                                </div>
                                            </div>
                                        </div>
                                        <!--对公汇款-->
                                    </div>
                                </div>
                            </div>
                        </div>
                </form>
            </div>
            <input id="out_trade_no" name="out_trade_no" value="CHN-11471556872421" type="hidden" />
            <input type="hidden" id="subject" name="subject" value="上海出发 【临安】东天目山、青山湖2日农家行" />
            <input type="hidden" id="total_fee" name="total_fee" value="378" />
            <input type="hidden" id="show_url" name="show_url" value="xianlu.01nz.com.cn" />
            <!--此处注释取代，放置底部用户控件-->
            <!---弹出付款提示 START--->
            <div class="OrderStatusPop jqmWindow jqmID1" id="OrderStatusPop">
                <div class="hd">
                    <a onclick="javascript:window.location.reload();" class="jqmClose2" style="cursor: pointer;">
                        <img src="./在线预订-第一农庄网4_files/order8.gif" /></a>付款确认
                </div>
                <div class="bd">
                    <p class="p1">
                        完成付款后请根据您的情况点击下面按钮
                    </p>
                    <p class="p2">
                        <a href="http://xianlu.01nz.com.cn/users" class="a1">已完成付款</a><a onclick="javascript:window.location.reload();" class="jqmClose2" style="cursor: pointer;">重新支付</a>
                    </p>
                </div>
            </div>
            <!---弹出付款提示 END--->
            <script src="../Scripts/Order/tooltip.js" type="text/javascript"></script>
            <script src="../Scripts/Order/order.js" type="text/javascript"></script>
            <script src="../Scripts/Order/four_proc.js" type="text/javascript"></script>
        </div>
    </div>
</asp:Content>
<asp:Content runat="server" ID="Footer" ContentPlaceHolderID="Footer"></asp:Content>
