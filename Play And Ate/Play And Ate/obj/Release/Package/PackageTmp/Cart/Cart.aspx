<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cart.aspx.cs" Inherits="Play_And_Ate.Cart.Cart" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0026)http://sh.01nz.com.cn/cart -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta  content="1044064167601626375636"/>
    <meta name="Generator"/>
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7"/>
    <meta name="baidu-site-verification" content="rW5VmpPj0J"/>

    <title>购物车 </title>
    <meta name="baidu-site-verification" content="rW5VmpPj0J"/>
    <meta name="keywords" content="购物车"/>
    <meta name="description" content="购物车"/>
    <meta name="360-site-verification" content="634348f4891eef9d2811d878f8674511"/>
    <meta name="sogou_site_verification" content="6FPuHtGqQA"/>
    <meta name="pinggu-site-verification" content="e893348b007fdd112b2efae755d0b7e7"/>
    <link rel="Shortcut Icon" href="http://sh.01nz.com.cn/app/Tpl/fanwe/images/logo.ico"/>
    <!--地址栏和标签上显示图标-->
    <link rel="Bookmark" href="http://sh.01nz.com.cn/app/Tpl/fanwe/images/logo.ico"/>
    <!--收藏夹显示图标-->
    <link href="../Content/Cart/cf62177493ce4db40c22962f60d846f8.css" rel="stylesheet" />
    <script type="text/javascript" src="../Scripts/Cart/908ca0ab9e4d27144b60bc878b237327.js"></script>
    <script type="text/javascript" src="../Scripts/Cart/baidumap.js"></script>
    <link href="../Content/Cart/base.v606141511.css" rel="stylesheet" />
    <script src="../Scripts/Cart/header.js" type="text/javascript"></script>
    <script src="../Scripts/Cart/fgcomm.v620152248.js" type="text/javascript"></script>
    <script src="../Scripts/Cart/mt3.v1014201036.js" type="text/javascript"></script>
    <script src="../Scripts/Cart/sousuo.js" type="text/javascript"></script>
    <script src="../Scripts/Cart/index_header.js" type="text/javascript"></script>
</head>
<body>

    <div id="dropdown" style="display: none;">
    </div>
    <div class="header" id="header">
        <div class="top_nav">
            <div class="wrap">
                <div>
                    <span id="user_head_tip" class="f_l">你好，欢迎光临第一农庄网！

                        <a href="javascript:void(0);" onclick="ajax_login();">登录</a>&nbsp;&nbsp;|&nbsp;&nbsp;

                        <a href="http://sh.01nz.com.cn/user-register">注册</a>
                    </span>
                    <span class="cart_ico"><a href="http://sh.01nz.com.cn/cart" targer="_blank">购物车<span class="cart_count" id="cart_count">0</span> 件</a></span>
                    <span class="v_line">&nbsp;|&nbsp;</span>
                    <a href="javascript:void(0)" onclick="submit_sms();">短信订阅</a><span class="v_line">&nbsp;|&nbsp;</span>
                    <a href="javascript:void(0)" onclick="unsubmit_sms();">短信退订</a><span class="v_line">&nbsp;|&nbsp;</span>
                    <a href="http://sh.01nz.com.cn/tuan/subscribe-mail">邮件订阅</a><span class="v_line">&nbsp;|&nbsp;</span>
                </div>
            </div>
        </div>
        <!--end top_nav-->
        <div class="header_box">
            <div class="headers">
                <div class="LOGE">
                    <a href="http://www.01nz.com.cn/">
                        <img alt="第一农庄网" class="f_l" src="../Images/Cart/loge.gif"/>
                    </a>
                </div>
                <div id="city">
                    <dl id="warpper">
                        <dt><font><b class="chengshi">上海</b></font><font color="#C80063"><b><img src="../Images/Cart/cs_dw.png" alt="城市"></b></font></dt>
                    </dl>
                </div>
                <div class="search_box_main search_boxs f_l">
                    <div class="search_input_main f_l">
                        <input type="text" class="search_txt_main" name="keyword" id="header_kw" value="请输入您要搜索的关键词" x-webkit-speech="" x-webkit-grammar="builtin:translate" style="color: rgb(187, 187, 187);"/>
                        <a id="sousuo_btn" class="search_btn_ss">搜索</a>
                    </div>
                    <div class="blank1"></div>
                </div>
                <div class="f_r busy_yh">
                    <img src="../Images/Cart/35.gif"/>
                </div>


            </div>
        </div>
    </div>

    <div class="blank1"></div>
    <div class="dh_fd">
        <ul class="scrollnews">
        </ul>
        <div class="menu_box">
            <div class="menu">
                <div class="menu white">
                    <ul>
                        <li><span class="LOGE_text">去农庄,就上第一农庄网</span></li>
                        <li onclick="nav(0)" id="n0" class="soso ">
                            <a href="http://www.01nz.com.cn/" target="">首页</a>
                        </li>
                        <li onclick="nav(1)" id="n1" class="soso ">
                            <a href="http://www.01nz.com.cn/targeting" target="">农家推荐</a>
                        </li>
                        <li onclick="nav(2)" id="n2" class="soso ">
                            <a href="http://xianlu.01nz.com.cn/" target="">农家行</a>
                        </li>
                        <li onclick="nav(3)" id="n3" class="soso ">
                            <a href="http://www.01nz.com.cn/farm" target="">农庄</a>
                        </li>
                        <li onclick="nav(4)" id="n4" class="soso ">
                            <a href="http://www.01nz.com.cn/farmhouse" target="">农家乐</a>
                        </li>
                        <li onclick="nav(5)" id="n5" class="soso ">
                            <a href="http://www.01nz.com.cn/biotope" target="">生态园</a>
                        </li>
                        <li onclick="nav(6)" id="n6" class="soso ">
                            <a href="http://www.01nz.com.cn/fishing" target="">垂钓场</a>
                        </li>

                        <li class="zhuanti_dh" style="float: right;"><a href="http://www.01nz.com.cn/discover" target="_blank">专题</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <!--end 导航-->
    </div>

    <div class="wraps">

        <script type="text/javascript" src="../Images/Cart/lang.js.下载"></script>
        <script type="text/javascript">
            var APP_ROOT = '';
            var CART_URL = '/cart';
            var CART_CHECK_URL = '/cart-check';
            var LOADER_IMG = 'http://sh.01nz.com.cn/app/Tpl/fanwe/images/lazy_loading.gif';
            var ERROR_IMG = 'http://sh.01nz.com.cn/app/Tpl/fanwe/images/image_err.gif';
</script>

        <div class="blank"></div>
        <div class="inc cart wb">
            <div class="inc_top">购物车</div>
            <div class="inc_main pd10">
                <div class="blank"></div>
                <div class="nogoodsbg">
                    <div class="nogoodsimg">
                        <img alt="购物车" src="../Images/Cart/nogoods.jpg"></div>
                    <div class="nogoodstxt">
                        <p class="empty">您的购物车还是空的。</p>
                        <p class="color_blue">
                            您还没有添加任何商品。马上去 [ 
							
                            <a href="http://sh.01nz.com.cn/">挑选商品</a>
                            ]，或者去 [ <a href="http://sh.01nz.com.cn/uc_collect">我的收藏夹</a> ] 看看。
		
                      W
                    </div>
                    <div class="blank"></div>
                </div>
            </div>
            <!--end inc_main-->
            <div class="inc_foot">
            </div>
            <div class="blank"></div>
            <div class="blank"></div>
        </div>
    </div>
    <div class="blank"></div>
    <div id="ftw">
        <div id="ft">
            <div class="blank"></div>
            <div class="foot_xian"></div>
            <div class="blank"></div>
            <div class="tc">
                <a href="http://sh.01nz.com.cn/sys/id-20" target="_blank">关于我们</a>
                &nbsp;&nbsp;-&nbsp;&nbsp;<a href="http://sh.01nz.com.cn/sys/id-6" target="_blank">加入我们</a>
                &nbsp;&nbsp;-&nbsp;&nbsp;<a href="http://sh.01nz.com.cn/sys/id-30" target="_blank">联系我们</a>
                &nbsp;&nbsp;-&nbsp;&nbsp;<a href="http://sh.01nz.com.cn/sys/id-28" target="_blank">隐私保护</a>
                &nbsp;&nbsp;-&nbsp;&nbsp;<a href="http://sh.01nz.com.cn/sys/id-45" target="_blank">网站地图</a>
                &nbsp;&nbsp;-&nbsp;&nbsp;<a href="http://sh.01nz.com.cn/sys/id-9" target="_blank">商家登录</a>
            </div>
            <div class="blank"></div>
            <div class="beian" align="center">版权所有：上海威和信息科技有限公司  <a href="http://www.miitbeian.gov.cn/" target="_blank">沪ICP备 13043989号-1</a>  电话：400-021-3158 邮箱：mc_01nz@163.com </div>
            <div align="center" class="beian_eng">
                Copyright 2013 www.01nz.com.cn All Rights Reserved.
            </div>
            <div align="center">
                <img src="../Images/Cart/xian.jpg" alt="灰线"/></div>
            
            <div class="blank"></div>
            <div class="blank"></div>
            <div class="blank"></div>
        </div>
    </div>
    <div id="gotop" style="display: none;"></div>
    <a href="http://sh.01nz.com.cn/cart" target="_blank">
        
    </a>
   <div id="gowu"></div>
    <script src="../Content/Cart/z_stat.php" language="JavaScript" type="text/javascript"></script>
    <script src="../Content/Cart/core.php" charset="utf-8" type="text/javascript"></script>
    <a href="https://www.cnzz.com/stat/website.php?web_id=1254939469" target="_blank" title="站长统计">站长统计</a>
    <script src="../Content/Cart/c.js" language="JavaScript" type="text/javascript"></script>
    <script src="../Content/Cart/tongji_360.php" language="JavaScript" charset="gb2312" type="text/javascript"></script>
    <script src="../Content/Cart/core(1).php" charset="utf-8" type="text/javascript"></script>
    <a href="https://quanjing.cnzz.com/" target="_blank" title="全景统计">
    <img border="0" hspace="0" vspace="0" src="../Images/Cart/2.gif" alt=""/></a>
    

</body>
</html>
