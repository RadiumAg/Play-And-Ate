<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Order_5.aspx.cs" Inherits="Play_And_Ate.Order.Order_5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />

    <link href="../Content/Order/common_wm.css" rel="stylesheet" media="screen" type="text/css" />
    <link href="../Content/Order/style.css" rel="stylesheet" media="screen" type="text/css" />
    <link href="../Content/Order/order.css" rel="stylesheet" media="screen" type="text/css" />
    <title>在线预订-第一农庄网</title>
    <script src="../Scripts/Order/global.js" type="text/javascript"></script>
</head>
<body>
    <div class="head">
        <div class="head_mid">
            <div class="head_mid_right">
            </div>
            <div class="head_mid_left">
                <div>
                    <span id="_Check_head_Login">你好，欢迎光临第一农庄网！<a href="http://www.01nz.com.cn/user-login">登录</a>
                        &nbsp;&nbsp;|&nbsp;&nbsp;
                        <a href="http://www.01nz.com.cn/user-register" target="_blank">注册</a></span>
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
                <img src="./在线预订-第一农庄网4_files/logo.gif" />
            </a>
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
        <div id="page">
            <div style="float: left; margin-top: 10px">
                <form name="formpay" id="formpay" method="post" action="http://xianlu.01nz.com.cn/order/pay/alipay/jishi/alipayto.php" target="_blank">
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
                </form>
                <!--订单步骤 END-->
                <div class="orderWrap">
                    <div class="orderPay">
                        <p class="p1">
                            <em><%= this.isSuccess %></em>
                        </p>
                        <br />
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%--页脚--%>
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
</body>
</html>
