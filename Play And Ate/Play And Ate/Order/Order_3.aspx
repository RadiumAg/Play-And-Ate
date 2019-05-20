<%@ Page Title="" Language="C#" MasterPageFile="~/Shared/Main.Master" AutoEventWireup="true" CodeBehind="Order_3.aspx.cs" Inherits="Play_And_Ate.Order.Order_3" %>
<asp:Content  ContentPlaceHolderID="Style" runat="server" ID="Style">
    <link href="../Content/Order/common_wm.css" rel="stylesheet" />
    <link href="../Content/Order/order.css" rel="stylesheet" />
    <link href="../Content/Order/style.css" rel="stylesheet" />
    <title>在线预订-第一农庄网</title>
    <script src="../Scripts/Order/global.js" type="text/javascript"></script>
    <script src="../Plugin/jquery-3.3.1.min.js"></script>
    <style>
        #Literal1{
            display:none;
        }
        #Label1{
            display:none;
        }
        #Label2{
            display:none;
        }
        #Literal1{
            display:none;
        }
    </style>
</asp:Content>
<asp:Content ContentPlaceHolderID="Content" runat="server" ID="Content">
    <div class="head1">
        <div id="page">
            <div class="page top10">
                <div id="xs2" class="xs" style="text-align: center; display: none;">
                    <img src="./在线预订-第一农庄网3_files/loading.gif">
                    <br>
                    正在提交，请稍后。。。
       
                </div>
                <div class="order">
                    <!--订单步骤 START-->
                    <div class="orderStep">
                        <ul class="step3">
                            <li class="li1">填写订单</li>
                            <li class="li2">填写游客信息</li>
                            <li class="li3 on">核对订单</li>
                            <li class="li4 ">付款</li>
                            <li class="li5 ">预订成功</li>
                        </ul>
                    </div>
                    <!--订单步骤 END-->
                    <form id="three_form" method="post" action="http://xianlu.01nz.com.cn/order/188_order_3.php">
                        <div class="orderWrap">
                            <div class="checkOrder">
                                <h2>订单信息确认</h2>
                                <!--线路信息 START-->
                                <div class="checkOrderInfo">
                                    <div class="hd">
                                        线路信息
                                    </div>
                                    <div class="bd">
                                        <table width="100%" cellpadding="0" cellspacing="0">
                                            <tbody>
                                                <tr>
                                                    <th class="lt" width="10%">线路编号</th>
                                                    <th width="45%">线路名称</th>
                                                    <th width="10%">出发城市</th>
                                                    <th width="10%">出发时间</th>
                                                    <th width="15%">出游人数</th>
                                                    <th width="10%">小计</th>
                                                </tr>
                                                <tr>
                                                    <td class="lt">CHN114762</td>
                                                    <td class="lt" style="text-align: center;">
                                                        <a class="a1" href="http://xianlu.01nz.com.cn/order/188_order_3.php#" target="_blank">上海出发 【临安】东天目山、青山湖2日农家行</a>
                                                    </td>
                                                    <td>上海</td>
                                                    <td>2019-05-08</td>
                                                    <td id="cret" name="cret">2 成人+ 0儿童 </td>
                                                    <td>
                                                        <b>￥</b><b id="proTotal">378</b>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <script>
                                        //显示出行人数和总金额
                                        $(function () {
                                            var crrs =<%=Crrs%>;
                                            var etrs =<%=Etrs%>;
                                            var zjg =<%=Zjg%>;
                                            $("#cret").html(crrs + " 成人" + etrs + " 儿童");
                                            $("#proTotal").html(zjg);
                                        })
                                    </script>
                                    <!--线路信息 END-->
                                    <!--附加产品信息 START-->

                                    <div class="hd">
                                        附加产品信息
                                    </div>
                                    <div class="bd"></div>
                                    <!--附加产品信息 END-->
                                    <!--游客及联系人信息 START-->
                                    <div class="hd">
                                        游客及联系人信息
                                    </div>
                                    <div class="bd">

                                        <table width="100%" cellpadding="0" cellspacing="0" id="table_client_ch">
                                            <tbody>
                                                <tr>
                                                    <th class="lt" width="10%">游客类型</th>
                                                    <th width="20%">真实姓名</th>
                                                    <th width="15%">证件类型</th>
                                                    <th width="30%">证件号码</th>
                                                    <th width="5%">性别</th>
                                                    <th width="10%">出生年月</th>
                                                    <th width="10%">手机</th>
                                                    <th style="display: none;">游客ID</th>
                                                    <th style="display: none;">是否保存 </th>
                                                </tr>
                                                <tr id="tr_0">
                                                    <td class="lt">成人</td>
                                                    <td name="name1" class="name1">asd切</td>
                                                    <td name="select1" class="select1">身份证</td>
                                                    <td name="cardid1" class="cardid1">132356132165413</td>
                                                    <td>--</td>
                                                    <td>--</td>
                                                    <td name="phone1" class="phone1">13246516815</td>
                                                    <td style="display: none;">asd</td>
                                                    <td style="display: none;">1</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <asp:Label ID="Label1" runat="server" Text="1"></asp:Label>
                                    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                                    <script>
                                        $(function () {
                                            clone();
                                            function clone() {
                                                var sourceNode = document.getElementById("tr_0"); // 获得被克隆的节点对象 
                                                //var GetLength = document.getElementById("GetLength").innerHTML;  //获取循环的次数
                                                //console.log(GetLength);
                                                //for (var i = 1; i < GetLength; i++) {
                                                var iLength =<%=Crrs%>;
                                                    for (var i = 1; i < iLength; i++) {
                                                        var clonedNode = sourceNode.cloneNode(true); // 克隆节点 
                                                        clonedNode.setAttribute("id", "tr_" + i); // 修改一下id 值，避免id 重复 
                                                        sourceNode.parentNode.appendChild(clonedNode); // 在父节点插入克隆的节点 
                                                    }
                                                }
                                            var list = <%= result %>;
                                            var iiLength =<%= Crrs %>;
                                            for (var i = 0; i < iiLength; i++) {
                                                var a = list[i];
                                                console.log(a.name);
                                                $("#tr_" + i + " td[name=name1]").html(a.Name);
                                                $("#tr_" + i + " td[name=select1]").html(a.CardTypeId);
                                                $("#tr_" + i + " td[name=cardid1]").html(a.Id_Number);
                                                $("#tr_" + i + " td[name=phone1]").html(a.Phone);
                                            }
                                        })
                                    </script>
                                    <asp:Literal ID="Literal1" runat="server" ></asp:Literal>
                                    <!--游客及联系人信息 END-->
                                    <!--联系人信息 START-->
                                    <div class="hd hdTrim1">
                                        联系人信息
                                    </div>
                                    <div class="bd ">
                                        <table width="100%" cellpadding="0" cellspacing="0" class="guestInfo">
                                            <tbody>
                                                <tr>
                                                    <td>
                                                        <i>联系人姓名：</i><span id="link_name">苏乞儿</span>
                                                    </td>
                                                    <td>
                                                        <i>手机号码：</i><span id="link_mobile">18815168007</span>
                                                    </td>
                                                    <td>
                                                        <i>电子邮箱：</i><span id="link_email">11@11.com</span>
                                                    </td>
                                                    <td>
                                                        <i>固定电话：</i><span id="link_phone"></span>
                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <script>
                                        $(function () {
                                            var Lxname =<%=Lxname %>;
                                            var Lxmobile =<%=Lxmobile%>;
                                            var Lxemail =<%=Lxemail%>;
                                            var Lxphone =<%=Lxphone%>;
                                            $("#link_name").html(Lxname);
                                            $("#link_mobile").html(Lxmobile);
                                            $("#link_email").html(Lxemail);
                                            $("#link_phone").html(Lxphone);
                                        })
                                    </script>
                                    <!--联系人信息 END-->
                                </div>
                                <div id="yans" style="height: 220px; overflow: hidden;"></div>
                                <div id="orderProtocol" class="orderProtocol" style="margin-top:100px;">
                                    <div class="hd">
                                        <ul>
                                            <li class=""><a href="http://xianlu.01nz.com.cn/order/188_order_3.php#">费用包含 </a></li>
                                            <li class="on"><a href="http://xianlu.01nz.com.cn/order/188_order_3.php#">费用不包含 </a></li>
                                            <li class=""><a href="http://xianlu.01nz.com.cn/order/188_order_3.php#">温馨提示 </a></li>
                                        </ul>
                                    </div>
                                    <div class="bd">

                                        <div style="display: none;" class="item">
                                            <span style="color: #404040;">1.用餐：1早1正(其中一餐为简餐）。</span><br>
                                            <span style="color: #404040;">2.住宿：农家（请自备洗漱用品）。</span><br>
                                            <span style="color: #404040;">3.门票：景区第一门票。<span class="Apple-converted-space">&nbsp;</span></span><br>
                                            <span style="color: #404040;">4.交通：按实际人数提供往返空调旅游车。</span><br>
                                            <span style="color: #404040;">5.导游：全程导游服务。</span>
                                        </div>
                                        <div class="item" style="display: block;">
                                            <p>
                                                <span style="color: #404040;">1.单房差：40元/人。</span><br>
                                                <span style="color: #404040;">2.0.8M-1.2M（含1.2M）以下儿童须购买儿童价：160元/人（只含车位费和全程导服费）。</span><br>
                                                <span style="line-height: 1; color: #404040;">3.行程所列自理项目</span><span style="line-height: 1;"> 。</span>
                                            </p>
                                            <p>
                                                <span style="line-height: 1; color: #404040;">4.旅游人身意外保险</span><span style="line-height: 1;"> 。</span>
                                            </p>
                                        </div>
                                        <div class="item" style="display: none;">
                                            <div style="text-align: left; color: #404040;" class="pkg-detail-infor">
                                                <div style="margin: 10px;" class="detail_infor">
                                                    <span style="color: #000000;"><strong>【行程住宿】</strong></span><br>
                                                    <span style="color: #666666;">农家住宿：标间、三人间或者四人间，开空调需加10元/人/晚，无洗漱用品，请游客自带。</span><br>
                                                    <span style="color: #666666;"><span style="color: #000000;">【</span><strong><span style="color: #000000;">付款方式</span></strong><span style="color: #000000;">】</span></span><br>
                                                    <span style="color: #666666;">1、第三方支付：网站支持支付宝第三方支付方式，须有支付宝账号，对此给您带来的不便，敬请谅解。具体操作程序在您选择出游日期及人数后，点击进入付款页面，输入支付宝账号即可。支持国内开通网上银行的储蓄卡，例：中国工商银行、建设银行、中国农业银行、中国银行等，详情见付款页面。</span><br>
                                                    <span style="line-height: 1; color: #404040;"><span style="line-height: 1; color: #666666;">2、对公汇款：通过相关银行卡将相关款项汇至第一农庄网账号（具体详询客服)。&nbsp;&nbsp;&nbsp;&nbsp;</span></span>
                                                </div>
                                                <div style="margin: 10px;" class="detail_infor">
                                                    <p>
                                                        <strong><span style="line-height: 1; color: #000000;">【购物说明】</span></strong><br>
                                                        按照诚实信用、自愿平等、协商一致的原则，我们在行程中安排有[浙北皮革购物广场]及[竹炭馆] 购物参观项目，此项目为正规经营旅游购物场所，我们将合理安排控制购物时间，如您不需要购买，可以参观结束后自由活动，在规定时间上车即可，感谢你的配合和支持！
	
                                                    </p>
                                                    <p>
                                                        &nbsp;<span style="color: #000000;"><strong>【婴儿费用】</strong></span><br>
                                                        <span style="color: #666666;">儿童身高0.8-1.2M（含1.2M）车票与成人同价，只占座位，产生其他费用现付导游。如果您的小孩不足0.8米（不含0.8米），且不需要占车位，请在选择人数时不要提交儿童人数。（严禁私自携带未付车位费的儿童，按国家规定，可以不占座位的儿童标准为0.8米以下的怀抱婴儿，0.8米以上儿童必须占座，否则依据《新交通法规》有关超载规定，司机有权拒载超员儿童）。&nbsp;&nbsp;&nbsp;&nbsp;<span class="Apple-converted-space">&nbsp;</span></span><br>
                                                        <span style="color: #000000;"><strong>【出行须知】</strong></span><br>
                                                        <span style="color: #666666;">1.出发时请客人携带好有效身份证件，旺季可能每天要更换住地，不宜带太多行李，贵重物品妥善保管；2.所住宾馆可按要求进行标准升级，景区内除规定地点以外，严禁吸烟； 3.旺季景区游客很多，难免会出现排队、等车的情况，也请您能保持良好的心情听从导游安排，游览以安全第一，切记擅自行动。登山游览，尽量穿旅游休闲鞋，不穿裙子。做到观景不走路，取相取景相互谦让；4.客人在出行前可自备防晒用品、阳雨伞、防蚊虫的药物等；5.若在出游过程中，您对我们的安排不满意，请您第一时间向我的导游提出您宝贵的建议，我们会根据实际情况及时处理；<span class="Apple-converted-space">&nbsp;</span></span><br>
                                                        <span style="color: #000000;"><strong>【特别提醒】</strong></span><br>
                                                        <span style="color: #666666;">◆《补充条款》是旅游产品不可分割的一部分，游客朋友在报名前必须仔细阅读本公司补充条款，游客报名参加本公司旅游产品视为已阅读并遵守《补充条款》内相关约定；</span><br>
                                                        <span style="color: #666666;">◆外出旅游可能高速公路、餐厅、景区等车多人多；如未自带干粮者可能会用餐不方便，或担心景区小交通或索道过长时间排队等等，可委托导游代订团餐、代购可自选景区小交通或索道等项目，建议游客将所需代订、代购的项目在报名时直接签署在《国内旅游合同》补充条款内；</span><br>
                                                        <span style="color: #000000;"><strong>【退赔规则】</strong></span><br>
                                                        <span style="color: #666666;">◆以上线路为散客综合报价、房差只补不退，原则上我社不保证安排三人间，如出现单人且酒店没有三人间和加床的情况下，敬请补足单房差；本产品是按双人出行共用一间房核算的单人价格，如您单人参团，即会产生单人房价费用差额，我处不能安排您与其它订单客人拼房（您可与导游协商是否与其他游客共住一间房），故</span><span style="color: #666666;">请在预订产品时选择单房差可选项补足单房差。如两人一张订单出行，想每人单独入住一间房，也请在预订产品时选择两份本选项以补足单房差额（其它多人出行，希望单人入住一间房，请以此类推）。如订单总人数为单数，我处不能安排加床，也请在预订产品时选择单房差可选项以补足单房差额。故出行人（成人）出现单数时，必须补单房差方可预定，如有带来不便，敬请谅解！</span><br>
                                                        <span style="color: #666666;">◆因旅游产品的不可储存性，如因客人原因临时更改，2天以内提出退团或改期须赔偿车位费（参照儿童价）；出团当天临时退团，迟到15分钟以上或联系不上者视为自动放弃，旅行社只退还团费减车费减房费后剩余部分；</span><br>
                                                        <span style="color: #666666;">◆因本公司旅游产品为散客拼团线路，故16人以上开班，如人数不足则全额退款，我社会在出团前7天以外通知客人，团款全额退回，我社不做任何赔偿，出发前3-7天通知退团我社赔偿20元/人，2天以内通知退团，赔偿团费总价的10%，提前1天退团，赔偿团费15%，出发当天退团赔偿团费20%；</span><br>
                                                        <span style="color: #666666;">◆游客因故单方面取消出行,须按以下标准进行违约赔偿：出发前7日至4日内退团，旅行社收取原旅游费用(门市价)的50%损失费；出发前3日至1日内退团，旅行社收取原旅游费用（门市价）的60%损失费；出发当天迟到及未参团的，旅行社收取原旅游费用（门市价）的80%损失费。</span><br>
                                                        <span style="color: #666666;">◆持有景区认可的特殊证件，可享受景区优惠的游客，旅行社按成本价退还门票差额；由于大部分景区给予旅行社团队免票或团队票价低于景区半票价格，故部分景区持特殊证件是无差额可退的，如产生可退费的，退费部分具体遵照行程中的特别退差说明执行。<span class="Apple-converted-space">&nbsp;</span></span><br>
                                                        <span style="color: #666666;"><strong>【<span style="color: #000000;">质量投诉</span>】</strong></span><br>
                                                        <span style="color: #666666;">旅游结束前请如实填写《意见反馈表》，此单将成为游客投诉的主要依据，由游客和导游签字，对没有填写或回程后提出与意见表相冲突的意见和投诉，我社将以意见反馈表为准，有权不予以处理；</span><br>
                                                        <span style="color: #000000;"><strong>【其它约定】</strong></span><br>
                                                        <span style="color: #666666;">1）请在报名时提供精准的姓名、电话等联系方式，导游会于出团前一日20：00前短信及电话联系您 ；2）游客持合同或发票上车，根据导游通知的座位号对号入座；3）根据旅委通知：报名时请提供游客本人真实姓名与游客本人真实证件号码；4）以上线路为散客拼团；5）上海地区出发（集中点）：<span style="color: #000000;">新世界门口</span>；6）所有线路均含旅行社责任险，强烈建议游客另自行购买旅游人身意外险！</span>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="clearfix">
                                        </div>
                                    </div>
                                    <div class="checkOrderMoney">
                                        <p>
                                            旅游产品总价：<label id="cpzong">￥378</label><br/>
                                        </p>

                                        <p>
                                            金币抵扣：<label>￥0</label><br/>
                                        </p>

                                        <p class="p0">
                                            <b>应付总额：</b><label id="yfzong" class="checkOrderMoneylb">￥378</label>
                                        </p>
                                    </div>
                                    <div class="checkOrderBtn" id="gl_return" style="display: block;">
                                        <input type="button" id="btn_pre" style="background: url(http://xianlu.01nz.com.cn/ORG7188_templets/default//images/order15.gif); border-width: 0px; cursor: pointer; width: 139px; height: 44px;"/>
                                        <%--提交订单按钮--%>
                                        <input type="button" id="btn_next" style="background: url(http://xianlu.01nz.com.cn/ORG7188_templets/default//images/order16.gif); border-width: 0px; cursor: pointer; width: 139px; height: 44px;"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <script>
                            //实现返回上一页不刷新
                            $(function () {
                                //第一次加载时保存上个页面的URL
                                if (sessionStorage.getItem("Order_2") == null) {
                                    sessionStorage.setItem("Order_2", document.referrer);
                                }
                                $("#btn_pre").click(function () {
                                    window.location.href = sessionStorage.getItem("Order_2");
                                })
                            })
                        </script>
                        <script>
                            //最后的总金额
                            $(function () {
                                var je =<%=Zjg%>;
                                $("#cpzong").html("￥" + je);
                                $("#yfzong").html("￥" + je);
                                sessionStorage.setItem("zje", je);
                            })
                        </script>
                        <script>
                            $(function () {
                                $("#btn_next").click(function () {
                                    window.location.href = "Order_4.aspx";
                                });
                            })
                        </script>
                        <div class="login_pay_dh" id="dv_Repeat" style="display: none;">
                            <div class="login_paybg_dh">
                                <div class="login_tit_dh">
                                    <h1>温馨提示</h1>
                                    <img alt="关闭" src="./在线预订-第一农庄网3_files/login_closebtn_dh.jpg" onclick="close_repeat_div();" style="cursor: pointer;"/>
                                </div>
                                <div class="login_input_dh margin_right_dh">
                                    <div class="P1_dh">
                                        <p>
                                            您已预订过该日期出发的订单，为避免重复预订产生损失，请确认是否继续预订？
                                        </p>
                                    </div>
                                    <div class="P2_dh">
                                        <input name="btnGoOn" id="btnGoOn" type="button" value="确认继续预订">
                                        <input name="btnCancel" id="btnCancel" onclick="javascript: window.location =&#39; http://xianlu.01nz.com.cn/archives/1147.html#relatepros&#39;" type="button" value="取  消">
                                    </div>
                                </div>
                            </div>
                        </div>

                        <input type="hidden" name="title" value="上海出发 【临安】东天目山、青山湖2日农家行"/>
                        <input type="hidden" id="txtHiddenPId" name="txtHiddenPId" value="1147"/>
                        <input type="hidden" id="allp" name="allp" value="378"/>
                        <input type="hidden" id="txtHiddenProductTotal" name="txtHiddenProductTotal" value="378"/>
                        <input type="hidden" id="txtHiddenNums" name="txtHiddenNums" value="2"/>
                        <input type="hidden" id="txtHiddenDays" name="txtHiddenDays" value="3"/>
                        <input type="hidden" id="txtHiddenGoDate" name="txtHiddenGoDate" value="2019-05-08"/>
                        <input type="hidden" id="txtHiddenUzaiPrice" name="txtHiddenUzaiPrice" value="189"/>
                        <input type="hidden" id="txtHiddenChildPrice" name="txtHiddenChildPrice" value="160"/>
                        <input type="hidden" id="txtHiddenPersonNum" name="txtHiddenPersonNum" value="2"/>
                        <input type="hidden" id="txtHiddenChildNum" name="txtHiddenChildNum" value="0"/>
                        <input type="hidden" id="txtHiddenProcessType" name="txtHiddenProcessType" value="1"/>
                        <input type="hidden" id="txtHiddenMType" name="txtHiddenMType" value="3"/>
                        <input type="hidden" id="phpurl" name="phpurl" value="http://xianlu.01nz.com.cn"/>
                        <input type="hidden" id="txtSubmitHiddenAdd" name="txtSubmitHiddenAdd" value="77935^1147^0^5^2.0000^1900-01-01^0^5^3^人^^^^太平洋意外险$77936^1147^0^40^2.0000^1900-01-01^1^40^3^人^^^^单房差$0"/>
                        <input type="hidden" id="userName" name="userName" value="苏乞儿"/>
                        <input type="hidden" id="txt_mobile0" name="txt_mobile0" value="18815168007"/>
                        <input type="hidden" id="dd" name="dd" value="500"/>

                        <input type="hidden" id="txtHiddenDes" name="txtHiddenDes" value=""/>
                        <input type="hidden" id="txtHiddenLinker" name="txtHiddenLinker"/>
                        <input type="hidden" id="txtHiddenClienter" name="txtHiddenClienter"/>
                        <input type="hidden" id="txt_email" name="txt_email" value="11@11.com"/>
                        <input type="hidden" id="txtHiddenTotal" name="txtHiddenTotal" value="378"/>
                        <input type="hidden" id="txtSubmitHiddenUb" name="txtSubmitHiddenUb" value="1,0,score"/>
                    </form>
                </div>
                <script src="../Scripts/Order/order.js" type="text/javascript"></script>--%>
                <div class="commitment">
                    <div class="commitment_head">阳光服务承诺</div>
                    <ul>
                        <li class="ps_1"><strong>阳光价格</strong>：第一农庄网的价格为明码实价，更保持该产品的实际销售价格。在网站上销售的产品以标价为准（节假日或特殊原因价格调整除外）。</li>
                        <li class="ps_2"><strong>阳光行程</strong>：所有自费项目公开，自愿参加，行程中所进购物店提前明示，绝无强迫。</li>
                        <li class="ps_3"><strong>阳光支持</strong>：当您在第一农庄网预订旅游产品后，我们会为您提供专属客服，保证随时为您的旅途提供支持。</li>
                        <li class="ps_4"><strong>诚信服务</strong>：不收取任何特殊附加费。付款后，价格调整“多退少不补”（政府或航空公司政策性调整燃油税除外）</li>
                    </ul>
                </div>

                <div class="blank"></div>
            </div>
        </div>
    </div>
    </asp:Content>