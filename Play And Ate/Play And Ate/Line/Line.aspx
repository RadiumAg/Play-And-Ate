<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Line.aspx.cs" Inherits="Play_And_Ate.Line.Line" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <title>农家行</title>
    <link href="../Content/Line/style.css" rel="stylesheet" />
    <link href="../Content/Line/style(1).css" rel="stylesheet" />
    <link href="../Content/Line/search.css" rel="stylesheet" />
    <link href="../Content/Line/index.css" rel="stylesheet" />
    <script src="../Scripts/Line/global.js"></script>
</head>
<body>
    <script src="../Scripts/Line/ajax188.js"></script>
    <script src="../Scripts/Line/sousuo.js"></script>
    <script  type="text/javascript">
        //会员调用登录
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


    </script>
    <div id="head">
        <div class="head_mid">
            <div class="head_mid_right">
            </div>
            <div class="head_mid_left">
                <div>
                    <span id="_Check_head_Login">

                        你好，欢迎光临第一农庄网！
                        <a href="http://www.01nz.com.cn/user-login">登录</a>
                        &nbsp;&nbsp;|&nbsp;&nbsp;
                        <a href="http://www.01nz.com.cn/user-register" target="_blank">注册</a>

                    </span>
                    <script language="javascript">Check_head_Login();</script>
                </div>
            </div>
        </div>
        <!--  head_mid -->
    </div>
    <!--  head -->
    <div class="clear"></div>
    <div class="head1">

        <div class="head1_logo top20"><a href="http://www.01nz.com.cn/"><img src="../Images/Line/logo.gif"></a></div>
        <div style="margin-top:35px; float:left; border-left:1px #666666 solid; width:93px; height:23px; text-align:center;  font-size:25px; line-height:16px; font-family:&#39;微软雅黑&#39;; ">农家行</div>
        <div class="fenzhan"></div>
        <div class="search_box f_l" style="margin-top:25px;">
            <div class="search_input f_l">
                <input type="text" class="search_txt" name="keyword" id="header_kw" value="农庄 农家乐 垂钓场 生态园 农家行" x-webkit-speech="" x-webkit-grammar="builtin:translate">
                <a id="sousuo_btn" class="search_btn">搜索</a>
            </div>
            <div class="blank1"></div>
        </div>
        <div class="hour24 top20"><span>400-021-3158</span><img src="../Images/Line/busy_yh.gif"></div>
    </div>
    <div class="nv top20">
        <div class="wrap">
            <ul>
                <li class="all_class nz_biaoyu">
                    <div class="nz_biaoyu_dv">
                        <ul id="scrollnews" class="scrollnews">
                            <li class="clear"> 去农庄&nbsp;&nbsp;就上第一农庄网</li>
                            <li class="clear"> 热线电话：400-021-3158</li>
                        </ul>
                    </div>
                </li>
                <li class="daohang"><a href="http://www.01nz.com.cn/">首页</a></li>
                <li class="daohang"><a href="http://www.01nz.com.cn/farm">农庄</a></li>
                <li class="daohang"><a href="http://www.01nz.com.cn/farmhouse">农家乐</a></li>
                <li class="daohang"><a href="http://www.01nz.com.cn/biotope">生态园</a></li>
                <li class="daohang"><a href="http://www.01nz.com.cn/fish">垂钓场</a></li>
                <li class="cur"><a href="http://xianlu.01nz.com.cn/" title="农家行">农家行</a></li>
                <li class="fl"><a href="http://01nz.com.cn/discover" target="_blank">专题</a></li>
            </ul>
            <div class="clear"></div>
        </div>
    </div>
    <!--中间负责部分-->
    <div class="head1">
        <div class="clear"></div>
        <div style="width:1000px;">
            <div id="l_menus">
                <div class="chengshi_kuang menuPart">
                    <div class="part01left_top">
                        <div class="left_title">
                            <i></i><a target="_blank" href="http://xianlu.01nz.com.cn/add/list/490.html">跟团行</a>
                        </div>
                        <ul>
                            <li>
                                <a href="http://xianlu.01nz.com.cn/add/list/493.html" title="台州">台州</a>

                            </li>
                            <li>
                                <a href="http://xianlu.01nz.com.cn/add/list/601.html" title="宿迁">宿迁</a>

                            </li>
                            <li>
                                <a href="http://xianlu.01nz.com.cn/add/list/507.html" title="宁波">宁波</a>

                            </li>
                            <li>
                                <a href="http://xianlu.01nz.com.cn/add/list/510.html" title="奉化">奉化</a>

                            </li>
                            <li>
                                <a href="http://xianlu.01nz.com.cn/add/list/559.html" title="湖州">湖州</a>

                            </li>
                            <li>
                                <a href="http://xianlu.01nz.com.cn/add/list/512.html" title="丽水">丽水</a>

                            </li>
                            <li>
                                <a href="http://xianlu.01nz.com.cn/add/list/560.html" title="安吉">安吉</a>

                            </li>
                            <li>
                                <a href="http://xianlu.01nz.com.cn/add/list/515.html" title="横店">横店</a>

                            </li>
                            <li>
                                <a href="http://xianlu.01nz.com.cn/add/list/548.html" title="南京">南京</a>

                            </li>
                            <li>
                                <a href="http://xianlu.01nz.com.cn/add/list/550.html" title="扬州">扬州</a>

                            </li>
                        </ul>
                        <div style="clear:both"></div>
                    </div>
                    <div class="city_fege"> </div>
                    <div class="part01left_top" style="margin-top:10px;">
                        <div class="left_title">
                            <i></i><a target="_blank" href="http://xianlu.01nz.com.cn/add/list/491.html">自助行</a>
                        </div>
                        <ul>
                            <li>
                                <a href="http://xianlu.01nz.com.cn/add/list/602.html" title="丽水">丽水</a>
                            </li>
                            <li>
                                <a href="http://xianlu.01nz.com.cn/add/list/553.html" title="常州">常州</a>
                            </li>
                            <li>
                                <a href="http://xianlu.01nz.com.cn/add/list/562.html" title="安吉">安吉</a>
                            </li>
                            <li>
                                <a href="http://xianlu.01nz.com.cn/add/list/624.html" title="苏州">苏州</a>
                            </li>
                            <li>
                                <a href="http://xianlu.01nz.com.cn/add/list/580.html" title="日照">日照</a>
                            </li>
                            <li>
                                <a href="http://xianlu.01nz.com.cn/add/list/549.html" title="扬州">扬州</a>
                            </li>
                            <li>
                                <a href="http://xianlu.01nz.com.cn/add/list/552.html" title="南京">南京</a>
                            </li>
                            <li>
                                <a href="http://xianlu.01nz.com.cn/add/list/619.html" title="东阳">东阳</a>
                            </li>
                            <li>
                                <a href="http://xianlu.01nz.com.cn/add/list/522.html" title="杭州">杭州</a>
                            </li>
                            <li>
                                <a href="http://xianlu.01nz.com.cn/add/list/584.html" title="青岛">青岛</a>
                            </li>
                        </ul>
                    </div>
                    <div class="city_fege"> </div>
                    <div class="part01left_top" style="margin-top:10px;">
                        <div class="left_title">
                            <i></i><a target="_blank" href="http://xianlu.01nz.com.cn/add/list/593.html">自驾行</a>
                        </div>
                        <ul>
                            <li>
                                <a href="http://xianlu.01nz.com.cn/add/list/621.html" title="苏州">苏州</a>
                            </li>
                            <li>
                                <a href="http://xianlu.01nz.com.cn/add/list/596.html" title="嘉兴">嘉兴</a>
                            </li>
                            <li>
                                <a href="http://xianlu.01nz.com.cn/add/list/642.html" title="湖州">湖州</a>
                            </li>
                            <li>
                                <a href="http://xianlu.01nz.com.cn/add/list/641.html" title="黄山">黄山</a>
                            </li>
                            <li>
                                <a href="http://xianlu.01nz.com.cn/add/list/640.html" title="杭州">杭州</a>
                            </li>
                            <li>
                                <a href="http://xianlu.01nz.com.cn/add/list/639.html" title="宁国">宁国</a>
                            </li>
                            <li>
                                <a href="http://xianlu.01nz.com.cn/add/list/635.html" title="磐安">磐安</a>
                            </li>
                            <li>
                                <a href="http://xianlu.01nz.com.cn/add/list/633.html" title="南京">南京</a>
                            </li>
                            <li>
                                <a href="http://xianlu.01nz.com.cn/add/list/632.html" title="临安">临安</a>
                            </li>
                            <li>
                                <a href="http://xianlu.01nz.com.cn/add/list/631.html" title="上海">上海</a>
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="clear"></div>



                <!-- 搜索../Scripts/Line -->

                <script src="../Scripts/Line/TN_hotel-min.js"></script>
                <script src="../Scripts/Line/TN_city_suggest2-min.js"></script>
                <script src="../Scripts/Line/TN_date-min.js"></script>
                <script src="../Scripts/Line/TN_city_pos.js"></script>
                <script language="javascript1.2">
                    $(document).ready(function () {

                        $('#s-tab li').each(function (i) {
                            $(this).bind('click', function () {
                                $(this).siblings('li').removeClass('scur');
                                $(this).addClass('scur');
                                $('.s-content' + i).siblings('.s-content').hide();
                                $('.s-content' + i).show();
                            })
                        });

                        $('#city').TN_CitySuggest({ 'hotcityArr': TN_hotcitys, 'cmcityArr': TN_cmcitys, 'usecityArr': TN_usecitys });
                        $('#cityhotel').TN_CitySuggest({ 'hotcityArr': TN_hotcitys, 'cmcityArr': TN_cmcitys, 'usecityArr': TN_usecitys });
                        $('#s_begin_date,#s_end_date').TN_date();
                        $('#business_park').TN_CityPos({ 'ldObj': $('#city'), 'ldObjInitTxt': '中文/拼音' });
                    });

                    $(document).ready(function () {
                        $('#index_chengshi li').eq(0).removeClass('city');
                        $('#index_chengshi li').eq(0).addClass('moren mr_nj');
                        var top1;
                        top1 = $('#index_chengshi li:eq(0) input').val();



                        $("#gtx").click(function () {
                            $("#gentuan").css({ 'display': 'block' });
                            $("#zizhu").css({ 'display': 'none' });
                            $("#zijia").css({ 'display': 'none' });
                            $(this).addClass('mr_nj');
                            $("#zzx").removeClass('mr_nj');
                            $("#zjx").removeClass('mr_nj');
                        });
                        $("#zzx").click(function () {
                            $("#gentuan").css({ 'display': 'none' });
                            $("#zizhu").css({ 'display': 'block' });
                            $("#zijia").css({ 'display': 'none' });
                            $(this).addClass('mr_nj');
                            $("#gtx").removeClass('mr_nj');
                            $("#zjx").removeClass('mr_nj');
                        });
                        $("#zjx").click(function () {
                            $("#gentuan").css({ 'display': 'none' });
                            $("#zizhu").css({ 'display': 'none' });
                            $("#zijia").css({ 'display': 'block' });
                            $(this).addClass('mr_nj');
                            $("#zzx").removeClass('mr_nj');
                            $("#gtx").removeClass('mr_nj');
                        });
                    });
                </script>
                <div class="top10">
                    <script>
                        function xiala() {
                            $('#urmenu li').hover(function () {
                                $('#dvmenu' + $(this).attr('tag')).css("display", "block");
                                return false;
                            }, function () {
                                $('#dvmenu' + $(this).attr('tag')).css("display", "none");
                            });

                            $('#dvmenu1,#dvmenu2,#dvmenu3,#dvmenu4,#dvmenu5,#dvmenu6').hover(function () {
                                $(this).css("display", "block");
                            }, function () {
                                $(this).css("display", "none");
                            });

                            //子菜单
                            var o = $('div.subPartLeft div.menuPart');
                            o.mouseenter(function () {

                                o.find('div.part01left_top').css({ "height": "270px" }).find('div.part01lt').css({ "height": "30px" });
                                o.find('h1').find('i').addClass('on');
                            });
                            o.mouseleave(function () {
                                o.find('div.part01left_top').css({ "height": "30px" }).find('div.part01lt').css({ "height": "28px" });
                                o.find('h1').find('i').removeClass('on');
                            });

                            var o2 = $('div.subPartLeft');
                            o2.mouseenter(function () {
                                o2.find('div.part01left_top').css({ "height": "270px" }).find('div.part01lt').css({ "height": "30px" });
                            });
                            o2.mouseleave(function () {
                                o2.find('div.part01left_top').css({ "height": "30px" }).find('div.part01lt').css({ "height": "28px" });
                            });

                            var o3 = $('div.gty2');
                            o3.mouseenter(function () {
                                o3.siblings('div.part01left_top').css({ "height": "270px" }).find('div.part01lt').css({ "height": "30px" });
                            });
                        }
                        xiala();
                    </script>
                    <!--  搜索 ---->
                    <div class="clear"></div>
                </div>
                <script language="javascript">_Check_index_Login();</script>
                <!--//特价路线-->
                <div class="col_side_o top10">
                    <div class="col_side_head">特价线路</div>
                    <ul class="show-hide">
                        <li class=""><div class="ynum">1.</div><a target="_blank" href="http://xianlu.01nz.com.cn/archives/1232.html" class="pic_link" rel="nofollow"><img width="78" height="71" alt="买一赠一！【青浦】草莓采摘一日" src="../Images/Line/15022F54G9.jpg"></a><div class="s_h_w2"><a target="_blank" href="http://xianlu.01nz.com.cn/archives/1232.html">买一赠一！【青浦】草莓采摘一日</a><br><span class="ymargin"><span class="cgrey2"><div class="line_price" style="width:120px;">特价：<strong>118</strong>起</div></span></span></div><div class="clr"></div></li>
                        <li class=""><div class="ynum">2.</div><a target="_blank" href="http://xianlu.01nz.com.cn/archives/1231.html" class="pic_link" rel="nofollow"><img width="78" height="71" alt="【赏春】 苏州木渎古镇，林屋洞" src="../Images/Line/15022P20R1.jpg"></a><div class="s_h_w2"><a target="_blank" href="http://xianlu.01nz.com.cn/archives/1231.html">【赏春】 苏州木渎古镇，林屋洞</a><br><span class="ymargin"><span class="cgrey2"><div class="line_price" style="width:120px;">特价：<strong>99</strong>起</div></span></span></div><div class="clr"></div></li>
                        <li class=""><div class="ynum">3.</div><a target="_blank" href="http://xianlu.01nz.com.cn/archives/1230.html" class="pic_link" rel="nofollow"><img width="78" height="71" alt="上海出发 [巴士自由行]临安天目山" src="../Images/Line/150212091136.jpg"></a><div class="s_h_w2"><a target="_blank" href="http://xianlu.01nz.com.cn/archives/1230.html">上海出发 [巴士自由行]临安天目山</a><br><span class="ymargin"><span class="cgrey2"><div class="line_price" style="width:120px;">特价：<strong>198</strong>起</div></span></span></div><div class="clr"></div></li>
                        <li class=""><div class="ynum">4.</div><a target="_blank" href="http://xianlu.01nz.com.cn/archives/1229.html" class="pic_link" rel="nofollow"><img width="78" height="71" alt="上海出发 【普陀山】祈福二日农" src="../Images/Line/150210093504.jpg"></a><div class="s_h_w2"><a target="_blank" href="http://xianlu.01nz.com.cn/archives/1229.html">上海出发 【普陀山】祈福二日农</a><br><span class="ymargin"><span class="cgrey2"><div class="line_price" style="width:120px;">特价：<strong>610</strong>起</div></span></span></div><div class="clr"></div></li>
                        <li class=""><div class="ynum">5.</div><a target="_blank" href="http://xianlu.01nz.com.cn/archives/1228.html" class="pic_link" rel="nofollow"><img width="78" height="71" alt="&lt;strong&gt;上海出发 【后岸村】3月7号“老婆&lt;/strong&gt;" src="../Images/Line/150205031I2.jpg"></a><div class="s_h_w2"><a target="_blank" href="http://xianlu.01nz.com.cn/archives/1228.html"><strong>上海出发 【后岸村】3月7号“老婆</strong></a><br><span class="ymargin"><span class="cgrey2"><div class="line_price" style="width:120px;">特价：<strong>299</strong>起</div></span></span></div><div class="clr"></div></li>
                        <li class=""><div class="ynum">6.</div><a target="_blank" href="http://xianlu.01nz.com.cn/archives/1227.html" class="pic_link" rel="nofollow"><img width="78" height="71" alt="上海出发 【黄山】醉温泉-水印唐" src="../Images/Line/150123020547.jpg"></a><div class="s_h_w2"><a target="_blank" href="http://xianlu.01nz.com.cn/archives/1227.html">上海出发 【黄山】醉温泉-水印唐</a><br><span class="ymargin"><span class="cgrey2"><div class="line_price" style="width:120px;">特价：<strong>259</strong>起</div></span></span></div><div class="clr"></div></li>
                        <li class="show_over"><div class="ynum">7.</div><a target="_blank" href="http://xianlu.01nz.com.cn/archives/1223.html" class="pic_link" rel="nofollow"><img width="78" height="71" alt="【欢喜过大年3】临安大明山农家" src="../Images/Line/150122095S8.jpg"></a><div class="s_h_w2"><a target="_blank" href="http://xianlu.01nz.com.cn/archives/1223.html">【欢喜过大年3】临安大明山农家</a><br><span class="ymargin"><span class="cgrey2"><div class="line_price" style="width:120px;">特价：<strong>459</strong>起</div></span></span></div><div class="clr"></div></li>
                        <li class=""><div class="ynum">8.</div><a target="_blank" href="http://xianlu.01nz.com.cn/archives/1222.html" class="pic_link" rel="nofollow"><img width="78" height="71" alt="上海出发  [欢喜过大年2]天台后岸" src="../Images/Line/150122093116.jpg"></a><div class="s_h_w2"><a target="_blank" href="http://xianlu.01nz.com.cn/archives/1222.html">上海出发  [欢喜过大年2]天台后岸</a><br><span class="ymargin"><span class="cgrey2"><div class="line_price" style="width:120px;">特价：<strong>459</strong>起</div></span></span></div><div class="clr"></div></li>
                    </ul>
                    <div class="clr"></div>
                </div>
                <!--//热卖线路-->
                <div class="col_side_o top10">
                    <div class="col_side_head">热卖线路</div>
                    <ul class="show-hide">
                        <li class="show_over"><div class="ynum">1.</div><a target="_blank" href="http://xianlu.01nz.com.cn/archives/1231.html" class="pic_link" rel="nofollow"><img width="105" height="71" alt="【赏春】 苏州木渎古镇，林屋洞" src="../Images/Line/15022P20R1.jpg"></a><div class="s_h_w2"><a target="_blank" href="http://xianlu.01nz.com.cn/archives/1231.html">【赏春】 苏州木渎古镇，林屋洞</a><br><span class="ymargin"><span class="cgrey2"><div class="line_price" style="width:120px;">特价：<strong>99</strong>起</div></span></span></div><div class="clr"></div></li>
                        <li class=""><div class="ynum">2.</div><a target="_blank" href="http://xianlu.01nz.com.cn/archives/1230.html" class="pic_link" rel="nofollow"><img width="105" height="71" alt="上海出发 [巴士自由行]临安天目山" src="../Images/Line/150212091136.jpg"></a><div class="s_h_w2"><a target="_blank" href="http://xianlu.01nz.com.cn/archives/1230.html">上海出发 [巴士自由行]临安天目山</a><br><span class="ymargin"><span class="cgrey2"><div class="line_price" style="width:120px;">特价：<strong>198</strong>起</div></span></span></div><div class="clr"></div></li>
                        <li class=""><div class="ynum">3.</div><a target="_blank" href="http://xianlu.01nz.com.cn/archives/1229.html" class="pic_link" rel="nofollow"><img width="105" height="71" alt="上海出发 【普陀山】祈福二日农" src="../Images/Line/150210093504.jpg"></a><div class="s_h_w2"><a target="_blank" href="http://xianlu.01nz.com.cn/archives/1229.html">上海出发 【普陀山】祈福二日农</a><br><span class="ymargin"><span class="cgrey2"><div class="line_price" style="width:120px;">特价：<strong>610</strong>起</div></span></span></div><div class="clr"></div></li>
                        <li class=""><div class="ynum">4.</div><a target="_blank" href="http://xianlu.01nz.com.cn/archives/1228.html" class="pic_link" rel="nofollow"><img width="105" height="71" alt="&lt;strong&gt;上海出发 【后岸村】3月7号“老婆&lt;/strong&gt;" src="../Images/Line/150205031I2.jpg"></a><div class="s_h_w2"><a target="_blank" href="http://xianlu.01nz.com.cn/archives/1228.html"><strong>上海出发 【后岸村】3月7号“老婆</strong></a><br><span class="ymargin"><span class="cgrey2"><div class="line_price" style="width:120px;">特价：<strong>299</strong>起</div></span></span></div><div class="clr"></div></li>
                        <li class=""><div class="ynum">5.</div><a target="_blank" href="http://xianlu.01nz.com.cn/archives/1220.html" class="pic_link" rel="nofollow"><img width="105" height="71" alt="上海出发 【临安】大明山滑雪 泡" src="../Images/Line/1501200G626.jpg"></a><div class="s_h_w2"><a target="_blank" href="http://xianlu.01nz.com.cn/archives/1220.html">上海出发 【临安】大明山滑雪 泡</a><br><span class="ymargin"><span class="cgrey2"><div class="line_price" style="width:120px;">特价：<strong>279</strong>起</div></span></span></div><div class="clr"></div></li>
                        <li class=""><div class="ynum">6.</div><a target="_blank" href="http://xianlu.01nz.com.cn/archives/1219.html" class="pic_link" rel="nofollow"><img width="105" height="71" alt="临安东天目山、月牙泉3日游" src="../Images/Line/150120034141.jpg"></a><div class="s_h_w2"><a target="_blank" href="http://xianlu.01nz.com.cn/archives/1219.html">临安东天目山、月牙泉3日游</a><br><span class="ymargin"><span class="cgrey2"><div class="line_price" style="width:120px;">特价：<strong>279</strong>起</div></span></span></div><div class="clr"></div></li>
                    </ul>
                </div>
                <div class="section_r top10">
                    <div class="col_side_o mb10" id="recall">
                        <div class="col_side_head">最合算的广告位</div>
                        <div id="satisf"><dl><dt>最优惠:<br></dt><dd>效果</dd></dl></div>

                        <div class="inCommentText">
                        </div>

                    </div>


                </div>
                <!-- section_r end -->


            </div>
            <!-- left -->
            <div class="m_menu left5">
                <div class="topbanner">
                    <div class="bannerimg" id="divimagebanner">
                        <a href="http://xianlu.01nz.com.cn/archives/1231.html" target="_blank" style="display: none;">
                            <!-- 大图片000 -->
                            <img src="../Images/Line/15022P20R1.jpg" title="【赏春】 苏州木渎古镇，" width="770" height="317" border="0">
                        </a>
                        <a href="http://xianlu.01nz.com.cn/archives/1230.html" target="_blank" style="display: inline;">
                            <!-- 大图片000 -->
                            <img src="../Images/Line/150212091136.jpg" title="上海出发 [巴士自由行]临" width="770" height="317" border="0">
                        </a>
                        <a href="http://xianlu.01nz.com.cn/archives/1229.html" target="_blank" style="display: none;">
                            <!-- 大图片000 -->
                            <img src="../Images/Line/150210093504.jpg" title="上海出发 【普陀山】祈福" width="770" height="317" border="0">
                        </a>
                        <a href="http://xianlu.01nz.com.cn/archives/1227.html" target="_blank" style="display: none;">
                            <!-- 大图片000 -->
                            <img src="../Images/Line/150123020547.jpg" title="上海出发 【黄山】醉温泉" width="770" height="317" border="0">
                        </a>
                    </div>
                    <!--滚功图片-->
                    <div class="bannertext" id="divbanner">
                        <ul>
                            <li>
                                <a href="http://xianlu.01nz.com.cn/archives/1231.html" target="_blank" class="">
                                    【赏春】 苏州木渎
                                </a>
                            </li>
                            <li>
                                <a href="http://xianlu.01nz.com.cn/archives/1230.html" target="_blank" class="on">
                                    上海出发 [巴士自
                                </a>
                            </li>
                            <li>
                                <a href="http://xianlu.01nz.com.cn/archives/1229.html" target="_blank" class="">
                                    上海出发 【普陀山
                                </a>
                            </li>
                            <li>
                                <a href="http://xianlu.01nz.com.cn/archives/1227.html" target="_blank" class="">
                                    上海出发 【黄山】
                                </a>
                            </li>
                        </ul>
                        <div class="clearit">
                        </div>
                    </div>
                </div>
                <!-- /大图片 -->
                <!-- 中部 上 -->
                <div class="middle1">
                    <!-- 中部 标题 -->
                    <div class="middle01">
                        <div class="shty_top tj">
                            <div class="title tj_tit">特价推荐</div>
                            <ul class="down_store" id="index_purnj">
			                    <li id="gtx" class="gentuan mr_nj"><a href="javascript:void(0);" onclick="load_rmcdc_store({$city_id})">跟团行</a></li> 
			                    <li id="zzx" class="zizhu"><a href="javascript:void(0);" onclick="load_rmcdc_store({$purpose.id})">自助行</a></li>
			                    <li id="zjx" class="zijia"><a href="javascript:void(0);" onclick="load_rmcdc_store({$purpose.id})">自驾行</a></li>
			                </ul>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <!-- 跟团行 -->
                    <div id="gentuan" class="istore_con f_r">
                        <asp:Repeater ID="RPGentuan" runat="server">
                            <ItemTemplate>
                            <div class="s_info">
                             <a href="http://xianlu.01nz.com.cn/archives/1147.html" target="_blank">
                                <img src="../Images/Line/1411040G321.jpg" width="180" height="137" }"="" alt="<%# Eval("ProductName") %>">
                                <p class="jieshao"> </p>
                                <span class="jg f_l">￥<%# Eval("ProductPrice") %>起</span>
                            </a>
                            <p class="store_name"><a href="http://xianlu.01nz.com.cn/archives/1147.html" target="_blank"><%# Eval("ProductName") %></a></p>
                        </div>
                            </ItemTemplate>
                        </asp:Repeater>
                        
                       
                    </div>
                    <!-- 跟团行 END-->
                    <!-- 自助行 -->
                    <div id="zizhu" style="display:none" class="istore_con f_r">
                         <asp:Repeater ID="RPZizhu" runat="server">
                            <ItemTemplate>
                                <div class="s_info">
                            <a href="http://xianlu.01nz.com.cn/archives/1147.html" target="_blank">
                                <img src="../Images/Line/1411040G321.jpg" width="180" height="137" }"="" alt="<%# Eval("ProductName") %>">
                                <p class="jieshao"> </p>
                                <span class="jg f_l">￥<%# Eval("Price") %>起</span>
                            </a>
                            <p class="store_name"><a href="http://xianlu.01nz.com.cn/archives/1147.html" target="_blank"><%# Eval("ProductName") %></a></p>
                        </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                    <!-- 自助行 END-->
                    <!-- 自驾行 -->
                    <div id="zijia" style="display:none" class="istore_con f_r">
                         <asp:Repeater ID="RPZijia" runat="server">
                            <ItemTemplate>
                                <div class="s_info">
                            <a href="http://xianlu.01nz.com.cn/archives/1147.html" target="_blank">
                                <img src="../Images/Line/1411040G321.jpg" width="180" height="137" }"="" alt="<%# Eval("ProductName") %>">
                                <p class="jieshao"> </p>
                                <span class="jg f_l">￥<%# Eval("Price") %>起</span>
                            </a>
                            <p class="store_name"><a href="http://xianlu.01nz.com.cn/archives/1147.html" target="_blank"><%# Eval("ProductName") %></a></p>
                        </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                </div>
                <!-- 热门跟团行-->
                <div class="middle2">
                    <div class="middle01">
                        <div class="shty_top gt">
                            <div class="title gt_tit"><div class="img_tb gentuan_img f_l"> </div>跟团行</div>
                            <div class="f_r gengduo"><a target="_blank" href="http://xianlu.01nz.com.cn/add/list/490.html">更多＞</a></div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="istore_con f_r">
                        <asp:Repeater ID="RPgentuan1" runat="server">
                            <ItemTemplate>
                                <div class="s_info">
                            <a href="http://xianlu.01nz.com.cn/archives/1147.html" target="_blank">
                                <img src="../Images/Line/1411040G321.jpg" width="180" height="137" }"="" alt="<%# Eval("ProductName") %>">
                                <p class="jieshao"> </p>
                                <span class="jg f_l">￥<%# Eval("Price") %>起</span>
                            </a>
                            <p class="store_name"><a href="http://xianlu.01nz.com.cn/archives/1147.html" target="_blank"><%# Eval("ProductName") %></a></p>
                        </div>
                            </ItemTemplate>
                        </asp:Repeater>
                        <div class="tab_txt clear">
                           <asp:Repeater ID="RPgentuan2" runat="server">
                            <ItemTemplate>
                                 <div class="line_txt f_l">
                                <a href="http://xianlu.01nz.com.cn/archives/1228.html" class="f_l" target="_blank">
                                    <span class="fen_lei f_l">跟团</span>
                                    299元2人套餐，爱她就送她
                                </a><span class="f_r jiage_qi">￥299起</span>
                                <div class="clear"></div>
                            </div>
                            </ItemTemplate>
                        </asp:Repeater>
                        </div>
                    </div>
                </div>
                <!-- 热门自助行 -->
                <div class="middle2">
                    <div class="middle01">
                        <div class="shty_top zz">
                            <div class="title zz_tit"><div class="img_tb zizhu_img f_l"> </div>自助行</div>
                            <div class="f_r gengduo"><a target="_blank" href="http://xianlu.01nz.com.cn/add/list/491.html">更多＞</a></div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="istore_con f_r">
                        <asp:Repeater ID="RPZizhu1" runat="server">
                            <ItemTemplate>
                                <div class="s_info">
                            <a href="http://xianlu.01nz.com.cn/archives/1147.html" target="_blank">
                                <img src="../Images/Line/1411040G321.jpg" width="180" height="137" }"="" alt="<%# Eval("ProductName") %>">
                                <p class="jieshao"> </p>
                                <span class="jg f_l">￥<%# Eval("Price") %>起</span>
                            </a>
                            <p class="store_name"><a href="http://xianlu.01nz.com.cn/archives/1147.html" target="_blank"><%# Eval("ProductName") %></a></p>
                        </div>
                            </ItemTemplate>
                        </asp:Repeater>
                        <div class="tab_txt clear">
                             <asp:Repeater ID="RPZizhu2" runat="server">
                            <ItemTemplate>
                                 <div class="line_txt f_l">
                                <a href="http://xianlu.01nz.com.cn/archives/1228.html" class="f_l" target="_blank">
                                    <span class="fen_lei f_l">跟团</span>
                                    299元2人套餐，爱她就送她
                                </a><span class="f_r jiage_qi">￥299起</span>
                                <div class="clear"></div>
                            </div>
                            </ItemTemplate>
                                 </asp:Repeater>
                        </div>
                    </div>
                </div>
                <!-- 热门自驾行 -->
                <div class="middle2">
                    <div class="middle01">
                        <div class="shty_top zj">
                            <div class="title zj_tit"><div class="img_tb zijia_img f_l"> </div>自驾行</div>
                            <div class="f_r gengduo"><a target="_blank" href="http://xianlu.01nz.com.cn/add/list/593.html">更多＞</a></div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="istore_con f_r">
                        <asp:Repeater ID="RPZijia1" runat="server">
                            <ItemTemplate>
                                <div class="s_info">
                            <a href="http://xianlu.01nz.com.cn/archives/1147.html" target="_blank">
                                <img src="../Images/Line/1411040G321.jpg" width="180" height="137" }"="" alt="<%# Eval("ProductName") %>">
                                <p class="jieshao"> </p>
                                <span class="jg f_l">￥<%# Eval("Price") %>起</span>
                            </a>
                            <p class="store_name"><a href="http://xianlu.01nz.com.cn/archives/1147.html" target="_blank"><%# Eval("ProductName") %></a></p>
                        </div>
                            </ItemTemplate>
                        </asp:Repeater>
                        <div class="tab_txt clear">
                             <asp:Repeater ID="RPZijia2" runat="server">
                            <ItemTemplate>
                                 <div class="line_txt f_l">
                                <a href="http://xianlu.01nz.com.cn/archives/1228.html" class="f_l" target="_blank">
                                    <span class="fen_lei f_l">跟团</span>
                                    299元2人套餐，爱她就送她
                                </a><span class="f_r jiage_qi">￥299起</span>
                                <div class="clear"></div>
                            </div>
                            </ItemTemplate>
                                 </asp:Repeater>
                        </div>
                    </div>
                </div>
            </div>

            <!-- /中部 中 -->
            <!--- /中部 -->
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
                    <div align="center"><img src="../Images/Line/xian.jpg" alt="灰线"></div>
                    <div align="center">
                        <img src="../Images/Line/jubao.gif" alt="举报中心" class="img">
                        <img src="../Images/Line/end_2.gif" alt="官方认证" class="img">
                        <img src="../Images/Line/end_3.gif" alt="网络110" class="img">
                        <!-- <img src="http://www.01nz.com.cn/app/Tpl/fanwe/../Images/Line/site_logo.png" alt="安全联盟" class="img"/> -->
                        <img src="../Images/Line/end_4.gif" alt="360绿色网站" class="img">
                    </div>
                    <div class="blank"></div>
                    <div class="blank"></div>
                    <div class="blank"></div>
                </div>
            </div>
            <div class="clear"></div>
        </div>
        <script language="javascript" src="../Images/Line/index.../Scripts/Line" type="text/javascript"></script>
        <script type="text/javascript">


            $('.show-hide').each(function () {
                $(this).find('li').each(function () {
                    $(this).mouseover(function () {
                        $(this).addClass('show_over');
                        $(this).siblings('li').removeClass('show_over');
                    });
                });
            });

        </script>

    </div>
    <div class="TN_hotcity_w" id="TN_HotCity_W" style="position: absolute; display: none;"><div class="TN_city_h"><strong>热门城市</strong><span>（可直接输入城市或城市拼音）</span></div><div class="TN_hotcity_div"><a href="javascript:void(0)">上海</a><a href="javascript:void(0)">南京</a><a href="javascript:void(0)">三亚</a><a href="javascript:void(0)">杭州</a><a href="javascript:void(0)">丽江</a><a href="javascript:void(0)">苏州</a><a href="javascript:void(0)">扬州</a><a href="javascript:void(0)">无锡</a><a href="javascript:void(0)">常州</a><a href="javascript:void(0)">厦门</a><a href="javascript:void(0)">宁波</a><a href="javascript:void(0)">黄山</a><a href="javascript:void(0)">千岛湖</a><a href="javascript:void(0)">溧阳</a><a href="javascript:void(0)">桐乡</a></div></div><div class="TN_cmcity_w" id="TN_CommonCity_W" style="position: absolute; display: none;"></div><div class="TN_hotcity_w" id="TN_HotCity_W" style="position: absolute; display: none;"><div class="TN_city_h"><strong>热门城市</strong><span>（可直接输入城市或城市拼音）</span></div><div class="TN_hotcity_div"><a href="javascript:void(0)">上海</a><a href="javascript:void(0)">南京</a><a href="javascript:void(0)">三亚</a><a href="javascript:void(0)">杭州</a><a href="javascript:void(0)">丽江</a><a href="javascript:void(0)">苏州</a><a href="javascript:void(0)">扬州</a><a href="javascript:void(0)">无锡</a><a href="javascript:void(0)">常州</a><a href="javascript:void(0)">厦门</a><a href="javascript:void(0)">宁波</a><a href="javascript:void(0)">黄山</a><a href="javascript:void(0)">千岛湖</a><a href="javascript:void(0)">溧阳</a><a href="javascript:void(0)">桐乡</a></div></div><div class="TN_cmcity_w" id="TN_CommonCity_W" style="position: absolute; display: none;"></div><div id="tnDateW" style="display: none;"><div id="date_t_pre"></div><div id="date_t_next"></div></div><div class="TN_pos_w" id="TN_Pos_W" style="position: absolute; display: none;"></div>
</body>
</html>

