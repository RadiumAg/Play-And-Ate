﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Shared/Main.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="Play_And_Ate.Order.Order" %>

<asp:Content runat="server" ID="Header" ContentPlaceHolderID="Style">
    <link href="../Content/Order/common_wm.html" rel="stylesheet" media="screen" type="text/css" />
    <link href="../Content/Order/order.css" rel="stylesheet" />
    <link href="../Content/Order/style.css" rel="stylesheet" />
</asp:Content>
<asp:Content runat="server" ID="content" ContentPlaceHolderID="Content">
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
                <div class="orderWrap">
                    <div class="userInfo">
                        <h2>在线预订：<a class="a1" href='../Line/' target="_blank"></a>
                            <a href="#">
                                <asp:Label ID="Label1" runat="server" Text='<%#Eval("路线") %>'></asp:Label>
                            </a>&lt;上海出发&gt;
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
                                            <td class="lt">CHN114762</td>
                                            <td>
                                                <div class="fastCalender2" id="fastCalender2">
                                                    <div class="p10">
                                                        <span class="s10 pTimeSpan">
                                                            <input type="text" class="pTime" value="2019-05-29 (星期三) 出发,189元/成人, 160元/儿童" style="color: #666666" id="pTime"></span>
                                                        <div class="clearfix"></div>
                                                        <div class="s10Trim1 pDropCalender" style="z-index: 999;">
                                                            <div class="calenderPart" id="calenderPart">
                                                                <div class="calenderPartM">
                                                                    <ul>
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
                                                                        <li id="2019-07-27" v="2019-07-27" son="160" title="199" onclick="changeGoDate(this)">2019-07-27 (星期六) 出发,<b>199</b>元/成人, 160元/儿童</li>
                                                                        <li id="2019-07-30" v="2019-07-30" son="160" title="199" onclick="changeGoDate(this)">2019-07-30 (星期三) 出发,<b>199</b>元/成人, 160元/儿童</li>
                                                                        <li id="2019-08-03" v="2019-08-03" son="160" title="189" onclick="changeGoDate(this)">2019-08-03 (星期六) 出发,<b>189</b>元/成人, 160元/儿童</li>
                                                                        <li id="2019-08-06" v="2019-08-06" son="160" title="199" onclick="changeGoDate(this)">2019-08-06 (星期三) 出发,<b>199</b>元/成人, 160元/儿童</li>
                                                                        <li id="2019-08-10" v="2019-08-10" son="160" title="189" onclick="changeGoDate(this)">2019-08-10 (星期六) 出发,<b>189</b>元/成人, 160元/儿童</li>
                                                                        <li id="2019-08-13" v="2019-08-13" son="160" title="199" onclick="changeGoDate(this)">2019-08-13 (星期三) 出发,<b>199</b>元/成人, 160元/儿童</li>
                                                                        <li id="2019-08-17" v="2019-08-17" son="160" title="189" onclick="changeGoDate(this)">2019-08-17 (星期六) 出发,<b>189</b>元/成人, 160元/儿童</li>
                                                                        <li id="2019-08-28" v="2019-08-28" son="160" title="199" onclick="changeGoDate(this)">2019-08-28 (星期三) 出发,<b>199</b>元/成人, 160元/儿童</li>
                                                                        <li id="2019-08-31" v="2019-08-31" son="160" title="189" onclick="changeGoDate(this)">2019-08-31 (星期六) 出发,<b>189</b>元/成人, 160元/儿童</li>
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
                                                <input type="button" value="+" onclick="javascript: this.form.txtHiddenPersonNum.value++;" name="bbb" id="bbb" class="put" title="增加成人数" />
                                            </td>
                                            <td>
                                                <input type="button" value="-" name="eee" id="eee" class="put" title="减少儿童数" />
                                                <input type="text" id="txtHiddenChildNum" name="txtHiddenChildNum" value="0" class="txtHiddenChildNum" />
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
                            <div class="li4">
                                <p>
                                    <strong>应付总额：</strong><label>￥<i id="offerPrice">398</i></label>
                                    <input type="hidden" id="allp" name="allp" value="398" />
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="clearfix">
                    </div>
                    <!--页面-->
                    <div class="userInfoBtn" id="gl_return" style="display: block;">
                        <input type="button" id="btn_pre" style="background: url('/Images/Order/order15.gif'); border-width: 0px; cursor: pointer; width: 139px; height: 44px;" />
                        <input type="button" id="btn_next" style="background: url('/Images/Order/order19.gif'); border-width: 0px; cursor: pointer; width: 139px; height: 44px;" />
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
                                    var sj = $("#pTime").val();
                                    sessionStorage.setItem("sj", sj.substring(0, 11));
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
                <input type="hidden" id="txtHiddenPId" name="txtHiddenPId" value="1147" />
                <input type="hidden" id="txtHiddenProductTotal" name="txtHiddenProductTotal" value="1147" />
                <input type="hidden" id="txtHiddenNums" name="txtHiddenNums" value="2" />
                <input type="hidden" id="txtHiddenGoDate" name="txtHiddenGoDate" value="2019-05-04" />
                <input type="hidden" id="txtHiddenUzaiPrice" name="txtHiddenUzaiPrice" value="199" />
                <input type="hidden" id="txtHiddenChildPrice" name="txtHiddenChildPrice" value="160" />
                <input type="hidden" id="txtHiddenProcessType" name="txtHiddenProcessType" value="1" />
                <input type="hidden" id="txtHiddenMType" name="txtHiddenMType" value="3" />
                <input type="hidden" id="txtHiddenYesOrNo" name="txtHiddenYesOrNo" value="no" />
                <input type="hidden" id="txtSubmitHiddenAdd" name="txtSubmitHiddenAdd" value="" />
                <input type="hidden" id="txtSubmitHiddenUb" name="txtSubmitHiddenUb" value="" />
                <input type="hidden" id="txtSubmitHiddenUpTrain" name="txtSubmitHiddenUpTrain" value="" />
                <input type="hidden" id="txtHiddenUList" name="txtHiddenUList" value="" />
                <input type="hidden" id="txtHiddenDes" name="txtHiddenDes" value="" />
                <input type="hidden" id="txtHiddenUseScore" name="txtHiddenUseScore" value="0" />
                <input type="hidden" id="txtHiddenAllScore" name="txtHiddenAllScore" value="8" />
            </div>
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
</asp:Content>
<asp:Content runat="server" ID="Footer" ContentPlaceHolderID="Footer">
    <script src="../Scripts/Order/one_order.js"></script>
    <script src="../Scripts/Order/jquery.js"></script>
    <script src="../Scripts/Order/tooltip.js"></script>
    <script src="../Scripts/Order/order.js"></script>
    <script type="text/javascript">
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
    <script>
        //获取价格
        $(function () {
            var s = $("#getjiage").html();
            console.info(s);
        });
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
        });
        window.$sid = 'ASP.NET_SessionId=<%= System.Web.HttpContext.Current.Session.SessionID %>';
    </script>
</asp:Content>
