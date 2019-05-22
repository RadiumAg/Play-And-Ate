<%@ Page Title="" Language="C#" MasterPageFile="~/Shared/Main.Master" AutoEventWireup="true" CodeBehind="ShowOrder.aspx.cs" Inherits="Play_And_Ate.Personage.ShowOrder" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Style" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <form name="aspnetForm" method="post" action="https://my.ctrip.com/Home/Order/AllOrder.aspx" id="aspnetForm">
        <div id="cui_nav" class="cui_nav_single">
            <div class="base_nav">
</div>
<div id="nav_bh" class="cui_nav_behind" style="display:none;height:0px;"></div>
</div><div id="ActConfig_ID" style="display:none">[{"id":"39","onlinetime":"2019/05/06 06:00:58$2019/05/19 23:55:50"},{"id":"29","onlinetime":"2019/05/06 06:00:58$2019/05/11 23:55:50"},{"id":"28","onlinetime":"2019/05/06 06:00:58$2019/05/11 23:55:50"},{"id":"37","onlinetime":"2019/04/18 09:11:09$2019/05/05 15:05:50"},{"id":"38","onlinetime":"2019/04/18 09:11:36$2019/05/05 15:05:50"},{"id":"14","onlinetime":"2019/12/31 23:55:04$2200/08/08 16:19:09"},{"id":"15","onlinetime":"2018/12/13 08:23:32$2180/12/31 23:55:09"}]</div><input type="hidden" id="popfloating_isshow" value="0"><input type="hidden" id="siteDomainHeadFloat" value="ctrip"><input type="hidden" id="bsType" value="0"><input type="hidden" id="formatTel" value="[{&#39;formatTelNum&#39;:&#39;95010&#39;,&#39;prefix&#39;:&#39;境内：&#39;,&#39;sortIndex&#39;:&#39;1&#39;,&#39;standardTelNum&#39;:&#39;SHMobile95010&#39;,&#39;suffix&#39;:&#39;&#39;},{&#39;formatTelNum&#39;:&#39;400-830-6666&#39;,&#39;prefix&#39;:&#39;（或）&#39;,&#39;sortIndex&#39;:&#39;2&#39;,&#39;standardTelNum&#39;:&#39;4008306666&#39;,&#39;suffix&#39;:&#39;&#39;},{&#39;formatTelNum&#39;:&#39;+ 852-3069-9966&#39;,&#39;prefix&#39;:&#39;香港（中国）：&#39;,&#39;sortIndex&#39;:&#39;3&#39;,&#39;standardTelNum&#39;:&#39;85230699966&#39;,&#39;suffix&#39;:&#39;&#39;},{&#39;formatTelNum&#39;:&#39;+ 86-21-3406-4888&#39;,&#39;prefix&#39;:&#39;境外：&#39;,&#39;sortIndex&#39;:&#39;4&#39;,&#39;standardTelNum&#39;:&#39;34064888&#39;,&#39;suffix&#39;:&#39;&#39;}]">
<script type="text/javascript" charset="utf-8" async="" src="./订单中心-携程旅行网_files/_bfa.min.js"></script><script type="text/javascript" async="" src="./订单中心-携程旅行网_files/AdCallProxyV2.aspx"></script><script> ;window.replace=function(){return ''};window.replace=function(){return""}; !function(){window.replace=function(){return""};(function(){var h=document,c=function(a){return h.getElementById(a)},k=null,l=null,m=0,d=[c("cui_nav_hotel"),c("cui_nav_vac"),c("cui_nav_flight"),c("cui_nav_trains"),c("cui_nav_destination"),c("cui_nav_car"),c("cui_nav_ticket"),c("cui_nav_g"),c("cui_nav_lpk"),c("cui_nav_sl"),c("cui_nav_more")],g={onmouseenter:function(a,b){(h.all?a.onmouseenter=b:a.onmouseover=function(a){(null==a.relatedTarget?b():this!==a.relatedTarget&&20!=this.compareDocumentPosition(a.relatedTarget)&& b())})},onmouseout:function(a,b){(h.all?a.onmouseleave=b:a.onmouseout=function(a){(null==a.relatedTarget?b():this!==a.relatedTarget&&20!=this.compareDocumentPosition(a.relatedTarget)&&b())})},addEvent:function(a,b,f){(a.addEventListener?a.addEventListener(b,f,!1):(a.attachEvent?a.attachEvent("on"+b,f):a["on"+b]=f))}},e={setTime:function(){g.onmouseenter(c("cui_nav"),function(){setTimeout(function(){m=150},30)});g.onmouseout(c("cui_nav"),function(){m=0})},initEvent:function(){for(var a=0,b=d.length;b>a;a++)(function(){var b= a;g.onmouseenter(d[b],function(){e.interFn(d[b])});g.onmouseout(d[b],function(){e.outerFn(d[b])})})(a)},reset:function(){for(var a=0,b=d.length;b>a;a++)d[a].className=(-1<d[a].className.indexOf("cui_nav_current")?"cui_nav_current":"")},padReset:function(a){for(var b=0,f=d.length;f>b;b++)(-1<d[b].className.indexOf("cui_nav_current")?d[b].className="cui_nav_current":b!==a&&(d[b].className=""))},interFn:function(a){for(var b=document.getElementById("cui_nav").getElementsByTagName("li"),f="",d=0;d<b.length;d++)b[d].className.match((/cui_nav_current/))&& (f=b[d]);null!=l&&(clearTimeout(l),l=null);k=setTimeout(function(){e.reset();(-1<a.className.indexOf("cui_nav_current")?f.className="cui_nav_current":(a.className="cui_nav_o",f.className="cui_nav_current cui_nav_unhover"))},m)},outerFn:function(a){for(var b=document.getElementById("cui_nav").getElementsByTagName("li"),d="",c=0;c<b.length;c++)b[c].className.match((/cui_nav_current/))&&(d=b[c]);null!=k&&(clearTimeout(k),k=null);l=setTimeout(function(){e.reset();(-1<a.className.indexOf("cui_nav_current")? d.className="cui_nav_current":(a.className="",d.className="cui_nav_current"))},250)},initMobile:function(){for(var a=0,b=d.length;b>a;a++)(function(){var b=a,c=d[b].getElementsByTagName("A")[0];c.href="###";c.onmousedown=function(){e.padReset(b);-1===d[b].className.indexOf("cui_nav_current")&&((-1<d[b].className.indexOf("cui_nav_o")?(d[b].className="",document.getElementsByClassName("cui_nav_current")[0].className="cui_nav_current",c.style.visibility="hidden",setTimeout(function(){c.style.visibility= "visible"},10)):(d[b].className="cui_nav_o",document.getElementsByClassName("cui_nav_current")[0].className="cui_nav_current",document.getElementsByClassName("cui_nav_current")[0].className+=" cui_nav_unhover")))}})(a)},contains:function(a){for(var b=0,c=d.length;c>b;b++)if(0<d[b].compareDocumentPosition(a)-19)return!0;return!1}};c("headStyleId")&&c("headStyleId").parentNode.removeChild(c("headStyleId"));((/ip(hone|od)|ipad/i).test(navigator.userAgent)?(e.initMobile(),g.addEvent(h.body,"click",function(a){e.contains(a.target|| a.srcElement)||e.reset()})):(e.setTime(),e.initEvent()))})()}(); </script>
<ul id="base_wrapper">
            
    <li id="base_bd" class="layout-nm">
        
        
        <div id="leftNavWrapper" menutype="0" menuid="order_all"><div id="sideNavCss"><style>.sidenav{background-color:#f7f7f7;border-bottom:1px solid #ececec;font-family:microsoft yahei;color:#333}.sidenav a{position:relative;z-index:1;display:block;line-height:1;padding-left:4px;border-left:1px solid #e8e8e8;border-right:1px solid #e8e8e8;color:#333;_zoom:1}.sidenav a:hover{color:#06c;text-decoration:none}.sidenav dt a{font-size:14px}.sidenav dt a span{display:block;padding:14px 10px 14px 14px}.sidenav .ico_arr{position:absolute;border:5px solid #fcfcfc;border-top-color:#afafaf;border-bottom:0 none;font-size:0;line-height:0;overflow:hidden;-webkit-transition:-webkit-transform .3s ease-in;transition:transform .3s ease-in}.sidenav dt .ico_arr{top:18px;right:10px}.sidenav dt a:hover .ico_arr{border-top-color:#06c}.sidenav dd{overflow:hidden;position:relative;padding-bottom:5px;display:none}.sidenav dd a{border-top:1px solid #f7f7f7;border-bottom:1px solid #f7f7f7}.sidenav dd a span{display:block;padding:8px 10px 8px 24px}.sidenav dd a.more_order{position:relative;display:inline-block;margin:5px 0 10px 20px;padding:5px 28px 5px 14px;background-color:#e5f0ff;border-radius:20px}.sidenav dd a.more_order:hover{background-color:#2577e3;color:#fff}.sidenav dd a.more_order .ico_arr{top:8px;right:12px;border-color:#E5F0FF;border-top-color:#afafaf}.sidenav dd a.more_order:hover .ico_arr{border-color:#2577e3;border-top-color:#fff}.sidenav dd a.up_order .ico_arr{border:5px solid #E5F0FF;border-bottom-color:#afafaf;border-top:0 none}.sidenav dd a.up_order:hover .ico_arr{border-color:#2577e3;border-bottom-color:#fff}.ico_new2{position:absolute;z-index:3;width:24px;height:11px;top:16px;margin-left:5px;background-position:-162px -9px}.sidenav dd .ico_new2{top:9px}.hide_order{display:none}.sidenav .selected{width:auto;border-left-color:#2577e3;border-right-color:#fff;background-color:#06c;color:#06c}.sidenav dd .selected{border-color:#ececec #fff #ececec #ececec}.sidenav .selected span{background-color:#fff}.sidenav_c dt .ico_arr{border:5px solid #fcfcfc;border-bottom-color:#afafaf;border-top:0 none;-webkit-transform:rotate(360deg);-ms-transform:rotate(360deg);transform:rotate(360deg)}.sidenav_c dt a:hover .ico_arr{border-bottom-color:#06c}.aside_fixed{position:fixed;top:-10px}.sidenav_c dd{display:block;}</style></div><div id="sideNav" class="aside clearfix"><dl class="sidenav"><dt><a id="index" href="https://my.ctrip.com/home/myinfo.aspx"><span>我的携程首页</span></a></dt></dl><dl class="sidenav sidenav_c"><dt class="toggleSide"><a href="javascript:;"><span>订单</span><i class="ico_arr"></i></a></dt><dd><a href="https://my.ctrip.com/Home/Order/AllOrder.aspx" class="selected" id="order_all"><span> 全部订单 </span></a><a href="https://my.ctrip.com/Home/Order/HotelOrderList.aspx" class="" id="order_hotel"><span> 酒店订单 </span></a><a href="https://my.ctrip.com/Home/Order/FlightOrderList.aspx" class="" id="order_flt"><span> 机票+相关订单 </span></a><a href="https://my.ctrip.com/Home/Order/PkgOrderList.aspx" class="" id="order_pkg"><span> 旅游度假订单 </span></a><a href="https://my.ctrip.com/Home/Order/visaOrderList.aspx" class="" id="order_visa"><span> 签证订单 </span></a><div id="hideOrder" class="hide_order" style="display: none;"><a href="https://my.ctrip.com/Home/Order/RailwayOrderList.aspx" class="" id="order_railway"><span> 国内火车票订单 </span></a><a href="https://my.ctrip.com/Home/Order/OuTieOrderList.aspx" class="" id="order_outie"><span> 国际港台火车票 </span></a><a href="https://my.ctrip.com/Home/Order/LocalUnionOrderList.aspx" class="" id="order_localunion"><span> 门票玩乐订单 </span></a><a href="https://my.ctrip.com/Home/Order/CarOrderList.aspx" class="" id="order_car"><span> 用车订单 </span></a><a href="https://my.ctrip.com/Home/Order/QicheOrderlist.aspx" class="" id="order_qiche"><span> 汽车票订单 </span></a><a href="https://my.ctrip.com/Home/Order/ShipOrder.aspx" class="" id="order_ship"><span> 船票+游艇订单 </span></a><a href="https://my.ctrip.com/Home/Order/AirportBusOrder.aspx" class="" id="order_airportbus"><span> 机场巴士订单 </span></a><a href="https://my.ctrip.com/Home/Order/GroupOrderList.aspx" class="" id="order_team"><span> 团购订单 </span></a><a href="https://my.ctrip.com/Home/Order/TicketOrderList.aspx" class="" id="order_ticket"><span> 礼品卡订单 </span></a><a href="https://my.ctrip.com/Home/Order/InsuranceOrderList.aspx" class="" id="order_insurance"><span> 度假保险订单 </span></a><a href="https://my.ctrip.com/Home/Order/HHTravelOrderList.aspx" class="" id="order_gdly"><span> 鸿鹄·奢游订单 </span></a><a href="https://my.ctrip.com/Home/Order/NewMallOrder.aspx" class="" id="order_newmall"><span> 全球购订单 </span></a><a href="https://my.ctrip.com/Home/Order/MeetingOrderList.aspx" class="" id="order_meeting"><span> 会议·团队房订单 </span></a><a href="https://my.ctrip.com/Home/Order/MiceOrderlist.aspx" class="" id="order_micehotel"><span> 展会酒店订单 </span></a><a href="https://my.ctrip.com/Home/Order/ExchangeOrderList.aspx" class="" id="order_currencyexchange"><span> 外币兑换订单 </span></a><a href="https://my.ctrip.com/home/Order/TravelATOrderList.aspx" class="" id="order_travelat"><span> 出行管家订单 </span></a><a href="https://my.ctrip.com/Home/Order/MarketOrderList.aspx" class="" id="order_market"><span> 优品订单 </span></a><a href="https://my.ctrip.com/home/Order/SportOrderList.aspx" class="" id="order_sport"><span> 运动场馆订单 </span></a><a href="https://my.ctrip.com/Home/Order/FishTripOrderList.aspx" class=" " id="order_fishtrip"><span> 民宿订单 </span></a></div><a id="moreOrder" href="javascript:;" class="more_order"> 更多订单<i class="ico_arr"></i></a></dd></dl><dl class="sidenav"><dt class="toggleSide"><a href="javascript:;"><span>钱包</span><i class="ico_arr"></i></a></dt><dd><a href="https://secure.ctrip.com/webwallet/index" class="https://secure.ctrip" id="pay_mywallet"><span> 我的钱包 </span></a><a href="https://zc.ctrip.com/" class="" id="pay_myticket"><span> 礼品卡 </span></a><a href="https://secure.ctrip.com/webwallet/card/index" class="" id="pay_mycard"><span> 银行卡 </span></a><a href="https://secure.ctrip.com/webwallet/cash/index" class="" id="pay_mycash"><span> 返现账户 </span></a><a href="https://secure.ctrip.com/webwallet/safety/index" class="" id="pay_tpassword"><span> 安全中心 </span></a></dd></dl><dl class="sidenav"><dt><a id="ticket_mypromocode" href="https://smarket.ctrip.com/Promocode/zh-cn/Promocode.aspx"><span>优惠券</span></a></dt></dl><dl class="sidenav"><dt><a id="ticket_myjifen" href="https://sinfo.ctrip.com/MyInfo/AccountCenter/MineMileage.aspx"><span>积分</span></a></dt></dl><dl class="sidenav"><dt><a id="evat_invoice" href="https://my.ctrip.com/einvoice/EInvoice.aspx"><span>电子发票</span></a></dt></dl><dl class="sidenav"><dt><a id="info_hotelfavorites" href="https://my.ctrip.com/FavoriteOnline/hotel/hotellist.aspx"><span>收藏</span></a></dt></dl><dl class="sidenav"><dt class="toggleSide"><a href="javascript:;"><span>个人中心</span><i class="ico_arr"></i></a></dt><dd><a href="https://my.ctrip.com/message/message/messagelist.aspx" class="" id="info_messageremind"><span> 消息提醒 </span></a><a href="https://sinfo.ctrip.com/MyInfo/AccountCenter/UserInfoUpdate.aspx" class="" id="info_myaccount"><span> 我的信息 </span></a><a href="https://accounts.ctrip.com/AccountsCenter/Third/TrdManager.aspx" class="" id="info_bindrelation"><span> 绑定与关联 </span></a><a href="https://passport.ctrip.com/safecenter/home" class="" id="info_accountsecurity"><span> 账户安全 </span></a></dd></dl><dl class="sidenav"><dt class="toggleSide"><a href="javascript:;"><span>常用信息</span><i class="ico_arr"></i></a></dt><dd><a href="https://my.ctrip.com/Home/Passenger/PassengerList.aspx" class="" id="common_passenger"><span> 常用旅客信息 </span></a><a href="https://sinfo.ctrip.com/MyInfo/AccountCenter/ContactList.aspx" class="" id="common_contacts"><span> 常用联系人 </span></a><a href="https://my.ctrip.com/Home/Invoice/InvoiceList.aspx" class="" id="common_commonlyinvoice"><span> 常用报销凭证 </span></a><a href="https://my.ctrip.com/Home/Address/AddressList.aspx" class="" id="common_usefuladdress"><span> 常用地址 </span></a></dd></dl><dl class="sidenav"><dt><a id="myshequ" target="_blank" href="https://you.ctrip.com/members/"><span>我的社区主页</span></a></dt></dl><dl class="sidenav"><dt class="toggleSide"><a href="javascript:;"><span>应用中心</span><i class="ico_arr"></i></a></dt><dd><a href="http://pages.c-ctrip.com/commerce/promote/201606/other/hytq/index.html" class="" id="info_mygrowup"><span> 我的成长 </span></a></dd></dl><dl class="sidenav" id="pagemenu_cyjlb" name="pagemenu_cyjlb" style="display:none;"><dt><a target="_blank" href="http://www.ctrip.com/community/senate/index.asp"><span>参议俱乐部</span></a></dt></dl><dl class="sidenav" id="pagemenu_djcmlt" name="pagemenu_djcmlt" style="display:none;"><dt><a target="_blank" href="http://www.ctrip.com/community/holiday_senate/index.asp"><span>度假参谋论坛</span></a></dt></dl></div></div>

        <div class="main">
            <div class="main-w">
                
                <div class="pd05 mb20 bs06 clearfix">
                    <span class="ico_tips2"></span>您可以在线查看近一年的订单。如需查找更久之前的订单，请致电：95010。若需查看国际站订单，请至<a href="https://www.trip.com/">Trip.com</a>
                </div>


                
                <div class="order_tab_box">
                    <div class="order_tab" id="tabContainer">
                        <a href="javascript:;" class="current" id="allTab">全部订单<span style="display:none;">1</span></a>
                        <a href="javascript:;" id="notTravelTab">未出行<span style="display:none;">0</span></a>
                        <a href="javascript:;" id="awaitPayTab">待付款<span style="display:none;">0</span></a>
                        <a href="javascript:;" id="awaitReviewTab">待评价<span style="display:none;">0</span></a>
                    </div>
                </div>


                
                <div class="orders_list mb20" style="display: block" id="orderListView">

                    
                    <div class="order_inquiry pd01" id="searchBar" style="display:block;">
                        <ul class="filter_list clearfix">
                            <li>
                                <label>订单号</label><input id="inputOrderId" class="m_input w02" type="text" "="">
                            </li>
                            <li>
                                <label>旅客</label><input id="inputPassengerName" class="m_input w02  inputSel" type="text" _cqnotice="中文名/英文名" style="">
                                <input id="inputPassengerInfo" type="hidden" value="">
                            </li>
                            <li>
                                <label>预订日期</label><input id="inputStartDate" class="m_input w02 sr_cal  inputSel" type="text" readonly="readonly" _cqnotice="yyyy-mm-dd" style="">-<input id="inputEndDate" class="m_input w02 sr_cal  inputSel" type="text" readonly="readonly" _cqnotice="yyyy-mm-dd" style="">
                            </li>
                            <li>
                                <input id="btnSearch" class="btn_sel" type="button" value="查询"></li>
                            <li>
                                    <a style="display: none" id="btn_clear" href="https://my.ctrip.com/Home/Order/AllOrder.aspx#">清空查询条件</a>
                                </li>
                        </ul>
                    </div>


                    <div class="tb_cner">

                    	
	                    <table class="t_head orders_thead" style="display:table;" id="tbHead">
	                        <thead>
	                            <tr>
	                                <th width="180px;" class="tal pl10">
	                                    <label class="base_label sel_all">
	                                        <input type="checkbox" value="">全选</label></th>
	                                <th width="10%" class="td_left" id="thTypeWithUl">
	                                    <div class="dropdown" style="width: 90px;" id="ddBizType">
	                                        <span class="curr">类型<i></i></span>
	                                        <ul class="dd_list type_list" style="display: none; " id="ulBizType">
	                                        <li><a os="1" nam="" typ="bizType" href="javascript:;">所有业务</a></li><li><a os="2" nam="Flight,FlightX,PreSale" typ="bizType" href="javascript:;">机票+相关</a></li><li><a os="3" nam="Hotel" typ="bizType" href="javascript:;">酒店</a></li><li><a os="24" nam="DIY,Cruise,Vacation,Customized,SceneryHotel" typ="bizType" href="javascript:;">旅游度假</a></li><li><a os="5" nam="Train" typ="bizType" href="javascript:;">国内火车票</a></li><li><a os="6" nam="TrainInternational" typ="bizType" href="javascript:;">境外火车票</a></li><li><a os="32" nam="Piao,Activity" typ="bizType" href="javascript:;">门票玩乐</a></li><li><a os="9" nam="QiChe" typ="bizType" href="javascript:;">汽车票</a></li><li><a os="10" nam="Car,Translation" typ="bizType" href="javascript:;">用车</a></li><li><a os="14" nam="Tuan" typ="bizType" href="javascript:;">团购</a></li><li><a os="15" nam="Lipin" typ="bizType" href="javascript:;">礼品卡</a></li><li><a os="17" nam="HHTravel" typ="bizType" href="javascript:;">鸿鹄·奢游</a></li><li><a os="18" nam="VacationInsurance" typ="bizType" href="javascript:;">度假保险</a></li><li><a os="20" nam="AirportBus" typ="bizType" href="javascript:;">机场巴士</a></li><li><a os="23" nam="Deposit" typ="bizType" href="javascript:;">旅行金融</a></li><li><a os="25" nam="NewMall" typ="bizType" href="javascript:;">全球购</a></li><li><a os="26" nam="Ship,Yacht" typ="bizType" href="javascript:;">船票+游艇</a></li><li><a os="27" nam="Meeting" typ="bizType" href="javascript:;">会议·团队房</a></li><li><a os="29" nam="Mice" typ="bizType" href="javascript:;">会议·旅游</a></li><li><a os="28" nam="Visa" typ="bizType" href="javascript:;">签证</a></li><li><a os="31" nam="Exchange" typ="bizType" href="javascript:;">外币兑换</a></li><li><a os="33" nam="TravelAT" typ="bizType" href="javascript:;">出行管家</a></li><li><a os="34" nam="Market" typ="bizType" href="javascript:;">优品</a></li><li><a os="35" nam="Sport" typ="bizType" href="javascript:;">运动场馆</a></li><li><a os="36" nam="FishTrip" typ="bizType" href="javascript:;">民宿</a></li></ul>
	                                    </div>
	                                </th>
	                                <th width="9.04%">旅客</th>
	                                <th width="20%">行程/有效日期</th>
	                                <th width="7%">总金额</th>
	                                <th></th>
	                                <th width="10%" id="thStatusWithUl" class="td_left">
	                                    <div class="dropdown" style="width: 95px;" id="ddOrderStatus">
	                                        <span class="curr">订单状态<i></i></span>
	                                        <ul class="dd_list type_list" style="display: none; " id="ulOrderStatus">
	                                        <li><a os="1" nam="" typ="orderStatus" href="javascript:;">全部</a></li><li><a os="2" nam="Uncommitted" typ="orderStatus" href="javascript:;">未提交</a></li><li><a os="3" nam="WaitPay" typ="orderStatus" href="javascript:;">待支付</a></li><li><a os="4" nam="Dealt" typ="orderStatus" href="javascript:;">已成交/出票</a></li><li><a os="5" nam="ReturnTicket" typ="orderStatus" href="javascript:;">已退票/取消</a></li></ul>
	                                    </div>
	                                </th>
	                                <th width="10%">操作
	                                    
	                                </th>
	                            </tr>
	                        </thead>
	                    </table>

	                    
	                    <ul class="t_body" style="display:block;" id="orderList"><!-- hotel -->
<li biz="HotelDomestic" class="item" operatebiz="Hotel">
    <h3>
        <label class="base_label"><input rid="7339598972" type="checkbox" value=""></label>
        <span class="ilb mr10">
            订单号：
            
                <a href="https://hotels.ctrip.com/DomesticBook/ShowOrderDetail.aspx?orderid=7339598972&amp;RepeatAction=HotelDomestic_Repeat_ReadOrder" class="fs14" target="_blank">7339598972</a>
            
        </span>
        <span class="ilb mr10 bookingDate" bd="2018-09-21 16:06:46">预订日期：2018-09-21</span>
        
            <a biz="HotelDomestic" rid="7339598972" href="https://my.ctrip.com/Home/Order/AllOrder.aspx###" class="mr10 hideOrder">删除订单</a>
        
    </h3>
    <table>
        <tbody>
            <tr>
                <td width="180px" class="tal pl10">
                    
                        <a href="https://hotels.ctrip.com/hotel/15694715.html?checkin=2019-05-20&amp;checkout=2019-05-21&amp;RepeatAction=HotelDomestic_Repeat_HotelDetail" class="fh_box" title="小米精品酒店(温州五马街店)" target="_blank">小米精品酒店(温州五马街店)</a>
                    
                </td>
                
                    <td width="10%" class="td_left">酒店</td>
                
                <td width="9.04%">
                    <div class="people_box">
                        <div class="people" title="张士庆">张士庆</div>
                    </div>
                </td>
                <td width="20%" style="white-space: nowrap;">
                    
                        2018-09-21<br>
                    
                </td>
                <td width="7%">
                    <span class="base_price fs14"><dfn>￥</dfn>173</span>
                </td>
                <!-- 操作按钮容器（Modify，Extend, ModifyCoupon, SendClientSMS, ModifyInvoice, SendCouponConfirmEmail, CopyOrder） -->
                <td class="tal pl10">
                    
                        
                            <!-- 按钮样式（unsubscribe，booking again） -->
    <a href="https://hotels.ctrip.com/hotel/15694715.html?checkin=2019-05-20&amp;checkout=2019-05-21&amp;RepeatAction=HotelDomestic_Repeat_CopyOrder" class="btn_modify" target="_blank">再次预订</a>
                        
                    
                        
                            <!-- 按钮样式（unsubscribe，booking again） -->
    <a href="https://hotels.ctrip.com/DomesticBook/ShowOrderDetail.aspx?orderid=7339598972&amp;RepeatAction=HotelDomestic_Repeat_SendClientSMS" class="btn_modify" target="_blank">重发确认短信</a>
                        
                    
                </td>
                <!-- 操作按钮容器 （ModifyContactInfo, ModifyPaymentWay）-->
                <td width="10%" class="bd">
                    <p>已成交</p>
                    
                        
                            <p><a href="https://hotels.ctrip.com/DomesticBook/ShowOrderDetail.aspx?orderid=7339598972&amp;RepeatAction=HotelDomestic_Repeat_ReadOrder" target="_blank">订单详情</a></p>
                        
                    
                </td>
                <!-- 操作按钮容器（Cancel，Commit，ReadComment, AddComment, AddAdditionalComment, MakeUrgent） -->
                <td width="10%" class="bd">
                    
                </td>
            </tr>
        </tbody>
    </table>
</li>
</ul>

	                    
	                    <div class="order_list_empty mb20" style="display:none;" id="loadingView">
	                        <img src="./订单中心-携程旅行网_files/loading_32_ed.gif">加载中,请稍候...
	                    </div>

	                    
	                    <div class="order_list_empty mb20" style="display:none;" id="noContentView">暂时没有相关订单</div>

	                    
	                    <div class="order_list_empty mb20" style="display:none;" id="timeoutView">对不起，加载超时，请<a href="https://my.ctrip.com/Home/Order/AllOrder.aspx###" id="refreshView">刷新</a>重试</div>

	                    
	                    <div class="t_foot" id="foot" style="display:block;">
	                        <div class="fl">
	                            <label class="base_label sel_all">
	                                <input type="checkbox" value="">全选</label>
	                            <a href="https://my.ctrip.com/Home/Order/AllOrder.aspx###" class="ico_download ilb mr10" id="btDownload">下载</a>
	                        </div>
	                        <div class="pagination">
	                            <ul class="inner" id="pagination"><li><a href="https://my.ctrip.com/Home/Order/AllOrder.aspx#" class="btn_prev disabled">&nbsp;<i class="triangle prev_triangle"></i></a></li><li><a href="https://my.ctrip.com/Home/Order/AllOrder.aspx#" class="active">1</a></li><li><a href="https://my.ctrip.com/Home/Order/AllOrder.aspx#" class="btn_next disabled">下一页 <i class="triangle next_triangle"></i></a></li><li class="num_item"><span class="txt">到</span><input class="num" type="text" id="pageInput" onkeydown="onlyNum();" style="ime-mode:disabled;" value="1"><span class="txt">页</span></li><li><button class="submit" type="button">确定</button></li></ul>
	                        </div>
	                    </div>
                    </div>
                </div>
                
                

<div class="mc_wireless_box" id="bottomBanner"><a href="http://m.ctrip.com/m/c448" id="4ae50b1b-56c8-4de0-110a-bca964a965a8" target="_blank"><img src="./订单中心-携程旅行网_files/mc_wireless_app.jpg" width="1010" height="100"></a></div>

<script>
    var isUAT = location.hostname && location.hostname.indexOf('my.uat.qa.nt.ctripcorp.com') > -1,
        ADSrcHostName = isUAT ? '//crm.ws.ctrip.uat.qa.nt.ctripcorp.com' : '//crm.ws.ctrip.com',
        adlist = encodeURIComponent('[{"pagecode":"1","domid":"bottomBanner","type":0}]'),
        ADSrc = ADSrcHostName + '/Customer-Market-Proxy/AdCallProxyV2.aspx?biztype=241&adlist=' + adlist + '&fscreen=0',
        obj = { 'pagecode': '1', 'src': '//pic.c-ctrip.com/myctripv2/mc_wireless_app.jpg', 'link': 'http://m.ctrip.com/m/c448' };

    if (!window.ads_mkt_globalbakAdList) {
        window.ads_mkt_globalbakAdList = [];
    }

    window.ads_mkt_globalbakAdList.push(obj);                                                                                                                       

    (function () {
        var ads = document.createElement('script');

        ads.type = 'text/javascript';
        ads.async = true;
        ads.src = ADSrc;

        var scriptTag = document.getElementsByTagName('script')[0];
        scriptTag.parentNode.insertBefore(ads, scriptTag);
    })();
</script>

            </div>
        </div>
        <div style="display: none" id="ctrip_iFrame"></div>
    </li>

    <input type="hidden" id="page_id" value="10320642560">

    


<script>
window.isBusiness = false;
</script>
<script type="text/javascript" src="./订单中心-携程旅行网_files/cQuery_110421(1).js"></script>

<script language="javascript" src="./订单中心-携程旅行网_files/gbkloader.js"></script>




<script>var require = { urlArgs: 20190304155230409 };</script>

    
    <script type="text/javascript" src="./订单中心-携程旅行网_files/require.js" data-main="//webresource.c-ctrip.com/ares2/basebiz/myctripOnlineRes/~1.0.0/default/js/dest/ordersFramework/mainBuild.20190304155230409.js">
    </script>


    <script type="text/javascript">
        function GetServerDate() {
            return {
                're1y': '2018-05-20',
                'now': '2019-05-20',
                'ne1y': '2020-05-20'
            };
        }


    </script>

        </ul>
        <script type="text/javascript" src="./订单中心-携程旅行网_files/allsearch.js" charset="utf-8"></script><div id="base_ft">
<p>
<a href="http://pages.ctrip.com/public/sitemap/sitemap.htm" target="_blank" title="网站导航">网站导航</a>&nbsp;|&nbsp;<a href="http://hotels.ctrip.com/jiudian/" target="_blank" title="宾馆索引">宾馆索引</a>&nbsp;|&nbsp;<a href="http://flights.ctrip.com/booking/hot-city-flights-sitemap.html" target="_blank" title="机票索引">机票索引</a>&nbsp;|&nbsp;<a href="http://pages.ctrip.com/public/sitemap/dj.html" title="旅游索引">旅游索引</a>&nbsp;|&nbsp;<a href="http://ct.ctrip.com/crptravel/sitemap.html" title="商旅索引">商旅索引</a>&nbsp;|&nbsp;<a title="攻略索引" href="http://you.ctrip.com/sitemap/">攻略索引</a>&nbsp;|&nbsp;<a rel="nofollow" href="http://pages.ctrip.com/public/ctripab/abctrip.htm" target="_blank" title="关于携程">关于携程</a>&nbsp;|&nbsp;<a rel="nofollow" target="_blank" href="http://pages.ctrip.com/commerce/promote/201201/other/qygm/index.html" title="企业公民">企业公民</a>&nbsp;|&nbsp;<a rel="nofollow" target="_blank" href="http://job.ctrip.com/" title="诚聘英才">诚聘英才</a>&nbsp;|&nbsp;<a rel="nofollow" title="智慧旅游" href="http://you.ctrip.com/Intelligence.html">智慧旅游</a>&nbsp; |&nbsp;<a rel="nofollow" target="_blank" href="http://u.ctrip.com/" title="分销联盟">分销联盟</a>&nbsp;|&nbsp;<a rel="nofollow" target="_blank" href="http://pages.ctrip.com/public/dlhz.htm" title="代理合作">代理合作</a>&nbsp;|&nbsp;<a target="_blank" href="http://ct.ctrip.com/" title="企业商旅">企业商旅</a>&nbsp;|&nbsp;<a target="_blank" href="http://ct.ctrip.com/crptravel/default/landing" title="中小企业差旅">中小企业差旅</a>&nbsp;|&nbsp;<a rel="nofollow" target="_blank" href="http://pages.ctrip.com/public/ctripad/adyw.htm" title="广告业务">广告业务</a>&nbsp;|&nbsp;<a rel="nofollow" target="_blank" href="http://pages.ctrip.com/public/contact.htm" title="联系我们">联系我们</a>
</p>
<p>
<a rel="nofollow" href="http://pages.c-ctrip.com/cooperation/web/cooperation.html#ctm_ref=ctr_hp_btm_coop" target="_blank">加盟合作</a>&nbsp;|&nbsp;<a rel="nofollow" href="http://join.easytrip.com/jiameng/#ctm_ref=ctr_def_btm_hsu_n_1" target="_blank" title="酒店加盟">酒店加盟</a>&nbsp;|&nbsp;<a rel="nofollow" href="http://dst.ctrip.com/">目的地及景区合作</a>&nbsp;|&nbsp;<a rel="nofollow" href="http://pages.ctrip.com/public/serve%20guideline.htm" target="_blank" title="用户协议">用户协议</a>&nbsp;|&nbsp;<a rel="nofollow" href="http://pages.ctrip.com/public/serve%20guideline.htm" target="_blank" title="隐私政策">隐私政策</a>&nbsp;|&nbsp;<a rel="nofollow" target="_blank" href="http://pages.ctrip.com/public/diploma/company.htm">营业执照</a>&nbsp;|&nbsp;<a rel="nofollow" target="_blank" href="http://m.ctrip.com/webapp/vacations/tour/supplier" title="旅游度假资质">旅游度假资质</a>&nbsp;|&nbsp;<a rel="nofollow" target="_blank" href="https://insurance.ctrip.com/portal/index.aspx">保险代理</a>&nbsp;|&nbsp;<a target="_blank" href="http://pages.ctrip.com/public/link/ctrip_link.html">友情链接</a>&nbsp;|&nbsp;<a rel="nofollow" href="http://pages.ctrip.com/public/copyright.htm" id="copyright">Copyright&#169;</a>1999-2019,&nbsp;<a href="http://www.ctrip.com/">ctrip.com</a>. All rights reserved.&nbsp;|&nbsp;<a rel="nofollow" target="_blank" href="http://www.miibeian.gov.cn/">ICP证：沪B2-20050130</a>
</p>
<p class="gns">
<a href="http://www.beian.gov.cn/portal/registerSystemInfo?recordcode=31010502002731"><i class="icon-gns"></i>沪公网备31010502002731号</a>
</p>
</div>
<script type="text/javascript">var globalConfig={H1:'https',AjaxUrl:'accounts.ctrip.com',H3:'my.ctrip.com',PassportUrl:'passport.ctrip.com',Lang:'gb2312'};</script><script type="text/javascript" src="./订单中心-携程旅行网_files/ActivityController_V2.min.js" charset="utf-8"></script>
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPDwUKLTQ2OTgwNjAwNWRknUV4DmbWsMszyCcZkI0Pmhi48jg=">

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="9A06873C">
        <input type="hidden" id="CorrelationId" name="CorrelationId" value="548003804765793914">
<input type="hidden" id="_searchboxNo_" value="ws_www20140409"><input type="hidden" id="_newHeaderFlag_" value="true">
</form>
<script type="text/javascript">

        var club_Interval = setInterval(function(){
            var clubInfo = {"IsSnateClub":false,"IsPkgClub":false,"IsCorpMileage":false};
            if(typeof clubInfo != 'undefined'){
                if(document.getElementById("pagemenu_cyjlb")&&document.getElementById("pagemenu_djcmlt")){
                    if (clubInfo.IsSnateClub) {
                        document.getElementById("pagemenu_cyjlb").style.display = "block";
                    } else {
                        document.getElementById("pagemenu_cyjlb").style.display = "none";
                    }
                    if (clubInfo.IsPkgClub) {
                        document.getElementById("pagemenu_djcmlt").style.display = "block";
                    } else {
                        document.getElementById("pagemenu_djcmlt").style.display = "none";
                    }
                }
                clearInterval(club_Interval);
            }
        },100);

        var sidebarURL=document.location.href.toLocaleLowerCase();

        var liveChartUrlMap = [
            { 
                key: 'qicheorderlist',
                value: 'http://bus.ctrip.com/BusBooking/kefu.html?opt=orderListB '
            },
            { 
                key: 'passengerlist',
                value: '//servicechat.ctrip.com/?bizType=1110&pageCode=100015&isPresale=1' 
            },
            { 
                key: 'passengerinfoshow',
                value: '//servicechat.ctrip.com/?bizType=1110&pageCode=100069&isPresale=1' 
            },
            { 
                key: 'passengerinfoedit',
                value: '//servicechat.ctrip.com/?bizType=1110&pageCode=100070&isPresale=1' 
            },
            { 
                key: 'addresslist',
                value: '//servicechat.ctrip.com/?bizType=1110&pageCode=100016&isPresale=1' 
            },
            { 
                key: 'addressinfoshow',
                value: '//servicechat.ctrip.com/?bizType=1110&pageCode=100071&isPresale=1' 
            },
            { 
                key: 'addressinfoedit',
                value: '//servicechat.ctrip.com/?bizType=1110&pageCode=100072&isPresale=1' 
            },
            { 
                key: 'invoicelist',
                value: '//servicechat.ctrip.com/?bizType=1110&pageCode=100073&isPresale=1' 
            },
            { 
                key: 'invoiceinfoedit',
                value: '//servicechat.ctrip.com/?bizType=1110&pageCode=100074&isPresale=1' 
            }
        ];

        if(sidebarURL.indexOf("passengerlist.aspx")>0||sidebarURL.indexOf("passengerinfoshow.aspx")>0||sidebarURL.indexOf("passengerinfoedit.aspx")>0||
        sidebarURL.indexOf("addresslist.aspx")>0||sidebarURL.indexOf("addressinfoshow.aspx")>0||sidebarURL.indexOf("addressinfoedit.aspx")>0
            ||sidebarURL.indexOf("invoicelist.aspx")>0||sidebarURL.indexOf("invoiceinfoedit.aspx")>0
            ||sidebarURL.indexOf("qicheorderlist.aspx")>0){
            var sidebar_TimeOut = setInterval(function () {
                
                if (typeof $ != 'undefined') {
                    cQuery.mod.load('sideBar', '2.0', function () {
                        //var liveChatURL='http://livechat.ctrip.com/livechat/Login3.aspx?GroupCode=CustomerService&amp;AsFrom=1|客户服务部|我的携程';
                        //if(sidebarURL.indexOf("railwayorderlist.aspx")>0){
                        //    liveChatURL='http://trains.ctrip.com/TrainBooking/kefu.aspx';
                        //}
                        //else if(sidebarURL.indexOf("qicheorderlist.aspx")>0){
                        //    liveChatURL='http://bus.ctrip.com/BusBooking/kefu.html?opt=orderListB ';
                        //}                          

                        // 0811班车，不同来源页面跳转在线客服的链接中参数不同
                        for (var i = 0; i < liveChartUrlMap.length; i++) {
                            var obj = liveChartUrlMap[i];                             
               
                            if (sidebarURL.indexOf(obj.key) > 0) {
                                liveChatURL = obj.value;                                 
                            }
                        }

                        var sidebar = cQuery(document).regMod('sideBar', '2.0', {
                            threshold_px: 0,
                            url: {
                                feedBackURL: "",
                                liveChatURL:liveChatURL
                            },
                            title: {
                                backTop: '回到顶端',
                                feedBack: '建议反馈',
                                liveChat: '在线客服'
                            }
                        });                        
                        $(".c_sidebar:eq(0)").css("display", "none");
                        
                    });
                    clearInterval(sidebar_TimeOut);
                }
            }, 100);
        }
     </script>
<script id="btnStyle1" type="text/html">
    <!-- 按钮样式（unsubscribe，booking again） -->
    <a href="{{ActionURLH5}}" class="btn_modify" target="_blank">{{ActionName}}</a>
</script>
<script id="btnStyle2" type="text/html">
    <!-- 按钮样式（comment，cancel，lookcomment, ContinueOrder, ContinuePay, DelayedToImmediately, Confirm, BookFlightInfo) -->
    {{if ActionType == "Button"}}
        <p><a target='_blank' class='l_btn01'  href='{{ActionURLH5}}'>{{ActionName}}</a></p>
    {{else}}
        <p><a target='_blank' href='{{ActionURLH5}}'>{{ActionName}}</a></p>
    {{/if}}
</script>

<script id="btnStyle3" type="text/html">
    <a href='{{ActionURLH5}}' class='mr10' >{{ActionName}}</a>
</script>

<script id="btnStyle4" type="text/html">
    <p><a href="{{ActionURLH5}}" target="_blank">{{ActionName}}</a></p>
</script>

<script id="btnStyle5" type="text/html">
    <p><a class='operateIframe' ifaURL='{{ActionURLH5}}' ifaWidth='{{ifaWidth}}' ifaHeight='{{ifaHeight}}'  ifaActionName='{{ActionName}}' href='###' >{{ActionName}}</a></p>
</script>

<script id="btnStyle6" type="text/html">
    <a class='btn_modify operateIframe' ifaURL='{{ActionURLH5}}' ifaWidth='{{ifaWidth}}' ifaHeight='{{ifaHeight}}'  ifaActionName='{{ActionName}}' href='###' >{{ActionName}}</a>
</script>

<script id="btnStyle7" type="text/html">
    <p><a target='_blank' class='l_btn01' href='{{ActionURLH5}}'>{{ActionName}}</a></p>
</script>

<script id="btnStyle8" type="text/html">
    <!-- Tuan 区域2 -->
    <a class='operateIframe' ifaBizType='Tuan' ifaURL='{{ActionURLH5}}' ifaWidth='{{ifaWidth}}' ifaHeight='{{ifaHeight}}'  ifaActionName='{{ActionName}}' href='###' >{{ActionName}}</a>
</script>

<script id="btnStyle9" type="text/html">
    <!-- Tuan -->
    <p><a class='operateIframe' ifaBizType='Tuan' ifaURL='{{ActionURLH5}}' ifaWidth='{{ifaWidth}}' ifaHeight='{{ifaHeight}}'  ifaActionName='{{ActionName}}' href='###' >{{ActionName}}</a></p>
</script>

<script id="btnCancel" type="text/html">
    <!-- 取消按钮 -->
    <p><a biz='{{BizType}}' data-oid='{{OrderID}}' href='###' class='orderCancel'>{{ActionName}}</a></p>
</script>

<script id="btnCancelDelete" type="text/html">
    <!-- 取消并删除按钮 -->
    <p><a biz='{{BizType}}' data-oid='{{OrderID}}' href='###' class='orderCancelDelete'>{{ActionName}}</a></p>
</script>

<script id="btnUrgent" type="text/html">
    <!-- 催单按钮 -->
    <p><a biz='{{BizType}}' data-oid='{{OrderID}}' href='###' class='orderUrgent'>{{ActionName}}</a></p>
</script>

<script id="btnStyle10" type="text/html">
    <!-- 按钮样式（comment，cancel，lookcomment, ContinueOrder, ContinuePay, DelayedToImmediately, Confirm, BookFlightInfo) -->
    {{if ActionStyle == "Style2"}}
    <p><a target='_blank' class='l_btn01' href='{{ActionURLH5}}'>{{ActionName}}</a></p>
    {{else}}
    <p><a target='_blank' href='{{ActionURLH5}}'>{{ActionName}}</a></p>
    {{/if}}
</script>

<!-- 订单列表页中，每个订单记录的标题头公共模板 -->
<script id="orderHeader" type="text/html">
    <h3>
        <label class="base_label"><input rid="{{OrderID}}" type="checkbox" value=""></label>
        <span class="ilb mr10">
            订单号：
            {{if OrderDetail}}
                <a href="{{OrderDetail}}" class="fs14" target="_blank">{{OrderID}}</a>
            {{else}}
                {{OrderID}}
            {{/if}}
        </span>
        <span class="ilb mr10 bookingDate" bd="{{BookingDate | dateFormat:'yyyy-mm-dd HH:MM:ss'}}">预订日期：{{BookingDate | dateFormat:'yyyy-mm-dd'}}</span>
        {{each Actions.area1}}
            {{if $value.ActionCode === 'Delete'}}
                <a biz="{{BizType}}" rid="{{OrderID}}" href="###" class="mr10 hideOrder">删除订单</a>
            {{else}}
                {{include 'btnStyle3' $value}}
            {{/if}}
        {{/each}}
        {{if HasHideOrder}}
            <a biz="{{BizType}}" rid="{{OrderID}}" href="###" class="mr10 hideOrder">删除订单</a>
        {{/if}}
    </h3>
</script>

<!--订单action区域2公共模板-->
<script id="orderAction2" type="text/html">
    <td class="tal pl10">
        {{each Actions.area2}}
            {{if $value.ActionCode == 'Cancel'}}
                <p><a biz='{{BizType}}' data-oid='{{OrderID}}' href='###' class='orderCancel'>{{$value.ActionName}}</a></p>
            {{else}}
                {{include 'btnStyle1' $value}}
            {{/if}}
        {{/each}}
    </td>
</script>

<!--订单action区域3公共模板-->
<script id="orderAction3" type="text/html">
    <td width="{{IsSingle ? '14.5%' : '10%'}}" class="bd">
        <p>{{OrderStatusName}}</p>
        {{each Actions.area3}}
            {{include 'btnStyle4' $value}}
        {{/each}}
    </td>
</script>

<!--订单action区域3公共模板-->
<!-- 操作按钮容器（comment，cancel，lookcomment） -->
<script id="orderAction4" type="text/html">
    <td width="{{IsSingle ? '12%' : '10%'}}" class="bd">
        {{each Actions.area4}}
            {{if $value.ActionCode == 'Cancel'}}
                {{include 'btnCancel' $value}}
            {{else}}
                {{include 'btnStyle2' $value}}
            {{/if}}
        {{/each}}
    </td>
</script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
