<%@ Page Title="" Language="C#" MasterPageFile="~/Shared/Main.Master" AutoEventWireup="true" CodeBehind="Farm.aspx.cs" Inherits="Play_And_Ate.Products.Farm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Style" runat="server"> <link rel="Shortcut Icon" href="http://sh.01nz.com.cn/app/Tpl/fanwe/images/logo.ico" />
    <!--地址栏和标签上显示图标-->
    <link rel="Bookmark" href="http://sh.01nz.com.cn/app/Tpl/fanwe/images/logo.ico" />
    <!--收藏夹显示图标-->
    <link href="../Content/Products/cf62177493ce4db40c22962f60d846f8.css" rel="stylesheet" />
    <script type="text/javascript" src="../Scripts/Products/baidumap.js"></script>
    <link href="../Content/Products/base.v606141511.css" rel="stylesheet" type="text/css" media="all" />
    <script type="text/javascript" src="../Scripts/Products/header.js" charset="utf-8"></script>
    <script type="text/javascript" src="../Scripts/Products/mt3.v1014201036.js" charset="utf-8"></script>
    <script type="text/javascript" src="../Scripts/Products/fgcomm.v620152248.js" charset="utf-8"></script>
    <script type="text/javascript" src="../Scripts/Products/sousuo.js" charset="utf-8"></script>
    <script type="text/javascript" src="../Scripts/Products/index_header.js" charset="utf-8"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div id="dropdown">
    </div>
    <div class="wraps">

        <script type="text/javascript" src="../Scripts/Products/lang.js"></script>
        <script type="text/javascript">
            var APP_ROOT = '';
            var CART_URL = '/cart';
            var CART_CHECK_URL = '/cart-check';
            var LOADER_IMG = 'http://sh.01nz.com.cn/app/Tpl/fanwe/images/lazy_loading.gif';
            var ERROR_IMG = 'http://sh.01nz.com.cn/app/Tpl/fanwe/images/image_err.gif';
            
        </script>
        </div>



        <script type="text/javascript">
            var is_order_show = false;
</script>
        <script type="text/javascript" src="../Scripts/Products/ca3e4166f3f1cd8619807edc574f075c.js"></script>
        <link rel="stylesheet" type="text/css" href="../Content/Products/6405f1b57f28bc36716e3be90105a5cb.css">
        <div class="wrap">
            <ul class="main_nav">
                <li class="all_class nz_jsfudong ">
                    <div class="class_con" style="height: 45px; width: 219px;">
                        <dl class="index_fenlei nz_city">
                            <dt class="csqh" id="sc_1" style="background-color:#db7d3b"></dt>
                            
                        </dl>
                    </div>
                </li>
            </ul>
        </div>
        <div class="in_center">
            <div class="stort_left f_l">
                <div class="store_zhti">
                    <div class="blank"></div>
                    <div class="zhuti f_l">
                        <a href="#" title="休闲观光" target="_blank">
                            <img src="../Images/Products/537304a8395ef.jpg" alt="休闲观光">
                            <p>休闲观光</p>
                        </a>
                    </div>
                    <div class="zhuti f_l">
                        <a href="#" title="度假村" target="_blank">
                            <img src="../Images/Products/5373040ac02d7.jpg" alt="度假村">
                            <p>度假村</p>
                        </a>
                    </div>
                    <div class="zhuti f_l">
                        <a href="#" title="温泉农庄" target="_blank">
                            <img src="../Images/Products/5373031b06d21.jpg" alt="温泉农庄">
                            <p>温泉农庄</p>
                        </a>
                    </div>
                    <div class="zhuti f_l">
                        <a href="#" title="科普基地" target="_blank">
                            <img src="../Images/Products/537305412576c.jpg" alt="科普基地">
                            <p>科普基地</p>
                        </a>
                    </div>
                    <div class="zhuti f_l">
                        <a href="#" title="拓展培训" target="_blank">
                            <img src="../Images/Products/53730553ce7f6.jpg" alt="拓展培训">
                            <p>拓展培训</p>
                        </a>
                    </div>
                    <div class="zhuti f_l">
                        <a href="#" title="生态农庄" target="_blank">
                            <img src="../Images/Products/53745ee60b87c.jpg" alt="生态农庄">
                            <p>生态农庄</p>
                        </a>
                    </div>
                    <div class="blank"></div>
                </div>
                <div class="blank"></div>
                <div class="store_xiangmu">
                    <div class="title_nz"><span class="cx f_l"></span>全国农庄</div>
                    <div class="neirong_city">
                        <asp:Repeater runat="server" ID="RPcity">
                            <ItemTemplate>
                                <a href="#" class="rmhong" target="_blank"><%# Eval("AreaName") %></a>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                    <div class="blank"></div>
                </div>
                <div class="blank"></div>
                <div class="store_xiangmu">
                    <div class="title_nz"><span class="bz f_l"></span>游玩项目</div>
                    <div class="neirong">
                        <a href="#" target="_blank">骑马</a>
                        <a href="#" target="_blank">漂流</a>
                        <a href="#" target="_blank">真人CS</a>
                        <a href="#" target="_blank">游泳</a>
                        <a href="#" target="_blank">健身房</a>
                        <a href="#" target="_blank">篝火</a>
                        <a href="#" target="_blank">卡拉OK</a>
                        <a href="#" target="_blank">棋牌</a>
                        <a href="#" target="_blank">DIY</a>
                        <a href="#" target="_blank">烧烤</a>
                        <a href="#" target="_blank">垂钓</a>
                    </div>
                </div>
                <div class="blank"></div>
                <a href="#" target="_blank">
                    <img src="../Images/Home/5375bb6c9f36e.jpg" title="上海都市菜园" alt="上海都市菜园" border="0"></a>
                <div class="blank"></div>
                <div class="store_xiangmu">
                    <div class="title_nz"><span class="zx f_l"></span>优惠：</div>
                    <div class="neirong">
                        <a href="#" target="_blank">仅售35元的价值45元的上海都市菜园门票一张</a>
                        <div class="nongzhuang_yhxian"></div>
                        <div class="blank"></div>
                    </div>
                </div>
                <div class="blank"></div>
                <a href="#" target="_blank">
                    <img src="../Images/Home/375bc10b7da9.jpg" title="上海强丰生态农庄" alt="上海强丰生态农庄" border="0"></a>
                <div class="blank"></div>
                <%--今日推荐--%>
                <div class="store_xiangmu">
                    <div class="title_nz"><span class="jr f_l"></span>今日推荐：</div>
                    <div class="neirong">
                        <asp:Repeater runat="server" ID="Feature">
                            <ItemTemplate>
                                <p>
                                    <a href="#" target="_blank" style="overflow:hidden;height:20px;width:203px"><%# Eval("ProductName") %>&nbsp;特色: <%# Eval("Feature") %></a>
                                </p>
                            </ItemTemplate>
                        </asp:Repeater> 
                    </div>
                    <div class="blank"></div>
                </div>
                <div class="blank"></div>

            </div>
            
            <div class="store_middle f_r">
                <div id="main_adv_box" class="main_adv_box f_l">
                    <div id="main_adv_img" class="main_adv_img">
                        <img src="../Images/Products/53745d6d50625.jpg" title="上海番茄农庄" alt="上海番茄农庄" border="0" height="306" width="758" />
                        <img src="../Images/Products/5374600616246.jpg" title="上海多利农庄" alt="上海多利农庄" border="0" height="306" width="758" />
                        <img src="../Images/Products/5374641e5dcc5.jpg" title="富岛垂钓休闲农庄" alt="富岛垂钓休闲农庄" border="0" height="306" width="758" />
                        <img src="../Images/Products/5374661217295.jpg" title="上海四季百果园" alt="上海四季百果园" border="0" height="306" width="758" />
                    </div>
                    <div id="content">
                        <div id="main f_l" class="mains">
                            <div id="container">
                                <div class="flexslider">
                                    <ul class="slides" id="stodes">
                                        <li style="width: 100%; float: left; margin-right: -100%; display: none;">
                                            <a href="http://sh.01nz.com.cn/farm/68.html" target="_blank">
                                                <img src="../Images/Products/5374600616246.jpg" title="上海多利农庄" alt="上海多利农庄" border="0" height="306" width="758"></a>
                                        </li>
                                        <li style="width: 100%; float: left; margin-right: -100%; display: none;">
                                            <a href="http://sh.01nz.com.cn/farm/54.html" target="_blank">
                                                <img src="../Images/Products/53745d6d50625.jpg" title="上海番茄农庄" alt="上海番茄农庄" border="0" height="306" width="758"></a>
                                        </li>
                                        <li style="width: 100%; float: left; margin-right: -100%; display: list-item;">
                                            <a href="http://sh.01nz.com.cn/farm/1040.html" target="_blank">
                                                <img src="../Images/Products/5374641e5dcc5.jpg" title="富岛垂钓休闲农庄" alt="富岛垂钓休闲农庄" border="0" height="306" width="758"></a>
                                        </li>
                                        <li style="width: 100%; float: left; margin-right: -100%;">
                                            <a href="http://sh.01nz.com.cn/farm/58.html" target="_blank">
                                                <img src="../Images/Products/5374661217295.jpg" title="上海四季百果园" alt="上海四季百果园" border="0" height="306" width="758"></a>
                                        </li>
                                    </ul>
                                    <ol class="flex-control-nav">
                                        <li class="p9">多利农庄</li>
                                        <li class="p9">上海番茄农庄</li>
                                        <li class="p9 active">富岛垂钓休闲农庄</li>
                                        <li class="p9">上海四季百果园</li>
                                    </ol>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="hg_25 clear"></div>
                 <script>
                        $(function () {
                            load_farm_stor(farm);
                        })
                     function load_farm_stor(farm) {
                         console.info(farm);
                         $("#index_purpose li.first").css({ "background": "none" });
                         $("#index_purpose li ").css({ "background": "none" });
                         $("#index_purpose li.first a").css({ "color": "#f9af46" });
                         $("#index_purpose li a").css({ "color": "#f9af46" });
                         $("#index_purpose li.p_" + farm).css({ "background-image": "none", "background": "#f9af46", "border-radius": "3px" });
                         $("#index_purpose li.p_" + farm + " a").css({ "color": "#fff" });
                         $.ajax({
                             type: 'POST',
                             url: "Farm.aspx",
                             data: { "TAreaID": farm },
                             success: function (e) {
                                 window.location.href = "../Products/Farm.aspx?TAreaID=" + farm;
                                 window.parent.location.reload();//，让页面刷新一下，数据就出来了。
                             },
                             error: function (o) {
                                 //alert(123);
                             }
                         });
                     }
                    </script>
                <div class="store_xianjin">
                    <div class="xjtore_top">
                        <div class="title">推荐</div>
                        <ul class="down_store" id="index_purpose">
                            <li ><a class="p_1 mr_tj"   Onclick="return load_farm_stor(1)">上海</a></li>
                            <li ><a class="p_4"   Onclick="return load_farm_stor(4)">北京</a></li>
                            <li ><a class="p_7"   Onclick="return load_farm_stor(7)">天津</a></li>
                            <li ><a class="p_2"   Onclick="return load_farm_stor(2)">南京</a></li>
                            <li ><a class="p_3"   Onclick="return load_farm_stor(3)">杭州</a></li>
                            <li ><a class="p_6"   Onclick="return load_farm_stor(6)">济南</a></li>
                            <li ><a class="p_8"   Onclick="return load_farm_stor(8)">苏州</a></li>
                        </ul>
                        <div class="gengduo f_r" id="chengshi_gengduo"><a href="#" target="_blank">更多&gt;&gt;</a></div>
                        <div class="clear"></div>
                    </div>
                    <div class="xjtore_con" id="ajax_farm_store">
                        <asp:Repeater runat="server" ID="RPTJ">
                            <ItemTemplate>
                                <div class="s_info">
                                    <a href='../Show/FarmDetails.aspx?productId=<%# Eval("ProductID") %>' target="_blank">
                                        <img src='../Images/Home/<%#Eval("Image") %>' alt='<%#Eval("ProductName") %>'></a>
                                    <p class="store_name">
                                        <a href='../Show/FarmDetails.aspx?productId=<%# Eval("ProductID") %>' target="_blank" class="f_l"><%#Eval("ProductName") %></a>
                                        <span class="people f_r">￥<span class="peoda"><%#string.Format("{0:F2}",Eval("ProductPrice")) %></span><span class="peohui">起</span></span>
                                    </p>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>

                    </div>
                </div>
                <div class="hg_25 both"></div>
                <div class="store_wenquan">
                    <div class="wqtore_top_nz">
                        <div class="title">主题</div>
                        <ul class="down_store" id="index_zhuti">
                            <li class="zht_18 zht_se f_l"><a href="javascript:void(0);" onclick="load_farm_zhuti(18)">温泉农庄</a></li>
                            <li class="zht_28 f_l"><a href="javascript:void(0);" onclick="load_farm_zhuti(28)">民俗风情</a></li>
                            <li class="zht_27 f_l"><a href="javascript:void(0);" onclick="load_farm_zhuti(27)">农家土菜</a></li>
                            <li class="zht_26 f_l"><a href="javascript:void(0);" onclick="load_farm_zhuti(26)">乡村农家</a></li>
                            <li class="zht_24 f_l"><a href="javascript:void(0);" onclick="load_farm_zhuti(24)">休闲观光</a></li>
                            <li class="zht_21 f_l"><a href="javascript:void(0);" onclick="load_farm_zhuti(21)">度假村</a></li>
                            <li class="zht_17 f_l"><a href="javascript:void(0);" onclick="load_farm_zhuti(17)">科普基地</a></li>
                        </ul>
                        <div class="gengduo f_r" id="zhuti_gengduo"><a href="#" target="_blank">更多&gt;&gt;</a></div>
                        <div class="clear"></div>
                    </div>
                    <div id="ajax_farm_zhuti">
                        <div class="wqtore_vip f_l">
                            <asp:Repeater runat="server" ID="ReZhu">
                                <ItemTemplate>
                                    <div class="s_info">
                                        <a href='../Show/FarmDetails.aspx?productId=<%# Eval("ProductID") %>' target="_blank">
                                            <img src='../Images/Home/<%#Eval("Image") %>' alt='<%#Eval("ProductName") %>'></a>
                                        <p class="store_name">
                                            <a href='../Show/FarmDetails.aspx?productId=<%# Eval("ProductID") %>' target="_blank" class="f_l"><%#Eval("ProductName") %></a>
                                            <span class="people f_r">￥<span class="peoda"><%#string.Format("{0:F2}",Eval("ProductPrice")) %></span><span class="peohui">起</span></span>
                                        </p>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                            <div class="clear"></div>
                        </div>
                        <div class="wqtore_con f_r">
                            <asp:Repeater runat="server" ID="ReZhuT">
                                <ItemTemplate>
                                    <div class="s_info">
                                        <a href='../Show/FarmDetails.aspx?productId=<%# Eval("ProductID") %>' target="_blank">
                                            <img src='../Images/Home/<%#Eval("Image") %>' alt='<%#Eval("ProductName") %>'></a>
                                        <p class="store_name">
                                            <a href='../Show/FarmDetails.aspx?productId=<%# Eval("ProductID") %>' target="_blank" class="f_l"><%#Eval("ProductName") %></a>
                                            <span class="people f_r">￥<span class="peoda"><%#string.Format("{0:F2}",Eval("ProductPrice")) %></span><span class="peohui">起</span></span>
                                        </p>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                    </div>
                </div>
                <div class="hg_25 both"></div>
                <div class="store_minzu">
                    <div class="mztore_top">
                        <div class="title">采摘</div>
                        <ul class="down_store" id="index_fenlei">
                            <li class="czfl_25 czfl_se f_l"><a href="javascript:void(0);" onclick="load_farm_caizhai(25)">草莓采摘</a></li>
                            <li class="czfl_26 f_l"><a href="javascript:void(0);" onclick="load_farm_caizhai(26)">杨梅采摘</a></li>
                            <li class="czfl_27 f_l"><a href="javascript:void(0);" onclick="load_farm_caizhai(27)">枇杷采摘</a></li>
                            <li class="czfl_28 f_l"><a href="javascript:void(0);" onclick="load_farm_caizhai(28)">葡萄采摘</a></li>
                            <li class="czfl_31 f_l"><a href="javascript:void(0);" onclick="load_farm_caizhai(31)">桑葚采摘</a></li>
                            <li class="czfl_30 f_l"><a href="javascript:void(0);" onclick="load_farm_caizhai(30)">樱桃采摘</a></li>
                        </ul>
                        <div class="gengduo f_r"><a href="#" target="_blank">更多&gt;&gt;</a></div>
                    </div>
                    <div id="ajax_farm_caizhai">
                        <div class="mztore_con">
                            <asp:Repeater runat="server" ID="ReProduct">
                                <ItemTemplate>
                                    <div class="s_info">
                                        <a href='../Show/FarmDetails.aspx?productId=<%# Eval("ProductID") %>' target="_blank">
                                            <img src='../Images/Home/<%#Eval("Image") %>' alt='<%#Eval("ProductName") %>'></a>
                                        <p class="store_name">
                                            <a href='../Show/FarmDetails.aspx?productId=<%# Eval("ProductID") %>' target="_blank" class="f_l"><%#Eval("ProductName") %></a>
                                            <span class="people f_r">￥<span class="peoda"><%#string.Format("{0:F2}",Eval("ProductPrice")) %></span><span class="peohui">起</span></span>
                                        </p>
                                    </div>
                                </ItemTemplate>
                            </asp:Repeater>
                        </div>
                    </div>
                    <div class="clear"></div>
                </div>
            </div>
        </div>
        <!-- 改版 -->
    </div>
    <div class="blank"></div>
    <div id="gotop"></div>
    <a href="http://sh.01nz.com.cn/cart" target="_blank">
        <div id="gowu"></div>
    </a>
    <script src="./上海农庄_上海农家乐_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农庄_农家乐_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/z_stat.php" language="JavaScript"></script>
    <script src="./上海农庄_上海农家乐_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农庄_农家乐_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/core.php" charset="utf-8" type="text/javascript"></script>


    <script src="./上海农庄_上海农家乐_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农庄_农家乐_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/c.js.下载" language="JavaScript"></script>
    <script src="./上海农庄_上海农家乐_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农庄_农家乐_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/tongji_360.php" language="JavaScript" charset="gb2312"></script>
    <script src="./上海农庄_上海农家乐_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农庄_农家乐_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/core(1).php" charset="utf-8" type="text/javascript"></script>
   
        
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
