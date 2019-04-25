<%@ Page Title="" Language="C#" MasterPageFile="~/Shared/Main.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Play_And_Ate.Home.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Style" runat="server">
    <link href="../Content/Shared/style.css" rel="stylesheet" />
    <script src="../Scripts/Home/main_store.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <asp:ScriptManagerProxy runat="server" ID="spHome">
    </asp:ScriptManagerProxy>
    <script type="text/javascript">
        var APP_ROOT = '';
        var CART_URL = '/cart';
        var CART_CHECK_URL = '/cart-check';
        var LOADER_IMG = '../Images/Home/lazy_loading.gif';
        var ERROR_IMG = '../Images/Home/image_err.gif';
    </script>
    <script type="text/javascript">
        jQuery(document).ready(
            //function ($) {
            //    $("img").lazyload({
            //        effect: "fadeIn",
            //        threshold: "200",
            //        failurelimit: "10"
            //    });
            //});
    </script>
    <script type="text/javascript">
            //首先用JQ判断浏览器类型及版本，如果是IE8以下的浏览器就用effect=show，否则就用effect=fadeIn，判断浏览器版本函数如下
            function checkbrowse() {
                var ua = navigator.userAgent.toLowerCase();
                var is = (ua.match(/\b(chrome|opera|safari|msie|firefox)\b/) || ['', 'mozilla'])[1];
                var r = '(?:' + is + '|version)[\\/: ]([\\d.]+)';
                var v = (ua.match(new RegExp(r)) || [])[1];
                jQuery.browser.is = is;
                jQuery.browser.ver = v;
                return {
                    'is': jQuery.browser.is,
                    'ver': jQuery.browser.ver
                }
            }
        //改造Jquery.LazyLoad.js函数，根据浏览器版本来显示不同的滤镜效果
        var public = checkbrowse();
        var showeffect = "";
        if ((public['is'] == 'msie' && public['ver'] < 8.0)) {
            showeffect = "show"
        } else {
            showeffect = "fadeIn"
        }
        //jQuery(document).ready(function ($) {
        //    $("img").lazyload({
        //        placeholder: "../Images/Home/grey.gif",
        //        effect: showeffect,
        //        failurelimit: 10
        //    })
        //});
    </script>
    <div id="bn" class="w-100">
        <!-- 热搜直通车 -->
        <div class="train">
            <div class="train_tit">搜索直通车</div>
            <a href="http://huzhou.01nz.com.cn/farmlist/zht--aid-899-tid-0-cid-49-deal_type-0"
                title="安吉农家乐">安吉农家乐</a>
        </div>
        <div class="warps">
            <!-- END 热搜 -->
            <input type="hidden" value="0" id="jl_city">
            <input type="hidden" value="0" id="jl_quxian">
            <input type="hidden" value="0" id="jl_jingdian">
            <input type="hidden" value="" id="jl_youwanxiangmu">
            <input type="hidden" value="" id="depart_time">
            <input type="hidden" value="" id="leave_time">
            <input type="hidden" value="0" id="trip_number">
            <input type="hidden" value="" id="remark">
            <div class="gds">
                <div class="gdone" id="ajax_tow">
                    <div class="gdonetop">
                        <div class="gdonel">
                            <div class="odbg"></div>
                            <label class="f_l">发需求获推荐 </label>
                        </div>
                        <div class="gdoner">
                            <div class="gdbgimg gda"></div>
                        </div>
                    </div>
                    <div class="gdonebot w-100 f_l">
                        <div class="gdonebotl">
                            <ul>
                                <li>
                                    <div class="gbotltop">
                                        <div class="gbotllibg gbga"></div>
                                        <label>专业客服</label>
                                    </div>
                                    <div class="gbotlbot">
                                        为您的出行前后服务
                                    </div>
                                </li>
                                <li>
                                    <div class="gbotltop">
                                        <div class="gbotllibg gbgb"></div>
                                        <label>安全保障</label>
                                    </div>
                                    <div class="gbotlbot">
                                        预定就送安全出行保险
                                    </div>
                                </li>
                                <li>
                                    <div class="gbotltop">
                                        <div class="gbotllibg gbgc"></div>
                                        <label>先行赔付</label>
                                    </div>
                                    <div class="gbotlbot">
                                        出行受损失我们先行赔付
                                    </div>
                                </li>

                            </ul>
                        </div>
                        <div id="area_jq">
                        </div>
                        <div id="area_qx">
                        </div>
                        <div id="citys" class="none">
                            <dl id="warpper">
                                <dd id="c1">
                                    <ul id="rm_chengshi">
                                        <li>
                                            <font color="#DE751E"><b>&nbsp;华北</b></font>
                                        </li>
                                        <li>
                                            <a onclick="faxq_city(3)" id="remen_city_3">北京</a>
                                            <a onclick="faxq_city(22)" id="remen_city_22">天津</a>
                                        </li>
                                        <li>
                                            <font color="#DE751E"><b>&nbsp;东北</b></font>
                                        </li>
                                        <li>
                                            <a onclick="faxq_city(25)" id="remen_city_25">沈阳</a>
                                            <a onclick="faxq_city(31)" id="remen_city_31">大连</a>
                                        </li>
                                        <li>
                                            <font color="#DE751E"><b>&nbsp;华东</b></font>
                                        </li>
                                        <li>
                                            <a onclick="faxq_city(2)" id="remen_city_2">上海</a>
                                            <a onclick="faxq_city(23)" id="remen_city_23">南京</a>
                                            <a onclick="faxq_city(29)" id="remen_city_29">杭州</a>
                                            <a onclick="faxq_city(30)" id="remen_city_30">青岛</a>
                                            <a onclick="faxq_city(32)" id="remen_city_32">宁波</a>
                                            <a onclick="faxq_city(33)" id="remen_city_33">济南</a>
                                            <a onclick="faxq_city(42)" id="remen_city_42">苏州</a>
                                            <a onclick="faxq_city(43)" id="remen_city_43">无锡</a>
                                            <a onclick="faxq_city(47)" id="remen_city_47">合肥</a>
                                            <a onclick="faxq_city(64)" id="remen_city_64">潍坊</a>
                                            <a onclick="faxq_city(66)" id="remen_city_66">绍兴</a>
                                            <a onclick="faxq_city(89)" id="remen_city_89">湖州</a>
                                            <a onclick="faxq_city(90)" id="remen_city_90">嘉兴</a>
                                            <a onclick="faxq_city(91)" id="remen_city_91">金华</a>
                                            <a onclick="faxq_city(93)" id="remen_city_93">镇江</a>
                                            <a onclick="faxq_city(95)" id="remen_city_95">扬州</a>
                                            <a onclick="faxq_city(135)" id="remen_city_135">日照</a>
                                            <a onclick="faxq_city(143)" id="remen_city_143">丽水</a>
                                            <a onclick="faxq_city(144)" id="remen_city_144">衢州</a>
                                            <a onclick="faxq_city(192)" id="remen_city_192">宣城</a>
                                            <a onclick="faxq_city(193)" id="remen_city_193">黄山</a>
                                            <a onclick="faxq_city(213)" id="remen_city_213">上饶</a>
                                            <a onclick="faxq_city(215)" id="remen_city_215">舟山</a>
                                        </li>
                                        <li>
                                            <font color="#DE751E"><b>&nbsp;中南</b></font>
                                        </li>
                                        <li>
                                            <a onclick="faxq_city(20)" id="remen_city_20">广州</a>
                                            <a onclick="faxq_city(21)" id="remen_city_21">深圳</a>
                                            <a onclick="faxq_city(24)" id="remen_city_24">武汉</a>
                                            <a onclick="faxq_city(38)" id="remen_city_38">长沙</a>
                                            <a onclick="faxq_city(46)" id="remen_city_46">南宁</a>
                                            <a onclick="faxq_city(194)" id="remen_city_194">三亚</a>
                                        </li>
                                        <li>
                                            <font color="#DE751E"><b>&nbsp;西南</b></font>
                                        </li>
                                        <li>
                                            <a onclick="faxq_city(27)" id="remen_city_27">成都</a>
                                            <a onclick="faxq_city(28)" id="remen_city_28">重庆</a>
                                            <a onclick="faxq_city(40)" id="remen_city_40">昆明</a>
                                            <a onclick="faxq_city(160)" id="remen_city_160">遵义</a>
                                        </li>
                                        <li>
                                            <font color="#DE751E"><b>&nbsp;西北</b></font>
                                        </li>
                                        <li>
                                            <a onclick="faxq_city(26)" id="remen_city_26">西安</a>
                                        </li>
                                    </ul>
                                </dd>
                            </dl>
                        </div>
                        <div class="gdonebotr">
                            <div class="gbotrtop">
                                <div class="gbotrtopt">
                                    <span>要去哪里</span>
                                    <div id="morents">请选择您要去的目的地</div>
                                    <span id="niyaoqu" class="none">
                                        <label>
                                            您选择了去:
                                        </label>
                                        <label id="city_name_q"></label>
                                        <label id="quxian_name_q"></label>
                                        <label id="jingqu_name_q">
                                        </label>
                                    </span>
                                </div>
                                <ul id="rm_chengshi">
                                    <!-- class='gbcolor' -->
                                    <li>
                                        <label name="42" onclick="faxq_citys(42)" id="remen_citys_42">苏州</label>
                                    </li>
                                    <li>
                                        <label name="33" onclick="faxq_citys(33)" id="remen_citys_33">济南</label>
                                    </li>
                                    <li>
                                        <label name="29" onclick="faxq_citys(29)" id="remen_citys_29">杭州</label>
                                    </li>
                                    <li>
                                        <label name="23" onclick="faxq_citys(23)" id="remen_citys_23">南京</label>
                                    </li>
                                    <li>
                                        <label name="22" onclick="faxq_citys(22)" id="remen_citys_22">天津</label>
                                    </li>
                                    <li>
                                        <label name="3" onclick="faxq_citys(3)" id="remen_citys_3">北京</label>
                                    </li>
                                </ul>
                                <a onclick="xq_gengduo();">更多</a>
                                <input type="hidden" value="0" id="xq_gengduo_input">
                            </div>

                            <div class="gbotrbot">
                                <div class="gbotrtopt">
                                    <span>我的需求</span>
                                    <div id="xuqiutx">请选择您的需求</div>
                                    <span id="xuqiuxz" class="none">
                                        <label
                                            class="f_l">
                                            您选择了:</label><label id="youwan_xm"></label></span>
                                </div>
                                <ul id="mudi_xz">
                                    <li>
                                        <label onclick="mudi_xuanze(1)" id="goout_purpose_1">住宿</label>
                                    </li>
                                    <input type="hidden" value="0" id="mudi_xuanze_hid_1">
                                    <li>
                                        <label onclick="mudi_xuanze(2)" id="goout_purpose_2">农家饭</label>
                                    </li>
                                    <input type="hidden" value="0" id="mudi_xuanze_hid_2">
                                    <li>
                                        <label onclick="mudi_xuanze(3)" id="goout_purpose_3">垂钓</label>
                                    </li>
                                    <input type="hidden" value="0" id="mudi_xuanze_hid_3">
                                    <li>
                                        <label onclick="mudi_xuanze(4)" id="goout_purpose_4">烧烤</label>
                                    </li>
                                    <input type="hidden" value="0" id="mudi_xuanze_hid_4">
                                    <li>
                                        <label onclick="mudi_xuanze(5)" id="goout_purpose_5">采摘</label>
                                    </li>
                                    <input type="hidden" value="0" id="mudi_xuanze_hid_5">
                                    <li>
                                        <label onclick="mudi_xuanze(6)" id="goout_purpose_6">会议</label>
                                    </li>
                                    <input type="hidden" value="0" id="mudi_xuanze_hid_6">
                                    <li>
                                        <label onclick="mudi_xuanze(7)" id="goout_purpose_7">拓展</label>
                                    </li>
                                    <input type="hidden" value="0" id="mudi_xuanze_hid_7">
                                    <li>
                                        <label onclick="mudi_xuanze(8)" id="goout_purpose_8">真人cs</label>
                                    </li>
                                    <input type="hidden" value="0" id="mudi_xuanze_hid_8">
                                    <li>
                                        <label onclick="mudi_xuanze(9)" id="goout_purpose_9">休闲</label>
                                    </li>
                                    <input type="hidden" value="0" id="mudi_xuanze_hid_9">
                                    <li>
                                        <label onclick="mudi_xuanze(10)" id="goout_purpose_10">棋牌</label>
                                    </li>
                                    <input type="hidden" value="0" id="mudi_xuanze_hid_10">
                                    <li>
                                        <label onclick="mudi_xuanze(11)" id="goout_purpose_11">卡拉ok</label>
                                    </li>
                                    <input type="hidden" value="0" id="mudi_xuanze_hid_11">
                                    <li>
                                        <label onclick="mudi_xuanze(12)" id="goout_purpose_12">土特产</label>
                                    </li>
                                    <input type="hidden" value="0" id="mudi_xuanze_hid_12">
                                    <li>
                                        <label onclick="mudi_xuanze(13)" id="goout_purpose_13">骑马</label>
                                    </li>
                                    <input type="hidden" value="0" id="mudi_xuanze_hid_13">
                                </ul>
                            </div>
                            <div class="gbxyb">
                                <span onclick="gbxiayi(1)">下一步</span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="gdone" id="ajax_one">
                </div>
            </div>
            <!-- 幻灯片 -->
            <div class="ppt-container">
                <ul class="image-list">
                    <li data-index="0" style="display: none;">
                        <a href="#" target="_blank">
                            <p>
                                <img alt=""
                                    src="../Images/Home/57bd13bc56362.jpg"
                                    border="0" />
                            </p>
                        </a>
                    </li>
                    <li data-index="1" style="display: none;">
                        <a href="#" target="_blank">
                            <div>
                                <img alt=""
                                    src="../Images/Home/57e103de2ce7e.jpg"
                                    border="0" />
                            </div>
                        </a>
                    </li>
                    <li data-index="2" style="">
                        <a href="#" target="_blank">
                            <p>
                                <img border="0" alt=""
                                    src="../Images/Home/56ab04ed628d5.jpg" />
                            </p>
                        </a>
                    </li>
                </ul>
                <ul class="button-list">
                    <li><span data-index="0" class="">1</span></li>
                    <li><span data-index="1" class="">2</span></li>
                    <li><span data-index="2" class="selected">3</span></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="w-100 f_l">
        <div class="warps">
            <div class="m_text">
                <div class="mtext_b_l_title hong">
                    <div class="f_l">快速找农家</div>
                    <div class="m_city f_r" id="hot_city_cs">
                        <a href="javascript:;" class="titleass rm hot_city_hover" onclick="hot_citys(2);"
                            title="上海">上海 </a>
                        <a href="javascript:;" class="titleass rm " onclick="hot_citys(3);" title="北京">北京 </a>
                        <a href="javascript:;" class="titleass rm " onclick="hot_citys(22);" title="天津">天津 </a>
                        <a href="javascript:;" class="titleass rm " onclick="hot_citys(23);" title="南京">南京 </a>
                        <a href="javascript:;" class="titleass rm " onclick="hot_citys(29);" title="杭州">杭州 </a>
                        <a href="javascript:;" class="titleass rm " onclick="hot_citys(33);" title="济南">济南 </a>
                        <a href="javascript:;" class="titleass rm " onclick="hot_citys(42);" title="苏州">苏州 </a>

                    </div>
                </div>
                <div class="mtext_z">
                    <ul>
                        <li class="mtext_z_bg" id="tc1" onclick="tc(1)">
                            <div class="m_youwan f_l m_ywq"></div>
                            <label class="mks_title  f_r">出行圈子</label>
                        </li>
                        <li onclick="tc(2)" id="tc2">
                            <div class="m_youwan f_l m_yww"></div>
                            <label class="mks_title f_r">游玩项目</label>
                        </li>
                        <li onclick="tc(3)" id="tc3">
                            <div class="m_youwan f_l m_ywe"></div>
                            <label class="mks_title f_r">周边景点</label>
                        </li>
                        <li onclick="tc(4)" id="tc4">
                            <div class="m_youwan f_l m_ywr"></div>
                            <label class="mks_title f_r">星级农家</label>
                        </li>
                    </ul>
                </div>
                <div id="s1" class="mtext_z_b ">
                    <div class="mtext_z_b_t">
                        <ul>
                            <a href="#" target="_blank">
                                <li>企业会务</li>
                            </a>
                            <a href="#l" target="_blank">
                                <li>朋友圈活动</li>
                            </a>
                            <a href="#" target="_blank">
                                <li>老年养生</li>
                            </a>
                            <a href="#" target="_blank">
                                <li>亲子游玩</li>
                            </a>
                            <a href="#" target="_blank">
                                <li>家庭聚会</li>
                            </a>
                            <a href="#" target="_blank">
                                <li>学生活动</li>
                            </a>
                        </ul>
                    </div>
                </div>

                <div id="s2" class="mtext_z_b h">
                    <div class="mtext_z_b_t" id="xiangmu_html">
                        <a href="#" target="_blank">
                            <li>拓展</li>
                        </a>
                        <a href="#" target="_blank">
                            <li>骑马</li>
                        </a>
                        <a href="#" target="_blank">
                            <li>漂流</li>
                        </a>
                        <a href="#" target="_blank">
                            <li>攀岩</li>
                        </a>
                        <a href="#" target="_blank">
                            <li>真人CS</li>
                        </a>
                        <a href="#" target="_blank">
                            <li>游泳</li>
                        </a>
                        <a href="3" target="_blank">
                            <li>健身房</li>
                        </a>
                        <a href="#" target="_blank">
                            <li>篝火</li>
                        </a>
                        <a href="#" target="_blank">
                            <li>卡拉OK</li>
                        </a>
                        <a href="#" target="_blank">
                            <li>棋牌</li>
                        </a>
                        <a href="#" target="_blank">
                            <li>DIY</li>
                        </a>
                        <a href="#" target="_blank">
                            <li>烧烤</li>
                        </a>
                        <a href="#" target="_blank">
                            <li>采摘</li>
                        </a>
                        <a href="#" target="_blank">
                            <li>垂钓</li>
                        </a>
                    </div>
                </div>
                <div id="s3" class="mtext_z_b h">
                    <div class="mtext_z_b_t" id="hot_citys_html">
                        <ul>
                            <li>
                                <a href="#"
                                    target="_blank">佘山</a>
                            </li>
                            <li>
                                <a href="#"
                                    target="_blank">淀山湖</a>
                            </li>
                            <li>
                                <a href=#"
                                    target="_blank">野生动物园</a>
                            </li>
                            <li>
                                <a href="#"
                                    target="_blank">西佘山园</a>
                            </li>
                            <li>
                                <a href="#"
                                    target="_blank">欢乐谷</a>
                            </li>
                            <li>
                                <a href=#"
                                    target="_blank">前卫生态村</a>
                            </li>
                            <li>
                                <a href="#"
                                    target="_blank">朱家角</a>
                            </li>
                            <li>
                                <a href="#"
                                    target="_blank">大观园</a>
                            </li>
                            <li>
                                <a href="#"
                                    target="_blank">滴水湖</a>
                            </li>
                            <li>
                                <a href="#"
                                    target="_blank">东方绿舟</a>
                            </li>
                            <li>
                                <a href="#"
                                    target="_blank">滨江森林公园</a>
                            </li>
                            <li>
                                <a href=#"
                                    target="_blank">长兴岛</a>
                            </li>
                            <li>
                                <a href="#"
                                    target="_blank">顾村公园</a>
                            </li>
                            <li>
                                <a href="#"
                                    target="_blank">美兰湖</a>
                            </li>
                            <li>
                                <a href=#"
                                    target="_blank">东平国家森林公园</a>
                            </li>
                            <li>
                                <a href="#"
                                    target="_blank">城市沙滩</a>
                            </li>
                            <li>
                                <a href="#"
                                    target="_blank">枫泾</a>
                            </li>
                            <li>
                                <a href="#"
                                    target="_blank">三甲港海滨乐园</a>
                            </li>
                            <li>
                                <a href="#"
                                    target="_blank">新场古镇</a>
                            </li>
                            <li>
                                <a href="h#"
                                    target="_blank">洋山深水港</a>
                            </li>
                            <li>
                                <a href="#"
                                    target="_blank">鲜花港</a>
                            </li>
                            <li>
                                <a href="#"
                                    target="_blank">芦潮港</a>
                            </li>
                            <li>
                                <a href="#"
                                    target="_blank">横沙岛</a>
                            </li>
                            <li>
                                <a href="h#"
                                    target="_blank">古猗园</a>
                            </li>
                            <li>
                                <a href="#"
                                    target="_blank">碧海金沙</a>
                            </li>
                            <li>
                                <a href="#"
                                    target="_blank">海湾国家森林公园</a>
                            </li>
                            <li>
                                <a href="#"
                                    target="_blank">西沙湿地</a>
                            </li>
                            <li>
                                <a href="#"
                                    target="_blank">地质科普馆</a>
                            </li>
                            <li>
                                <a href="h#"
                                    target="_blank">练塘</a>
                            </li>
                            <li>
                                <a href="#"
                                    target="_blank">东滩湿地公园</a>
                            </li>
                            <li>
                                <a href="h#"
                                    target="_blank">安亭老街</a>
                            </li>
                            <li>
                                <a href="#"
                                    target="_blank">东滩</a>
                            </li>
                            <li>
                                <a href="h#"
                                    target="_blank">车墩影视乐园</a>
                            </li>
                            <li>
                                <a href="#"
                                    target="_blank">三甲港海滨</a>
                            </li>
                            <li>
                                <a href="h#"
                                    target="_blank">瀛东村</a>
                            </li>
                            <li>
                                <a href="#"
                                    target="_blank">奉新海滩</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div id="s4" class="mtext_z_b h">
                    <div class="mtext_z_b_t" id="purpose_html">
                        <ul>
                            <li><a href="#"
                                target="_blank" title="3A">3A农庄</a> </li>
                            <li><a href="#"
                                target="_blank" title="4A">4A农庄</a> </li>
                            <li><a href="#"
                                target="_blank" title="5A">5A农庄</a> </li>
                            <li><a href="#"
                                target="_blank" title="二星">二星农家乐</a> </li>
                            <li><a href="#"
                                target="_blank" title="三星">三星农家乐</a> </li>
                            <li><a href="#"
                                target="_blank" title="四星">四星农家乐</a> </li>
                            <li><a href="#"
                                target="_blank" title="五星">五星农家乐</a> </li>
                            <li><a href="#"
                                target="_blank" title="无">无</a> </li>
                        </ul>
                    </div>
                </div>
                <div class="mtext_b">
                    <div class="mtext_b_l f_l">
                        <div class="mtext_b_l_title blue">
                            <div class="f_l kuais">主题分类</div>
                            <a href="http://www.01nz.com.cn/#" title="" class="myy_yd f_r">更多 &gt;&gt;</a>
                        </div>
                        <div class="mzt_left">
                            <div class="theme">
                                <div class="mzt_left_title"><span class="main_iocn zt_nz"></span>主题农庄</div>
                                <ul>
                                    <li><a href="#"
                                        target="_blank">休闲观光</a> </li>
                                    <li><a href="#"
                                        target="_blank">度假村</a> </li>
                                    <li><a href="#"
                                        target="_blank">温泉农庄</a> </li>
                                    <li><a href="http://sh.01nz.#" target="_blank">科普基地</a>
                                    </li>
                                    <li><a href="#"
                                        target="_blank">拓展培训</a> </li>
                                    <li><a href="#"
                                        target="_blank">生态农庄</a> </li>
                                </ul>
                            </div>
                            <div class="theme">
                                <div class="mzt_left_title"><span class="njl main_iocn"></span>农家乐</div>
                                <ul>
                                    <li><a href="#">乡村农家</a> </li>
                                    <li><a href="#">农家土菜</a> </li>
                                    <li><a href="#">民俗风情</a> </li>
                                </ul>
                            </div>
                            <div class="theme">
                                <div class="mzt_left_title"><span class="sty main_iocn"></span>生态园</div>
                                <ul>
                                    <li><a href="#"
                                        target="_blank">养殖园</a> </li>
                                    <li><a href="#"
                                        target="_blank">采摘园</a> </li>
                                    <li><a href="#"
                                        target="_blank">观光园</a> </li>
                                </ul>
                            </div>
                            <div class="theme">
                                <div class="mzt_left_title"><span class="cdc main_iocn"></span>垂钓场</div>
                                <ul>
                                    <li><a href="#" target="_blank">池塘 </a>
                                    </li>
                                    <li><a href="#" target="_blank">农家 </a>
                                    </li>
                                    <li><a href="#" target="_blank">湖库 </a></li>
                                    <li><a href="#" target="_blank">野生 </a>
                                    </li>
                                    <li><a href="#" target="_blank">放养 </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <asp:UpdatePanel runat="server" ID="upBtn" UpdateMode="Conditional" ChildrenAsTriggers="False">
                            <ContentTemplate>
                                <div class="mzt_title">
                                    <span class="biaoti_tit">热门农家目的地：</span>
                                    <asp:LinkButton runat="server" Text="上海周边农家乐" CssClass="beiji" OnClick="ChangeFarm" CommandArgument="1" ID="ter_6"></asp:LinkButton>
                                    <asp:LinkButton runat="server" Text="仙华山农家乐" OnClick="ChangeFarm" CommandArgument="2" ID="ter_7"></asp:LinkButton>
                                    <asp:LinkButton runat="server" Text="三山岛农家乐" OnClick="ChangeFarm" CommandArgument="3" ID="ter_8"></asp:LinkButton>
                                    <asp:LinkButton runat="server" Text="千岛湖农家乐" OnClick="ChangeFarm" CommandArgument="4" ID="ter_9"></asp:LinkButton>
                                    <asp:LinkButton runat="server" Text="临安农家乐" OnClick="ChangeFarm" CommandArgument="5" ID="ter_10"></asp:LinkButton>
                                </div>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                        <asp:UpdatePanel runat="server" ID="upFarm" UpdateMode="Conditional">
                            <ContentTemplate>
                                <div class="mzt_img" id="termini_html">
                                    <ul>
                                        <!--主题分类-->
                                        <asp:Repeater runat="server" ID="ReProduct">
                                            <ItemTemplate>
                                                <li>
                                                    <a href='../Show/FarmDetails.aspx?productId=<%# Eval("ProductID") %>' onmouseout="shadowout(<%# Eval("ProductID") %>)"
                                                        onmouseover="shadow(<%# Eval("ProductID") %>)" target="_blank" />
                                                    <img src='../Images/Home/<%# Eval("Image.ImageName")%>'
                                                        alt='<%# Eval("ProductName") %>' class="f_l"
                                                        style="display: block; width: 100%; height: 100%;" />

                                                    <div class="shadow none" id='shadow_<%# Eval("ProductID") %>'>
                                                        <span class="shadow_name"><%# Eval("ProductName") %></span>
                                                        <span class="shadow_price"><span class="qi">￥</span><%# string.Format("{0:F2}",Eval("ProductPrice")) %><span class="qi">起</span></span>

                                                    </div>
                                                    </a>
                                                </li>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </ul>
                                </div>
                            </ContentTemplate>
                            <Triggers>
                                <asp:AsyncPostBackTrigger ControlID="ter_8" EventName="Click" />
                                <asp:AsyncPostBackTrigger ControlID="ter_9" EventName="Click" />
                                <asp:AsyncPostBackTrigger ControlID="ter_6" EventName="Click" />
                                <asp:AsyncPostBackTrigger ControlID="ter_7" EventName="Click" />
                                <asp:AsyncPostBackTrigger ControlID="ter_10" EventName="Click" />
                            </Triggers>
                        </asp:UpdatePanel>
                        <!--主题分类-->
                    </div>

                    <div class="mtext_b_r f_l">
                        <div class="mzt_right_l">
                            <div class="mtext_b_l_title blue">
                                <div class="mtext_title_l f_l">为什么选择我们</div>
                            </div>
                            <div class="mzt_right_t">
                                <ul>
                                    <li>
                                        <div class="mzt_right_title">海量农家资源，专业农家预订平台</div>
                                        <div class="mzt_right_text">满足不同客户需求，专业操作，质量保证</div>
                                    </li>
                                    <li>
                                        <div class="mzt_right_title">轻松发布需求，农家直接沟通</div>
                                        <div class="mzt_right_text">填写需求信息，快速发布，农家电话联系，快捷方便</div>
                                    </li>
                                    <li>
                                        <div class="mzt_right_title">多个农家优选方案供选择</div>
                                        <div class="mzt_right_text">根据您的发布需求，提供3-5家农家供您选择</div>
                                    </li>
                                    <li>
                                        <div class="mzt_right_title">签协议，付定金，送保险，优先赔付</div>
                                        <div class="mzt_right_text">互惠共赢，法律保障，保险理赔，出行无忧</div>
                                    </li>
                                    <li>
                                        <div class="mzt_right_title">全程服务保障</div>
                                        <div class="mzt_right_text">专属客服为您的行程，保驾护航，及时解决行程问题</div>
                                    </li>
                                </ul>

                            </div>
                        </div>
                    </div>

                </div>
                <div class="mtext_s">
                    <div class="yuyue">
                        <div class="f_l new_num">
                            <div class="yd_num">0</div>
                            <div class="yd_num">7</div>
                            <div class="yd_num">8</div>
                            <div class="yd_num">0</div>
                        </div>
                        <div class="f_l tit_num">
                            <div class="biaoti">已成功预约</div>
                            <div class="ksyd">3步即可完成预约</div>
                        </div>
                    </div>
                    <div class="yuyue">
                        <div class="f_l new_num">
                            <div class="yd_num">1</div>
                            <div class="yd_num">7</div>
                            <div class="yd_num">5</div>
                            <div class="yd_num">0</div>
                        </div>
                        <div class="f_l tit_num">
                            <div class="biaoti">已发布需求</div>
                            <div class="ksyd">获符合需求农家推荐</div>
                        </div>
                    </div>
                    <div class="yuyue">
                        <div class="f_l new_nums">
                            <div class="yd_num">0</div>
                            <div class="yd_num">7</div>
                            <div class="yd_num">3</div>
                            <div class="yd_num">9</div>
                            <div class="yd_num">1</div>
                        </div>
                        <div class="f_l tit_num">
                            <div class="biaoti">已服务人次</div>
                            <div class="ksyd">98.5%客户满意度</div>
                        </div>
                    </div>
                    <a onclick="destine();" class="fabu_an">我要去农家
                    </a>
                </div>
                <div class="mtext_x">
                    <div class="mtext_yuyue f_l">
                        <div class="mtext_yuyue_title lvsesz">
                            <div class="f_l kuais">最新预约</div>
                            <label class="f_r">
                                <span class="myy_yd ">近期已有<lable class="myy_num"> 86</lable>
                                    单预约</span></label>
                        </div>
                        <div class="mtext_x_l zuixin_yuyue">
                            <table width="100%">
                                <tbody>
                                    <tr class="mtext_th">
                                        <th width="100">发布时间</th>
                                        <th width="80">客人</th>
                                        <th width="160">要去农家</th>
                                        <th width="200">出行目的</th>
                                        <th width="80">出行人数</th>
                                    </tr>
                                    <tr>
                                        <td>2017-09-10</td>
                                        <td>杨先生</td>
                                        <td>相知农家乐</td>
                                        <td>烧烤 垂钓 农家饭 </td>
                                        <td>2人</td>

                                    </tr>
                                    <tr>
                                        <td>2017-04-21</td>
                                        <td>邓先生</td>
                                        <td>相知农家乐</td>
                                        <td>垂钓 农家饭 </td>
                                        <td>4人</td>

                                    </tr>
                                    <tr>
                                        <td>2017-04-21</td>
                                        <td>杨先生</td>
                                        <td>相知农家乐</td>
                                        <td>烧烤 垂钓 农家饭 </td>
                                        <td>10人</td>

                                    </tr>
                                    <tr>
                                        <td>2017-04-05</td>
                                        <td>吴女士</td>
                                        <td>梦微草堂</td>
                                        <td>采摘 烧烤 垂钓 </td>
                                        <td>10人</td>

                                    </tr>
                                    <tr>
                                        <td>2017-03-23</td>
                                        <td>周先生</td>
                                        <td>圣湖俱乐部</td>
                                        <td>垂钓 农家饭 采摘 </td>
                                        <td>20人</td>

                                    </tr>
                                    <tr>
                                        <td>2017-03-23</td>
                                        <td>周先生</td>
                                        <td>在水颐方</td>
                                        <td>农家饭 休闲 会议 </td>
                                        <td>40人</td>

                                    </tr>
                                    <tr>
                                        <td>2017-03-20</td>
                                        <td>刘先生</td>
                                        <td>相知农家乐</td>
                                        <td>烧烤 垂钓 农家饭 </td>
                                        <td>10人</td>

                                    </tr>
                                    <tr>
                                        <td>2017-03-17</td>
                                        <td>刘先生</td>
                                        <td>相知农家乐</td>
                                        <td>烧烤 垂钓 农家饭 </td>
                                        <td>10人</td>

                                    </tr>
                                </tbody>
                            </table>

                        </div>
                    </div>
                    <div class="mtext_fabu f_l">
                        <div class="mtext_yuyue_title lanse ">
                            <div class="f_l kuais">最新发布 </div>
                            <label class="f_r">
                                <span class="myy_yd">近期已有<lable class="myy_num"> 0</lable>
                                    单发布</span></label>
                        </div>
                        <div class="mtext_x_l zuixin_fabu">
                            <table width="100%">
                                <tbody>
                                    <tr class="mtext_th">
                                        <th width="80">客人</th>
                                        <th width="160">预定区域</th>
                                        <th width="200">出行目的</th>
                                        <th width="100">出行人数</th>
                                        <th width="100">发布时间</th>
                                    </tr>
                                    <tr>
                                        <td>杨女士</td>
                                        <td>上海闵行区</td>
                                        <td>垂钓 农家饭</td>
                                        <td>1个人</td>
                                        <td>137天前</td>
                                    </tr>
                                    <tr>
                                        <td>杨女士</td>
                                        <td>上海崇明区</td>
                                        <td>土特产 会议 农家饭</td>
                                        <td>5个人</td>
                                        <td>166天前</td>
                                    </tr>
                                    <tr>
                                        <td>施女士</td>
                                        <td>上海崇明区</td>
                                        <td>休闲 农家饭 </td>
                                        <td>10个人</td>
                                        <td>522天前</td>
                                    </tr>
                                    <tr>
                                        <td>张女士</td>
                                        <td>上海奉贤区</td>
                                        <td>农家饭 会议 烧烤 </td>
                                        <td>30个人</td>
                                        <td>566天前</td>
                                    </tr>
                                    <tr>
                                        <td>王先生</td>
                                        <td>湖州长兴县</td>
                                        <td>休闲 农家饭 </td>
                                        <td>4个人</td>
                                        <td>573天前</td>
                                    </tr>
                                    <tr>
                                        <td>张先生</td>
                                        <td>上海浦东新区</td>
                                        <td>休闲 农家饭 垂钓 </td>
                                        <td>10个人</td>
                                        <td>573天前</td>
                                    </tr>
                                    <tr>
                                        <td>许女士</td>
                                        <td>上海金山区</td>
                                        <td>农家饭 采摘 休闲 </td>
                                        <td>10个人</td>
                                        <td>573天前</td>
                                    </tr>
                                    <tr>
                                        <td>仇女士</td>
                                        <td>上海嘉定区</td>
                                        <td>农家饭 采摘 棋牌 </td>
                                        <td>15个人</td>
                                        <td>578天前</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="mtext_c">
                    <div class="mtext_b_l f_l">
                        <div class="mtext_b_l_title yellow">
                            <div class="mtext_title_l f_l">优选农家</div>
                            <asp:UpdatePanel runat="server" ID="UpBetterSelect" UpdateMode="Conditional" ChildrenAsTriggers="False">
                                <ContentTemplate>
                                    <asp:LinkButton OnClick="ChangeFarm" CssClass="stitlear stitlear_hover" Text="诚信商家" runat="server" ID="farmhouse1"></asp:LinkButton>
                                    <asp:LinkButton OnClick="ChangeFarm" CssClass="stitlear" Text="精品线路" runat="server" ID="farmhouse2"></asp:LinkButton>
                                </ContentTemplate>
                            </asp:UpdatePanel>
                        </div>
                        <div id="farmhouse_html" class="mtext_c_l">
                            <ul>
                                <asp:UpdatePanel runat="server" ID="UpBetter" UpdateMode="Conditional">
                                    <ContentTemplate>
                                        <asp:Repeater runat="server" ID="ReSincerityPro">
                                            <ItemTemplate>
                                                <li>
                                                    <a href='../Show/FarmDetails.aspx?productId=<%# Eval("ProductID") %>' target="_blank">
                                                        <img style="width: 100%; height: 132px;" alt="<%# Eval("Image.ImageName") %>"
                                                            src='../Images/Home/<%# Eval("Image.ImageName") %>' />
                                                        <div class="m_title_s"><%# Eval("ProductName") %></div>
                                                        <div class="m_title_c"><%# Eval("UserInfo_Role.Address") %></div>
                                                    </a>
                                                </li>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                    </ContentTemplate>
                                    <Triggers>
                                        <asp:AsyncPostBackTrigger ControlID="farmhouse1" EventName="Click" />
                                        <asp:AsyncPostBackTrigger ControlID="farmhouse2" EventName="Click" />
                                    </Triggers>
                                </asp:UpdatePanel>
                            </ul>
                        </div>
                    </div>
                </div>

                <div class="mtext_b_r f_l">
                    <div class="mtext_b_l_title yellow">

                        <div class="mtext_title_l f_l">点评</div>
                        <div class="f_r main_ddp">
                            <a href="javascript:;" id="hot1" onclick="hot(1)"
                                class="titleass rm titleass_hover">TOP榜</a>
                            <a href="javascript:;" id="hot2" onclick="hot(2)" class="titleass rm">最新</a>
                            <!--<a href="javascript:;" id="hot3" onclick="hot(3)" class="titleass rm">关注</a>-->
                        </div>

                    </div>
                    <div class="m_rm" id="hot_html">
                        <!--异步获取-->
                    </div>
                </div>
                <script>
                    $(function () {
                        //$(".m_rm_text").dotdotdot();
                        $.ajax({
                            url: "PartialView/Hot.html",
                            type: "GET",
                            dataType: "HTML",
                            success: function (data) {
                                $("#hot_html").html(data);
                            }
                        });
                    })
                </script>
            </div>
            <div class="mtext_jx">
                <div class="mtext_gg_img f_l">
                    <a href="#" class="guanggaotonglan" target="_blank">
                        <div>
                            <font style="background-color: #ffffff;"><img alt="" border="0"
											src="../Images/Home/57e105a3d7f31.jpg">
									</font>
                        </div>
                    </a>
                </div>
                <div class="mtext_b_r f_l">
                    <a href="#" target="_blank">
                        <div>
                            <img alt="" border="0"
                                src="../Images/Home/57e1080ee0356.png" />
                        </div>
                    </a>
                </div>
                <div class="mtext_b_l f_l">
                    <div class="mtext_b_l_title violet">
                        <div class="mtext_title_l f_l">企业精选</div>
                        <a href="javascript:;" id="company1" onclick="company(1)"
                            class="stitlea stitlea_hover">拓展基地</a>
                        <a href="javascript:;" id="company2" onclick="company(2)" class="stitlea">会议活动</a>
                        <a href="#" title="" class="myy_yd f_r">更多 &gt;&gt;</a>
                    </div>
                    <div class="mtext_c_l" id="company_html">
                        <!--异步获取内容-->
                    </div>
                </div>
                <script>
                    $.ajax({
                        url: "PartialView/Company.html",
                        type: "GET",
                        dataType: "HTML",
                        success: function (data) {
                            console.log("读取Top榜成功");
                            $("#company_html").html(data);
                        }
                    })
                </script>
                <div class="mtext_b_r f_l">
                    <div class="mtext_b_l_title violet">

                        <div class="f_l mtext_title">当季行</div>
                        <div class="f_r main_ddp">
                            <a href="javascript:;" id="season9" onclick="season(9)"
                                class="titleas dj titleas_hovers">采摘</a>
                            <a href="javascript:;" id="season11" onclick="season(11)" class="titleas dj ">垂钓</a>
                            <a href="javascript:;" id="season12" onclick="season(12)" class="titleas dj ">烧烤</a>
                        </div>

                    </div>
                    <div class="mtext_jx_ul" id="season_html">
                        <div class="mtext_jx_z">
                            <img alt="" src="../Images/Home/5565534cdda31.jpg">
                            <ul>
                                <li>
                                    <label class="f_l">
                                        <a href="#"
                                            target="_blank">[上海半日闲采摘园]奶油草莓</a></label>
                                    <label class="f_r">
                                        ￥<b
                                            class="red f-16">25</b>元/斤</label></li>
                                <li>
                                    <label class="f_l">
                                        <a href="#"
                                            target="_blank">[金沈泽农家乐]草莓采摘</a></label>
                                    <label class="f_r">
                                        ￥<b
                                            class="red f-16">25</b>元/斤</label></li>
                                <li>
                                    <label class="f_l">
                                        <a href="#"
                                            target="_blank">[赵屯草莓基地NO37]草莓采摘</a></label>
                                    <label class="f_r">
                                        ￥<b
                                            class="red f-16">28</b>元/斤</label></li>
                                <li>
                                    <label class="f_l">
                                        <a href="#"
                                            target="_blank">[宋先生草莓园]当季草莓采摘</a></label>
                                    <label class="f_r">
                                        ￥<b
                                            class="red f-16">25</b>元/斤</label></li>
                            </ul>
                        </div>
                        <div class="mtext_jx_z">
                            <img alt="" src="../Images/Home/5549b5a4cabbf.jpg">
                            <ul>
                                <li>
                                    <label class="f_l">
                                        <a href="#"
                                            target="_blank">[孙桥卉绿有机农场]有机蔬菜</a></label>
                                    <label class="f_r">
                                        ￥<b
                                            class="red f-16">15</b>元/斤</label></li>
                                <li>
                                    <label class="f_l">
                                        <a href="#"
                                            target="_blank">[多利农庄]有机蔬菜尝鲜</a></label>
                                    <label class="f_r">
                                        ￥<b
                                            class="red f-16">10</b>元/斤</label></li>
                                <li>
                                    <label class="f_l">
                                        <a href="#"
                                            target="_blank">[归园田居有机农庄]有机蔬菜</a></label>
                                    <label class="f_r">
                                        ￥<b
                                            class="red f-16">15</b>元/斤</label></li>
                                <li>
                                    <label class="f_l">
                                        <a href="#"
                                            target="_blank">[上海都市菜园]有机蔬菜特惠</a></label>
                                    <label class="f_r">
                                        ￥<b
                                            class="red f-16">10</b>元/斤</label></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <!-- <div class="mtext_cm"><img src="http://www.01nz.com.cn/public/attachment/201505/12/14/55519e2dde624.jpg" alt="" border="0" /> </div> -->
            <div class="mtext_zt">
                <div class="mtext_b_ls f_l">
                    <div class="mtext_b_l_title lvse">
                        <div class="mtext_title_l f_l">主题攻略</div>
                        <ul class="down_store_jp" id="index_pudp">
                            <li class="s_28 " id="jp_jp"><a href="javascript:void(0);"
                                onclick="special_store(28)">最美乡村</a></li>
                            <li class="s_29"><a href="javascript:void(0);" class="lvses"
                                onclick="special_store(29)">农家攻略</a></li>
                            <li class="s_30"><a href="javascript:void(0);" class="lvses"
                                onclick="special_store(30)">生态民宿</a></li>
                            <li class="s_36"><a href="javascript:void(0);" class="lvses"
                                onclick="special_store(36)">农家故事</a></li>
                        </ul>
                    </div>
                    <div class="jptore_l f_l">
                        <div class="mzt_les f_l">
                            <div class="homeimg">
                                <img alt="" border="0" src="../Images/Home/555954ef1316e.jpg">
                            </div>
                            <div class="mzt_l_top">
                                <div class="mzt_l_title lvse">农家专题</div>
                                <span class="zhuanti_nr">
                                    <a href="#" target="_blank">农家美食</a>
                                    <a href="#" target="_blank">当季指南</a>
                                    <a href="#" target="_blank">生态民宿</a>
                                </span>
                            </div>
                            <div class="homeimg">
                                <img alt="" border="0"
                                    src="../Images/Home/555954e529637.jpg">
                            </div>
                            <div class="mzt_les f_l">
                                <div class="mzt_l_top">
                                    <div class="mzt_l_title lvse">垂钓专题</div>
                                    <span class="zhuanti_nr">
                                        <a href="#"
                                            target="_blank">饵料配方</a>
                                        <a href="#"
                                            target="_blank">技巧学习</a>
                                        <a href="#"
                                            target="_blank">钓场渔获</a>
                                    </span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div id="ajax_special_store">
                        <div class="mzt_r f_l">
                            <div class="jpzt_nr">
                                <a href="#" target="_blank">武汉藏着26个古色古香的名村，周末自驾游…</a>
                                <p>秋天是个非常适合远足的季节，少了夏日的酷暑，凉风习习。寻一个古镇或者村落，遍地都是初秋最美的颜色~这样的天气这样的季节，…</p>
                                <div class="llxh f_r">
                                    <label class="qlan">浏览(53373)</label>
                                    <label class="qhui">|</label>
                                    <label class="fenh">喜欢(0)</label>
                                </div>
                            </div>
                            <div class="jpzt_nr">
                                <a href="#" target="_blank">武汉藏着26个古色古香的名村，周末自驾游…</a>
                                <p>秋天是个非常适合远足的季节，少了夏日的酷暑，凉风习习。寻一个古镇或者村落，遍地都是初秋最美的颜色~这样的天气这样的季节，…</p>
                                <div class="llxh f_r">
                                    <label class="qlan">浏览(53369)</label>
                                    <label class="qhui">|</label>
                                    <label class="fenh">喜欢(0)</label>
                                </div>
                            </div>
                            <div class="jpzt_nr">
                                <a href="#" target="_blank">阳澄湖农家乐一日游</a>
                                <p>秋天真是一个去农庄好季节，真是吃阳澄湖大闸蟹的时候，肥美鲜淳，一蟹在手，一切成空，馋了一年的美味的，终于等待大快朵颐的时…</p>
                                <div class="llxh f_r">
                                    <label class="qlan">浏览(50130)</label>
                                    <label class="qhui">|</label>
                                    <label class="fenh">喜欢(0)</label>
                                </div>
                            </div>
                            <div class="jpzt_nr">
                                <a href="#" target="_blank">不会令你失望的河南农家旅游</a>
                                <p>来河南还去云台山、小桃园、城隍庙？当代旅游人已经不去这些被“踏遍”的景点了，当下时兴农家旅游。作为资深旅游达人的我，为大…</p>
                                <div class="llxh f_r">
                                    <label class="qlan">浏览(89890)</label>
                                    <label class="qhui">|</label>
                                    <label class="fenh">喜欢(0)</label>
                                </div>
                            </div>
                            <div class="jpzt_nr">
                                <a href="#" target="_blank">2015安徽4大最美乡村
                                </a>
                                <p>一直听朋友说安徽的美需要你去发现，这不我就利用假期的时间去体会安徽的4大最美乡村。带上你的相机和我一起走吧，一起走在最美…</p>
                                <div class="llxh f_r">
                                    <label class="qlan">浏览(90488)</label>
                                    <label class="qhui">|</label>
                                    <label class="fenh">喜欢(0)</label>
                                </div>
                            </div>
                            <div class="jpzt_nr">
                                <a href="#" target="_blank">盘点那些2015年最美丽的古镇景点</a>
                                <p>如果你也是一个喜欢古镇旅游的人，如果你也对国内的很多旅游景点有一些不一样的情感，那么2015年，相信一定是你选择古镇旅游…</p>
                                <div class="llxh f_r">
                                    <label class="qlan">浏览(88472)</label>
                                    <label class="qhui">|</label>
                                    <label class="fenh">喜欢(0)</label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="mtext_b_rs f_l">
                    <div class="mtext_b_l_title lvse">
                        <div class="mtext_title f_l">农家发布</div>
                        <div class="f_r">
                            <a href="javascript:;" id="g1" onclick="gq(1)" class="titleas  titleas_hover">转让</a>
                            <a href="javascript:;" id="g2" onclick="gq(2)" class="titleas">优惠</a>
                        </div>
                    </div>
                    <div class="mtext_zt_text" id="need_html">
                        <ul>
                            <li>
                                <a href="#" target="_blank">
                                    <label class="pink f-14 f_b">【转让】</label>
                                    松江大港生态农家乐出售 </a>
                            </li>
                            <li>
                                <a href="#" target="_blank">
                                    <label class="pink f-14 f_b">【转让】</label>
                                    垂钓鱼塘农家乐转让 </a>
                            </li>
                            <li>
                                <a href="#" target="_blank">
                                    <label class="pink f-14 f_b">【转让】</label>
                                    度假村、农家乐合作或转让 </a>
                            </li>
                            <li>
                                <a href="#" target="_blank">
                                    <label class="pink f-14 f_b">【转让】</label>
                                    （出租）出租或出售位于浙江省湖州市德清县大树林农庄 </a>
                            </li>
                            <li>
                                <a href="#" target="_blank">
                                    <label class="pink f-14 f_b">【转让】</label>
                                    230亩度假村农庄整体转让 </a>
                            </li>
                            <li>
                                <a href="#" target="_blank">
                                    <label class="pink f-14 f_b">【转让】</label>
                                    农庄出租出售 </a>
                            </li>
                            <li>
                                <a href="#" target="_blank">
                                    <label class="pink f-14 f_b">【转让】</label>
                                    （转让） 西夏墅地理位置最优的鱼塘转让 </a>
                            </li>
                            <li>
                                <a href="#" target="_blank">
                                    <label class="pink f-14 f_b">【转让】</label>
                                    （出租）新建农庄出租 </a>
                            </li>
                            <li>
                                <a href="#" target="_blank">
                                    <label class="pink f-14 f_b">【转让】</label>
                                    （转让）常州一农庄出售 </a>
                            </li>
                            <li>
                                <a href="#" target="_blank">
                                    <label class="pink f-14 f_b">【转让】</label>
                                    （转让） 农庄转让,八间房,六个包间,全部全新,装修 </a>
                            </li>
                            <li>
                                <a href="#" target="_blank">
                                    <label class="pink f-14 f_b">【转让】</label>
                                    （转让） 天香农庄出租,特色农庄,设备齐全。 </a>
                            </li>
                            <li>
                                <a href="#" target="_blank">
                                    <label class="pink f-14 f_b">【转让】</label>
                                    （出租）阳山桃园出售42亩桃园农庄(有图) </a>
                            </li>
                        </ul>
                    </div>
                    <div class="nongjiafabu">
                        <a href="#" target="_blank">
                            <img alt="农家发布" class="f_l"
                                src="../Images/Home/nongjiafb.png">
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="blank"></div>
    <div class="foot_xian"></div>
</asp:Content>
