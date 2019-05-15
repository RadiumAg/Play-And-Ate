<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Order_4.aspx.cs" Inherits="Play_And_Ate.Order.Order_4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <link href="../Content/Order/common_wm.css" rel="stylesheet" media="screen" type="text/css">
    <link href="../Content/Order/style.css" rel="stylesheet" media="screen" type="text/css">
    <link href="../Content/Order/order.css" rel="stylesheet" media="screen" type="text/css">

    <title>在线预订-第一农庄网</title>


    <script src="../Scripts/Order/global.js" type="text/javascript"></script>
    <%--<script>
        function tenpay() {
            document.formpay.action = "http://xianlu.01nz.com.cn/order/pay/tenpay/index_1.php";
        }

        function alipay() {
            document.formpay.action = "http://xianlu.01nz.com.cn/order/pay/alipay/jishi/alipayto.php";
        }
        function alipay1() {
            document.formpay.action = "http://xianlu.01nz.com.cn/order/pay/alipay/jishi/alipayto.php";
        }
        function paypal() {
            document.formpay.action = "http://xianlu.01nz.com.cn/order/pay/paypal/index.php";
        }
    </script>--%>
</head>
<body>
    <form runat="server">
        <%--<script language="javascript" type="text/javascript" src="../Scripts/Order/ajax188.js"></script>--%>
        <%--<script language="javascript" type="text/javascript" src="../Scripts/Order/sousuo.js" charset="utf-8"></script>

    <script language="javascript" type="text/javascript">
        function Check_head_Login() {

            var taget_obj = document.getElementById('_Check_head_Login');
            myajax = new ajaxx188(taget_obj, false, false, '', '', '');
            myajax.SendGet2("http://xianlu.01nz.com.cn/users/ajax_head.php");
            A188XHTTP = null;
        }

        function myAddPanel(title, url, desc) {
            if ((typeof window.sidebar == 'object') && (typeof window.sidebar.addPanel == 'function')) {
                window.sidebar.addPanel(title, url, desc);
            } else {
                window.external.AddFavorite(url, title);
            }
        }


    </script>--%>
        <div class="head">
            <div class="head_mid">

                <div class="head_mid_right">
                    <!-- <span>旅游出发地 |</span>
<ul>

<li><a href="http://xianlu.01nz.com.cn/add/go.php?area=500&channelid=4">上海</a></li>


</ul>-->
                </div>


                <div class="head_mid_left">
                    <div>
                        <span id="_Check_head_Login">
                            <!-- <a href="http://xianlu.01nz.com.cn/weibo/index.php"><img src="http://xianlu.01nz.com.cn/ORG7188_templets/default//images/sina.png" class="tt"/></a> -->
                            你好，欢迎光临第一农庄网！<!-- <a href="http://xianlu.01nz.com.cn/qq/index.php"><img src="http://xianlu.01nz.com.cn/ORG7188_templets/default//images/qq.png" class="tt"/></a> --><a href="http://www.01nz.com.cn/user-login">登录</a>
                            &nbsp;&nbsp;|&nbsp;&nbsp;
                        <a href="http://www.01nz.com.cn/user-register" target="_blank">注册</a></span>
                        <%--<script language="javascript">Check_head_Login();</script>--%>
                        <!--<A 
style="CURSOR: hand" title='第一农庄网' 
href="javascript:void(0)" onClick="myAddPanel('第一农庄网','http://xianlu.01nz.com.cn','第一农庄网')";>+收藏</A>
 -->
                    </div>

                </div>

            </div>
            <!--  head_mid -->
        </div>
        <!--  head -->

        <div class="clear"></div>
        <div class="head1">

            <!--通告开始-->

            <div class="head_ad">
                <div id="adv_forum_home_full"></div>
                <div class="fade_btn"></div>
            </div>
            <!--通告结束-->

            <div class="head1_logo top20">
                <a href="http://www.01nz.com.cn/">
                    <img src="./在线预订-第一农庄网4_files/logo.gif"></a>
            </div>
            <div style="margin-top: 35px; float: left; border-left: 1px #666666 solid; width: 93px; height: 23px; text-align: center; font-size: 25px; line-height: 16px; font-family: &#39; 微软雅黑&#39;">农家行</div>
            <div class="fenzhan"></div>
            <div class="search_box f_l" style="margin-top: 25px;">
                <div class="search_input f_l">
                    <input type="text" class="search_txt" name="keyword" id="header_kw" value="农庄 农家乐 垂钓场 生态园 农家行" x-webkit-speech="" x-webkit-grammar="builtin:translate">
                    <a id="sousuo_btn" class="search_btn">搜索</a>
                </div>
                <div class="blank1"></div>
            </div>
            <div class="hour24 top20"><span>400-021-3158</span><img src="./在线预订-第一农庄网4_files/busy_yh.gif"></div>

            <!-- <div class="headbanner"><a href=#><img src=http://xianlu.01nz.com.cn/uploads/userup/0/1345455395.gif></a></div> -->
        </div>
        <div class="nv top20">
            <div class="wrap">
                <ul>
                    <li class="all_class nz_biaoyu">
                        <div class="nz_biaoyu_dv">
                            <ul id="scrollnews" class="scrollnews">
                                <li class="clear">去农庄&nbsp;&nbsp;就上第一农庄网</li>
                                <li class="clear">热线电话：400-021-3158</li>
                            </ul>
                        </div>
                    </li>
                    <li class="daohang"><a href="http://www.01nz.com.cn/">首页</a></li>
                    <li class="daohang"><a href="http://www.01nz.com.cn/farm">农庄</a></li>
                    <li class="daohang"><a href="http://www.01nz.com.cn/farmhouse">农家乐</a></li>
                    <li class="daohang"><a href="http://www.01nz.com.cn/biotope">生态园</a></li>
                    <li class="daohang"><a href="http://www.01nz.com.cn/fish">垂钓场</a></li>
                    <li class="cur"><a href="http://xianlu.01nz.com.cn/" title="农家行">农家行</a></li>



                    <!-- <li class="fl"><a href="http://xianlu.01nz.com.cn/add/list/111.html">资讯  </a></li>	 -->
                    <li class="fl"><a href="http://01nz.com.cn/discover" target="_blank">专题</a></li>
                    <!--  <li class="fl"><a href="http://xianlu.01nz.com.cn/add/dingzhi.html">定制</a></li>-->
                    <div class="clear"></div>
                </ul>
            </div>
        </div>
        <div class="head1">
            <!--  <div class="g_w top10">
<a href=#><img src=http://xianlu.01nz.com.cn/uploads/userup/0/1352476686.jpg width="1000" height="80"></a>
</div>-->
            <!--  head1 -->



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
                                        <em>恭喜，您的订单已经提交，请在本页提交付款，完成本次预定!						</em>


                                    </p>

                                    <center>
                        <%--<b style="color:#F60">
                           您的会员账户：155687242160<br>您的会员密码：155687242160<br><a href="http://xianlu.01nz.com.cn/users">请牢记，您可以点此登录会员中心</a>                        </b>--%>
                    </center>
                                    <br>
                                    <div class="orderPayInfo">
                                        <div class="hd">
                                            订单信息
                                        </div>
                                        <div class="bd">
                                            <table width="100%">
                                                <tbody>
                                                    <tr>
                                                        <td>订单号： CHN-11471556872421                                    </td>
                                                        <td>名称：上海出发 【临安】东天目山、青山湖2日农家行                                    </td>
                                                    </tr>
                                                    <tr>
                                                        <td>人数：2人（2成人+0儿童）
                                                        </td>
                                                        <td>应付总额：<i>￥</i><b id="bprice">378</b>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="orderPayTip">
                                        <div class="d1">
                                            <p class="pT">
                                                温馨提示
                                            </p>
                                            <p class="p2">
                                                请您全额支付，以确保您的预订能得到最快安排<br>
                                                您的支付记录会保存在本网站、第三方支付（支付宝、财付通、快钱、拉卡拉）、银行<br>
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

                                                                    <%--<a id="ImageButton1_Ali_ZFQR" style="cursor: pointer;" onclick="orderPaySubmit();">--%>
                                                                    <asp:ImageButton ID="ClickPay" runat="server" ImageUrl="../Images/Order/order6.gif" OnClick="ClickPay_Click" />
                                                                    <%--<img src="../Images/Order/order6.gif" runat="server" id="ClickPay"></a>--%>

                                                                </td>
                                                                <td>若超出支付限额，请致电400-021-3158由客服人员为您拆单后分批支付。<br>
                                                                    完成支付后，您可以<a target="_blank" href="http://xianlu.01nz.com.cn/users" class="colorblue_sll">查看订单状态</a>
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
                                                            如果付款页面没有打开，请设置您的浏览器为允许弹出；<br>
                                                            如果您多次点击产生多个支付页面，请在一个页面完成支付，其他页面请直接关闭。<br>
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
                                            <%--<div id="tagContent1" class="zfffcontent_sll" style="display: none;">
                                            <p class="colorhe_sll">

                                                <a href="http://xianlu.01nz.com.cn/users">
                                                    <img src="../Images/Order/order12.gif"></a>

                                            </p>
                                        </div>--%>
                                        </div>
                                        <%--<div id="tagContent2" class="zfffcontent_sll" style="display: none;">

                                        <div class="zhxx_sll zhxx_sllTrim1">
                                            <a href="http://xianlu.01nz.com.cn/users">
                                                <img src="../Images/Order/order12.gif"></a>
                                        </div>
                                    </div>--%>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <input id="out_trade_no" name="out_trade_no" value="CHN-11471556872421" type="hidden">
                <input type="hidden" id="subject" name="subject" value="上海出发 【临安】东天目山、青山湖2日农家行">
                <input type="hidden" id="total_fee" name="total_fee" value="378">



                <input type="hidden" id="show_url" name="show_url" value="xianlu.01nz.com.cn">


                <!--此处注释取代，放置底部用户控件-->

                <!---弹出付款提示 START--->
                <div class="OrderStatusPop jqmWindow jqmID1" id="OrderStatusPop">
                    <div class="hd">
                        <a onclick="javascript:window.location.reload();" class="jqmClose2" style="cursor: pointer;">
                            <img src="./在线预订-第一农庄网4_files/order8.gif"></a>付款确认
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




                <%--<div class="commitment">
                <div class="commitment_head">阳光服务承诺</div>
                <ul>
                    <li class="ps_1"><strong>阳光价格</strong>：第一农庄网的价格为明码实价，更保持该产品的实际销售价格。在网站上销售的产品以标价为准（节假日或特殊原因价格调整除外）。</li>
                    <li class="ps_2"><strong>阳光行程</strong>：所有自费项目公开，自愿参加，行程中所进购物店提前明示，绝无强迫。</li>
                    <li class="ps_3"><strong>阳光支持</strong>：当您在第一农庄网预订旅游产品后，我们会为您提供专属客服，保证随时为您的旅途提供支持。</li>
                    <li class="ps_4"><strong>诚信服务</strong>：不收取任何特殊附加费。付款后，价格调整“多退少不补”（政府或航空公司政策性调整燃油税除外）</li>
                </ul>
            </div>--%>

                <div class="blank"></div>
                <div id="ftw">
                    <div id="ft">
                        <div class="xiantiao"></div>
                        <div class="blank"></div>
                        <div class="tc" align="center">
                            <a href="http://www.01nz.com.cn/sys/id-20" target="_blank">关于我们</a>
                            &nbsp;&nbsp;-&nbsp;&nbsp;<a href="http://www.01nz.com.cn/sys/id-6" target="_blank">加入我们</a>
                            &nbsp;&nbsp;-&nbsp;&nbsp;<a href="http://www.01nz.com.cn/sys/id-30" target="_blank">联系我们</a>
                            &nbsp;&nbsp;-&nbsp;&nbsp;<a href="http://www.01nz.com.cn/sys/id-27" target="_blank">免责条款</a>
                            &nbsp;&nbsp;-&nbsp;&nbsp;<a href="http://www.01nz.com.cn/sys/id-28" target="_blank">隐私保护</a>
                            &nbsp;&nbsp;-&nbsp;&nbsp;<a href="http://www.01nz.com.cn/sys/id-45" target="_blank">网站地图</a>
                            &nbsp;&nbsp;-&nbsp;&nbsp;<a href="http://www.01nz.com.cn/sys/id-9" target="_blank">商家登录</a>
                        </div>
                        <div class="blank"></div>
                        <div class="beian" align="center">版权所有：上海威和信息科技有限公司  <a href="http://www.miitbeian.gov.cn/" target="_blank">沪ICP备 13043989号-1</a>  电话：021-60172228    邮箱：mc_01nz@163.com </div>
                        <div align="center" class="beian_eng">
                            Copyright 2013 www.01nz.com.cn All Rights Reserved.
                        </div>
                        <!-- 热门城市 -->
                        <!-- 区县分类 -->
                        <!-- 热门农庄 -->

                        <!-- 友情链接 -->
                        <div align="center">
                            <img src="./在线预订-第一农庄网4_files/xian.jpg" alt="灰线">
                        </div>
                        <div align="center">
                            <img src="./在线预订-第一农庄网4_files/jubao.gif" alt="举报中心" class="img">
                            <img src="./在线预订-第一农庄网4_files/end_2.gif" alt="官方认证" class="img">
                            <img src="./在线预订-第一农庄网4_files/end_3.gif" alt="网络110" class="img">
                            <!-- <img src="http://www.01nz.com.cn/app/Tpl/fanwe/images/site_logo.png" alt="安全联盟" class="img"/> -->
                            <img src="./在线预订-第一农庄网4_files/end_4.gif" alt="360绿色网站" class="img">
                        </div>
                        <div class="blank"></div>
                        <div class="blank"></div>
                        <div class="blank"></div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
