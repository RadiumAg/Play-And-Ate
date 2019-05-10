<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Order_2.aspx.cs" Inherits="Play_And_Ate.Order.Order_2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0047)http://xianlu.01nz.com.cn/order/188_order_2.php -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link href="../Content/Order/common_wm.css" rel="stylesheet" media="screen" type="text/css">
    <link href="../Content/Order/style.css" rel="stylesheet" media="screen" type="text/css">
    <link href="../Content/Order/order.css" rel="stylesheet" media="screen" type="text/css">
    <title>在线预订-第一农庄网</title>
    <script src="./在线预订-第一农庄网_files/global.js" type="text/javascript"></script>
    <script src="../Plugin/jquery-3.3.1.min.js"></script>
    <style>
        .Disnone{
            display:none;
        }
    </style>
</head>

<body>
    <%--<script language="javascript" type="text/javascript" src="../Scripts/Order/sousuo.js" charset="utf-8"></script>--%>
        <div class="head">
        <div class="head_mid">
            <div class="head_mid_right">
                <!-- <span>旅游出发地 |</span>
                <ul>

                <li><a href="http://xianlu.01nz.com.cn/add/go.php?area=500&channelid=4">上海</a></li>


                </ul>-->
            </div>

            <div class="head_mid_left">
                <div>
                    <span id="_Check_head_Login">
                        <!-- <a href="http://xianlu.01nz.com.cn/weibo/index.php"><img src="http://xianlu.01nz.com.cn/ORG7188_templets/default//images/sina.png" class="tt"/></a> -->
                        你好，欢迎光临第一农庄网！<!-- <a href="http://xianlu.01nz.com.cn/qq/index.php"><img src="http://xianlu.01nz.com.cn/ORG7188_templets/default//images/qq.png" class="tt"/></a> --><a href="http://www.01nz.com.cn/user-login">登录</a>
                        &nbsp;&nbsp;|&nbsp;&nbsp;
                        <a href="http://www.01nz.com.cn/user-register" target="_blank">注册</a>
                    </span>
                    <%--<script language="javascript">Check_head_Login();</script>--%>
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
        <div class="head1_logo top20"><a href="http://www.01nz.com.cn/"><img src="./在线预订-第一农庄网_files/logo.gif"></a></div>
        <div style="margin-top:35px; float:left; border-left:1px #666666 solid; width:93px; height:23px; text-align:center;  font-size:25px; line-height:16px; font-family:&#39;微软雅黑&#39;; ">农家行</div>
        <div class="fenzhan"></div>
        <div class="search_box f_l" style="margin-top:25px;">
            <div class="search_input f_l">
                <input type="text" class="search_txt" name="keyword" id="header_kw" value="农庄 农家乐 垂钓场 生态园 农家行" x-webkit-speech="" x-webkit-grammar="builtin:translate">
                <a id="sousuo_btn" class="search_btn">搜索</a>
            </div>
            <div class="blank1"></div>
        </div>
        <div class="hour24 top20"><span>400-021-3158</span><img src="./在线预订-第一农庄网_files/busy_yh.gif"></div>
       </div>
    <div class="nv top20">
        <div class="wrap">
            <ul>
                <li class="all_class nz_biaoyu">
                    <div class="nz_biaoyu_dv">
                        <ul id="scrollnews" class="scrollnews">
                            <li class="clear"> 去农庄&nbsp;&nbsp;就上第一农庄网</li>
                            <li class="clear"> 热线电话：400-021-3158</li>
                        </ul>
                    </div>
                </li>
                <li class="daohang"><a href="http://www.01nz.com.cn/">首页</a></li>
                <li class="daohang"><a href="http://www.01nz.com.cn/farm">农庄</a></li>
                <li class="daohang"><a href="http://www.01nz.com.cn/farmhouse">农家乐</a></li>
                <li class="daohang"><a href="http://www.01nz.com.cn/biotope">生态园</a></li>
                <li class="daohang"><a href="http://www.01nz.com.cn/fish">垂钓场</a></li>
                <li class="cur"><a href="http://xianlu.01nz.com.cn/" title="农家行">农家行</a></li>


                <li class="fl"><a href="http://01nz.com.cn/discover" target="_blank">专题</a></li>
                <!--  <li class="fl"><a href="http://xianlu.01nz.com.cn/add/dingzhi.html">定制</a></li>-->
                <div class="clear"></div>
            </ul>
        </div>
    </div>
    <div class="head1">
        <div class="order top10">
            <!--订单步骤 START-->
            <div class="orderStep">
                <ul class="step2">
                    <li class="li1">填写订单</li>
                    <li class="li2 on">填写游客信息</li>
                    <li class="li3 ">核对订单</li>
                    <li class="li4 ">付款</li>
                    <li class="li5 ">预订成功</li>
                </ul>
            </div>
            <!--订单步骤 END-->
            <form id="two_form" action="http://xianlu.01nz.com.cn/order/188_order_2.php" method="post">
                <div class="orderWrap">
                    <div class="userInfo">

                        <div class="notice"><b id="closeNotice"></b>按照旅游局最新规定，请您配合提供所有出行客人姓名，证件号码，联系电话，感谢您的配合！</div>

                        <h2>
                            订单信息确认 <span>请准确填写游客信息，以免在办理相关手续时发生问题。 </span><a id="userInfo"></a>
                        </h2>
                        <!--成人游客 START-->
                        <div>
                            <div class="userType userTypeAdault" id="div_ch_person_0">
                                <div class="hd">
                                    <label>
                                        <input type="checkbox" checked="checked" id="chk_ch_person" />保存到常用姓名
                                    </label>
                                    成人游客：
                                <div class="tip">
                                    填写说明
                                    <div style="display: none;">
                                        <p class="smname">
                                            填写说明:
                                        </p>
                                        <p>
                                            1、乘客姓名必须与登机所持证件一致。<br>
                                            2、持护照登机，如使用中文姓名，请确保护照上有相应的中文姓名。<br>
                                            3、持护照登机的外宾，请以姓在前名在 后的方式填写，例：Zhang（姓）/Sam（名），不区分大小写。<br>
                                            4、英文名字长度不超过29个字符，过长请使用缩写。<br>
                                            5、名字中含生僻字可直接输入拼音代替。例：“王麙”可输入为“王yan”或者“王-yan”。<br>
                                        </p>
                                    </div>
                                </div>
                                </div>
                                <div class="bd">
                                    <table width="100%" cellpadding="0" cellspacing="0" class="tb1">
                                        <tbody>
                                            <tr>
                                                <td class="td1">
                                                    <i>*</i> 真实姓名：
                                                </td>
                                                <td>
                                                    <div class="floatDiv guestInputList">
                                                        <input class="input1" name="name" maxlength="10" id="txt_ch_person_RealName" />
                                                        <ul id="ul_ch_person" style="display: none;">

                                                            <li style="border-bottom: solid 1px #98bc86; color: #ccc;">常用游客信息</li>

                                                            <li>
                                                                <a des="asd,0,132356132165414,0,1900-01-01,13246516815,0,1,0asd,0,132356132165414,0,1900-01-01,13246516815,0,1,0asd,0,132356132165414,0,1900-01-01,13246516815,asdD,1,0asdD,0,132356132165415,0,1900-01-01,13246516815,0,1,0eeee,0,112321232222222221,0,1900-01-01,1323">asd
                                                                </a>
                                                            </li>


                                                        </ul>
                                                        <span style="color: Red;">必填</span>
                                                        <input type="hidden" id="txt_ch_person_UserId" value="">
                                                    </div>
                                                </td>
                                                <td class="td1">
                                                    <i>*</i> 手机：
                                                </td>
                                                <td>
                                                    <div class="floatDiv">
                                                        <input class="input1" name ="phone" maxlength="11" id="txt_ch_person_Phone" />
                                                        <span style="color: Red;">必填</span>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td class="td1">
                                                    <i>*</i> 证件类别：
                                                </td>
                                                <td>
                                                    <select name="select" style="width: 162px;" id="ddl_ch_person_CodeType">
                                                        <option value="身份证">身份证</option>
                                                        <option value="学生证">学生证</option>
                                                        <option value="军官证">军官证</option>
                                                        <option value="退休证">退休证</option>
                                                        <option value="护照">护照</option>
                                                        <option value="其他">其他</option>

                                                    </select>
                                                </td>
                                                <td class="td1" id="td_ch_person_CodeTitle">
                                                    <i>*</i> 证件号码：
                                                </td>
                                                <td id="td_ch_person_CodeInput_2">
                                                    <input class="input1" name="CardId" maxlength="20" id="txt_ch_person_Code" />
                                                    <span style="color: Red;">必填</span>
                                                </td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                        <asp:Label ID="GetLength" class="Disnone" runat="server" Text="1"></asp:Label>
                        <asp:Label ID="GetET" class="Disnone" runat="server" Text="1"></asp:Label>
                        <asp:Label ID="GetZJ" class="Disnone" runat="server" Text="1"></asp:Label>
                        <script>
                            $(function () {
                                lone();
                                function lone() {
                                    var sourceNode = document.getElementById("div_ch_person_0"); // 获得被克隆的节点对象 
                                    var GetLength = document.getElementById("GetLength").innerHTML; //获取循环的次数
                                    console.log(GetLength);
                                    for (var i = 1; i < GetLength; i++) {
                                        var clonedNode = sourceNode.cloneNode(true); // 克隆节点 
                                        clonedNode.setAttribute("id", "div_ch_person_" + i); // 修改一下id 值，避免id 重复 
                                        sourceNode.parentNode.appendChild(clonedNode); // 在父节点插入克隆的节点 
                                    }
                                }
                                //返回上一页时呈现上一页原有数据
                                if (sessionStorage.getItem("dat") != null & sessionStorage.getItem("crrs") != null) {
                                    var crrs = sessionStorage.getItem("crrs");
                                    var dat = JSON.parse(sessionStorage.getItem("dat"));
                                    for (var i = 0; i < crrs; i++) {
                                        var a = $("#div_ch_person_" + i + " input[name=name]").val(dat[i].a);
                                        var b = $("#div_ch_person_" + i + " select[name=select]").val(dat[i].b);
                                        var c = $("#div_ch_person_" + i + " input[name=CardId]").val(dat[i].c);
                                        var d = $("#div_ch_person_" + i + " input[name=phone]").val(dat[i].d);
                                    }
                                }
                                if (sessionStorage.getItem("Lxname") != null) {
                                    var lxname = sessionStorage.getItem("Lxname");
                                    $("#txt_name").val(lxname);
                                }
                                if (sessionStorage.getItem("Lxmobile") != null) {
                                    var lxmobile = sessionStorage.getItem("Lxmobile");
                                    $("#txt_mobile").val(lxmobile);
                                }
                                if (sessionStorage.getItem("Lxemail") != null) {
                                    var lxemail = sessionStorage.getItem("Lxemail");
                                    $("#txt_email").val(lxemail);
                                }
                                if (sessionStorage.getItem("Lxphone") != null) {
                                    var lxphone = sessionStorage.getItem("Lxphone");
                                    $("#txt_start_phone").val(lxphone);
                                }
                            })
                        </script>
                        
                        <!--成人游客 END-->
                        <!--儿童游客 START-->
                        <!--儿童游客 END-->
                        <h2>
                            填写联系人信息 <span>请准确填写联系人信息（手机号码、E-mail），以便我们与您联系。</span>
                        </h2>
                        <div class="userType userTypeContact">
                            <div class="bd">
                                <table width="100%" cellpadding="0" cellspacing="0" class="tb1">
                                    <tbody>
                                        <tr>
                                            <td class="td1">
                                                <i>*</i> 联系人姓名：
                                            </td>
                                            <td>
                                                <div class="floatDiv">
                                                    <input class="input2" id="txt_name" name="txt_name" maxlength="15" value="">
                                                    <span style="color: Red;">必填</span>
                                                </div>
                                            </td>
                                            <td class="td1">
                                                <i>*</i> 手机号码：
                                            </td>
                                            <td>
                                                <div class="floatDiv">
                                                    <input class="input1" id="txt_mobile" name="txt_mobile" maxlength="11" value="">
                                                    <span style="color: Red;">必填</span>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="td1">
                                                <i>*</i> 电子邮箱：
                                            </td>
                                            <td>
                                                <div class="floatDiv">
                                                    <input class="input2" id="txt_email" maxlength="20" name="txt_email" value="">
                                                    <span style="color: Red;">必填</span>
                                                </div>
                                            </td>
                                            <td class="td1">
                                                固定电话：
                                            </td>
                                            <td>
                                                <div class="floatDiv">
                                                    <input class="input3" id="txt_start_phone" name="txt_start_phone" maxlength="4" value="">
                                                    -
                                                    <input class="input4" id="txt_end_phone" name="txt_end_phone" maxlength="8" value="">
                                                    <span style="color: Red;" id="span_phone"></span>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <p class="pT">
                                订单备注
                            </p>
                            <div class="p1">
                                <div class="textArea">
                                    <textarea id="txtDes" name="txtDes"></textarea>
                                </div>
                                <p class="p2">
                                    （<label id="lbCode">还可以输入</label><em id="eCodeLeft" class="enable">200</em>个字符）
                                </p>
                            </div>
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
                                    <p runat="server">
                                        <b>￥<s id="crzjg" runat="server">378</s></b><span id="crjg" runat="server">2成人×￥189</span>
                                    </p>
                                    <p runat="server">
                                        <b>￥<s id="etzjg" runat="server">0</s></b><span id="etjg" runat="server">0儿童×￥160</span>
                                    </p>
                                </li>
                            </ul>
                            <div class="li4">
                                <p>
                                    <strong>应付总额：</strong><label>￥<i id="offerPrice" runat="server">378</i></label>
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="clearfix">
                    </div>
                    <div class="userInfoBtn" id="gl_submit" style="display: block;">
                        <input type="button" id="btn_pre" style="background: url(http://xianlu.01nz.com.cn/ORG7188_templets/default/images/order15.gif);
                        border-width: 0px; cursor: pointer; width: 139px; height: 44px;">
                        <input type="button" id="btn_next" style="background: url(http://xianlu.01nz.com.cn/ORG7188_templets/default/images/order19.gif);
                        border-width: 0px; cursor: pointer; width: 139px; height: 44px;" />
                    </div>
                    <script>
                        //实现返回上一页不刷新
                        $(function () {
                            $("#btn_pre").click(function () {
                                var datat = []; //传递成人信息数组
                                var name = $("#GetLength").text(); //保存成人数量
                                for (var i = 0; i < name; i++) {
                                    var a = $("#div_ch_person_" + i + " input[name=name]").val();
                                    var b = $("#div_ch_person_" + i + " select[name=select]").val();
                                    var c = $("#div_ch_person_" + i + " input[name=CardId]").val();
                                    var d = $("#div_ch_person_" + i + " input[name=phone]").val();
                                    var person = { a: a, b: b, c: c, d: d };
                                    datat.push(person); //将信息存入数组
                                }
                                //获得联系人信息
                                var Lxname = $("#txt_name").val();
                                var Lxmobile = $("#txt_mobile").val();
                                var Lxemail = $("#txt_email").val();
                                var Lxphone = $("#txt_start_phone").val() + "-" + $("#txt_end_phone").val();
                                sessionStorage.setItem("dat",JSON.stringify(datat));
                                sessionStorage.setItem("Lxname", Lxname);
                                sessionStorage.setItem("Lxmobile", Lxmobile);
                                sessionStorage.setItem("Lxemail", Lxemail);
                                sessionStorage.setItem("Lxphone", Lxphone);

                                //window.location.href = document.referrer;
                                //window.history.back(-1); //返回上一页
                                if (sessionStorage.getItem("Order") == null) {
                                    sessionStorage.setItem("Order", document.referrer);
                                    a = document.referrer;
                                    window.open(a);
                                } else {
                                    window.open("Order.aspx");
                                }
                            })
                        })
                    </script>
                    <script>
                        //点击下一页传递数据
                        $(function () {
                            var dat = []; //传递成人信息数组
                            $("#btn_next").click(function () {
                                var name = $("#GetLength").text(); //保存成人数量
                                for (var i = 0; i < name; i++) {
                                    var a = $("#div_ch_person_" + i + " input[name=name]").val();
                                    var b = $("#div_ch_person_" + i + " select[name=select]").val();
                                    var c = $("#div_ch_person_" + i + " input[name=CardId]").val();
                                    var d = $("#div_ch_person_" + i + " input[name=phone]").val();
                                    var person = { a: a, b: b, c: c, d: d };
                                    dat.push(person); //将信息存入数组
                                }
                                //获得联系人信息
                                var Lxname = $("#txt_name").val();
                                var Lxmobile = $("#txt_mobile").val();
                                var Lxemail = $("#txt_email").val();
                                var Lxphone = $("#txt_start_phone").val() + "-" + $("#txt_end_phone").val();
                                var Crrs = $("#GetLength").text(); //成人人数
                                var Etrs = $("#GetET").text(); //儿童人数
                                var Zjg = $("#GetZJ").text(); //总金额
                                var datt = JSON.stringify(dat); //将数组转化为JSON格式
                                sessionStorage.setItem("dat",JSON.stringify(dat));
                                sessionStorage.setItem("Lxname", Lxname);
                                sessionStorage.setItem("Lxmobile", Lxmobile);
                                sessionStorage.setItem("Lxemail", Lxemail);
                                sessionStorage.setItem("Lxphone", Lxphone);
                                window.open("Order_3.aspx?datt=" + datt + "&Lxname=" + Lxname + "&Lxmobile=" + Lxmobile + "&Lxemail=" + Lxemail +
                                    "&Lxphone=" + Lxphone + "&Crrs=" + Crrs + "&Etrs=" + Etrs + "&Zjg=" + Zjg); //url传递参数
                            });
                        })
                    </script>
                    <div class="clearfix">
                    </div>
                </div>

                <input type="hidden" id="txtHiddenPId" name="txtHiddenPId" value="1147">
                <input type="hidden" id="txtHiddenDays" name="txtHiddenDays" value="2">
                <input type="hidden" id="pid" name="pid" value="1147">
                <input type="hidden" id="txtHiddenGoDate" name="txtHiddenGoDate" value="2019-05-08">
                <input type="hidden" id="txtHiddenUzaiPrice" name="txtHiddenUzaiPrice" value="189">
                <input type="hidden" id="txtHiddenChildPrice" name="txtHiddenChildPrice" value="160">
                <input type="hidden" id="txtHiddenPersonNum" name="txtHiddenPersonNum" value="2">
                <input type="hidden" id="txtHiddenChildNum" name="txtHiddenChildNum" value="0">
                <input type="hidden" id="txtHiddenProcessType" name="txtHiddenProcessType" value="1">
                <input type="hidden" id="txtHiddenMType" name="txtHiddenMType" value="3">

                <input type="hidden" id="txtSubmitHiddenAdd" name="txtSubmitHiddenAdd" value="77935^1147^0^5^2.0000^1900-01-01^0^5^3^人^^^^太平洋意外险$77936^1147^0^40^2.0000^1900-01-01^1^40^3^人^^^^单房差$0">
                <input type="hidden" id="txtSubmitHiddenUb" name="txtSubmitHiddenUb" value="1,0,score">
                <input type="hidden" id="txtSubmitHiddenUpTrain" name="txtSubmitHiddenUpTrain" value="">

                <input type="hidden" id="txtHiddenUList" name="txtHiddenUList" value="">
                <input type="hidden" id="txtHiddenDes" name="txtHiddenDes" value="">
                <input type="hidden" id="txt_current_date_hz" value="2012-11-20">

                <input type="hidden" id="allp" name="allp" value="378">
                <input type="hidden" id="ddl_nums_person" name="ddl_nums_person" value="0">

            </form>
        </div>
        <script src="../Scripts/Order/two_order.js" type="text/javascript"></script>
        <script src="../Scripts/Order/jquery.scrollfollow.js" type="text/javascript"></script>
        <script src="../Scripts/Order/tooltip.js" type="text/javascript"></script>
        <%--<script src="../Scripts/Order/order.js" type="text/javascript"></script>--%>
        <script type="text/javascript">
    $(function () {

                $('.tip').hover(function () {
                    $(this).parents('.userType').find('select').hide();
                }, function () {
                    $(this).parents('.userType').find('select').show();
                });
            });</script>
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
                <div align="center" class="beian_eng">
                    Copyright 2013 www.01nz.com.cn All Rights Reserved.
                </div>
                <div align="center"><img src="./在线预订-第一农庄网_files/xian.jpg" alt="灰线"></div>
                <div align="center">
                    <img src="./在线预订-第一农庄网_files/jubao.gif" alt="举报中心" class="img">
                    <img src="./在线预订-第一农庄网_files/end_2.gif" alt="官方认证" class="img">
                    <img src="./在线预订-第一农庄网_files/end_3.gif" alt="网络110" class="img">
                    <!-- <img src="http://www.01nz.com.cn/app/Tpl/fanwe/images/site_logo.png" alt="安全联盟" class="img"/> -->
                    <img src="./在线预订-第一农庄网_files/end_4.gif" alt="360绿色网站" class="img">
                </div>
                <div class="blank"></div>
                <div class="blank"></div>
                <div class="blank"></div>
            </div>
        </div>
    </div>
</body>
</html>