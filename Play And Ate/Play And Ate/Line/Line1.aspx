<%@ Page Title="" Language="C#" MasterPageFile="~/Shared/Main.Master" AutoEventWireup="true" CodeBehind="Line1.aspx.cs" Inherits="Play_And_Ate.Line.Line1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Style" runat="server">
    <link href="../Content/Line/style.css" rel="stylesheet" />
    <link href="../Content/Line/search.css" rel="stylesheet" />
    <link href="../Content/Line/index.css" rel="stylesheet" />
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
     <div class="head1">
        <div class="clear"></div>
         <%--城市信息--%>
        <div style="width:1000px;">
            <div id="l_menus">
                <div class="chengshi_kuang menuPart">
                    <div class="part01left_top">
                        <div class="left_title">
                            <i></i><a target="_blank" href="../Line/LineDetail1.aspx?PPointType=跟团行">跟团行</a>
                        </div>
                        <ul>
                            <asp:Repeater ID="RPGentuanCity" runat="server">
                                <ItemTemplate>
                                    <li>
                                        <a href="../Line/LineDetail1.aspx?PPointType=跟团行&areaName=<%# Eval("AreaName") %>" title=""><%# Eval("AreaName") %></a>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                        <div style="clear:both"></div>
                    </div>
                    <div class="city_fege"> </div>
                    <div class="part01left_top" style="margin-top:10px;">
                        <div class="left_title">
                            <i></i><a target="_blank" href="../Line/LineDetail1.aspx?PPointType=自助行">自助行</a>
                        </div>
                        <ul>
                            <asp:Repeater ID="RPzizhuCity" runat="server">
                                <ItemTemplate>
                                    <li>
                                        <a href="../Line/LineDetail1.aspx?PPointType=自助行&areaName=<%# Eval("AreaName") %>" title=""><%# Eval("AreaName") %></a>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                    <div class="city_fege"> </div>
                    <div class="part01left_top" style="margin-top:10px;">
                        <div class="left_title">
                            <i></i><a target="_blank" href="../Line/LineDetail1.aspx?PPointType=自驾行">自驾行</a>
                        </div>
                        <ul>
                           <asp:Repeater ID="RPzijiaCity" runat="server">
                                <ItemTemplate>
                                    <li>
                                        <a href="../Line/LineDetail1.aspx?PPointType=自驾行&areaName=<%# Eval("AreaName") %>" title=""><%# Eval("AreaName") %></a>
                                    </li>
                                </ItemTemplate>
                            </asp:Repeater>
                        </ul>
                    </div>
                </div>
                <div class="clear"></div>
                <!-- 搜索../Scripts/Line -->

                <script src="../Scripts/Line/TN_hotel-min.js"></script>
                <script src="../Scripts/Line/TN_city_suggest2-min.js"></script>
                <script src="../Scripts/Line/TN_date-min.js"></script>
                <script src="../Scripts/Line/TN_city_pos.js"></script>
                <script>
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
                <script >_Check_index_Login();</script>
                <!--//特价路线-->
                <div class="col_side_o top10">
                    <div class="col_side_head">特价线路</div>
                    <ul class="show-hide">
                        <asp:Repeater ID="RPtejiaLine" runat="server">
                            <ItemTemplate>
                                <li class="">
                                    <div class="ynum"><%# this.RPtejiaLine.Items.Count+1 %>.</div>
                                    <a target="_blank" href="../Show/FarmDetails.aspx?productId=<%# Eval("ProductID") %>" class="pic_link" rel="nofollow"><img width="78" height="71" alt="" src='../Images/Home/<%# Eval("Image") %>' ></a>
                                    <div class="s_h_w2"><a target="_blank" href="../Show/FarmDetails.aspx?productId=<%# Eval("ProductID") %>"><%# Eval("ProductName") %></a><br><span class="ymargin"><span class="cgrey2"><div class="line_price" style="width:120px;">特价：<strong><%# Eval("ProductPrice").ToString().Split('.')[0] %></strong>起</div></span></span></div>
                                    <div class="clr"></div>
                                </li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                    <div class="clr"></div>
                </div>
                <!--//热卖线路-->
                <div class="col_side_o top10">
                    <div class="col_side_head">热卖线路</div>
                    <ul class="show-hide">
                        <asp:Repeater ID="RPremaiLine" runat="server">
                            <ItemTemplate>
                                <li class=""><div class="ynum"><%# this.RPremaiLine.Items.Count+1 %>.</div><a target="_blank" href="../Show/FarmDetails.aspx?productId=<%# Eval("ProductID") %>" class="pic_link" rel="nofollow"><img width="78" height="71" alt="" src='../Images/Home/<%# Eval("Image") %>' ></a><div class="s_h_w2"><a target="_blank" href="../Show/FarmDetails.aspx?productId=<%# Eval("ProductID") %>"><%# Eval("ProductName") %></a><br><span class="ymargin"><span class="cgrey2"><div class="line_price" style="width:120px;">特价：<strong><%# Eval("ProductPrice").ToString().Split('.')[0] %></strong>起</div></span></span></div><div class="clr"></div></li>
                            </ItemTemplate>
                        </asp:Repeater>
                    </ul>
                </div>
               
                <!-- section_r end -->


            </div>
            <!-- left -->
            <div class="m_menu left5">
                <div class="topbanner">
                    <div class="bannerimg" id="divimagebanner">
                        <a href="../Show/FarmDetails.aspx?productId=40" target="_blank" style="display: none;">
                            <!-- 大图片000 -->
                            <img src="../Images/Home/1.jpg" title="" width="770" height="317" border="0">
                        </a>
                        <a href="../Show/FarmDetails.aspx?productId=41" target="_blank" style="display: inline;">
                            <!-- 大图片000 -->
                            <img src="../Images/Home/2.jpg" title="" width="770" height="317" border="0">
                        </a>
                        <a href="../Show/FarmDetails.aspx?productId=42" target="_blank" style="display: none;">
                            <!-- 大图片000 -->
                            <img src="../Images/Home/3.jpg" title="" width="770" height="317" border="0">
                        </a>
                        <a href="../Show/FarmDetails.aspx?productId=43" target="_blank" style="display: none;">
                            <!-- 大图片000 -->
                            <img src="../Images/Home/4.jpg" title="" width="770" height="317" border="0">
                        </a>
                    </div>
                    <!--滚功图片-->
                    <div class="bannertext" id="divbanner">
                        <ul>
                            <li>
                                <a href="../Show/FarmDetails.aspx?productId=40" target="_blank" class="">
                                    快乐岛1
                                </a>
                            </li>
                            <li>
                                <a href="../Show/FarmDetails.aspx?productId=41" target="_blank" class="on">
                                    快乐岛11
                                </a>
                            </li>
                            <li>
                                <a href="../Show/FarmDetails.aspx?productId=42" target="_blank" class="">
                                    快乐岛111
                                </a>
                            </li>
                            <li>
                                <a href="../Show/FarmDetails.aspx?productId=43" target="_blank" class="">
                                    快乐岛1111
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
                    
                    <!-- 根据农家行进行特教推荐-->
                    <div id="gentuan" class="istore_con f_r">
                        <asp:Repeater ID="RPgent" runat="server">
                            <ItemTemplate>
                            <div class="s_info">
                             <a href="../Show/FarmDetails.aspx?productId=<%# Eval("ProductID") %>" target="_blank">
                                <img src="../Images/Home/<%# Eval("Image") %>" width="180" height="137" }"="" alt="<%# Eval("ProductName") %>">
                                <p class="jieshao"> </p>
                                <span class="jg f_l">￥<%# Eval("ProductPrice") %>起</span>
                            </a>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<p class="store_name"><a href="../Show/FarmDetails.aspx?productId=<%# Eval("ProductID") %>" target="_blank"><%# Eval("ProductName") %></a></p>
                        </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                    <div id="zizhu" class="istore_con f_r"  style="display:none" >
                        <asp:Repeater ID="RPziz" runat="server">
                            <ItemTemplate>
                            <div class="s_info">
                             <a href="../Show/FarmDetails.aspx?productId=<%# Eval("ProductID") %>" target="_blank">
                                <img src="../Images/Home/<%# Eval("Image") %>" width="180" height="137" }"="" alt="<%# Eval("ProductName") %>">
                                <p class="jieshao"> </p>
                                <span class="jg f_l">￥<%# Eval("ProductPrice") %>起</span>
                            </a>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<p class="store_name"><a href="../Show/FarmDetails.aspx?productId=<%# Eval("ProductID") %>" target="_blank"><%# Eval("ProductName") %></a></p>
                        </div>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                    <div id="zijia" class="istore_con f_r"  style="display:none" >
                        <asp:Repeater ID="RPzij" runat="server">
                            <ItemTemplate>
                            <div class="s_info">
                             <a href="../Show/FarmDetails.aspx?productId=<%# Eval("ProductID") %>" target="_blank">
                                <img src="../Images/Home/<%# Eval("Image") %>" width="180" height="137" }"="" alt="<%# Eval("ProductName") %>">
                                <p class="jieshao"> </p>
                                <span class="jg f_l">￥<%# Eval("ProductPrice") %>起</span>
                            </a>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<p class="store_name"><a href="../Show/FarmDetails.aspx?productId=<%# Eval("ProductID") %>" target="_blank"><%# Eval("ProductName") %></a></p>
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
                            <div class="f_r gengduo"><a href="../Line/LineDetail1.aspx?PPointType=跟团行" target="_blank">更多＞</a></div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="istore_con f_r">
                        <asp:Repeater ID="RPgentuan1" runat="server">
                            <ItemTemplate>
                                <div class="s_info">
                            <a href="../Show/FarmDetails.aspx?productId=<%# Eval("ProductID") %>" target="_blank">
                                <img src="../Images/Home/<%# Eval("Image") %>" width="180" height="137" }"="" alt="<%# Eval("ProductName") %>">
                                <p class="jieshao"> </p>
                                <span class="jg f_l">￥<%# Eval("ProductPrice").ToString().Split('.')[0] %>起</span>
                            </a>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<p class="store_name"><a href="../Show/FarmDetails.aspx?productId=<%# Eval("ProductID") %>" target="_blank"><%# Eval("ProductName") %></a></p>
                        </div>
                            </ItemTemplate>
                        </asp:Repeater>
                        <div class="tab_txt clear">
                           <asp:Repeater ID="RPgentuan2" runat="server">
                            <ItemTemplate>
                                 <div class="line_txt f_l">
                                <a href="../Show/FarmDetails.aspx?productId=<%# Eval("ProductID") %>" class="f_l" target="_blank">
                                    <span class="fen_lei f_l">跟团</span>
                                    <%# Eval("ProductName") %>
                                </a><span class="f_r jiage_qi">￥<%# Eval("ProductPrice").ToString().Split('.')[0] %>起</span>
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
                        <div class="shty_top gt">
                            <div class="title gt_tit"><div class="img_tb gentuan_img f_l"> </div>自助行</div>
                            <div class="f_r gengduo"><a href="../Line/LineDetail1.aspx?PPointType=自助行" target="_blank">更多＞</a></div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="istore_con f_r">
                        <asp:Repeater ID="RPzizhu1" runat="server">
                            <ItemTemplate>
                                <div class="s_info">
                            <a href="../Show/FarmDetails.aspx?productId=<%# Eval("ProductID") %>" target="_blank">
                                <img src="../Images/Home/<%# Eval("Image") %>" width="180" height="137" }"="" alt="<%# Eval("ProductName") %>">
                                <p class="jieshao"> </p>
                                <span class="jg f_l">￥<%# Eval("ProductPrice").ToString().Split('.')[0] %>起</span>
                            </a>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<p class="store_name"><a href="../Show/FarmDetails.aspx?productId=<%# Eval("ProductID") %>" target="_blank"><%# Eval("ProductName") %></a></p>
                        </div>
                            </ItemTemplate>
                        </asp:Repeater>
                        <div class="tab_txt clear">
                           <asp:Repeater ID="RPzizhu2" runat="server">
                            <ItemTemplate>
                                 <div class="line_txt f_l">
                                <a href="../Show/FarmDetails.aspx?productId=<%# Eval("ProductID") %>" class="f_l" target="_blank">
                                    <span class="fen_lei f_l">自助</span>
                                    <%# Eval("ProductName") %>
                                </a><span class="f_r jiage_qi">￥<%# Eval("ProductPrice").ToString().Split('.')[0] %>起</span>
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
                        <div class="shty_top gt">
                            <div class="title gt_tit"><div class="img_tb gentuan_img f_l"> </div>自驾行</div>
                            <div class="f_r gengduo"><a href="../Line/LineDetail1.aspx?PPointType=自驾行" target="_blank">更多＞</a></div>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="istore_con f_r">
                        <asp:Repeater ID="RPzijia1" runat="server">
                            <ItemTemplate>
                                <div class="s_info">
                            <a href="../Show/FarmDetails.aspx?productId=<%# Eval("ProductID") %>" target="_blank">
                                <img src="../Images/Home/<%# Eval("Image") %>" width="180" height="137" }"="" alt="<%# Eval("ProductName") %>">
                                <p class="jieshao"> </p>
                                <span class="jg f_l">￥<%# Eval("ProductPrice").ToString().Split('.')[0] %>起</span>
                            </a>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<p class="store_name"><a href="../Show/FarmDetails.aspx?productId=<%# Eval("ProductID") %>" target="_blank"><%# Eval("ProductName") %></a></p>
                        </div>
                            </ItemTemplate>
                        </asp:Repeater>
                        <div class="tab_txt clear">
                           <asp:Repeater ID="RPzijia2" runat="server">
                            <ItemTemplate>
                                 <div class="line_txt f_l">
                                <a href="../Show/FarmDetails.aspx?productId=<%# Eval("ProductID") %>" class="f_l" target="_blank">
                                    <span class="fen_lei f_l">自驾</span>
                                    <%# Eval("ProductName") %>
                                </a><span class="f_r jiage_qi">￥<%# Eval("ProductPrice").ToString().Split('.')[0] %>起</span>
                                <div class="clear"></div>
                            </div>
                            </ItemTemplate>
                        </asp:Repeater>
                        </div>
                    </div>
                </div>
            </div>
        </div>
      <div class="blank"></div>
    </div>
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
</asp:Content>
<asp:Content ID="Footer" ContentPlaceHolderID="Footer" runat="server">
    <script src="../Scripts/Line/global.js"></script>
    <script src="../Scripts/Line/index.js"></script>
</asp:Content>
