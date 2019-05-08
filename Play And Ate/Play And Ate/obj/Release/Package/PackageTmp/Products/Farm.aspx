<%@ Page Title="" Language="C#" MasterPageFile="~/Shared/Main.Master" AutoEventWireup="true" CodeBehind="Farm.aspx.cs" Inherits="Play_And_Ate.Products.Farm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Style" runat="server"> <link rel="Shortcut Icon" href="http://sh.01nz.com.cn/app/Tpl/fanwe/images/logo.ico" />
    <!--地址栏和标签上显示图标-->
    <link rel="Bookmark" href="http://sh.01nz.com.cn/app/Tpl/fanwe/images/logo.ico" />
    <!--收藏夹显示图标-->
    <link href="../Content/Products/cf62177493ce4db40c22962f60d846f8.css" rel="stylesheet" />
    <script type="text/javascript" src="../Scripts/Products/908ca0ab9e4d27144b60bc878b237327.js" charset="utf-8"></script>
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
                            <dt class="csqh" id="sc_1"><span class="spa">您现在 </span>上海&nbsp;&nbsp;&nbsp;<span class="spa2">更换城市</span></dt>
                            <dd class="sub_fenlei nz_city_lb">
                                <div class="chshqh">
                                    <dl class="chengshi">
                                        <dt class="quyu f_l">华北</dt>
                                        <dd class="cs_dd f_l">
                                            <a href="http://bj.01nz.com.cn/">北京</a>
                                            <a href="http://tj.01nz.com.cn/">天津</a>
                                        </dd>
                                    </dl>
                                    <div class="blank1"></div>
                                    <div class="blank1"></div>
                                    <div class="blank1"></div>
                                    <dl class="chengshi both">
                                        <dt class=" quyu f_l">东北</dt>
                                        <dd class=" cs_dd f_l">
                                            <a href="http://sy.01nz.com.cn/">沈阳</a>
                                            <a href="http://dl.01nz.com.cn/">大连</a>
                                        </dd>
                                    </dl>
                                    <div class="blank1"></div>
                                    <div class="blank1"></div>
                                    <div class="blank1"></div>
                                    <dl class="chengshi both">
                                        <dt class="quyu f_l">华东</dt>
                                        <dd class=" cs_dd f_l">
                                            <a href="http://sh.01nz.com.cn/">上海</a>
                                            <a href="http://nj.01nz.com.cn/">南京</a>
                                            <a href="http://hz.01nz.com.cn/">杭州</a>
                                            <a href="http://qingdao.01nz.com.cn/">青岛</a>
                                            <a href="http://nb.01nz.com.cn/">宁波</a>
                                            <a href="http://jn.01nz.com.cn/">济南</a>
                                            <a href="http://suzhou.01nz.com.cn/">苏州</a>
                                            <a href="http://wx.01nz.com.cn/">无锡</a>
                                            <a href="http://hf.01nz.com.cn/">合肥</a>
                                            <a href="http://wf.01nz.com.cn/">潍坊</a>
                                            <a href="http://shaoxing.01nz.com.cn/">绍兴</a>
                                            <a href="http://huzhou.01nz.com.cn/">湖州</a>
                                            <a href="http://jx.01nz.com.cn/">嘉兴</a>
                                            <a href="http://jh.01nz.com.cn/">金华</a>
                                            <a href="http://zhenjiang.01nz.com.cn/">镇江</a>
                                            <a href="http://yangzhou.01nz.com.cn/">扬州</a>
                                            <a href="http://rz.01nz.com.cn/">日照</a>
                                            <a href="http://lishui.01nz.com.cn/">丽水</a>
                                            <a href="http://quzhou.01nz.com.cn/">衢州</a>
                                            <a href="http://xuancheng.01nz.com.cn/">宣城</a>
                                            <a href="http://hs.01nz.com.cn/">黄山</a>
                                            <a href="http://sr.01nz.com.cn/">上饶</a>
                                            <a href="http://zhoushan.01nz.com.cn/">舟山</a>
                                        </dd>
                                    </dl>
                                    <div class="blank1"></div>
                                    <div class="blank1"></div>
                                    <div class="blank1"></div>
                                    <dl class="chengshi both">
                                        <dt class="quyu f_l">中南</dt>
                                        <dd class=" cs_dd f_l">
                                            <a href="http://gz.01nz.com.cn/">广州</a>
                                            <a href="http://sz.01nz.com.cn/">深圳</a>
                                            <a href="http://wh.01nz.com.cn/">武汉</a>
                                            <a href="http://cs.01nz.com.cn/">长沙</a>
                                            <a href="http://nn.01nz.com.cn/">南宁</a>
                                            <a href="http://sanya.01nz.com.cn/">三亚</a>
                                        </dd>
                                    </dl>
                                    <div class="blank1"></div>
                                    <div class="blank1"></div>
                                    <div class="blank1"></div>
                                    <dl class="chengshi both">
                                        <dt class="quyu f_l">西南</dt>
                                        <dd class="cs_dd f_l">
                                            <a href="http://cd.01nz.com.cn/">成都</a>
                                            <a href="http://cq.01nz.com.cn/">重庆</a>
                                            <a href="http://km.01nz.com.cn/">昆明</a>
                                            <a href="http://zy.01nz.com.cn/">遵义</a>
                                        </dd>
                                    </dl>
                                    <div class="blank1"></div>
                                    <div class="blank1"></div>
                                    <div class="blank1"></div>
                                    <dl class="chengshi both">
                                        <dt class="quyu f_l">西北</dt>
                                        <dd class="cs_dd f_l">
                                            <a href="http://xa.01nz.com.cn/">西安</a>
                                        </dd>
                                    </dl>
                                    <div class="blank1"></div>
                                    <div class="blank1"></div>
                                    <div class="blank1"></div>
                                    <div class="city_gd"><a href="http://sh.01nz.com.cn/city">更多</a></div>
                                </div>
                            </dd>
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
                        <a href="http://sh.01nz.com.cn/farmlist/zht-xiuxian" title="休闲观光" target="_blank">
                            <img src="../Images/Products/537304a8395ef.jpg" alt="休闲观光">
                            <p>休闲观光</p>
                        </a>
                    </div>
                    <div class="zhuti f_l">
                        <a href="http://sh.01nz.com.cn/farmlist/zht-dujiacun" title="度假村" target="_blank">
                            <img src="../Images/Products/5373040ac02d7.jpg" alt="度假村">
                            <p>度假村</p>
                        </a>
                    </div>
                    <div class="zhuti f_l">
                        <a href="http://sh.01nz.com.cn/farmlist/zht-wenquan" title="温泉农庄" target="_blank">
                            <img src="../Images/Products/5373031b06d21.jpg" alt="温泉农庄">
                            <p>温泉农庄</p>
                        </a>
                    </div>
                    <div class="zhuti f_l">
                        <a href="http://sh.01nz.com.cn/farmlist/zht-kepu" title="科普基地" target="_blank">
                            <img src="../Images/Products/537305412576c.jpg" alt="科普基地">
                            <p>科普基地</p>
                        </a>
                    </div>
                    <div class="zhuti f_l">
                        <a href="http://sh.01nz.com.cn/farmlist/zht-tuozhan" title="拓展培训" target="_blank">
                            <img src="../Images/Products/53730553ce7f6.jpg" alt="拓展培训">
                            <p>拓展培训</p>
                        </a>
                    </div>
                    <div class="zhuti f_l">
                        <a href="http://sh.01nz.com.cn/farmlist/zht-shengtai" title="生态农庄" target="_blank">
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
                        <a href="http://bj.01nz.com.cn/farmlist" class="rmhong" target="_blank">北京</a>
                        <a href="http://sh.01nz.com.cn/farmlist" class="rmhong" target="_blank">上海</a>
                        <a href="http://gz.01nz.com.cn/farmlist" target="_blank">广州</a>
                        <a href="http://sz.01nz.com.cn/farmlist" target="_blank">深圳</a>
                        <a href="http://tj.01nz.com.cn/farmlist" class="rmhong" target="_blank">天津</a>
                        <a href="http://nj.01nz.com.cn/farmlist" class="rmhong" target="_blank">南京</a>
                        <a href="http://wh.01nz.com.cn/farmlist" target="_blank">武汉</a>
                        <a href="http://sy.01nz.com.cn/farmlist" target="_blank">沈阳</a>
                        <a href="http://xa.01nz.com.cn/farmlist" target="_blank">西安</a>
                        <a href="http://cd.01nz.com.cn/farmlist" target="_blank">成都</a>
                        <a href="http://cq.01nz.com.cn/farmlist" target="_blank">重庆</a>
                        <a href="http://hz.01nz.com.cn/farmlist" class="rmhong" target="_blank">杭州</a>
                        <a href="http://qingdao.01nz.com.cn/farmlist" target="_blank">青岛</a>
                        <a href="http://dl.01nz.com.cn/farmlist" target="_blank">大连</a>
                        <a href="http://nb.01nz.com.cn/farmlist" target="_blank">宁波</a>
                        <a href="http://jn.01nz.com.cn/farmlist" class="rmhong" target="_blank">济南</a>
                        <a href="http://cs.01nz.com.cn/farmlist" target="_blank">长沙</a>
                        <a href="http://km.01nz.com.cn/farmlist" target="_blank">昆明</a>
                        <a href="http://suzhou.01nz.com.cn/farmlist" class="rmhong" target="_blank">苏州</a>
                        <a href="http://wx.01nz.com.cn/farmlist" target="_blank">无锡</a>
                        <a href="http://nn.01nz.com.cn/farmlist" target="_blank">南宁</a>
                        <a href="http://hf.01nz.com.cn/farmlist" target="_blank">合肥</a>
                        <a href="http://wf.01nz.com.cn/farmlist" target="_blank">潍坊</a>
                        <a href="http://shaoxing.01nz.com.cn/farmlist" target="_blank">绍兴</a>
                        <a href="http://huzhou.01nz.com.cn/farmlist" target="_blank">湖州</a>
                        <a href="http://jx.01nz.com.cn/farmlist" target="_blank">嘉兴</a>
                        <a href="http://jh.01nz.com.cn/farmlist" target="_blank">金华</a>
                        <a href="http://zhenjiang.01nz.com.cn/farmlist" target="_blank">镇江</a>
                        <a href="http://yangzhou.01nz.com.cn/farmlist" target="_blank">扬州</a>
                        <a href="http://rz.01nz.com.cn/farmlist" target="_blank">日照</a>
                        <a href="http://lishui.01nz.com.cn/farmlist" target="_blank">丽水</a>
                        <a href="http://quzhou.01nz.com.cn/farmlist" target="_blank">衢州</a>
                        <a href="http://zy.01nz.com.cn/farmlist" target="_blank">遵义</a>
                        <a href="http://sanya.01nz.com.cn/farmlist" target="_blank">三亚</a>
                        <a href="http://xuancheng.01nz.com.cn/farmlist" target="_blank">宣城</a>
                        <a href="http://hs.01nz.com.cn/farmlist" target="_blank">黄山</a>
                        <a href="http://sr.01nz.com.cn/farmlist" target="_blank">上饶</a>
                        <a href="http://zhoushan.01nz.com.cn/farmlist" target="_blank">舟山</a>
                    </div>
                    <div class="blank"></div>
                </div>
                <div class="blank"></div>
                <div class="store_xiangmu">
                    <div class="title_nz"><span class="bz f_l"></span>游玩项目</div>
                    <div class="neirong">
                        <a href="http://sh.01nz.com.cn/farmlist/-aid-0-tid-87-qid-0-cid-49-deal_type-0" target="_blank">骑马</a>
                        <a href="http://sh.01nz.com.cn/farmlist/-aid-0-tid-89-qid-0-cid-49-deal_type-0" target="_blank">漂流</a>
                        <a href="http://sh.01nz.com.cn/farmlist/-aid-0-tid-91-qid-0-cid-49-deal_type-0" target="_blank">真人CS</a>
                        <a href="http://sh.01nz.com.cn/farmlist/-aid-0-tid-100-qid-0-cid-49-deal_type-0" target="_blank">游泳</a>
                        <a href="http://sh.01nz.com.cn/farmlist/-aid-0-tid-101-qid-0-cid-49-deal_type-0" target="_blank">健身房</a>
                        <a href="http://sh.01nz.com.cn/farmlist/-aid-0-tid-109-qid-0-cid-49-deal_type-0" target="_blank">篝火</a>
                        <a href="http://sh.01nz.com.cn/farmlist/-aid-0-tid-110-qid-0-cid-49-deal_type-0" target="_blank">卡拉OK</a>
                        <a href="http://sh.01nz.com.cn/farmlist/-aid-0-tid-112-qid-0-cid-49-deal_type-0" target="_blank">棋牌</a>
                        <a href="http://sh.01nz.com.cn/farmlist/-aid-0-tid-113-qid-0-cid-49-deal_type-0" target="_blank">DIY</a>
                        <a href="http://sh.01nz.com.cn/farmlist/-aid-0-tid-114-qid-0-cid-49-deal_type-0" target="_blank">烧烤</a>
                        <a href="http://sh.01nz.com.cn/farmlist/-aid-0-tid-116-qid-0-cid-49-deal_type-0" target="_blank">垂钓</a>
                    </div>
                </div>
                <div class="blank"></div>
                <a href="http://sh.01nz.com.cn/farm/94.html" target="_blank">
                    <img src="./上海农庄_上海农家乐_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农庄_农家乐_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/5375bb6c9f36e.jpg" title="上海都市菜园" alt="上海都市菜园" border="0"></a>
                <div class="blank"></div>
                <div class="store_xiangmu">
                    <div class="title_nz"><span class="zx f_l"></span>优惠：</div>
                    <div class="neirong">
                        <a href="http://sh.01nz.com.cn/goods/438.html" target="_blank">（五只公蟹，五只母蟹）：公蟹 5.0-5.3 两/…</a>
                        <div class="nongzhuang_yhxian"></div>
                        <a href="http://sh.01nz.com.cn/goods/443.html" target="_blank">烤全羊</a>
                        <div class="nongzhuang_yhxian"></div>
                        <a href="http://sh.01nz.com.cn/goods/247.html" target="_blank">仅售588元的价值2266元的东方威尼斯双人行/亲…</a>
                        <div class="nongzhuang_yhxian"></div>
                        <a href="http://sh.01nz.com.cn/goods/213.html" target="_blank">【梦微草堂】仅售138元的价值439元的农家乐自由…</a>
                        <div class="nongzhuang_yhxian"></div>
                        <a href="http://sh.01nz.com.cn/goods/243.html" target="_blank">仅售35元的价值45元的上海都市菜园门票一张</a>
                        <div class="nongzhuang_yhxian"></div>
                        <div class="blank"></div>
                    </div>
                </div>
                <div class="blank"></div>
                <a href="http://sh.01nz.com.cn/farm/985.html" target="_blank">
                    <img src="./上海农庄_上海农家乐_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农庄_农家乐_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/5375bc10b7da9.jpg" title="上海强丰生态农庄" alt="上海强丰生态农庄" border="0"></a>
                <div class="blank"></div>

                <div class="store_xiangmu">
                    <div class="title_nz"><span class="jr f_l"></span>今日推荐：</div>
                    <div class="neirong">
                        <p>
                            <a href="http://sh.01nz.com.cn/farm/1102.html" target="_blank">涵轩农庄&nbsp;特色: 环境都不错</a>
                        </p>

                        <p>
                            <a href="http://sh.01nz.com.cn/farm/1097.html" target="_blank">庄吕农庄&nbsp;特色: 打打牌、钓钓…</a>
                        </p>

                        <p>
                            <a href="http://sh.01nz.com.cn/farm/1100.html" target="_blank">忠忠生态农庄&nbsp;特色: 配套设施很齐…</a>
                        </p>

                        <p>
                            <a href="http://sh.01nz.com.cn/farm/1103.html" target="_blank">欣明农庄&nbsp;特色: 大气，实惠，…</a>
                        </p>

                        <p>
                            <a href="http://sh.01nz.com.cn/farm/1104.html" target="_blank">蛙稻米农庄&nbsp;特色: 科技、休闲和…</a>
                        </p>

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
                <div class="store_xianjin">
                    <div class="xjtore_top">
                        <div class="title">推荐</div>
                        <ul class="down_store" id="index_purpose">
                            <li class="p_2 mr_tj"><a href="javascript:void(0);" onclick="load_farm_store(2)">上海</a></li>
                            <li class="p_3"><a href="javascript:void(0);" onclick="load_farm_store(3)">北京</a></li>
                            <li class="p_22"><a href="javascript:void(0);" onclick="load_farm_store(22)">天津</a></li>
                            <li class="p_23"><a href="javascript:void(0);" onclick="load_farm_store(23)">南京</a></li>
                            <li class="p_29"><a href="javascript:void(0);" onclick="load_farm_store(29)">杭州</a></li>
                            <li class="p_33"><a href="javascript:void(0);" onclick="load_farm_store(33)">济南</a></li>
                            <li class="p_42"><a href="javascript:void(0);" onclick="load_farm_store(42)">苏州</a></li>
                        </ul>
                        <div class="gengduo f_r" id="chengshi_gengduo"><a href="http://sh.01nz.com.cn/farmlist" target="_blank">更多&gt;&gt;</a></div>
                        <div class="clear"></div>
                    </div>
                    <div class="xjtore_con" id="ajax_farm_store">
                         <asp:Repeater runat="server" ID="ReTuiJ">
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
                        <div class="gengduo f_r" id="zhuti_gengduo"><a href="http://sh.01nz.com.cn/farmlist/zht-wenquan" target="_blank">更多&gt;&gt;</a></div>
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
                        <div class="gengduo f_r"><a href="http://sh.01nz.com.cn/farmlist/zht-caizhai" target="_blank">更多&gt;&gt;</a></div>
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
    <a href="https://quanjing.cnzz.com/" target="_blank" title="全景统计">
        <img border="0" hspace="0" vspace="0" src="./上海农庄_上海农家乐_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农庄_农家乐_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/2.gif">
    </a> </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
