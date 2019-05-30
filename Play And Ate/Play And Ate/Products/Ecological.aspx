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
        <%--在线聊天客服--%>
    <a id="ibangkf" href="http://www.ibangkf.com">在线客服系统 </a>
<script>
(function() {
    var st = document.createElement("script");
    st.src = "http://c.ibangkf.com/i/c-fancy-0224.js";
    var s = document.getElementsByTagName("script")[0];
    s.parentNode.insertBefore(st, s);
})();
</script>

    <div class="wraps">
        <script type="text/javascript" src="../Scripts/Products/lang.js"></script>
        
        <script type="text/javascript">
            var is_order_show = false;
        </script>
        <script type="text/javascript" src="../Scripts/Products/ca3e4166f3f1cd8619807edc574f075c.js"></script>
        <link rel="stylesheet" type="text/css" href="../Content/Products/6405f1b57f28bc36716e3be90105a5cb.css" />
        <div class="wrap">
            <ul class="main_nav">
                <li class="all_class nz_jsfudong ">
                    <div class="class_con" style="height: 45px; width: 219px; background-color:#f18e47;">
                        
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
                        <a href="#" title="养殖园" target="_blank">
                            <img src="../Images/Products/styyangzhi.png" alt="养殖园" />
                            <p>养殖园</p>
                        </a>
                    </div>
                    <div class="zhuti f_l">
                        <a href="#" title="采摘园" target="_blank">
                            <img src="../Images/Products/stycaizhai.png" alt="采摘园" />
                            <p>采摘园</p>
                        </a>
                    </div>
                    <div class="zhuti f_l">
                        <a href="#" title="观光园" target="_blank">
                            <img src="../Images/Products/styguanguang.png" alt="观光园" />
                            <p>观光园</p>
                        </a>
                    </div>
                    <div class="blank"></div>
                    <div class="shty_zht">区域分布</div>
                    <div class="neirong_city f_l">
                        <asp:Repeater runat="server" ID="RPcity">
                            <ItemTemplate>
                                <a class="rmhong" href="#" title="<%# Eval("AreaName") %>" target="_blank"><%# Eval("AreaName") %></a>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                    <div class="blank"></div>
                </div>
                <div class="blank"></div>
                <div class="xfzbaozhang">
                    <div class="blank"></div>
                    <div class="jinbei f_l"></div>
                    <div class="baozhang_tit f_l">消费保障</div>
                    <div class="hgh_4 clear"></div>
                    <div class="baozhang_jsh">Play And Ate在线预定的商家均签署诚信协议,保障你的消费。</div>
                    <div class="blank"></div>
                    <div class="blank"></div>
                </div>
                <div class="blank"></div>
                <div class="xfzbaozhang">
                    <div class="dianhua">
                        <div class="dianhua_xq">QQ：2637304079</div>
                        <div class="hgh_4"></div>
                        <div class="fuwushijian">周一到周五：9:00-18:00</div>
                        <div class="blank"></div>
                    </div>
                    <div class="copyright">
                        <div class="blank"></div>
                    </div>
                    <div class="fengehuix"></div>
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
                                        <li class="p9 ">高家庄生态园</li>
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
                        <asp:Repeater runat="server" ID="RPshengtaiyuan">
                            <ItemTemplate>
                                <div class="shty_fenge f_r shty_sj">
                                <div class="shty_lb_img f_l"><a href="Ecological/1.html" target="_blank">
                                    <img src="../Images/Home/<%# Eval("Image") %>" alt="" width="270" height="165" /></a></div>
                                <div class="shty_lb_txt f_l">
                                    <div class="shty_tit"><a href="Ecological/1.html" target="_blank"><%# Eval("ProductName") %></a></div>
                                    <div class="shty_pingxing">
                                        <span class="city_area lv">[ <%# Eval("AreaName") %> ]</span>
                                        <span class="lv shty_tjzs">推荐指数：
                                        </span>
                                        <span class="shty_xing m_avg_point_5"></span>
                                    </div>
                                    <div class="shty_jianjie">
                                        <%# Eval("DetailIntroduction") %>
                                   </div>
                            </div>
                            <div class="clear"></div>
                        </div>
                            </ItemTemplate>
                        </asp:Repeater>
                        
                        <div class="clear"></div>
                    </div>
                </div>
                <div class="hg_25 both"></div>
            </div>
            <div class="blank"></div>
            <div class="hg_25 clear"></div>
        </div>
        <div class="blank"></div>
          <div id="gotop"></div>
        <script src="../Scripts/Products/z_stat.php" ></script>
        <script src="../Scripts/Products/core.php" charset="utf-8" type="text/javascript"></script> 
        <script src="../Scripts/Products/c.js"></script>
        <script src="../Scripts/Products/tongji_360.php" charset="gb2312"></script>
        <script src="../Scripts/Products/core(1).php" charset="utf-8" type="text/javascript"></script>
    </div>
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
