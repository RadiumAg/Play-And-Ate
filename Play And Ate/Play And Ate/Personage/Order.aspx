<%@ Page Title="" Language="C#" MasterPageFile="~/Shared/Main.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="Play_And_Ate.Personage.Order" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Style" runat="server">
<link rel="stylesheet" href="../Content/Personage/index.php">
<link href="../Content/Personage/ui-lvmama.css" rel="stylesheet">
<link href="../Content/Personage/ui-components.css" rel="stylesheet">
<link href="../Content/Personage/lv-bought.css" rel="stylesheet">
<link rel="stylesheet" href="../Content/Personage/global_pop.css">
<link href="../Content/Personage/ui-components(1).css" rel="stylesheet">
<link rel="stylesheet" href="../Content/Personage/index(1).php">
<link rel="stylesheet" href="../Content/Personage/newmember.css">
<link rel="stylesheet" href="../Content/Personage/index(2).php">
<link rel="stylesheet" href="../Content/Personage/newcommon.css">
<link rel="stylesheet" href="../Content/Personage/integral.css">
<script src="../Content/Personage/index(3).php"></script>
<script src="../Content/Personage/index(4).php"></script>
<script src="../Scripts/Personage/lvmember.js"></script>
<script src="../Scripts/Personage/eluminate.js"></script>
<script src="../Scripts/Personage/coremetrics-initalize.js"></script>
<script  type="text/javascript" src="../Scripts/Personage/52710000.js"></script>
<script type="text/javascript" src="../Content/Personage/ztRecommendInfoJson.do"></script>
    <link rel="stylesheet" href="../Content/Personage/jquery.common.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">

<!---会员中心导航结束--->
<!-- 主体部分开始-->
<div class="newmember_main">
<!-- 会员中心左侧菜单栏 -->
<div class="newmember_leftside">
    <dl>
        <dt><i class="user_icon"></i>个人中心<i class="downarr"></i></dt>
        <dd><a href="http://my.lvmama.com/myspace/personal/memberCenter/myMemberCenter" id="lvnav_grow">我的成长</a></dd>
        <dd><a href="http://my.lvmama.com/myspace/favorites/index?objectType=all" id="lvnav_collection">我的关注</a></dd>
        <dd><a href="http://my.lvmama.com/myspace/share/comment" id="lvnav_comment">我的点评<span id="waittingCommentNumber"></span></a></dd>
        <dd><a href="http://my.lvmama.com/myspace/share/trip" id="lvnav_travel">我的游记<i class="write_yj"></i></a></dd>
                <dd><a href="http://my.lvmama.com/myspace/myNewInvoice/index" id="lvnav_invoice">我的发票</a></dd>

        <dd><a href="http://my.lvmama.com/myspace/myQuestions/index" id="lvnav_community_ask">我的问答</a></dd>
        <dd>
            <a href="http://my.lvmama.com/myspace/recommend/myProfit" id="lvnav_courtesy">推荐有礼
                <i class="new-icon"></i>
            </a>
        </dd>
        <dd>
            <a href="http://my.lvmama.com/myspace/letter/message" id="lvnav_information">站内消息<span id="myspace_message_count_id">(0)</span></a>
        </dd>
    </dl>
    <div class="js-order-list-box">
        <dl id="leftNav">
            <dt><i class="order_icon"></i>订单中心<i class="downarr"></i></dt>
            <dd><a href="http://my.lvmama.com/myspace/order?bodyStyle=lvnav_order" id="lvnav_order" class="on">我的订单</a></dd>
            <dd><a href="http://my.lvmama.com/myspace/order?bodyStyle=lvnav_ticket" id="lvnav_ticket" onclick="changeLeftNav()">门票</a></dd>
            <dd><a href="http://my.lvmama.com/myspace/order?bodyStyle=lvnav_holiday" id="lvnav_holiday" onclick="changeLeftNav()">度假</a></dd>
            <dd><a href="http://my.lvmama.com/myspace/order?bodyStyle=lvnav_hotel" id="lvnav_hotel" onclick="changeLeftNav()">酒店</a></dd>
            <dd><a href="http://my.lvmama.com/myspace/order?bodyStyle=lvnav_railwayTicket" id="lvnav_railwayTicket" onclick="changeLeftNav()">火车票</a></dd>
            <dd><a href="http://my.lvmama.com/myspace/order?bodyStyle=lvnav_domesticFlightTicket" id="lvnav_domesticFlightTicket" onclick="changeLeftNav()">国内机票</a></dd>
            <dd><a href="http://my.lvmama.com/myspace/order?bodyStyle=lvnav_internationalFlightTicket" id="lvnav_internationalFlightTicket" onclick="changeLeftNav()">国际机票</a></dd>
            <dd style="display: none;"><a href="http://my.lvmama.com/myspace/order?bodyStyle=lvnav_ship" id="lvnav_ship" onclick="changeLeftNav()">邮轮</a></dd>
            <dd style="display: none;"><a href="http://my.lvmama.com/myspace/order?bodyStyle=lvnav_visa" id="lvnav_visa" onclick="changeLeftNav()">签证</a></dd>
            <dd style="display: none;"><a href="http://my.lvmama.com/myspace/order?bodyStyle=lvnav_wifi" id="lvnav_wifi" onclick="changeLeftNav()">Wi-Fi电话卡</a></dd>
            <dd style="display: none;"><a href="http://my.lvmama.com/myspace/order?bodyStyle=lvnav_transport" id="lvnav_transport" onclick="changeLeftNav()">交通接驳</a></dd>
            <dd style="display: none;"><a href="http://my.lvmama.com/myspace/order?bodyStyle=lvnav_entertainment" id="lvnav_entertainment" onclick="changeLeftNav()">娱乐类</a></dd>
            <dd style="display: none;"><a href="http://my.lvmama.com/myspace/order?bodyStyle=lvnav_showTicket" id="lvnav_showTicket" onclick="changeLeftNav()">演出票</a></dd>
            <dd style="display: none;"><a href="http://my.lvmama.com/myspace/order?bodyStyle=lvnav_food" id="lvnav_food" onclick="changeLeftNav()">美食</a></dd>
            <dd style="display: none;"><a href="http://my.lvmama.com/myspace/order?bodyStyle=lvnav_insurance" id="lvnav_insurance" onclick="changeLeftNav()">保险</a></dd>
            <dd style="display: none;"><a href="http://my.lvmama.com/myspace/order?bodyStyle=lvnav_bookCoupon" id="lvnav_bookCoupon" onclick="changeLeftNav()">预售券</a></dd>
            <dd style="display: none;"><a href="http://my.lvmama.com/myspace/order?bodyStyle=lvnav_rights" id="lvnav_rights" onclick="changeLeftNav()">权益</a></dd>
        </dl>
        <p class="js-order-list-btn">更多<i class="conmon_icon order-list-icon-up"></i></p>
    </div>
     <dl>
         <dt><i class="cash_icon"></i>资产中心<i class="downarr"></i></dt>
         <dd><a href="http://my.lvmama.com/myspace/account/store" id="lvnav_balance">账户余额</a></dd>
         <dd><a href="http://my.lvmama.com/myspace/account/bonusreturn" id="lvnav_bonus">奖金</a></dd>
         <dd><a href="http://my.lvmama.com/myspace/account/equitybalance" id="lvnav_inviolable">权益</a></dd>
         <dd><a href="http://my.lvmama.com/myspace/assetcenter/coupon" id="lvnav_coupons">优惠券 - 红包</a></dd>
         <dd><a href="http://my.lvmama.com/myspace/assetcenter/points" id="lvnav_integral">驴镑</a></dd>
         <dd><a href="http://my.lvmama.com/myspace/lipinka/doLipinka" id="lvnav_gift">礼品卡</a></dd>
         <dd><a href="http://jr.lvmama.com/myspace/silvershell/home/page" target="_blank" id="lvnav_yinbei">银贝</a></dd>
         <dd><a href="http://my.lvmama.com/myspace/growUp/productIndex" id="lvnav_growUp">会员等级礼品<i class="" id="myspace_growUp_hasNewCoupon"></i></a></dd>
     </dl>
    <dl>
        <dt><i class="server_icon"></i>服务中心<i class="downarr"></i></dt>
        <dd><a href="http://www.lvmama.com/public/help" id="lvnav_help" target="_blank">帮助中心</a></dd>
        <dd><a href="http://www.lvmama.com/userCenter/user/transItfeedBack.do" id="lvnav_feedback" target="_blank">用户反馈</a></dd>
    </dl>
</div>






<link rel="stylesheet" href="../Content/Personage/index(7).php">
<link href="../Content/Personage/lv-bought.css" rel="stylesheet">
<link href="../Content/Personage/invoice.css" rel="stylesheet">
<link href="../Content/Personage/popup.css" rel="stylesheet">
<link href="../Content/Personage/ui-components.css" rel="stylesheet">
<link rel="stylesheet" href="../Content/Personage/global_pop.css">
<link href="../Content/Personage/ui-components(1).css" rel="stylesheet">
<link href="../Content/Personage/lv-user-mytrip.css" rel="stylesheet">



<script src="../Content/Personage/index(8).php"></script>
<script src="../Content/Personage/index(9).php"></script>

<script type="text/javascript" src="../Scripts/Personage/iflight_popup.js"></script>

<script src="../Scripts/Personage/jquery-ui-1.8.21.custom.min.js"></script>
<script src="../Scripts/Personage/jquery.tools.min.js"></script>
<script src="../Scripts/Personage/lvmama-custom.js"></script>
<script src="../Content/Personage/index(10).php"></script>
<link rel="stylesheet" href="../Content/Personage/index(11).php">
<link rel="stylesheet" href="../Content/Personage/index(12).php">
<script src="../Content/Personage/index(13).php"></script>
<!-- 公用js-->
<script src="../Content/Personage/index(14).php"></script>
<script src="../Scripts/Personage/lvmember(1).js"></script>
<!-- 本地自定义js -->
<script type="text/javascript">
    //使用随机数解决js缓存问题
    var randomJs = "\<script type=\"text\/javascript\" src=\"/resources/js/ordercenter/selectOrder.js?rn="+Math.random()+"\"><\/script>";
    // var randomJs = "\<script type=\"text\/javascript\" src=\"/js/member/selectOrder.js?\"><\/script>";
    document.write(randomJs);
</script>
<script type="text/javascript" src="../Scripts/Personage/selectOrder.js"></script>

<!--下载保单js-->
<script type="text/javascript" src="../Scripts/Personage/orderPolicy.js"></script>

<script type="text/javascript" src="../Scripts/Personage/reschedule.js"></script>
<!-- 新的订单列表开始----------------------------------------------------------------------------------------------------- -->
<div class="newmember_rightside">
    <!--近期订单开始-->
    <div class="mod_box">
        <input type="hidden" id="bodyStyle" value="lvnav_order">
        <!-- 新下单页 -->
        <div class="order-v1-box">
            <ul class="order-head-tab js-order-tab" id="tabId">
                <li class="active" data="ALL">全部订单</li>
                <li data="WAIT_APPROVE" class="">待审核<em></em></li>
                <li data="WAIT_PAY" class="">待支付<em></em></li>
                <li data="WAIT_VISIT" class="">待出行<em></em></li>
                <li data="WAIT_COMMENT" class="">待点评<em></em></li>
                <li data="REFUND_PROCESSING" class="">退款<em></em></li>
            </ul>
            <div class="order-body-tab ">
                <ul class="order-body-list">
                    <li class="order-width270">产品信息</li>
                    <li class="order-width100">
                        &nbsp;
                        <div class="order-usergift_tab_box fl usergift_tab_active">
                            <cite>全部订单<i class="conmon_icon usergift_down"></i></cite>
                            <ul class="order-usergift_tab_lsit" style="display: none;" id="ulId">
                                <li data="" id="lvnav_order" platform="" class="selected">全部订单</li>
                                <li data="11,12,13" id="lvnav_ticket" platform="VST">门票</li>
                                <li data="15,16,17,18,29,42" id="lvnav_holiday" platform="VST">度假</li>
                                <li data="1" id="lvnav_hotel" platform="VST">酒店</li>
                                <li data="" id="lvnav_railwayTicket" platform="TRAIN">火车票</li>
                                <li data="" id="lvnav_domesticFlightTicket" platform="FLIGHT">国内机票</li>
                                <li data="" id="lvnav_internationalFlightTicket" platform="IFLIGHT">国际机票</li>
                                <li data="2,8" id="lvnav_ship" platform="VST">邮轮</li>
                                <li data="4" id="lvnav_visa" platform="VST">签证</li>
                                <li data="28" id="lvnav_wifi" platform="VST">Wi-Fi电话卡</li>
                                <li data="41" id="lvnav_transport" platform="VST">交通接驳</li>
                                <li data="44" id="lvnav_entertainment" platform="VST">娱乐类</li>
                                <li data="31" id="lvnav_showTicket" platform="VST">演出票</li>
                                <li data="43" id="lvnav_food" platform="VST">美食</li>
                                <li data="3" id="lvnav_insurance" platform="VST">保险</li>
                                <li data="99" id="lvnav_bookCoupon" platform="VST">预售券</li>
                                <li data="33" id="lvnav_rights" platform="VST">权益</li>
                            </ul>
                            <input name="" type="hidden" value="" id="inputselect">
                        </div>
                    </li>
                    <li class="order-width110">行程日期</li>
                    <li class="order-width80">订单金额</li>
                    <li class="order-width80">订单状态</li>
                    <li class="order-width80">操作</li>
                    <li class="order-width100">其他操作</li>
                </ul>
            </div>
        </div>
        <div class="order-mod-tcontent js_con" style="display:block;">
            <!--全部订单列表开始-->
            <div id="tableContent"><table class="order_table"><thead><tr class="order-col-name"><th colspan="7"></th></tr></thead><tbody><tr class="sep-row"><td colspan="7"><div class="no_order"><a href="http://www.lvmama.com/" class="noimg"><img src="./我的订单-驴妈妈旅游网ASD_files/noorder.png"></a><div class="content"><p>最近您没有下过订单哦~</p><a href="http://www.lvmama.com/" class="gohome">去首页看看</a></div></div></td></tr></tbody></table></div>
            <!--列表结束-->
            <!--分页-->
            <div class="page_box mart20">
                <div id="pages_" class="pages" style="null">
                    <div id="lv_page">
                        <div class="Pages" id="pageId_tabs-1"></div>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <!--近期订单结束-->
</div>

<table cellspacing="0" cellpadding="0" id="contactList" class="contact_list">
    <tbody><tr>
        <th width="8%" style="text-align:center;">序号</th>
        <th width="15%" style="text-align:center;">合同编号</th>
        <th width="20%" style="text-align:center;">合同类型</th>
        <th width="20%" style="text-align:center;">商品名称</th>
        <th width="15%" style="text-align:center;">游玩时间</th>
        <th width="15%" style="text-align:center;">操作栏</th>
    </tr>
</tbody></table>


<script type="text/javascript">
    //查询订单列表
    function getOrderList(page){
        var url;
        url = "";
        var categoryIdList = "";
        var orderProductType = "";
        //获取选中的列表头的品类id集合
        $("#ulId").find("li").each(function(){
            if($(this).hasClass('selected')){
                categoryIdList = $(this).attr("data");
                // orderProductType = $(this).attr("data");
            }
        })
        //获取查询订单的类型状态(全部,待审核,>>>>)
        var queryType="";
        $("#tabId").find("li").each(function(){
            if($(this).hasClass('active')){
                queryType=$(this).attr("data");
            }
        })
        //获取订单的类型(vst,bus,flight ,iflight train)
        var platform="";
        $("#ulId").find("li").each(function(){
            if($(this).hasClass('selected')){
                platform=$(this).attr("platform");
            }
        })
        if(platform==""){
            //查询的是全部订单包括vst bus
            // url="//my.lvmama.com/myspace/getOrderlist.do?currentPage="+page+"&pageSize=10"+"&queryType="+queryType;
            url = "/myspace/getOrderlist?currentPage="+page+"&pageSize=10"+"&queryType="+queryType;
        } else {
            //说明查询的是指定的订单
            if (categoryIdList != ""){
                //是有categoryId的
                url="/myspace/getOrderlist?currentPage="+page+"&pageSize=10"+"&categoryId="+categoryIdList+"&queryType="+queryType+"&platform="+platform;
            } else {
                //没有categoryId 比如是 汽车票火车票 .....
                url="/myspace/getOrderlist?currentPage="+page+"&pageSize=10"+"&queryType="+queryType+"&platform="+platform;
            }
        }
        $.getJSON(url,function(json){
            $tripContainerPage = $("#pageId_tabs-1");
            pageString = '';
            console.log(json);
            loginFlag = json.result;
            if(loginFlag == "UNLOGIN"){
                alert("用户尚未登陆");
                return;
            }
            emptyHtml = "<table class=\"order_table\">"+
                    "<thead>"+
                    "<tr class=\"order-col-name\">"+
                    "<th colspan=\"7\" >"+
                    "</th>"+
                    "</tr>"+
                    "</thead>"+
                    "<tbody>"+
                    "<tr class=\"sep-row\">"+
                    "<td colspan=\"7\" >"+
                    "<div class=\"no_order\">"+
                    "<a href=\"//www.lvmama.com\" class=\"noimg\"><img src=\"https://pics.lvjs.com.cn/img/v6/myspace/noorder.png\" /></a>"+
                    "<div class=\"content\">"+
                    "<p>最近您没有下过订单哦~</p>"+
                    "<a href=\"//www.lvmama.com\" class=\"gohome\">去首页看看</a>"+
                    "</div>"+
                    "</div>"+
                    "</td>"+
                    "</tr>"+
                    "</tbody>"+
                    "</table>";
            if(loginFlag == "FAIL"){
                $("#tableContent").html(emptyHtml);
                return;
            }
            var totalCount = json.data.totalCount;
            var html = "";
            $("#tableContent").html("");
            if(totalCount == 0){
                //清空上一页显示的数据
                html = emptyHtml;
            }else{
                var jsonList = json.data.content;
                $.each(jsonList,function(i){
                    html = html + spliceHtmlListDetail(html,jsonList,i);
                });
            }
            $("#tableContent").html(html);
            //显示分页控件
            patination(json,pageString,"getOrderList");
            return;
        })
    }


    //分页公共方法抽取
    function patination(json,pageString,method){
        var pageSize=json.data.pageSize;
        var currentPage=json.data.pageNo;
        var recordCount=json.data.totalCount;

        if(recordCount%pageSize == 0){
            var pageCount=parseInt(recordCount/pageSize);
        }else{
            var pageCount=parseInt(recordCount/pageSize)+1;
        }
        if(parseInt(recordCount)>parseInt(pageSize)){
            pageString = pageConfig(pageCount,currentPage,pageSize,method);
            //分页信息
            $tripContainerPage.html(pageString);
        }else{
            $tripContainerPage.html("");
        }
    }

    //分页控件
    function pageConfig(pageCount,page,pageSize,method){
        page=parseInt(page);
        var prevPage = page - 1;
        var nextPage = page + 1;
        var str = '<p>';
        var endPage = 0;
        if(prevPage >= 1){
            str += '<a href="javascript:void(0)" class="PrevPage" title="上一页" onClick="'+method+'('+prevPage+');"  hidefocus="false" rel="nofollow">上一页</a>';
        }
        if (page != 1){
            str +='<a href="javascript:void(0)" onClick="'+method+'(1);" title="到第一页" rel="nofollow">1</a>';
        }
        if (page >= 5){
            str +='<em>...</em>';
        }
        if (pageCount > page + 5) {
            endPage = page + 5;
        } else {
            endPage = pageCount;
        }
        for (var i = page - 5; i <= endPage; i++) {
            if (i > 0) {
                if (i == page) {
                    str +='<span class="PageSel">'+i+'</span>';
                } else {
                    if (i != 1 && i != pageCount) {
                        str +='<a href="javascript:void(0)" onClick="'+method+'('+i+');" title="第 ' + i + ' 页"  rel="nofollow">' + i + '</a>';
                    }
                }
            }
        }
        if (page + 3 < pageCount){
            str += '<em>...</em>';}
        if (page != pageCount){
            str +='<a  href="javascript:void(0)" onClick="'+method+'('+pageCount+');" title= "第 ' + pageCount + ' 页"  rel="nofollow">' + pageCount + '</a>';}

        if (nextPage <= pageCount) {
            str += '<a href="javascript:void(0)" class="NextPage PageLink PageLink_page" onClick="'+method+'('+nextPage+');" title="下一页" hidefocus="false" >下一页</a>';}

        str +='</p>';
        return str;
    }

    function dateToStr(date){
        var str = new Date(date);
        Y = str.getFullYear() + '-';
        M = (str.getMonth()+1 < 10 ? '0'+(str.getMonth()+1) : str.getMonth()+1) + '-';
        D = (str.getDate()<10 ? '0'+str.getDate() : str.getDate()) + ' ';
        h = (str.getHours()<10 ? '0'+str.getHours() : str.getHours()) + ':';
        m = (str.getMinutes()<10 ? '0'+str.getMinutes() : str.getMinutes());
        return Y+M+D+h+m;
    }

    var chnNumChar = ["零","一","二","三","四","五","六","七","八","九"];
    var chnUnitSection = ["","万","亿","万亿","亿亿"];
    var chnUnitChar = ["","十","百","千"];

    function SectionToChinese(section){
        var strIns = '', chnStr = '';
        var unitPos = 0;
        var zero = true;
        while(section > 0){
            var v = section % 10;
            if(v === 0){
                if(!zero){
                    zero = true;
                    chnStr = chnNumChar[v] + chnStr;
                }
            }else{
                zero = false;
                strIns = chnNumChar[v];
                strIns += chnUnitChar[unitPos];
                chnStr = strIns + chnStr;
            }
            unitPos++;
            section = Math.floor(section / 10);
        }
        return chnStr;
    }

    function spliceHtmlTravelName(travellerNames){
        var orderNumDetailHtmlStr = "";
        var nameStr = "";
        for(var personName in travellerNames){
            nameStr += travellerNames[personName] + ",";
        }
        //去掉最后一个逗号
        if(nameStr.length>0){
            nameStr = nameStr.substr(0, nameStr.length - 1);
        }
        //超过20个字符用省略号表示
        if(nameStr.replace(/[\u0391-\uFFE5]/g,"aa").length > 20){
            var showNameStr = nameStr.substr(0,20) + "...";
            orderNumDetailHtmlStr += "<p><a href=\"#\" class=\"tag\" tip-content=\"乘机人：" + nameStr + "\">乘机人：" + showNameStr + "</a></p>";
        }else{
            orderNumDetailHtmlStr += "<p>乘机人：" + nameStr + "</p>";
        }
        return orderNumDetailHtmlStr;
    }

    function spliceHtmlListDetail(html,jsonList,i){
        var categoryId = "";
        var orderId = "";
        var timeHtml = "";//下单时间
        var orderNo = "";//订单号
        var contractStatusHtml = "";//合同状态
        var productNameHtml = "";//产品名称
        var categoryName = "";//品类名称
        var travelTime = "";//（根据订单品类）出行时间
        var orderAmount = "";//订单金额
        var orderStatus = "";//订单状态
        var operateHtml = "";//操作
        var otherOperateHtml = "";//其他操作
        var orderNumDetailHtml = "";//订单数量详细信息
        var orderDetailUrl = "#";//订单详情链接
        var platform = "";
        var visaProgressHtml = "";

        categoryId = jsonList[i].categoryId;
        productNameHtml = jsonList[i].productName;
        orderId = jsonList[i].orderId;
        timeHtml = dateToStr(jsonList[i].strCreateTime);
        orderNo = jsonList[i].orderNo;

        if(jsonList[i].distributorChannel == '108' || jsonList[i].distributorChannel == '10001'){
            productNameHtml = "<a target=\"_blank\" href=\"//www.lvmama.com/tuangou/deal-" + jsonList[i].urlId + "\">" + jsonList[i].productName + "</a>";
        }else if(jsonList[i].distributorChannel == '110' || jsonList[i].distributorChannel == '10002'){
            productNameHtml = "<a target=\"_blank\" href=\"//www.lvmama.com/tuangou/sale-" + jsonList[i].urlId + "\">"+jsonList[i].productName + "</a>"
        }else if(jsonList[i].hengdianBranchName != ''){ //横店产品显示为规格名称
            productNameHtml = jsonList[i].hengdianBranchName;
        }else if(jsonList[i].categoryId == '12'){
            productNameHtml = "<a target=\"_blank\" href=\"http://ticket.lvmama.com/p-" + jsonList[i].productId + "\">" + jsonList[i].productName + "</a>";
        }else if((jsonList[i].categoryId == '11' || jsonList[i].categoryId == '13') && jsonList[i].mainDestId != null){ //景区门票、组合套餐票
            productNameHtml = "<a target=\"_blank\" href=\"http://ticket.lvmama.com/scenic-" + jsonList[i].mainDestId + "\">" + jsonList[i].productName + "</a>";
        }else if(jsonList[i].categoryId == '31'){ //演出票
            productNameHtml = "<a target=\"_blank\" href=\"http://ticket.lvmama.com/show-" + jsonList[i].productId + "\">" + jsonList[i].productName + "</a>"
        }else {
            productNameHtml = jsonList[i].productName;
        }

        //订单时间 or 订单名称
        if(jsonList[i].categoryId == "28"){//Wi-Fi电话卡
            var startTime = new Date(jsonList[i].strStartTime);
            var startyy = startTime.getFullYear();
            var startmm = startTime.getMonth()+1;
            var startdd = startTime.getDate();
            if(startmm < 10){
                startmm = "0" + startmm;
            }
            if(startdd < 10){
                startdd = "0" + startdd;
            }
            var startTimeHtml ="<p class=\"product-date\">"+ startyy + "-" + startmm + "-" + startdd+"</p>";
            var endTime = new Date(jsonList[i].strEndTime);
            var endyy = endTime.getFullYear();
            var endmm = endTime.getMonth()+1;
            var enddd = endTime.getDate();
            if(endmm < 10){
                endmm = "0" + endmm;
            }
            if(enddd < 10){
                enddd = "0" + enddd;
            }
            var endTimeHtml = "<p class=\"product-date\">"+ endyy + "-" + endmm + "-" + enddd+"</p>";
            travelTime = startTimeHtml + " 至 " + endTimeHtml;
        }else if(jsonList[i].categoryId == "" && jsonList[i].platform == "TRAIN"){//火车票
            var startTime = new Date(jsonList[i].strStartTime);
            var startyy = startTime.getFullYear();
            var startmm = startTime.getMonth()+1;
            var startdd = startTime.getDate();
            if(startmm < 10){
                startmm = "0" + startmm;
            }
            if(startdd < 10){
                startdd = "0" + startdd;
            }
            var startTimeHtml ="<p class=\"product-date\">"+ startyy + "-" + startmm + "-" + startdd+"</p>";
            travelTime = "<p class=\"product-date\">" + startTimeHtml + "</p><p class=\"product-date\">" + jsonList[i].trainHourAndMinute;
            if(jsonList[i].nightQuantity!=0){
                travelTime += " +"+jsonList[i].nightQuantity;
            }
            travelTime += "</p>";
        }else if(jsonList[i].categoryId == "" && jsonList[i].platform == "BUS"){//汽车票
            var startTime = new Date(jsonList[i].strStartTime);
            var startyy = startTime.getFullYear();
            var startmm = startTime.getMonth()+1;
            var startdd = startTime.getDate();
            var startTimeHtml ="<p class=\"product-date\">"+ startyy + "-" + startmm + "-" + startdd+"</p>";
            var busHourAndMinute = jsonList[i].trainHourAndMinute;
            travelTime = "<p class=\"product-date\">" + startTimeHtml + "</p><p class=\"product-date\">" + busHourAndMinute.substr(0,5);
            if(jsonList[i].nightQuantity!=0){
                travelTime += " +"+jsonList[i].nightQuantity;
            }
            travelTime += "</p>";
        }else if(jsonList[i].categoryId == "1"){//酒店
            travelTime = "<p class=\"product-date\">" + jsonList[i].strVisitTime + "</p><p class=\"product-date\"> 住" + jsonList[i].itemQuantity + "晚"+"</p>";
        }else if(jsonList[i].categoryId == "" && (jsonList[i].platform == "FLIGHT" || jsonList[i].platform == "IFLIGHT")){//飞机票
            var strDepDateTimes = jsonList[i].strDepDateTimes;
            if(jsonList[i].tripType == 1){
                travelTime = strDepDateTimes[0];
            }else if(jsonList[i].tripType == 2){
                travelTime = "<p class=\"product-date\"><i class='order-plan-icon'>去</i>" + strDepDateTimes[0] + "</p><p class=\"product-date\"><i class='order-plan-icon'>返</i>" + strDepDateTimes[1] + "</p>";
            }else if(jsonList[i].tripType == 3){
                for(var j = 1 ; j <= strDepDateTimes.length ; j++){
                    travelTime += "<p class=\"product-date\"><i class='order-plan-icon'>第" + SectionToChinese(j) + "程</i>" + strDepDateTimes[j-1] + "</p>";
                }
            }

            //订单名称
            if(jsonList[i].tripType == 1){
                if (jsonList[i].zhTripType != null && jsonList[i].zhTripType != undefined && jsonList[i].zhTripType != ''){
                    productNameHtml = "<i class=\"order-plan-icon\">"+jsonList[i].zhTripType+"</i>" + jsonList[i].tripShow;
                }else{
                    productNameHtml = "<i class=\"order-plan-icon\">单程</i>" + jsonList[i].tripShow;
                }
            }else if(jsonList[i].tripType == 2){
                productNameHtml = "<i class=\"order-plan-icon\">往返</i>" + jsonList[i].tripShow;
            }else if(jsonList[i].tripType == 3){
                productNameHtml = "<i class=\"order-plan-icon\">多程</i>" + jsonList[i].tripShow;
            }
        }else{
            travelTime = "<div class=\"product-date\">\n" + jsonList[i].strVisitTime + "</div>";
        }

        //先游后付判断
        if (jsonList[i].payAfterUsed == 1) {
            productNameHtml += '<span class="tagsback tagsback-orange tag" ><i>先游后付</i></span>';
        }

        //订单的显示状态
        orderStatus = jsonList[i].zhViewOrderStatus;

        //合同状态
        if(jsonList[i].contractStatus){
            var zhContractStatus = "";
            if(jsonList[i].contractStatus  ==  "CANCEL"){
                zhContractStatus = "已作废";
            }else if(jsonList[i].contractStatus == "UNSIGNED"){
                zhContractStatus = "未签约";
            }else if(jsonList[i].contractStatus == "SIGNED_UNEFFECT"){
                zhContractStatus = "已签约 未生效";
            }else if(jsonList[i].contractStatus == "EFFECT"){
                zhContractStatus = "已生效";
            }
            contractStatusHtml = ("<span class='num'>合同状态：" + zhContractStatus + "</em></span>");
        }

        categoryName = jsonList[i].categoryName;
        orderAmount = (jsonList[i].oughtAmount / 100).toFixed(2);
        platform = jsonList[i].platform;

        //订单数量及详细信息
        if(jsonList[i].categoryId == "11" || jsonList[i].categoryId == "12" || jsonList[i].categoryId == "13" || jsonList[i].categoryId == "4" || jsonList[i].categoryId == "41" || jsonList[i].categoryId == "43" || jsonList[i].categoryId == "32"){
            orderNumDetailHtml = "数量："+jsonList[i].quantity+"份";
        }else if(jsonList[i].categoryId == "28"){//wifi
            orderNumDetailHtml = "数量："+jsonList[i].quantity+"台";
        }else if(jsonList[i].categoryId == "31" || jsonList[i].categoryId == "44"){//娱乐，美食
            orderNumDetailHtml = "数量："+jsonList[i].quantity+"张";
        }else if(jsonList[i].categoryId == "15" || jsonList[i].categoryId == "16" || jsonList[i].categoryId == "17" || jsonList[i].categoryId == "18" || jsonList[i].categoryId == "29" || jsonList[i].categoryId == "42"){//度假
            orderNumDetailHtml = "人数："+jsonList[i].adultQuantity+"成人 "+jsonList[i].childQuantity+"儿童";
        }else if(jsonList[i].categoryId == "1"){//酒店
            orderNumDetailHtml = "房间类型："+jsonList[i].roomType+" "+jsonList[i].quantity+"间";
        }else if(jsonList[i].categoryId == ""&&jsonList[i].platform == "BUS"){
            var nameStr = "";
            var travellerNamesStr = jsonList[i].travellerNames;
            for(var personName in travellerNamesStr){
                nameStr += travellerNamesStr[personName] + ",";
            }
            //去掉最后一个逗号
            if(nameStr.length>0){
                nameStr = nameStr.substr(0, nameStr.length - 1);
            }
            //超过20个字符用省略号表示
            if(nameStr.replace(/[\u0391-\uFFE5]/g,"aa").length > 20){
                var showNameStr = nameStr.substr(0,20)+"...";
                orderNumDetailHtml = "<a href=\"#\" class=\"tag\" tip-content=\"乘车人：" + nameStr + "\">乘车人：" + showNameStr + "</a>";
            }else{
                orderNumDetailHtml = "乘车人：" + nameStr;
            }
        }else if(jsonList[i].categoryId == "" && jsonList[i].platform == "TRAIN"){
            orderNumDetailHtml = "车次：" + jsonList[i].trainNo + " " + jsonList[i].seatType;
        }else if(jsonList[i].categoryId == "" && jsonList[i].platform == "FLIGHT"){
            var orderNumDetailHtml = "<div class=\"num\">";
            //单程
            if(jsonList[i].tripType == 1){
                var flightInfos = jsonList[i].flightInfos;
                orderNumDetailHtml += "<p>航班："+flightInfos[0]+"</p>";
                orderNumDetailHtml += spliceHtmlTravelName(jsonList[i].travellerNames);
            }else if(jsonList[i].tripType == 2) {//往返
                var flightInfos = jsonList[i].flightInfos;
                orderNumDetailHtml += "<p><a href=\"#\" class=\"tag\" tip-content=\"<i class='order-plan-icon'>去</i>" + flightInfos[0] + "<br><i class='order-plan-icon'>返</i>" + flightInfos[1] + "\">航班：" + flightInfos[0] + "</a></p>"
                orderNumDetailHtml += spliceHtmlTravelName(jsonList[i].travellerNames);
            }
        }else if(jsonList[i].categoryId == "" && jsonList[i].platform == "IFLIGHT"){
            var orderNumDetailHtml = "<div class=\"num\">";
            //单程
            if(jsonList[i].tripType == 1){
                // var flightInfos = jsonList[i].flightInfos;
                // orderNumDetailHtml += "<p>" + flightInfos[0] + "</p>";
                orderNumDetailHtml += spliceHtmlTravelName(jsonList[i].travellerNames);
            }else if(jsonList[i].tripType == 2) {//往返
                // var flightInfos = jsonList[i].flightInfos;
                // orderNumDetailHtml += "<p><a href=\"#\" class=\"tag\" tip-content=\"<i class='order-plan-icon'>去</i>" + flightInfos[0] + "<br><i class='order-plan-icon'>返</i>" + flightInfos[1] + "\">航班：" + flightInfos[0] + "</a></p>"
                orderNumDetailHtml += spliceHtmlTravelName(jsonList[i].travellerNames);
            }else{//多程
                // var flightInfos = jsonList[i].flightInfos;
                // var flightInfoHtml = "";
                // for(var j = 1 ; j <= flightInfos.length ; j++){
                //     flightInfoHtml += "<i class='order-plan-icon'>第" + SectionToChinese(j) + "程</i>" + flightInfos[j-1] + "<br>";
                // }
                // orderNumDetailHtml += "<p><a href=\"#\" class=\"tag\" tip-content=\"" + flightInfoHtml + "\">航班：" + flightInfos[0].substr(0,15) + "</a></p>"
                orderNumDetailHtml += spliceHtmlTravelName(jsonList[i].travellerNames);
            }
            orderNumDetailHtml += "</div>";
        }else if(jsonList[i].categoryId == "2" || jsonList[i].categoryId == "8"){//邮轮
            var roomDetailInfos = jsonList[i].roomTypeAndTravellerInfo;
            if(roomDetailInfos == null || roomDetailInfos == undefined || roomDetailInfos == ''){
                for(var num = 1 ; num <= jsonList[i].quantity ; num++){
                    roomDetailInfos[num-1]="";
                }
            }
            if(jsonList[i].quantity == 1){
                orderNumDetailHtml += "<p><a href=\"#\" class=\"tag\" tip-content=\"" + roomDetailInfos[0] + "\">房间类型：" + jsonList[i].roomType + " " + jsonList[i].quantity + "间</a></p>";
            } else {
                var roomTip = "";
                for(var j = 1 ; j <= roomDetailInfos.length ; j++){
                    roomTip += "<i class='order-plan-icon'>第" + SectionToChinese(j) + "间</i>" + roomDetailInfos[j-1] + "<br>";
                }
                orderNumDetailHtml += "<p><a href=\"#\" class=\"tag\" tip-content=\"" + roomTip + "\">房间类型：" + jsonList[i].roomType + " " + jsonList[i].quantity + "间</a></p>";
            }
        }

        //签证进度显示按钮
        if(jsonList[i].showVisaProgress == true){
            visaProgressHtml = "<p>" + '<a target="_blank" class="status detail-link" href="//www.lvmama.com/visa/visaStatus/' + jsonList[i].orderId + '">签证进度</a>' + "</p>";
        }

        //操作
        var operateMap = jsonList[i].operateMap;
        for(var key in operateMap){
            if(key == "COMMENT"){//点评
                operateHtml += "<p><a href=\"//www.lvmama.com/comment/writeComment/writeCmt/" + orderId + ".html\"><span class=\"comment-btn\">立即点评</span></a></p>";
            }else if(key == "RESEND_SMS_CERT"){//重发短信凭证
                operateHtml += "<p><a href=\"javascript:void(0);\" onclick=\"sendSms(this,'" + orderId + "','" + jsonList[i].operateDataMap.contractMobile + "','" + jsonList[i].operateDataMap.userOrderId + "');\" name=\"sent_mms\" >重发短信凭证</a></p>";
            }else if(key == "DOWNLOAD_TICKET_CERT"){//下载门票凭证
                operateHtml += '<p><a href="javascript:void(0);"  onClick="showDownLoadDisney("' + orderId + '")" class="cancel-order">下载门票凭证</a></p>';
            }else if(key == "PAYMENT"){//立即支付
                if(jsonList[i].platform == "NS"){
                    operateHtml += "<p><a target=\"_blank\" class=\"status detail-link\" href=\" "+ jsonList[i].operateDataMap.optPayUrl +" \">立即支付</a></p>";
                } else {
                    operateHtml += "<p>" + payNow(jsonList[i]) + "</p>";
                }
            }else if(key == "CANCEL_ORDER"){//取消订单
                if(jsonList[i].platform == "NS"){
                    operateHtml += "<p><a href=\"javascript:void(0);\" onClick=\"toCancelNS('" + jsonList[i].orderId + "');\"  class=\"cancel-order\">取消订单</a></p>";
                } else {
                    operateHtml += "<p><a href=\"javascript:void(0);\" onClick=\"toCancel('" + jsonList[i].operateDataMap.userOrderId + "');\"  class=\"cancel-order\">取消订单</a></p>";
                }
            }else if(key == "APPLY_REFUND"){//退款申请
                operateHtml += returnMoneyApply(jsonList[i]);
            }else if(key == "REORDER"){//再次预定
                operateHtml += "<p><a target=\"_blank\" class=\"status detail-link\" href=\"http://dujia.lvmama.com/package/recreateOrder/" + orderId + "\">再次预定</a></p>";
            }else if(key == "DOWNLOAD_INSURANCE_POLICY"){//下载投保单
                operateHtml += "<p>" + downloadVstPolicyInfo(jsonList[i].operateDataMap.vstPolicyInfo,orderId) + "</p>";
            }else if(key == "EDIT_TRAVELLER" ){//编辑补充游玩人
                operateHtml += editTraveller(jsonList[i]);
            }
            else if(key == "APPLY_CHANGE_DATE"){
                operateHtml += applyChangeDate(jsonList[i]);
            } else if(key == "DOWNLOAD_ECONTRACT"){
                if(jsonList[i].platform == "NS"){
                    operateHtml += "<p><a target=\"_blank\" class=\"status detail-link\" href=\" "+ jsonList[i].operateDataMap.optDownloadUrl +" \">下载电子合同</a></p>";
                } else {
                    operateHtml += "<p><a href=\"javascript:void(0);\"  onClick=\"showMyEcontract('" + orderId + "')\" class=\"cancel-order\">下载电子合同</a></p>";
                }
            } else if(key == "APPLY_INVOICE"&&jsonList[i].commission!="PROFITS"){
                operateHtml += "<p><a href=\"javascript:void(0)\" onClick=\"createOneInvoice('" + jsonList[i].categoryId + "','" + orderId + "')\">申请开票</a></p>";
            } else if(key == "APPLY_INVOICE"&&jsonList[i].categoryId == "1"&&jsonList[i].commission=="PROFITS"){
                operateHtml += "<p><a href=\"javascript:void(0)\" onClick=\"return false\" style=\"color:#C0C0C0\" title=\"如需发票，请向酒店前台索取\">申请开票</ a></p>";
            }else if(key == "VIEW_ORDER_DETAIL"){
                orderDetailUrl = jsonList[i].operateDataMap.pcOrderDetailUrl;
            }
        }


        //大交通的订单，只有待支付状态显示取消订单
        if((jsonList[i].platform == "TRAIN" || jsonList[i].platform == "BUS" || jsonList[i].platform == "FLIGHT") && jsonList[i].zhViewOrderStatus == "待支付" ) {
            operateHtml += '<a href="'+ jsonList[i].operateDataMap.pcOrderDetailUrl +'">取消订单</a>';
        }

        //vst订单显示删除按钮
        if(jsonList[i].categoryId != "33" && jsonList[i].platform == "VST") {
            operateHtml += "<p><a href=\"javascript:;\"  class=\"cancel_order js-dele-btn\" id=\"" + orderId + "\">删除</a></p>";
        }
        //其他操作
        var otherOperations = jsonList[i].otherOperateMap;
        for(var key in otherOperations){
            if(key == "TRIP_NOTE"){
                otherOperateHtml += "<p><a href=\"//www.lvmama.com/trip/write/\" target=\"_blank\" class=\"order-back-box\">写游记赚钱<span class=\"back-icon\">\n" +
                        "                                                返现<i class=\"conmon_icon back-bottom\"></i>\n" +
                        "                                            </span></a></p>";
            }
        }
        html = ("<table class=\"order_table\">")+
                ("<thead>")+
                ("<tr class=\"order-col-name\">")+
                ("<th colspan=\"7\" >")+
                ("<span class=\"date\">下单时间 " + timeHtml + "</span>")+
                ("<span class=\"num\">订单号：<a href=\""+orderDetailUrl+"\" target=\"_Blank\">" + orderNo + "</a></span>")+
                contractStatusHtml+
                (" </th>")+
                ("</tr>")+
                ("</thead>")+
                ("<tbody>")+
                ("<tr class=\"order-sep-row\">")+
                ("	<td width=\"355\">")+
                ("      <div class=\"product-name\">")+
                productNameHtml+
                ("      </div>")+
                ("  </td>")+
                ("<td width=\"146\">")+
                ("  <div class=\"product-type\">")+
                categoryName+
                (" </div>")+
                (" </td>")+
                ("<td width=\"200\">")+
                ("   <div class=\"product-date\">")+
                travelTime+
                ("</div>")+
                ("</td>")+
                (" <td width=\"93\"><div class=\"product-price\">¥")+
                orderAmount+
                ("</div></td>")+
                ("<td class=\"order-line\" width=\"77\">")+
                ("    <div class=\"order-option\">")+
                ("       <span class=\"order-status wait\">" + orderStatus + "</span>")+
                ("      <p>")+
                ("          <a href=\"")+
                orderDetailUrl+
                ("\" class=\"detail-link\"  target=\"_Blank\">订单详情</a>")+
                ("      </p>")+
                visaProgressHtml+
                (" </div>")+
                ("</td>")+
                //操作判断
                (" <td class=\"order-line\" width=\"113\">")+
                operateHtml+
                ("</td>")+
                //其他操作判断
                (" <td class=\"order-line\" width=\"80\">")+
                otherOperateHtml+
                (" </td>")+
                ("</tr>")+
                ("<tr class=\"order-bottom-row\">")+
                (" <td colspan=\"7\">")+
                ("   <div class=\"num\">")+
                orderNumDetailHtml+
                (" </div>")+
                ("</td>")+
                ("</tr>")+
                ("</tbody>")+
                ("</table>");
        return html;
    }

    //补充游玩人 & 取消意外险
    function editTraveller(obj) {
        var html = "";
        if(obj.platform == "NS"){
            html = "<a target=\"_blank\" class=\"status detail-link\"\n" +
                    "href=\"" + obj.operateDataMap.optTravellerUrl + "\">补充游玩人</a>";
        } else if(obj.operateDataMap.travellerDelayFlag == "Y" && obj.operateDataMap.travellerLockFlag == "N" && obj.operateDataMap.orderStatus != "CANCEL") {
            if(obj.isBaitiaoId == false ||  obj.operateDataMap.buCode != "OUTBOUND_BU") {
                if(obj.operateDataMap.orderType == '29'){
                    html = "<a target=\"_blank\" class=\"status detail-link\"\n" +
                            "href=\"http://fit.lvmama.com/order/viewDetail?orderId="+obj.orderId+"\">补充游玩人</a>";
                } else {
                    html = "<a target=\"_blank\" class=\"status detail-link\"\n" +
                            "href=\"http://hotels.lvmama.com/order/viewDetail?orderId="+obj.orderId+"\">补充游玩人</a>";
                }
            }
        } else if (obj.operateDataMap.paymentStatus == 'PAYED' && obj.operateDataMap.travDelayFlag =="Y" && obj.operateDataMap.orderStatus != "CANCEL"){
            if(obj.operateDataMap.travDelayStatus == "UNCOMPLETED"){
                html = "<div class=\"dest_bu_trav_delay_"+obj.orderId+"\">\n" +
                        "<span class=\"btn_cancel_baoxian js_cancel_baoxian\" id=\""+obj.orderId+"\">取消意外险</span><br>\n" +
                        "<a class=\"btn_edit_visitor\" href=\"http://hotels.lvmama.com/order/viewDetail?orderId="+obj.orderId+"\">编辑/补充游玩人</a>\n" +
                        "<p class=\"countdown_info\">\n" +
                        "<span class=\"js_countdown\" >"+obj.operateDataMap.travDelayWaitTime+"分前</span>\n" +
                        "<i class=\"tip-icon tip-icon-help countdown_tip js_poptip\" tip-content=\"剩余时间内未补全出游人信息,<br>系统将自动取消意外险\"></i>\n" +
                        "</p>\n" +
                        "<div>";
            } else if(obj.operateDataMap.travDelayStatus == "ABANDON"){
                html = "<span style=\"color:red\">意外险已取消</span><br>";
            }
        }
        return html;
    }

    //立即支付
    function payNow(obj) {
        var distributorId = obj.operateDataMap.distributorId;
        var buCode = obj.operateDataMap.buCode;
        var infoStatus = obj.operateDataMap.infoStatus;
        var resourceStatus = obj.operateDataMap.resourceStatus;
        var paymentType = obj.operateDataMap.paymentType;
        var showAdvancePayOrderFlag = obj.operateDataMap.showAdvancePayOrderFlag;
        var orderId=obj.orderId;
        var payHtml="";
        if(distributorId == 2 && (buCode == "TICKET_BU" || buCode == "LOCAL_BU")  ){
            if(infoStatus == "INFOPASS" && resourceStatus =="AMPLE"){
                payHtml = "<a href=\"http://hotels.lvmama.com/order/view.do?orderId="+orderId+"\"  ><span class=\"order-btn\">立即支付</span></a>";
            }else if (buCode == "LOCAL_BU" && paymentType =="PREAUTH"){
                payHtml = '<a href="http://hotels.lvmama.com/order/view.do?orderId=' + orderId + '"  ><span class="order-btn">立即支付</span></a>';
            }else if(showAdvancePayOrderFlag == "Y"){
                payHtml = '<a href="http://hotels.lvmama.com/order/view.do?orderId=' + orderId + '&showOnlinePrepay=false"  ><span class="order-btn">立即支付</span></a>';
            }
        }else{
            if(showAdvancePayOrderFlag == "Y"){
                payHtml = '<a href="http://hotels.lvmama.com/order/view.do?orderId=' + orderId + '&showOnlinePrepay=false"  ><span class="order-btn">立即支付</span></a>';
            }else {
                payHtml = '<a href="http://hotels.lvmama.com/order/view.do?orderId=' + orderId + '"  ><span class="order-btn">立即支付</span></a>';
            }
        }
        if(obj.platform == "FLIGHT" || obj.platform == "TRAIN" || obj.platform == "BUS") {
            payHtml = '<a href="'+ obj.operateDataMap.pcOrderDetailUrl +'"><span class="order-btn">立即支付</span></a>';
        }
        return payHtml;
    }

    //下载投保单按钮
    function downloadVstPolicyInfo(vstPolicyInfo,orderId) {
        var policyInfoHtml = "";
        if(vstPolicyInfo!=undefined && vstPolicyInfo!=""){
            policyInfoHtml = '<a href=\'javascript:\' onclick=\'showDownloadDialog(' + vstPolicyInfo + ',"www.lvmama.com/myspace/order/","' + orderId + '")\'>下载投保单</a>';
            return policyInfoHtml;
        }else {
            return "";
        }
    }

    <!--签证进度查询连接-->
    function showVisaProgress(orderId) {
        var visaProgress = "";
        visaProgress = '<a target="_blank" class="status detail-link" href="//www.lvmama.com/visa/visaStatus/' + orderId + '">签证进度</a>';
        return visaProgress;
    }

    //退款申请
    function returnMoneyApply(obj){
        var html = "";
        if(obj.categoryId == "1" || obj.categoryId == "17"){
            html = partOfReturnMoney(obj,html);
        }else if(obj.operateDataMap.buCode!=null && obj.operateDataMap.buCode == "DESTINATION_BU" && obj.categoryId == '18' && obj.operateDataMap.subCategoryId!=null && obj.operateDataMap.subCategoryId == '181'){
            if(obj.operateDataMap.routeSceneHotelRefundEnable != "true"){
                html = partOfReturnMoney(obj,html);
            }else{
                html = otherPartOfReturnMoney(obj,html);
            }
        }else{
            if(obj.operateDataMap.refundStatus != null && (obj.operateDataMap.refundStatus == "THREE" || obj.operateDataMap.refundStatus ==  "TWELVE" || obj.operateDataMap.refundStatus ==  "ERROR")){
                html += "<span class=\"tagtips\" tip-content=\"不支持在线退款\">不可退款</span>";
            }else if(obj.operateDataMap.refundStatus != null && obj.operateDataMap.refundStatus ==  "EIGHT"){
                html += "<span class=\"tagtips\" tip-content=\"该订单不退不改，无法申请退款\">不可退款</span>";
            }else if(obj.operateDataMap.refundStatus != null && obj.operateDataMap.refundStatus ==  "NINE"){
                html += "<span class=\"tagtips\" tip-content=\"已超过游玩日一个月，无法申请退款\">不可退款</span>";
            }else if(obj.operateDataMap.refundStatus != null && (obj.operateDataMap.refundStatus ==  "TEN" || obj.operateDataMap.refundStatus ==  "ELEVEN" || obj.operateDataMap.refundStatus ==  "FIFTEEN")){
                html += "<span class=\"tagtips\" tip-content=\"分销订单无法申请退款\">不可退款</span>";
            }else if(obj.operateDataMap.refundStatus != null && obj.operateDataMap.refundStatus ==  "THIRTEEN"){
                html += "<span class=\"tagtips\" tip-content=\"该订单已经使用，无法申请退款\">不可退款</span>";
            }else if(obj.operateDataMap.refundStatus != null && obj.operateDataMap.refundStatus ==  "FOURTEEN"){
                html += "<span class=\"tagtips\" tip-content=\"该订单已经过期，请拨打客服10106060询问\">不可退款</span>";
            }else if(obj.operateDataMap.refundStatus != null && obj.operateDataMap.refundStatus ==  "SIXTEEN"){
                html += "<span class=\"tagtips\" tip-content=\"当日游玩订单无法在线退款，如需退款请拨打客服10106060询问\">不可退款</span>";
            }else if(obj.operateDataMap.refundStatus != null && obj.operateDataMap.refundStatus ==  "SEVENTEEN"){
                html += "<span class=\"tagtips\" tip-content=\"该订单包含实体票无法在线申请退款\">不可退款</span>";
            }else if(obj.operateDataMap.refundStatus != null && obj.operateDataMap.refundStatus ==  "EIGHTEEN"){
                html += "<span class=\"tagtips\" tip-content=\"如有疑问，请拨打客服10106060询问\">不可退款</span>";
            }else if(obj.operateDataMap.refundStatus != null && obj.operateDataMap.refundStatus ==  "SEVEN"){
                html += "<span class=\"c_999\">退款审核中...</span><br>" +
                        "<a href=\"javascript:void(0);\" onclick=\"javascript:refundProgress('"+obj.orderId+"');\">退款进度</a>";
            }else if(obj.operateDataMap.refundStatus != null && obj.operateDataMap.refundStatus ==  "FOUR"){
                html += "<span class=\"c_999\">银行处理中...</span><br>" +
                        "<a href=\"javascript:void(0);\" onclick=\"javascript:refundProgress('"+obj.orderId+"');\">退款进度</a>";
            }else if(obj.operateDataMap.refundStatus != null && obj.operateDataMap.refundStatus ==  "FIVE"){
                html += "<span class=\"c_999\">退款成功</span><br>\n" +
                        "<a href=\"javascript:void(0);\" onclick=\"javascript:refundProgress('"+obj.orderId+"');\">退款进度</a>";
            }else if(obj.operateDataMap.refundStatus != null && obj.operateDataMap.refundStatus ==  "TWENTY"){
                html += "<span class=\"c_999\">部分退款成功</span><br>\n" +
                        "<a href=\"javascript:void(0);\" onclick=\"javascript:refundProgress('"+obj.orderId+"');\">退款进度</a>";
            }else if(obj.operateDataMap.refundStatus != null && obj.operateDataMap.refundStatus ==  "SIX"){
                html += "<span class=\"c_999\">退款失败</span><br>\n" +
                        "<a href=\"javascript:void(0);\" onclick=\"javascript:refundProgress('"+obj.orderId+"');\">退款进度</a>";
            }else if(obj.operateDataMap.refundStatus != null && obj.operateDataMap.refundStatus == "NINETEEN"){
                html += "<a class=\"refundApplyClass js_reApply_part\" id=\"refundApply\" order_id='"+obj.orderId+"' href=\"javascript:;\">\n" +
                        "<span>退款申请</span>\n" +
                        "</a>";
            }else if(obj.operateDataMap.refundStatus != null && obj.operateDataMap.refundStatus == "TWO"){
                html += "<a class=\"refundApplyClass js_reApply\" id=\"refundApply\" check='"+obj.orderId+obj.operateDataMap.bizType+"' href=\"javascript:;\" onclick=\"toRefundApplyAjax('"+obj.orderId+"');\">\n" +
                        "<span>退款申请</span>\n" +
                        "</a>";
            }
        }
        return html;
    }

    function partOfReturnMoney(obj,html){
        if(obj.operateDataMap.refundStatus != null && obj.operateDataMap.refundStatus == "CANNOT_CHANGE_ORDER"){
            html += "<a href=\"javascript:void(0);\" onClick=\"orderNoChange('"+obj.operateDataMap.userOrderId+"','"+obj.productName+"','"+obj.operateDataMap.paymentTarget+"','"+obj.operateDataMap.hotelTel+"','" + obj.categoryId + "');\"  class=\"cancel-order\">该订单不退不改</a>"
        }else if(obj.operateDataMap.orderStatus == "CANCEL"){
            html += "<a href=\"javascript:void(0);\" onClick=\"toCancelSuccess('"+obj.operateDataMap.userOrderId+"','"+obj.productName+"','"+obj.operateDataMap.cancelTime+"');\"  class=\"cancel-order\">订单取消成功</a>"
        }else if(obj.operateDataMap.refundStatus != null && obj.operateDataMap.refundStatus == "REFUND_CHECKING"){
            html += "<span class=\"c_999\">退款审核中...</span><br class=\"clear\"/>" +
                    "<a href=\"javascript:void(0);\" onclick=\"javascript:refundProgress('"+obj.orderId+"','"+obj.categoryId+"');\">退款进度</a>";
        }else if(obj.operateDataMap.refundStatus != null && obj.operateDataMap.refundStatus== "REFUND_PROCESSING"){
            html += "<span class=\"c_999\">银行处理中...</span><br class=\"clear\"/>\n" +
                    "<a href=\"javascript:void(0);\" onclick=\"javascript:refundProgress('"+obj.orderId+"','"+obj.categoryId+"');\">退款进度</a>";
        }else if(obj.operateDataMap.refundStatus != null && obj.operateDataMap.refundStatus ==  "REFUND_SUCCESS"){
            html += "<span class=\"c_999\">退款成功</span><br class=\"clear\"/>\n" +
                    "<a href=\"javascript:void(0);\" onclick=\"javascript:refundProgress('"+obj.orderId+"','"+obj.categoryId+"');\">退款进度</a>";
        }else if(obj.operateDataMap.refundStatus != null && obj.operateDataMap.refundStatus ==  "REFUND_FAIL"){
            html += "<span class=\"c_999\">退款失败</span><br class=\"clear\"/>\n" +
                    "<a href=\"javascript:void(0);\" onclick=\"javascript:refundProgress('"+obj.orderId+"','"+obj.categoryId+"');\">退款进度</a>";
        }else if(obj.operateDataMap.refundStatus != null && obj.operateDataMap.refundStatus ==  "REFUND_APPLY"){
            if(obj.operateDataMap.orderSubtype !=null &&  (obj.operateDataMap.orderSubtype  == "STAMP" || obj.operateDataMap.orderSubtype  == "STAMP_PROD")){}//预售产品暂不支持在线退款
            else{
                html += "<a class=\"refundApplyClass\" id=\"refundApply\" check='"+obj.orderId+obj.operateDataMap.bizType+"' href=\"javascript:;\" onclick=\"vstOrdertoRefundApplyAjax('"+obj.orderId+"','"+obj.categoryId+"');\"><span>退款申请</span></a>";
            }
        }else if(obj.operateDataMap.refundStatus != null && obj.operateDataMap.refundStatus ==  "CANNOT_REFUND_APPLY"){
            if(obj.operateDataMap.orderSubtype !=null &&  (obj.operateDataMap.orderSubtype  == "STAMP" || obj.operateDataMap.orderSubtype  == "STAMP_PROD")){}//预售产品暂不支持在线退款
            else{
                html += "<a class=\"refundApplyClass\" id=\"refundApply\" check='"+obj.orderId+obj.operateDataMap.bizType+"' disabled=\"true\" style=\"text-decoration:none;\"><span class=\"c_999\">退款申请</span></a>\n" +
                        "<p class=\"c_999\" style=\"color:#666\">超过最晚退款时间</p>";
            }
        }
        //立即支付按钮
        if(obj.operateDataMap.waitingPay == true){
            html += "<a href=\"http://hotels.lvmama.com/order/view.do?orderId="+obj.orderId+"\"  class=\"pay_btn\"><i>立即支付</i></a>";
        }
        //取消订单按钮显示
        if(obj.operateDataMap.canCancel == true){
            //destBuCancelOrder存在表示是酒店订单，没值不做处理，按照之前的逻辑处理
            if(obj.operateDataMap.destBuCancelOrder != null){
                //酒店可退改到付取消订单按钮显示 如果是条件满足:待入住、未担保，方可取消订单
                if(obj.operateDataMap.destBuCancelOrder == true){
                    html += "<a href=\"javascript:void(0);\" onClick=\"toCancelHotel('"+obj.operateDataMap.userOrderId+"');\"  class=\"cancel-order\">取消订单</a>";
                }
            }else{
                html += "<a href=\"javascript:void(0);\" onClick=\"toCancelHotel('"+obj.operateDataMap.userOrderId+"');\"  class=\"cancel-order\">取消订单</a>";
            }
        }
        //下载电子合同
        if(obj.operateDataMap.contractStatus &&(obj.operateDataMap.contractStatus == "SIGNED_UNEFFECT" || obj.operateDataMap.contractStatus == "EFFECT")){
            html += "<a href=\"javascript:void(0);\"  onClick=\"showMyEcontract('"+obj.orderId+"')\" class=\"cancel-order\">下载电子合同</a>";
        }

       
        return html;
    }



    var formatDateTime = function (date) {
        if(date == null) {
            return "";
        }
        var y = date.getFullYear();
        var m = date.getMonth() + 1;
        m = m < 10 ? ('0' + m) : m;
        var d = date.getDate();
        d = d < 10 ? ('0' + d) : d;
        var h = date.getHours();
        var minute = date.getMinutes();
        minute = minute < 10 ? ('0' + minute) : minute;
        return y + '-' + m + '-' + d+' '+h+':'+minute;
    };

  
   
    function createOneInvoice(currentCategoryId,orderId){

        $.ajax({
            type: "POST",
            url: "/myspace/myNewInvoice/isMakeInvoice",
            data: {"categoryId":currentCategoryId,"orderId":orderId},
            dataType: "json",
            success: function (data) {
                if(data.result==false){
                    alert(data.msg);
                }else{
                    window.open("/myspace/myNewInvoice/createInvoice?categoryId=" + currentCategoryId + "&orderId=" + orderId, "_blank");
                }

            }

        });
    }

    function closeWin(){
        closeCannotChangeDiv();
    }

    function closeSendSmsWin(){
        $("#float_layer").hide();
    }

    //用户点击左边菜单栏，使tab页选中第一个（全部订单）
    function changeTabToFirst(){
        $("#tabId").find("li").each(function(){
            if($(this).hasClass('active')){
                $(this).removeClass("active");
            }
        })
        $("#tabId li").first().addClass("active");
    }


    $(function(){
        //用户点击tab页时的页面反应
        $("#tabId").on("click","li",function(){
            // var tabStatus = $(this).attr("data");
            $(this).addClass('active').siblings().removeClass('active');
            getOrderList(1);
        });

        //用户点击hover列表选择器时的页面反应
        $("#ulId").on("click","li",function(){
            var leftNav = $(this).attr("id");
            $("#leftNav").find("a").each(function(){
                if($(this).hasClass('on')){
                    $(this).removeClass("on");
                }
                if($(this).attr("id") == leftNav){
                    $(this).addClass('on');
                }
            });
            $(this).addClass('selected').siblings().removeClass('selected');
            getOrderList(1);
        });

        $(".tag").poptip();
        //可配置参数
        $(".tag").poptip({
            templete : 1,
            skin: "default",    //默认皮肤
            tiptitle: "",       //可统一设置标题
            place : 7,          //点钟方位，默认7点钟方向
            offsetX : -20,        //偏移修正

        });

        var ul = $('.order-usergift_tab_lsit');
        $('cite').click(function () {
            if (ul.css("display") == "none") {
                ul.slideDown("fast");
                ul.parent('.order-usergift_tab_box').addClass('order-usergift_tab_active');
            } else {
                ul.slideUp("fast");
                ul.parent('.order-usergift_tab_box').removeClass('order-usergift_tab_active')
            }
        });

        ul.find('li').click(function () {
            var txt = $(this).text();
            $('cite').html(txt  +  '<i class="conmon_icon usergift_down"></i>');
            ul.hide();
            ul.parent('.order-usergift_tab_box').removeClass('order-usergift_tab_active')
        });

        $(document).on('click', '.js-order-tab li', function(event) {
            $(this).addClass('active').siblings().removeClass('active')
            /* Act on the event */
        });

        $(document).bind("click",function(e){
            if($(e.target).closest("cite").length == 0){
                ul.slideUp("fast");
                ul.parent('.order-usergift_tab_box').removeClass('order-usergift_tab_active')
            }
        })

        //左侧按钮和主页联动
        var flagId = $("#bodyStyle").val();
        changeTabToFirst();
        $("#ulId").find("li").each(function(){
            if($(this).hasClass('selected')){
                $(this).removeClass("selected");
            }
            if($(this).attr("id") == flagId){
                $(this).addClass('selected');
                $(this).click();
            }
        });
    });

</script>
<!-- 公共js -->
<script type="text/javascript" src="../Scripts/Personage/orderlistCommon.js"></script>    <!--  右边部分结束 -->
</div>
<!-- 主体部分结束-->

<!--帮助中心开始-->
<div class="help_box">
	<a class="title" href="javascript:;"></a>
    <div class="help_box_content">
   	 	<div class="content">
	        <ul class="list">
	            <li><a href="http://www.lvmama.com/public/help_center_132" target="_blank" hidefocus="false">没有收到短信？</a></li>
	            <li><a href="http://www.lvmama.com/public/buy_guide#m_2" target="_blank" hidefocus="false">如何退款？</a></li>
	            <li><a href="http://www.lvmama.com/public/help_center_10" target="_blank" hidefocus="false">如何修改订单？</a></li>
	        </ul>
	        <p class="more_box"><a href="http://www.lvmama.com/public/help" target="_blank" hidefocus="false">更多帮助&gt;</a></p>
	        <p class="more_box">任何疑问请拨打<span class="tle_box"><i class="kf_icon"></i>1010-6060</span></p>
    	</div>
    </div>
</div>
<!--帮助中心结束-->
<!--右侧帮助中心-->
<script src="../Scripts/Personage/jquery-ui-1.8.21.custom.min.js"></script>
<script src="../Scripts/Personage/jquery.tools.min.js"></script>
<script src="../Scripts/Personage/lvmama-custom.js"></script>
<script src="../Scripts/Personage/losc.js"></script>
<script type="text/javascript">
    $(function(){

        $(document.body).ready(function(){
            $.ajax({
                url: "/myspace/message/unReadCount",
                type:"post",
                dataType:"json",
                success:function(json){
                    var num = json.waittingCommentNumber;


                    //if(num === "0"){
                    //	$("#lvnav-comment >a").eq(1).hide();
                    //}else{
                    //	$("#lvnav-comment >a").eq(1).show();
                    //}
                    if(num != "0"){
                        $("#waittingCommentNumber").html("(<em>"+num +"</em>)");
                    }


                },
                error:function(){
                    //$("#lvnav-comment >a").eq(1).hide();
                }
            });

            $.ajax({//站内信消息未读总数
                url:"/myspace/message/getUnreadCount",
                type:"post",
                dateType:"json",
                success:function (data) {
                    if(data.success ==  true){
                        var num = data.Count;
                        $("#myspace_message_count_id").text("("+num +")");
                    }
                }
            })


            $.ajax({
                url:"/myspace/growUp/hasNewCoupon",
                type:"post",
                dateType:"json",
                success:function (json) {
                    if(json>0){
                        $("#myspace_growUp_hasNewCoupon").addClass("conmon_icon Home_new_icon marL5");
                    }
                }
            })

        });
    });
</script>

<script>
    cmCreatePageviewTag("我的订单", "D0001", null, null,"-_--_--_--_--_-其他页面");
</script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
