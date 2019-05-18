<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="Play_And_Ate.Order.Order" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link href="../Content/Order/common_wm.html" rel="stylesheet" media="screen" type="text/css" />
    <link href="../Content/Order/order.css" rel="stylesheet" />
    <link href="../Content/Order/style.css" rel="stylesheet" />
    <title>在线预订-Play And Ate</title>
    <script src="../Scripts/Order/global.js"></script>
</head>
<body>
    <div class="head">
        <div class="head_mid">
            <div class="head_mid_right">
            </div>
            <div class="head_mid_left">
                <div>
                    <span id="_Check_head_Login">
                        <!-- <a href="http://xianlu.01nz.com.cn/weibo/index.php"><img src="http://xianlu.01nz.com.cn/ORG7188_templets/default//images/sina.png" class="tt"/></a> -->
                        你好，欢迎光临第一农庄网！<!-- <a href="http://xianlu.01nz.com.cn/qq/index.php"><img src="http://xianlu.01nz.com.cn/ORG7188_templets/default//images/qq.png" class="tt"/></a> --><a href="http://www.01nz.com.cn/user-login">登录</a>
                        &nbsp;&nbsp;|&nbsp;&nbsp;
                        <a href="http://www.01nz.com.cn/user-register" target="_blank">注册</a>
                    </span>
                </div>

            </div>

        </div>
        <!--  head_mid -->
    </div>
    <!--  head -->

    <div class="clear"></div>
    <div class="head1">

        <!--通告开始-->

        <div class="head_ad">
            <div id="adv_forum_home_full"></div>
            <div class="fade_btn"></div>
        </div>
        <!--通告结束-->

        <div class="head1_logo top20"><a href="http://www.01nz.com.cn/">
            <img src="%E5%9C%A8%E7%BA%BF%E9%A2%84%E8%AE%A2-%E7%AC%AC%E4%B8%80%E5%86%9C%E5%BA%84%E7%BD%91_files/logo.gif"></a></div>
        <div style="margin-top: 35px; float: left; border-left: 1px #666666 solid; width: 93px; height: 23px; text-align: center; font-size: 25px; line-height: 16px; font-family: '微软雅黑';">农家行</div>
        <div class="fenzhan"></div>
        <div class="search_box f_l" style="margin-top: 25px;">
            <div class="search_input f_l">
                <input type="text" class="search_txt" name="keyword" id="header_kw" value="农庄 农家乐 垂钓场 生态园 农家行" x-webkit-speech="" x-webkit-grammar="builtin:translate">
                <a id="sousuo_btn" class="search_btn">搜索</a>
            </div>
            <div class="blank1"></div>
        </div>
        <div class="hour24 top20"><span>400-021-3158</span><img src="%E5%9C%A8%E7%BA%BF%E9%A2%84%E8%AE%A2-%E7%AC%AC%E4%B8%80%E5%86%9C%E5%BA%84%E7%BD%91_files/busy_yh.gif"></div>

        <!-- <div class="headbanner"><a href=#><img src=http://xianlu.01nz.com.cn/uploads/userup/0/1345455395.gif></a></div> -->
    </div>
    <div class="nv top20">
        <div class="wrap">
            <ul>
                <li class="all_class nz_biaoyu">
                    <div class="nz_biaoyu_dv">
                        <ul id="scrollnews" class="scrollnews">
                            <li class="clear">去农庄&nbsp;&nbsp;就上第一农庄网</li>
                            <li class="clear">热线电话：400-021-3158</li>
                        </ul>
                    </div>
                </li>
                <li class="daohang"><a href="http://www.01nz.com.cn/">首页</a></li>
                <li class="daohang"><a href="http://www.01nz.com.cn/farm">农庄</a></li>
                <li class="daohang"><a href="http://www.01nz.com.cn/farmhouse">农家乐</a></li>
                <li class="daohang"><a href="http://www.01nz.com.cn/biotope">生态园</a></li>
                <li class="daohang"><a href="http://www.01nz.com.cn/fish">垂钓场</a></li>
                <li class="cur"><a href="http://xianlu.01nz.com.cn/" title="农家行">农家行</a></li>



                <!-- <li class="fl"><a href="http://xianlu.01nz.com.cn/add/list/111.html">资讯  </a></li>	 -->
                <li class="fl"><a href="http://01nz.com.cn/discover" target="_blank">专题</a></li>
                <!--  <li class="fl"><a href="http://xianlu.01nz.com.cn/add/dingzhi.html">定制</a></li>-->
                <div class="clear"></div>
            </ul>
        </div>
    </div>
    <div class="head1">
        <!--  head1 -->
        <div id="page">
            <div class="order top10">
                <!--订单步骤 START-->
                <div class="orderStep">
                    <ul class="step1">
                        <li class="li1 on">填写订单</li>
                        <li class="li2 ">填写游客信息</li>
                        <li class="li3 ">核对订单</li>
                        <li class="li4 ">付款</li>
                        <li class="li5 ">预订成功</li>
                    </ul>
                </div>
                <!--订单步骤 END-->
                <form runat="server">
                    <div class="orderWrap">
                        <div class="userInfo">
                            <h2>在线预订：<a class="a1" href='../Line/' target="_blank"></a> <a href="">
                                <asp:Label ID="Label1" runat="server" Text='<%#Eval("路线") %>'></asp:Label></a>&lt;上海 出发&gt;
                            </h2>
                            <div class="checkOrderInfo">
                                <div class="hd">
                                    线路信息
                                </div>
                                <div class="bd">
                                    <table width="100%" cellspacing="0" cellpadding="0">
                                        <tbody>
                                            <tr>
                                                <th class="lt" width="15%">线路编号
                                                </th>

                                                <th style="text-align: left;" width="40%">出发时间与价格(点击更改)
                                                </th>
                                                <th width="18%">出游成人数
                                                </th>
                                                <th width="18%">出游儿童数
                                                </th>
                                            </tr>
                                            <tr>
                                                <td class="lt">CHN114762
                                                </td>


                                                <td>
                                                    <div class="fastCalender2" id="fastCalender2">
                                                        <div class="p10">
                                                            <span class="s10 pTimeSpan">
                                                                <input type="text" class="pTime" value="2019-05-04 (星期六) 出发,199元/成人, 160元/儿童" style="color: #666666" id="pTime"></span>
                                                            <div class="clearfix"></div>
                                                            <div class="s10Trim1 pDropCalender" style="z-index: 999;">
                                                                <div class="calenderPart" id="calenderPart">
                                                                    <div class="calenderPartM">
                                                                        <ul>
                                                                            <li id="2019-04-27" v="2019-04-27" son="160" title="199" onclick="changeGoDate(this)">2019-04-27 (星期六) 出发,<b>199</b>元/成人, 160元/儿童</li>
                                                                            <li id="2019-05-01" v="2019-05-01" son="160" title="189" onclick="changeGoDate(this)">2019-05-01 (星期三) 出发,<b>189</b>元/成人, 160元/儿童</li>
                                                                            <li id="2019-05-04" v="2019-05-04" son="160" title="199" onclick="changeGoDate(this)">2019-05-04 (星期六) 出发,<b>199</b>元/成人, 160元/儿童</li>
                                                                            <li id="2019-05-08" v="2019-05-08" son="160" title="189" onclick="changeGoDate(this)">2019-05-08 (星期三) 出发,<b>189</b>元/成人, 160元/儿童</li>
                                                                            <li id="2019-05-11" v="2019-05-11" son="160" title="199" onclick="changeGoDate(this)">2019-05-11 (星期六) 出发,<b>199</b>元/成人, 160元/儿童</li>
                                                                            <li id="2019-05-15" v="2019-05-15" son="160" title="189" onclick="changeGoDate(this)">2019-05-15 (星期三) 出发,<b>189</b>元/成人, 160元/儿童</li>
                                                                            <li id="2019-05-18" v="2019-05-18" son="160" title="199" onclick="changeGoDate(this)">2019-05-18 (星期六) 出发,<b>199</b>元/成人, 160元/儿童</li>
                                                                            <li id="2019-05-22" v="2019-05-22" son="160" title="189" onclick="changeGoDate(this)">2019-05-22 (星期三) 出发,<b>189</b>元/成人, 160元/儿童</li>
                                                                            <li id="2019-05-25" v="2019-05-25" son="160" title="199" onclick="changeGoDate(this)">2019-05-25 (星期六) 出发,<b>199</b>元/成人, 160元/儿童</li>
                                                                            <li id="2019-05-29" v="2019-05-29" son="160" title="189" onclick="changeGoDate(this)">2019-05-29 (星期三) 出发,<b>189</b>元/成人, 160元/儿童</li>
                                                                            <li id="2019-06-01" v="2019-06-01" son="160" title="199" onclick="changeGoDate(this)">2019-06-01 (星期六) 出发,<b>199</b>元/成人, 160元/儿童</li>
                                                                            <li id="2019-06-05" v="2019-06-05" son="160" title="189" onclick="changeGoDate(this)">2019-06-05 (星期三) 出发,<b>189</b>元/成人, 160元/儿童</li>
                                                                            <li id="2019-06-08" v="2019-06-08" son="160" title="199" onclick="changeGoDate(this)">2019-06-08 (星期六) 出发,<b>199</b>元/成人, 160元/儿童</li>
                                                                            <li id="2019-06-12" v="2019-06-12" son="160" title="189" onclick="changeGoDate(this)">2019-06-12 (星期三) 出发,<b>189</b>元/成人, 160元/儿童</li>
                                                                            <li id="2019-06-15" v="2019-06-15" son="160" title="199" onclick="changeGoDate(this)">2019-06-15 (星期六) 出发,<b>199</b>元/成人, 160元/儿童</li>
                                                                            <li id="2019-06-19" v="2019-06-19" son="160" title="189" onclick="changeGoDate(this)">2019-06-19 (星期三) 出发,<b>189</b>元/成人, 160元/儿童</li>
                                                                            <li id="2019-06-22" v="2019-06-22" son="160" title="199" onclick="changeGoDate(this)">2019-06-22 (星期六) 出发,<b>199</b>元/成人, 160元/儿童</li>
                                                                            <li id="2019-06-26" v="2019-06-26" son="160" title="189" onclick="changeGoDate(this)">2019-06-26 (星期三) 出发,<b>189</b>元/成人, 160元/儿童</li>
                                                                            <li id="2019-06-29" v="2019-06-29" son="160" title="199" onclick="changeGoDate(this)">2019-06-29 (星期六) 出发,<b>199</b>元/成人, 160元/儿童</li>
                                                                            <li id="2019-07-03" v="2019-07-03" son="160" title="189" onclick="changeGoDate(this)">2019-07-03 (星期三) 出发,<b>189</b>元/成人, 160元/儿童</li>
                                                                            <li id="2019-07-06" v="2019-07-06" son="160" title="199" onclick="changeGoDate(this)">2019-07-06 (星期六) 出发,<b>199</b>元/成人, 160元/儿童</li>
                                                                            <li id="2019-07-10" v="2019-07-10" son="160" title="189" onclick="changeGoDate(this)">2019-07-10 (星期三) 出发,<b>189</b>元/成人, 160元/儿童</li>
                                                                            <li id="2019-07-13" v="2019-07-13" son="160" title="199" onclick="changeGoDate(this)">2019-07-13 (星期六) 出发,<b>199</b>元/成人, 160元/儿童</li>
                                                                            <li id="2019-07-17" v="2019-07-17" son="160" title="189" onclick="changeGoDate(this)">2019-07-17 (星期三) 出发,<b>189</b>元/成人, 160元/儿童</li>
                                                                            <li id="2019-07-20" v="2019-07-20" son="160" title="199" onclick="changeGoDate(this)">2019-07-20 (星期六) 出发,<b>199</b>元/成人, 160元/儿童</li>
                                                                            <li id="2019-07-24" v="2019-07-24" son="160" title="189" onclick="changeGoDate(this)">2019-07-24 (星期三) 出发,<b>189</b>元/成人, 160元/儿童</li>
                                                                        </ul>
                                                                    </div>
                                                                    <div class="calenderPartF"></div>
                                                                </div>

                                                            </div>

                                                        </div>
                                                    </div>

                                                </td>
                                                <td>


                                                    <input type="button" value="-" name="ccc" id="ccc" class="put" title="减少成人数" />
                                                    <input type="text" id="txtHiddenPersonNum" name="txtHiddenPersonNum" value="2" class="txtHiddenPersonNum" />
                                                    <input type="button" value="+" onclick="javascript:this.form.txtHiddenPersonNum.value++;" name="bbb" id="bbb" class="put" title="增加成人数" />
                                                </td>
                                                <td>
                                                    <input type="button" value="-" name="eee" id="eee" class="put" title="减少儿童数" />
                                                    <input type="text" id="txtHiddenChildNum" name="txtHiddenChildNum" value="0" class="txtHiddenChildNum"/>
                                                    <input type="button" value="+" name="ddd" id="ddd" class="put" title="增加儿童数" />
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                                <!--线路信息 END-->
                            </div>
                        </div>
                        <div class="orderList" style="top: 0px;">
                            <div class="hd">
                                <span></span>预订清单
                            </div>
                            <div class="bd">
                                <ul>
                                    <li class="li1">
                                        <p class="p1">
                                            旅游团费
                                        </p>
                                        <p>
                                            <b>￥<span id="getjiage">398</span></b> <font id="getcr">2</font>成人×￥<font id="gethidChenRen">199</font>
                                        </p>
                                        <p>
                                            <b>￥<span id="getrtjiage">0</span></b><font id="getrt">0</font> 儿童×￥<font id="gethidErTong">160</font>
                                        </p>
                                    </li>
                                    <li class="li2" id="AddPList" style="display: none;"></li>
                                    <li class="li3" id="DeKouList" style="display: none;"></li>
                                </ul>
                                <script>
                                    //获取价格
                                    $(function () {
                                        var s = $("#getjiage").html();
                                        console.info(s);
                                    })
                                </script>
                                <%--<script>
                                    var crjg = "<b>￥<s>" + $("#getjiage").val() + "</s></b>" + $("#getcr").val() + "成人×￥" + $("#gethidChenRen").val();
                                    var etjg = "<b>￥<s>" + $("#getrtjiage").val() + "</s></b>" + $("#getrt").val() + "成人×￥" + $("#gethidErTong").val();
                                </script>--%>
                                <div class="li4">
                                    <p>
                                        <strong>应付总额：</strong><label>￥<i id="offerPrice">398</i></label>
                                        <input type="hidden" id="allp" name="allp" value="398">
                                    </p>
                                </div>
                            </div>
                        </div>
                        <div class="clearfix">
                        </div>
                        <!--页面-->
                        <div class="userInfoBtn" id="gl_return" style="display: block;">
                            <input type="button" id="btn_pre" <%--onclick="window.location.href='http://xianlu.01nz.com.cn/archives/1147.html'"--%> style="background: url(http://xianlu.01nz.com.cn/ORG7188_templets/default/images/order15.gif); border-width: 0px; cursor: pointer; width: 139px; height: 44px;"/>
                            <input type="button" id="btn_next" style="background: url(http://xianlu.01nz.com.cn/ORG7188_templets/default/images/order19.gif); border-width: 0px; cursor: pointer; width: 139px; height: 44px;" />
                            <script>
                                //点击上一页返回页面
                                $("#btn_pre").click(function () {
                                    //window.location.href = document.referrer;
                                    //window.history.back(-1);
                                    $("#btn_pre").click(function () {
                                    if (sessionStorage.getItem("Order_0") == null) {
                                    sessionStorage.setItem("Order_0", document.referrer);
                                    a = document.referrer;
                                    window.location.href = a;
                                } else {
                                    window.location.href = sessionStorage.getItem("Order_0");
                                }
                                })
                                })
                            </script>
                            <script>
                                $(function () {
                                    //点击下一页实现跳转
                                    $("#btn_next").click(function () {
                                        var cr = $("#txtHiddenPersonNum").val();
                                        var et = $("#txtHiddenChildNum").val();
                                        var jg1 = $("#offerPrice").html();
                                        sessionStorage.setItem("orderzjg", jg1);//保存价格
                                        sessionStorage.setItem("crrs", cr); //保存成人人数
                                        sessionStorage.setItem("etrs", et); //保存儿童人数
                                        console.log(sessionStorage.getItem("crrs"));
                                        window.location.href = "Order_2.aspx?Length=" + $("#txtHiddenPersonNum").val() + "&crzjg=" + $("#getjiage").html() +
                                            "&crjg=" + $("#gethidChenRen").html() + "&etzjg=" + $("#getrtjiage").html() + "&etrs=" + $("#txtHiddenChildNum").val()
                                            + "&etjg=" + $("#gethidErTong").html() + "&zjg=" + $("#offerPrice").html(); //url传递参数
                                    });
                                })
                            </script>
                        </div>
                        <div class="clearfix">
                        </div>
                    </div>
                    <!--传给下一个页面的数据-->
                    <input type="hidden" id="txtHiddenPId" name="txtHiddenPId" value="1147"/>
                    <input type="hidden" id="txtHiddenProductTotal" name="txtHiddenProductTotal" value="1147"/>
                    <input type="hidden" id="txtHiddenNums" name="txtHiddenNums" value="2"/>
                    <input type="hidden" id="txtHiddenGoDate" name="txtHiddenGoDate" value="2019-05-04"/>
                    <input type="hidden" id="txtHiddenUzaiPrice" name="txtHiddenUzaiPrice" value="199"/>
                    <input type="hidden" id="txtHiddenChildPrice" name="txtHiddenChildPrice" value="160"/>
                    <input type="hidden" id="txtHiddenProcessType" name="txtHiddenProcessType" value="1"/>
                    <input type="hidden" id="txtHiddenMType" name="txtHiddenMType" value="3"/>
                    <input type="hidden" id="txtHiddenYesOrNo" name="txtHiddenYesOrNo" value="no"/>
                    <input type="hidden" id="txtSubmitHiddenAdd" name="txtSubmitHiddenAdd" value=""/>
                    <input type="hidden" id="txtSubmitHiddenUb" name="txtSubmitHiddenUb" value=""/>
                    <input type="hidden" id="txtSubmitHiddenUpTrain" name="txtSubmitHiddenUpTrain" value=""/>
                    <input type="hidden" id="txtHiddenUList" name="txtHiddenUList" value=""/>
                    <input type="hidden" id="txtHiddenDes" name="txtHiddenDes" value=""/>
                    <input type="hidden" id="txtHiddenUseScore" name="txtHiddenUseScore" value="0"/>
                    <input type="hidden" id="txtHiddenAllScore" name="txtHiddenAllScore" value="8"/>
                </form>
            </div>
            <script src="../Scripts/Order/one_order.js"></script>
            <script src="../Scripts/Order/jquery.js"></script>
            <script src="../Scripts/Order/tooltip.js"></script>
            <script src="../Scripts/Order/order.js"></script>
            <script type="text/javascript">
                $.ajax({
                    type: "Get",
                    url: "http://xianlu.01nz.com.cn/add/ajax_select.php?aid=1147&time=" + Math.random(),
                    data: "json",
                    success: function (msg) {
                        var jason = eval("(" + msg + ")");
                        var sonprice = "";
                        var txtHiddenGoDate = $("#txtHiddenGoDate").val();
                        for (var i = 0; i < jason.length; i++) {
                            sonprice = "" + jason[i].ChildPrice + "元/儿童";
                            if (txtHiddenGoDate == jason[i].Month) {
                                $("#pTime").val("" + jason[i].Month + "" + jason[i].Week + "出发," + jason[i].PersonPrice + "元/成人, " + sonprice + "");
                            }
                            $(".p10 ul").append("<li id='" + jason[i].Month + "' v='" + jason[i].Date + "' son='" + jason[i].ChildPrice + "' title='" + jason[i].PersonPrice + "' onclick='changeGoDate(this)' > " + jason[i].Month + "" + jason[i].Week + "出发,<b>" + jason[i].PersonPrice + "</b>元/成人, " + sonprice + "</li>");
                        }
                        $("#_hidChenRen").val(ul.find("li").eq(0).attr("title"));
                        $("#_hidErTong").val(ul.find("li").eq(0).attr("son"));
                        $("#_hidDate").val(ul.find("li").eq(0).attr("v"));
                    }

                });
                $(function () {
                    do71org88ShowCalender("fastCalender2");
                });   //$(function()
                function do71org88ShowCalender(obj) {
                    var tg = $('#' + obj).find('div.p10').find('.calenderPart');
                    var arrow = tg.next('.cArrow');
                    tg.next(".cArrow").click(function () {
                        tg.show();
                        arrow.attr("class", "cArrow cup");

                    });
                    tg.parents('div.p10').find('span.pTimeSpan').click(function () {
                        tg.show();
                        arrow.attr("class", "cArrow cup");
                    });
                    tg.parents('div.p10').find('span.pTimeSpan').click(function () {
                        tg.show();
                        arrow.attr("class", "cArrow cup");
                    });


                    //点击Li日期下拉选项
                    tg.find('li').live("click", function () {
                        var o = $(this);
                        tg.parents('div.p10').find('input.pTime').val(o.text());
                        tg.hide();
                        arrow.attr("class", "cArrow cdown");
                        $("#txtHiddenUzaiPrice").val(o.attr("title")); //成人价
                        $("#gethidChenRen").text(o.attr("title")); //预定清单成人价
                        var getjiage = $("#txtHiddenUzaiPrice").val() * $("#txtHiddenPersonNum").val(); //计算价格
                        $("#getjiage").text(getjiage);
                        $("#txtHiddenChildPrice").val(o.attr("son")); //儿童价
                        $("#gethidErTong").text(o.attr("son")); //预定清单儿童价
                        var getrtjiage = $("#txtHiddenChildPrice").val() * $("#txtHiddenChildNum").val();
                        $("#getrtjiage").text(getrtjiage);
                        $("#txtHiddenGoDate").val(o.attr("v")); // 日期
                        sumAll();

                    });
                    $(document).click(function (e) {
                        var t = $(e.target);
                        var v1 = "#" + obj + " .pTime" + ",#" + obj + " .pDropCalender" + ",#" + obj + " .pDropCalender *,#submit_a,#btnFastCalender,#submit_a";
                        if (!t.is(v1)) {
                            tg.hide();
                            arrow.attr("class", "cArrow cdown");
                        }
                    });
                }
            </script>
            <!--//尾部-->
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
                    <div class="beian_eng" align="center">
                        Copyright 2013 www.01nz.com.cn All Rights Reserved.
                    </div>
                    <!-- 热门城市 -->
                    <!-- 区县分类 -->
                    <!-- 热门农庄 -->
                    <!-- 友情链接 -->
                    <div align="center">
                        <img src="%E5%9C%A8%E7%BA%BF%E9%A2%84%E8%AE%A2-%E7%AC%AC%E4%B8%80%E5%86%9C%E5%BA%84%E7%BD%91_files/xian.jpg" alt="灰线"></div>
                    <div align="center">
                        <img src="%E5%9C%A8%E7%BA%BF%E9%A2%84%E8%AE%A2-%E7%AC%AC%E4%B8%80%E5%86%9C%E5%BA%84%E7%BD%91_files/jubao.gif" alt="举报中心" class="img">
                        <img src="%E5%9C%A8%E7%BA%BF%E9%A2%84%E8%AE%A2-%E7%AC%AC%E4%B8%80%E5%86%9C%E5%BA%84%E7%BD%91_files/end_2.gif" alt="官方认证" class="img">
                        <img src="%E5%9C%A8%E7%BA%BF%E9%A2%84%E8%AE%A2-%E7%AC%AC%E4%B8%80%E5%86%9C%E5%BA%84%E7%BD%91_files/end_3.gif" alt="网络110" class="img">
                        <!-- <img src="http://www.01nz.com.cn/app/Tpl/fanwe/images/site_logo.png" alt="安全联盟" class="img"/> -->
                        <img src="%E5%9C%A8%E7%BA%BF%E9%A2%84%E8%AE%A2-%E7%AC%AC%E4%B8%80%E5%86%9C%E5%BA%84%E7%BD%91_files/end_4.gif" alt="360绿色网站" class="img">
                    </div>
                    <div class="blank"></div>
                    <div class="blank"></div>
                    <div class="blank"></div>
                    <script>
                        //返回页面后自动点击按钮,恢复原有数据
                        $(function () {
                            if (sessionStorage.getItem("crrs") != null) {
                                if (sessionStorage.getItem("crrs") > 2) {
                                    var inti = sessionStorage.getItem("crrs") - 2;
                                    for (var i = 0; i < inti; i++) {
                                        document.getElementById("bbb").click();
                                    }
                                } else if (sessionStorage.getItem("crrs") < 2) {
                                    var inti = 2 - sessionStorage.getItem("crrs");
                                    for (var i = 0; i < inti; i++) {
                                        document.getElementById("ccc").click();
                                    }
                                }
                            }
                            if (sessionStorage.getItem("etrs") != null) {
                                if (sessionStorage.getItem("etrs") > 0) {
                                    var inti = sessionStorage.getItem("etrs");
                                    for (var i = 0; i < inti; i++) {
                                        document.getElementById("ddd").click();
                                    }
                                }
                            }
                        })
                    </script>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
