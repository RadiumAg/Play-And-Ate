<%@ Page Title="" Language="C#" MasterPageFile="~/Shared/Main.Master" AutoEventWireup="true" CodeBehind="Promotion.aspx.cs" Inherits="Play_And_Ate.Promotion.Promotion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Style" runat="server">
    <link href="../Content/Promotion/cityquery.css" rel="stylesheet" />
    <link href="../Content/Promotion/datepicker(1).css" rel="stylesheet" />
    <link href="../Content/Promotion/datepicker.css" rel="stylesheet" />
    <link href="../Content/Promotion/font-awesome.min.css" rel="stylesheet" />
    <link href="../Content/Promotion/main_huandeng.css" rel="stylesheet" />
    <link href="../Content/Promotion/new_main.css" rel="stylesheet" />
    <link href="../Content/Promotion/style.css" rel="stylesheet" />
    <link href="../Content/Promotion/WdatePicker.css" rel="stylesheet" />
    <link href="../Content/Promotion/weebox.css" rel="stylesheet" />
    <script src="../Scripts/Promotion/jquery-1.8.3.min.js"></script>
    <script src="../Scripts/Promotion/config.js"></script>
    <script src="../Scripts/Promotion/jquery.dotdotdot.js"></script>
    <script src="../Scripts/Promotion/lanrenzhijia.js"></script>
    <script src="../Scripts/Promotion/main_store.js"></script>
    <script src="../Scripts/Promotion/querycity.js"></script>
    <script src="../Scripts/Promotion/script.js"></script>
    <script src="../Scripts/Promotion/WdatePicker.js"></script>
    <script src="../Scripts/Promotion/zh-cn.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <%--在线聊天客服--%>
    <a id="ibangkf" href="http://www.ibangkf.com">在线客服系统 </a>
<script>
(function() {
    var st = document.createElement("script");
    st.src = "http://c.ibangkf.com/i/c-zhangshiqing.js";
    var s = document.getElementsByTagName("script")[0];
    s.parentNode.insertBefore(st, s);
})();
</script>

    <img width="100%" height="400px" src="/Images/Tailorism/2.jpg" alt="">
    <div class="warps">
        <div class="mtext">

            <div class="tr_yz">

                <div class="opyimicent">
                    <div class="opyimictitle">
                        <label class="og">庄源</label>聚集各类农家信息<label class="og">省时、省力、省心</label></div>
                    <div class="opyiminot w-100 f_l">
                        <img alt="" width="100%" height="255px" src="/Images/Tailorism/2.jpg">
                    </div>
                </div>
            </div>

        </div>

        <div class="tr_bz">
            <div class="tr_bz_top ">
                <div class="tr_bztop">没有推广，没有客源</div>
                <div class="tr_bztitle">没关系，庄源为您服务，提供热门精选等模块</div>

                <div class="tr_bzbot">
                    <div class="tr_bzleft">
                        <div class="tr_bzlefttop">
                            四大模块
                        </div>
                        <div class="tr_bzleftbot">
                            无忧推广
                        </div>
                    </div>
                    <div class="tr_bzcent">
                        <ul>
                            <li>农庄</li>
                            <li>农家乐</li>
                            <li>生态园</li>
                            <li>垂钓场</li>
                        </ul>
                    </div>
                    <div class="tr_bzright">
                        <ul>
                            <li>专业客服为您的出行前后服务！</li>
                            <li>预付订金就送价值10万元的出行保险！</li>
                            <li>第一农庄网 为您监督服务！</li>
                            <li>出行受损失，我们将先行赔付！</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="w-100 f_l">
            <div class="tar_mrt">
                <div class="tr_mrtop w-100 f_l">
                    <img alt="" class="f_l tr_mrtopimg" src="/Images/Tailorism/2.jpg" width="92px" height="83px">
                    <div class="tr_mrtoptitle">庄源</div>
                    <div class="tr_mrtoptext">因为有你，我们才有价值！</div>
                    <div class="tr_mrtopright" onclick="destine();">我要成为商家</div>
                </div>
            </div>
            <div class="tar_mr">
                <ul>
                    <li>
                        <img alt="" class="f_l" src="/Images/Tailorism/2.jpg" width="108px" height="120px">
                        <div class="f-22  kuan">我是<label class="blue">农家乐老板</label></div>
                        <div class="f-22 ">农家乐没有生意</div>
                        <div class="f-16 ">庆幸选择庄源</div>
                        <a href="#" target="_blank">
                            <div id="asdf" class="mt_gs_bb f-14 f_l  mt_gs_jsa">查看他发布的农家信息 &gt;</div>
                        </a>
                    </li>
                    <li>
                        <img alt="" class="f_l" src="/Images/Tailorism/2.jpg" width="108px" height="120px">
                        <div class="f-22  kuan">我是<label class="huang">农家乐老板</label></div>
                        <div class="f-22 ">农家乐没有生意</div>
                        <div class="f-16 ">庆幸选择庄源</div>
                        <a href="#" target="_blank">
                            <div id="asdf" class="mt_gs_bb f-14 f_l  mt_gs_jhh">查看他发布的农家信息 &gt;</div>
                        </a>
                    </li>
                    <li>
                        <img alt="" class="f_l" src="/Images/Tailorism/2.jpg" width="108px" height="120px">
                        <div class="f-22  kuan">我是<label class="hong">农家乐老板</label></div>
                        <div class="f-22 ">农家乐没有生意</div>
                        <div class="f-16 ">庆幸选择庄源</div>
                        <a href="#" target="_blank">
                            <div id="asdf" class="mt_gs_bb f-14 f_l  mt_gs_joo">查看他发布的农家信息 &gt;</div>
                        </a>
                    </li>
                    <li>
                        <img alt="" class="f_l" src="/Images/Tailorism/2.jpg" width="108px" height="120px">
                        <div class="f-22  kuan">我是<label class="aqua">农家乐老板</label></div>
                        <div class="f-22 ">农家乐没有生意</div>
                        <div class="f-16 ">庆幸选择庄源</div>
                        <a href="#" target="_blank">
                            <div id="asdf" class="mt_gs_bb f-14 f_l  mt_gs_jsb">查看他发布的农家信息 &gt;</div>
                        </a>
                    </li>
                    <li>
                        <img alt="" class="f_l" src="/Images/Tailorism/2.jpg" width="108px" height="120px">
                        <div class="f-22  kuan">我是<label class="lilac">农家乐老板</label></div>
                        <div class="f-22 ">农家乐没有生意</div>
                        <div class="f-16 ">庆幸选择庄源</div>
                        <a href="#" target="_blank">
                            <div id="asdf" class="mt_gs_bb f-14 f_l  mt_gs_jsc">查看他发布的农家信息 &gt;</div>
                        </a>
                    </li>
                    <li>
                        <img alt="" class="f_l" src="/Images/Tailorism/2.jpg" width="108px" height="120px">
                        <div class="f-22  kuan">我是<label class="light">农家乐老板</label></div>
                        <div class="f-22 ">农家乐没有生意</div>
                        <div class="f-16 ">庆幸选择庄源</div>
                        <a href="#" target="_blank">
                            <div id="asdf" class="mt_gs_bb f-14 f_l  mt_gs_jsd">查看他发布的农家信息 &gt;</div>
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <div class="mt_xq f-30">轻松玩转农家</div>
        <div class="mt_xq_title">
            <div class="mt_xqmr">
                <ul>
                    <li id="mt_xqcolor">
                        <div class="mt_xqleft ">1</div>
                        <label class="f_l">快速注册账号</label></li>
                    <li>
                        <div class="mt_xqleft ">2</div>
                        <label class="f_l">发布出行需求</label></li>
                    <li>
                        <div class="mt_xqleft ">3</div>
                        <label class="f_l">确定农家，快乐出行</label></li>
                </ul>
            </div>
        </div>
        <div class="mt_xq_t">
            <div class="mt_xqmr">
                <div class="mt_xq_l mtxql1">
                    <div class="mt_xqltext">
                        <ul>
                            <a href="../Home/Home.aspx" target="_blank">
                                <li>我能找到合适的垂钓场吗？</li>
                            </a>
                            <a href="#">
                                <li>怎么找适合年会的农庄？</li>
                            </a>
                            <a href="#">
                                <li>集体出行怎么合适？</li>
                            </a>
                            <a href="#">
                                <li>和农家老板有分歧怎么办？</li>
                            </a>
                            <a href="#">
                                <li>什么是农家优选？</li>
                            </a>
                            <a href="#">
                                <li>怎么发布需求？</li>
                            </a>
                            <a href="#">
                                <li>怎么保证我们低价服务好</li>
                            </a>
                            <a href="#">
                                <li>定金的收取和定额规则</li>
                            </a>
                            <a href="#">
                                <li>订金是否太高？</li>
                            </a>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="mt_xq_t w-100 f_l">
            <div class="mt_ks f-30" href="../Home/Home.aspx">
                <div class="f_l">快速选择</div>
                <div class="mt_ks_r f-30">&gt;</div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
