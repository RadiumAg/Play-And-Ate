<%@ Page Title="农庄详情" Language="C#" MasterPageFile="~/Shared/Main.Master" AutoEventWireup="true" CodeBehind="FarmDetails.aspx.cs" Inherits="Play_And_Ate.Show.FarmDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Style" runat="server">
    <link href="../Content/Show/FarmDetails/style.css" rel="stylesheet" />
    <link href="../Plugin/jqzoom/css/jquery.jqzoom.css" rel="stylesheet" />
    <style type="text/css">
        .zoomPad {
            z-index: unset;
        }

        .warps * {
            font-family: 微软雅黑;
        }

        .sd_img img {
            border: 1px solid gray;
            border-radius: 5px;
            padding: 3px;
        }

        .yd {
            float: right;
        }
    </style>
    <link href="../Content/Show/FarmDetails/baidu_map.css" rel="stylesheet" />
    <link href="../Content/Show/FarmDetails/list.css" rel="stylesheet" />
    <link href="../Content/Show/FarmDetails/review.css" rel="stylesheet" />
    <script src="../Scripts/Show/FarmDetails/getscript.js"></script>
    <link href="../Content/Show/FarmDetails/cityquery.css" rel="stylesheet" />
    <link href="../Content/Show/FarmDetails/main_huandeng.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="warps">
        <div class="blank"></div>
        <div class="site_nav clearfix">
            <div class="f_l">
                您所在的位置：
					<a href="#">首页</a>
                -<a href="#">农庄</a>
                -<a href="#"><%=product.Area.AreaName %></a>
                -<a href="#"><%= product.ProductName %></a>
            </div>
            <div class="f_r r_range">
                &nbsp;|&nbsp;&nbsp;<a href="javascript:void(0);" class="fav-store FW-FAV-STORE" dataid="40">关注</a>
            </div>
        </div>
        <script type="text/javascript">
            var APP_ROOT = '';
            var CART_URL = '/cart';
            var CART_CHECK_URL = '/cart-check';
            var LOADER_IMG = '#';
            var ERROR_IMG = '#';
        </script>
        <dl id="idBox" class="lightbox" style="z-index: 10000; display: none;">
            <dt id="idBoxHead"><b><%= product.ProductName %></b> </dt>
            <dd>
                <div id="idBoxCancel"></div>
                <br />
            </dd>
        </dl>
        <div class="mtext">
            <div class="sd_sname">
                <div id="jqName" class="sd_snames f-24 f_l"><%= product.ProductName %></div>
            </div>
            <div class="l-40 sd_zdss f-16 f_l">
                <label class="f_l ">地址：上海奉贤海湾旅游区金海公路8号</label>
                <a href="../Map/Map.aspx?productId=<%=product.ProductId %>" class="f_l ditu_bz" style="color: red;"><span class="ditu_biao"></span>查看地图</a>
                <div class="f_r sd_rl"></div>
            </div>
            <div class="sd_hp f_l">
                <a href="#">已推荐<label class="blue">258</label>人</a><a href="#" class="blue">2个点评</a>&nbsp;&nbsp; <a>好评度<span class="spa_pa">100%</span></a>
            </div>
            <div class="sd_img">
                <div class="sd_imgl zxx_test_list">
                    <div class="mt_77 jqzoom">
                        <a class="jqzoom" title="hello" href="../Images/Tailorism/<%=product.Image.ToList()[0].ImageName %>">
                            <img alt="" src="../Images/Tailorism/<%=product.Image.ToList()[0].ImageName %>" class="f_l" style="width: 100%; height: 100%;" />
                        </a>
                    </div>
                    <a class="sd_imgl_img preview " title="hello" href="../Images/Tailorism/<%=product.Image.ToList()[1].ImageName%>" id="proImg1">
                        <img alt="" src="../Images/Tailorism/<%=product.Image.ToList()[1].ImageName %>" style="width: 100%; height: 100%;" />
                    </a>
                    <a class="sd_imgl_img preview" title="hello" href="../Images/Tailorism/<%=product.Image.ToList()[2].ImageName%>" id="proImg2">
                        <img alt="" src="../Images/Tailorism/<%=product.Image.ToList()[2].ImageName%>" style="width: 100%; height: 100%;" />
                    </a>
                    <a class="sd_imgl_img preview" title="hello" href="../Images/Tailorism/<%=product.Image.ToList()[3].ImageName%>" id="proImg3">
                        <img alt="" src="../Images/Tailorism/<%=product.Image.ToList()[3].ImageName%>" style="width: 100%; height: 100%;" />
                    </a>
                    <a class="sd_imgl_img preview" title="hello" href="../Images/Tailorism/<%=product.Image.ToList()[4].ImageName%>" id="proImg4">
                        <img alt="" src="../Images/Tailorism/<%=product.Image.ToList()[4].ImageName%>" style="width: 100%; height: 100%;" />
                    </a>
                </div>
                <div class="sd_imgr">
                    <div class="sd_imgr_top">
                        <ul>
                            <li>
                                <label class="gray">适合类型：</label>
                                <a class="azure sd_info">企业会务</a>
                                <a class="azure sd_info">朋友圈活动</a>
                                <a class="azure sd_info">老年养生</a>
                                <a class="azure sd_info">亲子游玩</a>
                                <a class="azure sd_info">家庭聚会</a>
                            </li>

                            <li>
                                <label class="gray">包含项目：</label>
                                <a class="azure sd_info ">真人CS</a>
                                <a class="azure sd_info ">卡拉OK</a>
                                <a class="azure sd_info ">棋牌</a>
                                <a class="azure sd_info ">烧烤</a>
                            </li>
                            <li>
                                <label class="gray">人均消费：</label><a class="orange">51-100</a></li>
                            <li>
                                <label class="gray">提供设施：</label>
                                <a class="azure sd_info ">垂钓 <span>
                                    <div class="sd_yc">
                                        面 积：0 亩
                                        <br />
                                        费 用： 免费
                                        <br />
                                    </div>
                                </span>
                                </a>
                                <a class="azure sd_info ">卡拉OK <span>
                                    <div class="sd_yc">
                                        名 称：
                                        <br />
                                        可容纳：0 人
                                        <br />
                                    </div>
                                </span>
                                </a>
                                <a class="azure sd_info ">会议室 <span>
                                    <div class="sd_yc">
                                        名 称：
                                        <br />
                                        可容纳：0 人
                                        <br />
                                    </div>
                                </span>
                                </a>
                                <a class="azure sd_info ">住宿 <span>
                                    <div class="sd_yc">
                                        可容纳：80 人
                                        <br />
                                        住 房：40 间
                                    </div>
                                </span>
                                </a>
                                <a class="azure sd_info ">餐饮 <span>
                                    <div class="sd_yc">
                                        可容纳：200 人
                                        <br />
                                        大 厅：0 桌<br />
                                        包 房：0 间
                                    </div>
                                </span>
                                </a>
                                <a class="azure sd_info hide">烧烤 <span>
                                    <div class="sd_yc">
                                        可容纳：0 人<br />
                                        费 用： 免费
                                        <br />
                                    </div>
                                </span>
                                </a>
                                <a class="azure sd_info hide">棋牌 <span>
                                    <div class="sd_yc">
                                        一 共：0 桌<br />
                                        费 用： 免费
                                        <br />
                                    </div>
                                </span>
                                </a>
                            </li>
                            <li>
                                <label class="gray">咨询电话：</label><label class="orange f-20">400-021-3158</label>
                            </li>
                        </ul>
                    </div>
                    <div class="sd_imgr_bottom">
                        <div class="sd_dpname f_l f-18">liulei:</div>
                        <div class="sd_dptext f_l">
                            哈哈哈 一天钓了好多鱼，开心啦啦啦啦啦啊
                        </div>
                    </div>
                </div>
            </div>
            <div class="sd_cx">
                <a href="/Order/Order.aspx?ProductId=<%= this.product.ProductId %>">
                    <div class="sd_tj f_l yd">立即预定</div>
                </a>
            </div>
            <script>
                $(function () {
                    var jqname ="<%= this.product.ProductName %>";
                    sessionStorage.setItem("jqname", jqname);
                })
            </script>
        </div>
    </div>
</asp:Content>
<asp:Content runat="server" ID="Footer" ContentPlaceHolderID="Footer">
    <script src="../Plugin/jqzoom/js/jquery.jqzoom-core.js"></script>
    <script>
        $(".sd_img a").jqzoom();
    </script>
</asp:Content>

