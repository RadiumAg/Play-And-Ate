<%@ Page Title="" Language="C#" MasterPageFile="~/Shared/Main.Master" AutoEventWireup="true" CodeBehind="Ecological.aspx.cs" Inherits="Play_And_Ate.Products.Ecological" %>

 <asp:Content ID="Content1" ContentPlaceHolderID="Style" runat="server"> <link rel="Shortcut Icon" href="http://www.01nz.com.cn/app/Tpl/fanwe/images/logo.ico" />
    <!--地址栏和标签上显示图标-->
    <link rel="Bookmark" href="http://www.01nz.com.cn/app/Tpl/fanwe/images/logo.ico" />
    <!--收藏夹显示图标-->
    <link rel="stylesheet" type="text/css" href="../Content/Products/cf62177493ce4db40c22962f60d846f8.css" />
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
    <div class="wraps">
        <div style="display: none">
            <div class="blank"></div>
            <div class="site_nav clearfix wraps">
                <div class="f_l">
                    <a href="http://www.01nz.com.cn/" class="huise">首页</a>
                    - <a href="http://www.01nz.com.cn/store" class="huise">农庄预定</a>
                </div>
            </div>
        </div>


        <script type="text/javascript" src="../Scripts/Products/lang.js"></script>
        <script type="text/javascript">
            var APP_ROOT = '';
            var CART_URL = '/cart';
            var CART_CHECK_URL = '/cart-check';
            var LOADER_IMG = 'http://www.01nz.com.cn/app/Tpl/fanwe/images/lazy_loading.gif';
            var ERROR_IMG = 'http://www.01nz.com.cn/app/Tpl/fanwe/images/image_err.gif';
        </script>



        <script type="text/javascript">
            var is_order_show = false;
        </script>
        <script type="text/javascript" src="../Scripts/Products/ca3e4166f3f1cd8619807edc574f075c.js"></script>
        <link rel="stylesheet" type="text/css" href="../Content/Products/6405f1b57f28bc36716e3be90105a5cb.css" />
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
                                    <div class="city_gd"><a href="http://www.01nz.com.cn/city">更多</a></div>
                                </div>
                            </dd>
                        </dl>
                    </div>
                </li>
            </ul>
        </div>
        <div class="in_center">
            <%--//左边栏--%>
            <div class="stort_left f_l">
                <div class="store_zhti">
                    <div class="blank"></div>
                    <div class="shty_zht">生态园主题</div>
                    <div class="zhuti f_l">
                        <a href="http://www.01nz.com.cn/biotopeing/zht-yangzhi" title="养殖园" target="_blank">
                            <img src="../Images/Products/styyangzhi.png" alt="养殖园" />
                            <p>养殖园</p>
                        </a>
                    </div>
                    <div class="zhuti f_l">
                        <a href="http://www.01nz.com.cn/biotopeing/zht-caizhai" title="采摘园" target="_blank">
                            <img src="../Images/Products/stycaizhai.png" alt="采摘园" />
                            <p>采摘园</p>
                        </a>
                    </div>
                    <div class="zhuti f_l">
                        <a href="http://www.01nz.com.cn/biotopeing/zht-guanguang" title="观光园" target="_blank">
                            <img src="../Images/Products/styguanguang.png" alt="观光园" />
                            <p>观光园</p>
                        </a>
                    </div>
                    <div class="blank"></div>
                    <div class="shty_zht">区域分布</div>
                    <div class="neirong_city f_l">
                        <a class="rmhong" href="http://www.01nz.com.cn/biotopeing/cs-3" title="北京" target="_blank">北京					</a>
                        <a class="rmhong" href="http://www.01nz.com.cn/biotopeing/cs-2" title="上海" target="_blank">上海					</a>
                        <a href="http://www.01nz.com.cn/biotopeing/cs-20" title="广州" target="_blank">广州					</a>
                        <a href="http://www.01nz.com.cn/biotopeing/cs-21" title="深圳" target="_blank">深圳					</a>
                        <a class="rmhong" href="http://www.01nz.com.cn/biotopeing/cs-22" title="天津" target="_blank">天津					</a>
                        <a class="rmhong" href="http://www.01nz.com.cn/biotopeing/cs-23" title="南京" target="_blank">南京					</a>
                        <a href="http://www.01nz.com.cn/biotopeing/cs-24" title="武汉" target="_blank">武汉					</a>
                        <a href="http://www.01nz.com.cn/biotopeing/cs-26" title="西安" target="_blank">西安					</a>
                        <a href="http://www.01nz.com.cn/biotopeing/cs-27" title="成都" target="_blank">成都					</a>
                        <a href="http://www.01nz.com.cn/biotopeing/cs-28" title="重庆" target="_blank">重庆					</a>
                        <a class="rmhong" href="http://www.01nz.com.cn/biotopeing/cs-29" title="杭州" target="_blank">杭州					</a>
                        <a href="http://www.01nz.com.cn/biotopeing/cs-30" title="青岛" target="_blank">青岛					</a>
                        <a href="http://www.01nz.com.cn/biotopeing/cs-31" title="大连" target="_blank">大连					</a>
                        <a href="http://www.01nz.com.cn/biotopeing/cs-32" title="宁波" target="_blank">宁波					</a>
                        <a href="http://www.01nz.com.cn/biotopeing/cs-38" title="长沙" target="_blank">长沙					</a>
                        <a class="rmhong" href="http://www.01nz.com.cn/biotopeing/cs-42" title="苏州" target="_blank">苏州					</a>
                        <a href="http://www.01nz.com.cn/biotopeing/cs-43" title="无锡" target="_blank">无锡					</a>
                        <a href="http://www.01nz.com.cn/biotopeing/cs-66" title="绍兴" target="_blank">绍兴					</a>
                        <a href="http://www.01nz.com.cn/biotopeing/cs-89" title="湖州" target="_blank">湖州					</a>
                        <a href="http://www.01nz.com.cn/biotopeing/cs-90" title="嘉兴" target="_blank">嘉兴					</a>
                        <a href="http://www.01nz.com.cn/biotopeing/cs-91" title="金华" target="_blank">金华					</a>
                        <a href="http://www.01nz.com.cn/biotopeing/cs-93" title="镇江" target="_blank">镇江					</a>
                        <a href="http://www.01nz.com.cn/biotopeing/cs-143" title="丽水" target="_blank">丽水					</a>
                        <a href="http://www.01nz.com.cn/biotopeing/cs-160" title="遵义" target="_blank">遵义					</a>
                        <a href="http://www.01nz.com.cn/biotopeing/cs-215" title="舟山" target="_blank">舟山					</a>
                    </div>
                    <div class="blank"></div>
                </div>
                <div class="blank"></div>
                <div class="xfzbaozhang">
                    <div class="blank"></div>
                    <div class="jinbei f_l"></div>
                    <div class="baozhang_tit f_l">消费保障</div>
                    <div class="hgh_4 clear"></div>
                    <div class="baozhang_jsh">第一农庄网在线预定的商家均签署诚信协议，如果商家未能履行预定服务，我们将先行赔付，以保障消费者协议权益。</div>
                    <div class="blank"></div>
                    <div class="blank"></div>

                    <div class="jiage f_l"></div>
                    <div class="baozhang_tit f_l">价格保障</div>
                    <div class="hgh_4 clear"></div>
                    <div class="baozhang_jsh">如果您通过 www.01nz.com.cn 在线完成预订后，于 24 小时内发现其他网站同一内容的相同产品提供更低价格，您可在这一更低产品的基础上享受额外九折优惠。</div>
                    <div class="blank"></div>
                    <div class="blank"></div>

                </div>
                <div class="blank"></div>
                <div class="xfzbaozhang">
                    <div class="dianhua">
                        <div class="dianhua_xq">400-021-3158</div>
                        <div class="hgh_4"></div>
                        <div class="fuwushijian">周一到周日：9:00-18:00</div>
                        <div class="blank"></div>
                    </div>
                    <div class="copyright">
                        <div class="blank"></div>
                    </div>
                    <script type="text/javascript">
                        $(document).ready(function () {
                            $("#QQkf a:eq(0)").html('<img alt="QQ客服咨询预订" src="http://www.01nz.com.cn/app/Tpl/fanwe/images/ydzx.png">');
                            $("#QQkf a:eq(1)").html('<img alt="QQ客服团队业务" src="http://www.01nz.com.cn/app/Tpl/fanwe/images/ttyw.png">');
                            $("#QQkf a:eq(2)").html('<img alt="QQ客服售后服务" src="http://www.01nz.com.cn/app/Tpl/fanwe/images/shfw.png">');
                            $("#QQkf a:eq(3)").html('<img alt="QQ客服商家入驻" src="http://www.01nz.com.cn/app/Tpl/fanwe/images/sjrz.png">');
                        });
                    </script>
                    <div align="center" class="fengehuix"></div>
                    <div class="fankui">
                        <div class="yjfankui">意见反馈</div>
                        <div class="hgh_4"></div>
                        <div class="yjfankui_nr">欢迎您提出宝贵的建议和意见，我们会仔细阅读，您的支持是对我们最大鼓励和帮助！</div>
                        <div class="blank"></div>
                        <div class="blank"></div>
                    </div>
                </div>
                <div class="blank"></div>
                <div class="blank"></div>
                <div class="blank"></div>
                <adv adv_id="生态园二级页左侧广告位1">
			<div class="blank"></div>
	    	<adv adv_id="生态园二级页左侧广告位2">
		</adv></adv>
            </div>
            <%--右边栏--%>
            <div class="store_middle f_r">
                <div id="main_adv_box" class="main_adv_box f_l">
                    <div id="main_adv_img" class="main_adv_img">
                        <img src="../Images/Products/53b2627c351dc.jpg" alt="" border="0" height="306" width="758" />
                        <img src="../Images/Products/53b26301f41be.jpg" alt="" border="0" height="306" width="758" />
                        <adv adv_id="生态园页广告位3">
				<img src="../Images/Products/53b2646fc3b99.jpg" alt="" border="0" height="306" width="758" />				
			  </adv>
                    </div>
                    <div id="content">
                        <div id="main f_l" class="mains">
                            <div id="container">
                                <div class="flexslider">
                                    <ul class="slides" id="stodes">
                                        <li style="width: 100%; float: left; margin-right: -100%; display: none;">
                                            <a href="Ecological/2.html" target="_blank">
                                                <img src="../Images/Products/53b2627c351dc.jpg" alt="" border="0" height="306" width="758" /></a>
                                        </li>
                                        <li style="width: 100%; float: left; margin-right: -100%; display: list-item;">
                                            <a href="Ecological/1.html" target="_blank">
                                                <img src="../Images/Products/53b21abd4c7e4_270x165.jpg" alt="" border="0" height="306" width="758" /></a>
                                        </li>
                                        <li style="width: 100%; float: left; margin-right: -100%;">
                                            <a href="Ecological/2.html" target="_blank">
                                                <img src="../Images/Products/53b2627c351dc.jpg" alt="" border="0" height="306" width="758" /></a>
                                        </li>
                                        <li style="width: 100%; float: left; margin-right: -100%;">
                                            <a href="Ecological/1.html" target="_blank">
                                                <img src="../Images/Products/53b21abd4c7e4_270x165.jpg" alt="" border="0" height="306" width="758" /></a>
                                        </li>
                                    </ul>
                                    <ol class="flex-control-nav">
                                        <li class="p9">申隆生态园</li>
                                        <li class="p9 active">高家庄生态园</li>
                                        <li class="p9">申隆生态园</li>
                                        <li class="p9">高家庄生态园</li>
                                    </ol>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="hg_25 clear"></div>
                <div class="store_xianjin">
                    <div class="shty_title">欢乐周末</div>
                    <div class="shty_con">
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
                <div class="hg_25 both"></div>
                <div class="store_shengtaiyuan">
                    <div class="shty_top">
                        <div class="title">热门生态园</div>
                    </div>
                    <div class="shty_vip">
                        <div class="shty_fenge f_r shty_sj">
                            <div class="shty_lb_img f_l"><a href="Ecological/1.html" target="_blank">
                                <img src="../Images/Products/53b21abd4c7e4_270x165.jpg" alt="高家庄生态园" width="270" height="165" /></a></div>
                            <div class="shty_lb_txt f_l">
                                <div class="shty_tit"><a href="Ecological/1.html" target="_blank">高家庄生态园</a></div>
                                <div class="shty_pingxing">
                                    <span class="city_area lv">[ 上海 • 崇明 ]</span>
                                    <span class="lv shty_tjzs">推荐指数：
                                    </span>
                                    <span class="shty_xing m_avg_point_5"></span>
                                </div>
                                <div class="shty_jianjie">
                                    上海高家庄生态园（乡村俱乐部）地处崇明岛著名的景观道路—港西镇港东公路999号，占地面积1000亩，是一家集旅游、休闲、度假、餐饮、住宿、会务、娱乐、农业观光为一体的综合性生态休闲农庄。2009年被命名为3A级国家旅游景区，并先后荣获上海市旅游推荐单位、世博农业观光园等荣誉称号。 高家庄生态园（乡村俱乐部）极有品位的创意设计和最有情趣的特色景观，已被誉为高雅的景区、温馨的家园、美丽的田庄。					
                                </div>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="shty_fenge f_r shty_sj">
                            <div class="shty_lb_img f_l"><a href="Ecological/2.html" target="_blank">
                                <img src="../Images/Products/53b223dfb1dee_270x165.jpg" alt="申隆生态园" width="270" height="165"></a></div>
                            <div class="shty_lb_txt f_l">
                                <div class="shty_tit"><a href="Ecological/2.html" target="_blank">申隆生态园</a></div>
                                <div class="shty_pingxing">
                                    <span class="city_area lv">[ 上海 • 奉贤 ]</span>
                                    <span class="lv shty_tjzs">推荐指数：
                                    </span>
                                    <span class="shty_xing m_avg_point_5"></span>
                                </div>
                                <div class="shty_jianjie">
                                    进入申隆生态园犹如徜徉大自然，一个个葱绿的小岛好似镶嵌在大地上的绿色翡翠，拱桥、流水、小岛、绿湖，白色路面蜿蜒曲折，绿色岛屿坡回路转，好一个碧水环绕的由诸多小岛组成的近自然状态的森林公园。绿树掩映，林木叠翠；蓝天碧水，绿地青山。					
                                </div>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="shty_fenge f_r shty_sj">
                            <div class="shty_lb_img f_l"><a href="Ecological/1.html" target="_blank">
                                <img src="../Images/Products/53b21abd4c7e4_270x165.jpg" alt="高家庄生态园" width="270" height="165" /></a></div>
                            <div class="shty_lb_txt f_l">
                                <div class="shty_tit"><a href="Ecological/1.html" target="_blank">高家庄生态园</a></div>
                                <div class="shty_pingxing">
                                    <span class="city_area lv">[ 上海 • 崇明 ]</span>
                                    <span class="lv shty_tjzs">推荐指数：
                                    </span>
                                    <span class="shty_xing m_avg_point_5"></span>
                                </div>
                                <div class="shty_jianjie">
                                    上海高家庄生态园（乡村俱乐部）地处崇明岛著名的景观道路—港西镇港东公路999号，占地面积1000亩，是一家集旅游、休闲、度假、餐饮、住宿、会务、娱乐、农业观光为一体的综合性生态休闲农庄。2009年被命名为3A级国家旅游景区，并先后荣获上海市旅游推荐单位、世博农业观光园等荣誉称号。 高家庄生态园（乡村俱乐部）极有品位的创意设计和最有情趣的特色景观，已被誉为高雅的景区、温馨的家园、美丽的田庄。					
                                </div>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="shty_fenge f_r shty_sj">
                            <div class="shty_lb_img f_l"><a href="Ecological/2.html" target="_blank">
                                <img src="../Images/Products/53b223dfb1dee_270x165.jpg" alt="申隆生态园" width="270" height="165"></a></div>
                            <div class="shty_lb_txt f_l">
                                <div class="shty_tit"><a href="Ecological/2.html" target="_blank">申隆生态园</a></div>
                                <div class="shty_pingxing">
                                    <span class="city_area lv">[ 上海 • 奉贤 ]</span>
                                    <span class="lv shty_tjzs">推荐指数：
                                    </span>
                                    <span class="shty_xing m_avg_point_5"></span>
                                </div>
                                <div class="shty_jianjie">
                                    进入申隆生态园犹如徜徉大自然，一个个葱绿的小岛好似镶嵌在大地上的绿色翡翠，拱桥、流水、小岛、绿湖，白色路面蜿蜒曲折，绿色岛屿坡回路转，好一个碧水环绕的由诸多小岛组成的近自然状态的森林公园。绿树掩映，林木叠翠；蓝天碧水，绿地青山。					
                                </div>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="shty_fenge f_r shty_sj">
                            <div class="shty_lb_img f_l"><a href="Ecological/2.html" target="_blank">
                                <img src="../Images/Products/53b223dfb1dee_270x165.jpg" alt="申隆生态园" width="270" height="165"></a></div>
                            <div class="shty_lb_txt f_l">
                                <div class="shty_tit"><a href="Ecological/2.html" target="_blank">申隆生态园</a></div>
                                <div class="shty_pingxing">
                                    <span class="city_area lv">[ 上海 • 奉贤 ]</span>
                                    <span class="lv shty_tjzs">推荐指数：
                                    </span>
                                    <span class="shty_xing m_avg_point_5"></span>
                                </div>
                                <div class="shty_jianjie">
                                    进入申隆生态园犹如徜徉大自然，一个个葱绿的小岛好似镶嵌在大地上的绿色翡翠，拱桥、流水、小岛、绿湖，白色路面蜿蜒曲折，绿色岛屿坡回路转，好一个碧水环绕的由诸多小岛组成的近自然状态的森林公园。绿树掩映，林木叠翠；蓝天碧水，绿地青山。					
                                </div>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="clear"></div>
                    </div>
                </div>
                <div class="hg_25 both"></div>
            </div>
            <div class="blank"></div>
            <div class="hg_25 clear"></div>
            <!-- 改版 -->
        </div>
        <div class="blank"></div>
        <script src="../Scripts/Products/z_stat.php" ></script>
        <script src="../Scripts/Products/core.php" charset="utf-8" type="text/javascript"></script> 
        <script src="../Scripts/Products/c.js"></script>
        <script src="../Scripts/Products/tongji_360.php" charset="gb2312"></script>
        <script src="../Scripts/Products/core(1).php" charset="utf-8" type="text/javascript"></script>
        <a href="https://quanjing.cnzz.com/" target="_blank" title="全景统计">
    </div>
    </asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
