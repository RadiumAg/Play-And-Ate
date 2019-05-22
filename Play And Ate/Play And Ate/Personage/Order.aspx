<%@ Page Title="" Language="C#" MasterPageFile="~/Shared/Main.Master" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="Play_And_Ate.Personage.Order" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Style" runat="server">
    <link rel="stylesheet" href="../Content/Personage/index.php">
    <link href="../Content/Personage/lv-bought.css" rel="stylesheet">
    <link rel="stylesheet" href="../Content/Personage/global_pop.css">
    <link rel="stylesheet" href="../Content/Personage/index(1).php">
    <link rel="stylesheet" href="../Content/Personage/newmember.css">
    <link rel="stylesheet" href="../Content/Personage/index(2).php">
    <link rel="stylesheet" href="../Content/Personage/newcommon.css">
    <link rel="stylesheet" href="../Content/Personage/integral.css">
    <link rel="stylesheet" href="../Content/Personage/index(12).php">
    <link rel="stylesheet" href="../Content/Personage/index(11).php">
    <link rel="stylesheet" href="../Content/Personage/index(5).php">
    <link rel="stylesheet" href="../Content/Personage/index(6).php">
    <script src="../Content/Personage/index(13).php"></script>
    <script src="../Content/Personage/index(14).php"></script>
    <script src="../Content/Personage/index(10).php"></script>
    <script src="../Content/Personage/index(3).php"></script>
    <script src="../Content/Personage/index(4).php"></script>
    <script src="../Scripts/Personage/lvmember.js"></script>
    <script src="../Scripts/Personage/eluminate.js"></script>
    <script src="../Scripts/Personage/coremetrics-initalize.js"></script>
    <script type="text/javascript" src="../Scripts/Personage/52710000.js"></script>
    <script type="text/javascript" src="../Content/Personage/ztRecommendInfoJson.do"></script>
    <link rel="stylesheet" href="../Content/Personage/jquery.common.css">
    <style>
        .order-v1-box {
            background: #fff;
            border-top: 1px solid #ddd;
            margin-bottom: 20px;
            box-shadow: 0px 5px 8px #ddd
        }

        .order-head-tab {
            background: #FAFAFA;
            margin-left: -1px
        }

        .order-head-tab {
            height: 50px;
            line-height: 50px
        }

            .order-head-tab
            li {
                cursor: pointer;
                float: left;
                padding: 0 20px;
                font-size: 18px;
                color: #333
            }

                .order-head-tab li
                em {
                    color: #f90;
                    margin-left: 4px
                }

                .order-head-tab li:hover {
                    color: #d37
                }

            .order-head-tab
            .active {
                background: #fff;
                border-top: 3px solid #d37;
                border-right: 1px solid #ddd;
                border-left: 1px solid #ddd;
                height: 48px
            }

        .order-body-tab {
            height: 44px;
            border-top: 1px solid #ddd
        }

        .order-body-list {
            height: 44px;
            line-height: 44px;
            margin-left: 20px
        }

            .order-body-list
            li {
                position: relative;
                float: left;
                font-size: 13px;
                color: #666
            }

        .order-width330 {
            width: 330px
        }

        .order-width280 {
            width: 280px;
            margin-left: 30px
        }

        .order-width160 {
            width: 160px;
            margin-left: 30px
        }

        .order-width110 {
            width: 110px;
            margin-left: 30px
        }

        .order-select {
            border: 1px solid #ddd;
            background: #fafafa;
            padding: 5px 0 5px 10px
        }

        .order-col-name {
            height: 40px;
            line-height: 40px;
            background: #fff;
            border-bottom: 1px solid #EBEBEB;
            border-right: 1px solid #EBEBEB;
            font-size: 13px;
            color: #999
        }

            .order-col-name
            th {
                font-weight: 400
            }
            /*订单的第一个空格*/
           .order_td{
               width:320px;
           }
           .order_number
           {
               height:80px;line-height:80px;
               width:220px;
               float:right;
           }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">

    <!---会员中心导航结束--->
    <!-- 主体部分开始-->
    <div class="newmember_main">
        <!-- 会员中心左侧菜单栏 -->
        <div class="newmember_leftside">
            <dl>
                <dt><i class="per_icon"></i>个人资料<i class="downarr"></i></dt>
                <dd><a href="~/Personage/Personage.aspx" id="lvnav_perinfo">个人信息</a></dd>
            </dl>
            <dl>
                <dt><i class="safe_icon"></i>账户安全<i class="downarr"></i></dt>
                <dd>
                    <a href="#" id="lvnav_safeset">安全设置</a>
                    <a href="#" id="lvnav_passwd">修改登录密码</a>
                    <a href="#" id="lvnav_logout">注销用户</a>
                </dd>
            </dl>
            <dl>
                <dt><i class="info_icon"></i>个人订单<i class="downarr"></i></dt>
                <dd><a href="~/Personage/Order.aspx" id="lvnav_tourinfo">个人订单</a></dd>
            </dl>

        </div>






        <link rel="stylesheet" href="../Content/Personage/index(7).php">
        <link href="../Content/Personage/lv-bought.css" rel="stylesheet">
        <link href="../Content/Personage/invoice.css" rel="stylesheet">
        <link href="../Content/Personage/popup.css" rel="stylesheet">
        <link rel="stylesheet" href="../Content/Personage/global_pop.css">
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
            var randomJs = "\<script type=\"text\/javascript\" src=\"/resources/js/ordercenter/selectOrder.js?rn=" + Math.random() + "\"><\/script>";
            // var randomJs = "\<script type=\"text\/javascript\" src=\"/js/member/selectOrder.js?\"><\/script>";
            document.write(randomJs);
        </script>
        <script type="text/javascript" src="../Scripts/Personage/selectOrder.js"></script>
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

                    </ul>
                    <div class="order-body-tab ">
                        <ul class="order-body-list">
                            <li class="order-width330">产品信息</li>
                            <li class="order-width280">产品简单明细</li>
                            <li class="order-width160">订单状态</li>
                            <li class="order-width100">操作</li>
                        </ul>
                    </div>
                </div>
                <div class="order-mod-tcontent js_con" style="display: block;">
                    <!--全部订单列表开始-->
                    <div id="tableContent">
                        <table class="order_table">
                            
                            <tbody>
                                <tr class="sep-row">
                                    <td class="order_td">
                                        <img src="" width="90" height="80"/>  
                                        <div class="order_number">
                                            订单号:<a href="#" style="font-size:20px;"><strong>123456789123456</strong></a>
                                        </div>
                                    </td>
                                    <td>
                                        联系人姓名：<span>张事情</span>
                                        <br />
                                         <br />
                                        出发日期:<span>2019-02-25</span>
                                        <br />
                                         <br />
                                        订单金额:<span>￥<strong>45</strong></span>
                                    </td>
                                   
                                     <td >
                                        <div  style="height:80px;line-height:80px;width:60px; font-size:18px">
                                            <a href="#">未支付</a>
                                        </div>
                                    </td>
                                     <td>
                                         <a href="#">查看详情</a>
                                         <br />
                                         <a href="#">删除订单</a>
                                    </td>
                                </tr>
                                <tr class="sep-row">
                                    <td class="order_td">
                                        <img src="" width="90" height="80"/>  
                                        <div class="order_number">
                                            订单号:<a href="#" style="font-size:20px;"><strong>123456789123456</strong></a>
                                        </div>
                                    </td>
                                    <td>
                                        联系人姓名：<span>张事情</span>
                                        <br />
                                         <br />
                                        出发日期:<span>2019-02-25</span>
                                        <br />
                                         <br />
                                        订单金额:<span>￥<strong>45</strong></span>
                                    </td>
                                   
                                     <td >
                                        <div  style="height:80px;line-height:80px;width:60px; font-size:18px">
                                            <a href="#">未支付</a>
                                        </div>
                                    </td>
                                     <td>
                                         <a href="#">查看详情</a>
                                         <br />
                                         <a href="#">删除订单</a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <!--列表结束-->
                    <!--分页-->
                    <div class="page_box mart20">
                        <div id="pages_" class="pages">
                            <div id="lv_page">
                                <div class="Pages" id="pageId_tabs-1">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <!--近期订单结束-->
        </div>

        <table cellspacing="0" cellpadding="0" id="contactList" class="contact_list">
            <tbody>
                <tr>
                    <th width="8%" style="text-align: center;">序号</th>
                    <th width="15%" style="text-align: center;">合同编号</th>
                    <th width="20%" style="text-align: center;">合同类型</th>
                    <th width="20%" style="text-align: center;">商品名称</th>
                    <th width="15%" style="text-align: center;">游玩时间</th>
                    <th width="15%" style="text-align: center;">操作栏</th>
                </tr>
            </tbody>
        </table>


        <script type="text/javascript">
            //查询订单列表
            function getOrderList(page) {
                var url;
                url = "";
                var categoryIdList = "";
                var orderProductType = "";
                //获取选中的列表头的品类id集合
                $("#ulId").find("li").each(function () {
                    if ($(this).hasClass('selected')) {
                        categoryIdList = $(this).attr("data");
                        // orderProductType = $(this).attr("data");
                    }
                })
                //获取查询订单的类型状态(全部,待审核,>>>>)
                var queryType = "";
                $("#tabId").find("li").each(function () {
                    if ($(this).hasClass('active')) {
                        queryType = $(this).attr("data");
                    }
                })
                //获取订单的类型(vst,bus,flight ,iflight train)
                var platform = "";
                $("#ulId").find("li").each(function () {
                    if ($(this).hasClass('selected')) {
                        platform = $(this).attr("platform");
                    }
                })
                if (platform == "") {
                    //查询的是全部订单包括vst bus
                    // url="//my.lvmama.com/myspace/getOrderlist.do?currentPage="+page+"&pageSize=10"+"&queryType="+queryType;
                    url = "/myspace/getOrderlist?currentPage=" + page + "&pageSize=10" + "&queryType=" + queryType;
                } else {
                    //说明查询的是指定的订单
                    if (categoryIdList != "") {
                        //是有categoryId的
                        url = "/myspace/getOrderlist?currentPage=" + page + "&pageSize=10" + "&categoryId=" + categoryIdList + "&queryType=" + queryType + "&platform=" + platform;
                    } else {
                        //没有categoryId 比如是 汽车票火车票 .....
                        url = "/myspace/getOrderlist?currentPage=" + page + "&pageSize=10" + "&queryType=" + queryType + "&platform=" + platform;
                    }
                }
                $.getJSON(url, function (json) {
                    $tripContainerPage = $("#pageId_tabs-1");
                    pageString = '';
                    console.log(json);
                    loginFlag = json.result;
                    if (loginFlag == "UNLOGIN") {
                        alert("用户尚未登陆");
                        return;
                    }
                    emptyHtml = "<table class=\"order_table\">" +
                        "<thead>" +
                        "<tr class=\"order-col-name\">" +
                        "<th colspan=\"7\" >" +
                        "</th>" +
                        "</tr>" +
                        "</thead>" +
                        "<tbody>" +
                        "<tr class=\"sep-row\">" +
                        "<td colspan=\"7\" >" +
                        "<div class=\"no_order\">" +
                        "<a href=\"//www.lvmama.com\" class=\"noimg\"><img src=\"\" /></a>" +
                        "<div class=\"content\">" +
                        "<p>最近您没有下过订单哦~</p>" +
                        "<a href=\"\.\.\\Home\\Home\.aspx\" class=\"gohome\">去首页看看</a>" +
                        "</div>" +
                        "</div>" +
                        "</td>" +
                        "</tr>" +
                        "</tbody>" +
                        "</table>";
                    if (loginFlag == "FAIL") {
                        $("#tableContent").html(emptyHtml);
                        return;
                    }
                    var totalCount = json.data.totalCount;
                    var html = "";
                    $("#tableContent").html("");
                    if (totalCount == 0) {
                        //清空上一页显示的数据
                        html = emptyHtml;
                    } else {
                        var jsonList = json.data.content;
                        $.each(jsonList, function (i) {
                            html = html + spliceHtmlListDetail(html, jsonList, i);
                        });
                    }
                    $("#tableContent").html(html);
                    //显示分页控件
                    patination(json, pageString, "getOrderList");
                    return;
                })
            }


            //分页公共方法抽取
            function patination(json, pageString, method) {
                var pageSize = json.data.pageSize;
                var currentPage = json.data.pageNo;
                var recordCount = json.data.totalCount;

                if (recordCount % pageSize == 0) {
                    var pageCount = parseInt(recordCount / pageSize);
                } else {
                    var pageCount = parseInt(recordCount / pageSize) + 1;
                }
                if (parseInt(recordCount) > parseInt(pageSize)) {
                    pageString = pageConfig(pageCount, currentPage, pageSize, method);
                    //分页信息
                    $tripContainerPage.html(pageString);
                } else {
                    $tripContainerPage.html("");
                }
            }

            //分页控件
            function pageConfig(pageCount, page, pageSize, method) {
                page = parseInt(page);
                var prevPage = page - 1;
                var nextPage = page + 1;
                var str = '<p>';
                var endPage = 0;
                if (prevPage >= 1) {
                    str += '<a href="javascript:void(0)" class="PrevPage" title="上一页" onClick="' + method + '(' + prevPage + ');"  hidefocus="false" rel="nofollow">上一页</a>';
                }
                if (page != 1) {
                    str += '<a href="javascript:void(0)" onClick="' + method + '(1);" title="到第一页" rel="nofollow">1</a>';
                }
                if (page >= 5) {
                    str += '<em>...</em>';
                }
                if (pageCount > page + 5) {
                    endPage = page + 5;
                } else {
                    endPage = pageCount;
                }
                for (var i = page - 5; i <= endPage; i++) {
                    if (i > 0) {
                        if (i == page) {
                            str += '<span class="PageSel">' + i + '</span>';
                        } else {
                            if (i != 1 && i != pageCount) {
                                str += '<a href="javascript:void(0)" onClick="' + method + '(' + i + ');" title="第 ' + i + ' 页"  rel="nofollow">' + i + '</a>';
                            }
                        }
                    }
                }
                if (page + 3 < pageCount) {
                    str += '<em>...</em>';
                }
                if (page != pageCount) {
                    str += '<a  href="javascript:void(0)" onClick="' + method + '(' + pageCount + ');" title= "第 ' + pageCount + ' 页"  rel="nofollow">' + pageCount + '</a>';
                }

                if (nextPage <= pageCount) {
                    str += '<a href="javascript:void(0)" class="NextPage PageLink PageLink_page" onClick="' + method + '(' + nextPage + ');" title="下一页" hidefocus="false" >下一页</a>';
                }

                str += '</p>';
                return str;
            }

            function dateToStr(date) {
                var str = new Date(date);
                Y = str.getFullYear() + '-';
                M = (str.getMonth() + 1 < 10 ? '0' + (str.getMonth() + 1) : str.getMonth() + 1) + '-';
                D = (str.getDate() < 10 ? '0' + str.getDate() : str.getDate()) + ' ';
                h = (str.getHours() < 10 ? '0' + str.getHours() : str.getHours()) + ':';
                m = (str.getMinutes() < 10 ? '0' + str.getMinutes() : str.getMinutes());
                return Y + M + D + h + m;
            }

            var chnNumChar = ["零", "一", "二", "三", "四", "五", "六", "七", "八", "九"];
            var chnUnitSection = ["", "万", "亿", "万亿", "亿亿"];
            var chnUnitChar = ["", "十", "百", "千"];

            function SectionToChinese(section) {
                var strIns = '', chnStr = '';
                var unitPos = 0;
                var zero = true;
                while (section > 0) {
                    var v = section % 10;
                    if (v === 0) {
                        if (!zero) {
                            zero = true;
                            chnStr = chnNumChar[v] + chnStr;
                        }
                    } else {
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

            function spliceHtmlTravelName(travellerNames) {
                var orderNumDetailHtmlStr = "";
                var nameStr = "";
                for (var personName in travellerNames) {
                    nameStr += travellerNames[personName] + ",";
                }
                //去掉最后一个逗号
                if (nameStr.length > 0) {
                    nameStr = nameStr.substr(0, nameStr.length - 1);
                }
                //超过20个字符用省略号表示
                if (nameStr.replace(/[\u0391-\uFFE5]/g, "aa").length > 20) {
                    var showNameStr = nameStr.substr(0, 20) + "...";
                    orderNumDetailHtmlStr += "<p><a href=\"#\" class=\"tag\" tip-content=\"乘机人：" + nameStr + "\">乘机人：" + showNameStr + "</a></p>";
                } else {
                    orderNumDetailHtmlStr += "<p>乘机人：" + nameStr + "</p>";
                }
                return orderNumDetailHtmlStr;
            }

            function spliceHtmlListDetail(html, jsonList, i) {
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

                if (jsonList[i].distributorChannel == '108' || jsonList[i].distributorChannel == '10001') {
                    productNameHtml = "<a target=\"_blank\" href=\"//www.lvmama.com/tuangou/deal-" + jsonList[i].urlId + "\">" + jsonList[i].productName + "</a>";
                } else if (jsonList[i].distributorChannel == '110' || jsonList[i].distributorChannel == '10002') {
                    productNameHtml = "<a target=\"_blank\" href=\"//www.lvmama.com/tuangou/sale-" + jsonList[i].urlId + "\">" + jsonList[i].productName + "</a>"
                } else if (jsonList[i].hengdianBranchName != '') { //横店产品显示为规格名称
                    productNameHtml = jsonList[i].hengdianBranchName;
                } else if (jsonList[i].categoryId == '12') {
                    productNameHtml = "<a target=\"_blank\" href=\"http://ticket.lvmama.com/p-" + jsonList[i].productId + "\">" + jsonList[i].productName + "</a>";
                } else if ((jsonList[i].categoryId == '11' || jsonList[i].categoryId == '13') && jsonList[i].mainDestId != null) { //景区门票、组合套餐票
                    productNameHtml = "<a target=\"_blank\" href=\"http://ticket.lvmama.com/scenic-" + jsonList[i].mainDestId + "\">" + jsonList[i].productName + "</a>";
                } else if (jsonList[i].categoryId == '31') { //演出票
                    productNameHtml = "<a target=\"_blank\" href=\"http://ticket.lvmama.com/show-" + jsonList[i].productId + "\">" + jsonList[i].productName + "</a>"
                } else {
                    productNameHtml = jsonList[i].productName;
                }

                //订单时间 or 订单名称
                if (jsonList[i].categoryId == "28") {//Wi-Fi电话卡
                    var startTime = new Date(jsonList[i].strStartTime);
                    var startyy = startTime.getFullYear();
                    var startmm = startTime.getMonth() + 1;
                    var startdd = startTime.getDate();
                    if (startmm < 10) {
                        startmm = "0" + startmm;
                    }
                    if (startdd < 10) {
                        startdd = "0" + startdd;
                    }
                    var startTimeHtml = "<p class=\"product-date\">" + startyy + "-" + startmm + "-" + startdd + "</p>";
                    var endTime = new Date(jsonList[i].strEndTime);
                    var endyy = endTime.getFullYear();
                    var endmm = endTime.getMonth() + 1;
                    var enddd = endTime.getDate();
                    if (endmm < 10) {
                        endmm = "0" + endmm;
                    }
                    if (enddd < 10) {
                        enddd = "0" + enddd;
                    }
                    var endTimeHtml = "<p class=\"product-date\">" + endyy + "-" + endmm + "-" + enddd + "</p>";
                    travelTime = startTimeHtml + " 至 " + endTimeHtml;
                } else if (jsonList[i].categoryId == "" && jsonList[i].platform == "TRAIN") {//火车票
                    var startTime = new Date(jsonList[i].strStartTime);
                    var startyy = startTime.getFullYear();
                    var startmm = startTime.getMonth() + 1;
                    var startdd = startTime.getDate();
                    if (startmm < 10) {
                        startmm = "0" + startmm;
                    }
                    if (startdd < 10) {
                        startdd = "0" + startdd;
                    }
                    var startTimeHtml = "<p class=\"product-date\">" + startyy + "-" + startmm + "-" + startdd + "</p>";
                    travelTime = "<p class=\"product-date\">" + startTimeHtml + "</p><p class=\"product-date\">" + jsonList[i].trainHourAndMinute;
                    if (jsonList[i].nightQuantity != 0) {
                        travelTime += " +" + jsonList[i].nightQuantity;
                    }
                    travelTime += "</p>";
                } else if (jsonList[i].categoryId == "" && jsonList[i].platform == "BUS") {//汽车票
                    var startTime = new Date(jsonList[i].strStartTime);
                    var startyy = startTime.getFullYear();
                    var startmm = startTime.getMonth() + 1;
                    var startdd = startTime.getDate();
                    var startTimeHtml = "<p class=\"product-date\">" + startyy + "-" + startmm + "-" + startdd + "</p>";
                    var busHourAndMinute = jsonList[i].trainHourAndMinute;
                    travelTime = "<p class=\"product-date\">" + startTimeHtml + "</p><p class=\"product-date\">" + busHourAndMinute.substr(0, 5);
                    if (jsonList[i].nightQuantity != 0) {
                        travelTime += " +" + jsonList[i].nightQuantity;
                    }
                    travelTime += "</p>";
                } else if (jsonList[i].categoryId == "1") {//酒店
                    travelTime = "<p class=\"product-date\">" + jsonList[i].strVisitTime + "</p><p class=\"product-date\"> 住" + jsonList[i].itemQuantity + "晚" + "</p>";
                } else if (jsonList[i].categoryId == "" && (jsonList[i].platform == "FLIGHT" || jsonList[i].platform == "IFLIGHT")) {//飞机票
                    var strDepDateTimes = jsonList[i].strDepDateTimes;
                    if (jsonList[i].tripType == 1) {
                        travelTime = strDepDateTimes[0];
                    } else if (jsonList[i].tripType == 2) {
                        travelTime = "<p class=\"product-date\"><i class='order-plan-icon'>去</i>" + strDepDateTimes[0] + "</p><p class=\"product-date\"><i class='order-plan-icon'>返</i>" + strDepDateTimes[1] + "</p>";
                    } else if (jsonList[i].tripType == 3) {
                        for (var j = 1; j <= strDepDateTimes.length; j++) {
                            travelTime += "<p class=\"product-date\"><i class='order-plan-icon'>第" + SectionToChinese(j) + "程</i>" + strDepDateTimes[j - 1] + "</p>";
                        }
                    }

                    //订单名称
                    if (jsonList[i].tripType == 1) {
                        if (jsonList[i].zhTripType != null && jsonList[i].zhTripType != undefined && jsonList[i].zhTripType != '') {
                            productNameHtml = "<i class=\"order-plan-icon\">" + jsonList[i].zhTripType + "</i>" + jsonList[i].tripShow;
                        } else {
                            productNameHtml = "<i class=\"order-plan-icon\">单程</i>" + jsonList[i].tripShow;
                        }
                    } else if (jsonList[i].tripType == 2) {
                        productNameHtml = "<i class=\"order-plan-icon\">往返</i>" + jsonList[i].tripShow;
                    } else if (jsonList[i].tripType == 3) {
                        productNameHtml = "<i class=\"order-plan-icon\">多程</i>" + jsonList[i].tripShow;
                    }
                } else {
                    travelTime = "<div class=\"product-date\">\n" + jsonList[i].strVisitTime + "</div>";
                }

                
                //订单的显示状态
                orderStatus = jsonList[i].zhViewOrderStatus;

                //合同状态
                if (jsonList[i].contractStatus) {
                    var zhContractStatus = "";
                    if (jsonList[i].contractStatus == "CANCEL") {
                        zhContractStatus = "已作废";
                    } else if (jsonList[i].contractStatus == "UNSIGNED") {
                        zhContractStatus = "未签约";
                    } else if (jsonList[i].contractStatus == "SIGNED_UNEFFECT") {
                        zhContractStatus = "已签约 未生效";
                    } else if (jsonList[i].contractStatus == "EFFECT") {
                        zhContractStatus = "已生效";
                    }
                    contractStatusHtml = ("<span class='num'>合同状态：" + zhContractStatus + "</em></span>");
                }

                categoryName = jsonList[i].categoryName;
                orderAmount = (jsonList[i].oughtAmount / 100).toFixed(2);
                platform = jsonList[i].platform;

                //订单数量及详细信息
                if (jsonList[i].categoryId == "11" || jsonList[i].categoryId == "12" || jsonList[i].categoryId == "13" || jsonList[i].categoryId == "4" || jsonList[i].categoryId == "41" || jsonList[i].categoryId == "43" || jsonList[i].categoryId == "32") {
                    orderNumDetailHtml = "数量：" + jsonList[i].quantity + "份";
                } else if (jsonList[i].categoryId == "28") {//wifi
                    orderNumDetailHtml = "数量：" + jsonList[i].quantity + "台";
                } else if (jsonList[i].categoryId == "31" || jsonList[i].categoryId == "44") {//娱乐，美食
                    orderNumDetailHtml = "数量：" + jsonList[i].quantity + "张";
                } else if (jsonList[i].categoryId == "15" || jsonList[i].categoryId == "16" || jsonList[i].categoryId == "17" || jsonList[i].categoryId == "18" || jsonList[i].categoryId == "29" || jsonList[i].categoryId == "42") {//度假
                    orderNumDetailHtml = "人数：" + jsonList[i].adultQuantity + "成人 " + jsonList[i].childQuantity + "儿童";
                } else if (jsonList[i].categoryId == "1") {//酒店
                    orderNumDetailHtml = "房间类型：" + jsonList[i].roomType + " " + jsonList[i].quantity + "间";
                } else if (jsonList[i].categoryId == "" && jsonList[i].platform == "BUS") {
                    var nameStr = "";
                    var travellerNamesStr = jsonList[i].travellerNames;
                    for (var personName in travellerNamesStr) {
                        nameStr += travellerNamesStr[personName] + ",";
                    }
                    //去掉最后一个逗号
                    if (nameStr.length > 0) {
                        nameStr = nameStr.substr(0, nameStr.length - 1);
                    }
                    //超过20个字符用省略号表示
                    if (nameStr.replace(/[\u0391-\uFFE5]/g, "aa").length > 20) {
                        var showNameStr = nameStr.substr(0, 20) + "...";
                        orderNumDetailHtml = "<a href=\"#\" class=\"tag\" tip-content=\"乘车人：" + nameStr + "\">乘车人：" + showNameStr + "</a>";
                    } else {
                        orderNumDetailHtml = "乘车人：" + nameStr;
                    }
                } else if (jsonList[i].categoryId == "" && jsonList[i].platform == "TRAIN") {
                    orderNumDetailHtml = "车次：" + jsonList[i].trainNo + " " + jsonList[i].seatType;
                } else if (jsonList[i].categoryId == "" && jsonList[i].platform == "FLIGHT") {
                    var orderNumDetailHtml = "<div class=\"num\">";
                    //单程
                    if (jsonList[i].tripType == 1) {
                        var flightInfos = jsonList[i].flightInfos;
                        orderNumDetailHtml += "<p>航班：" + flightInfos[0] + "</p>";
                        orderNumDetailHtml += spliceHtmlTravelName(jsonList[i].travellerNames);
                    } else if (jsonList[i].tripType == 2) {//往返
                        var flightInfos = jsonList[i].flightInfos;
                        orderNumDetailHtml += "<p><a href=\"#\" class=\"tag\" tip-content=\"<i class='order-plan-icon'>去</i>" + flightInfos[0] + "<br><i class='order-plan-icon'>返</i>" + flightInfos[1] + "\">航班：" + flightInfos[0] + "</a></p>"
                        orderNumDetailHtml += spliceHtmlTravelName(jsonList[i].travellerNames);
                    }
                } else if (jsonList[i].categoryId == "" && jsonList[i].platform == "IFLIGHT") {
                    var orderNumDetailHtml = "<div class=\"num\">";
                    //单程
                    if (jsonList[i].tripType == 1) {
                        // var flightInfos = jsonList[i].flightInfos;
                        // orderNumDetailHtml += "<p>" + flightInfos[0] + "</p>";
                        orderNumDetailHtml += spliceHtmlTravelName(jsonList[i].travellerNames);
                    } else if (jsonList[i].tripType == 2) {//往返
                        // var flightInfos = jsonList[i].flightInfos;
                        // orderNumDetailHtml += "<p><a href=\"#\" class=\"tag\" tip-content=\"<i class='order-plan-icon'>去</i>" + flightInfos[0] + "<br><i class='order-plan-icon'>返</i>" + flightInfos[1] + "\">航班：" + flightInfos[0] + "</a></p>"
                        orderNumDetailHtml += spliceHtmlTravelName(jsonList[i].travellerNames);
                    } else {//多程
                        // var flightInfos = jsonList[i].flightInfos;
                        // var flightInfoHtml = "";
                        // for(var j = 1 ; j <= flightInfos.length ; j++){
                        //     flightInfoHtml += "<i class='order-plan-icon'>第" + SectionToChinese(j) + "程</i>" + flightInfos[j-1] + "<br>";
                        // }
                        // orderNumDetailHtml += "<p><a href=\"#\" class=\"tag\" tip-content=\"" + flightInfoHtml + "\">航班：" + flightInfos[0].substr(0,15) + "</a></p>"
                        orderNumDetailHtml += spliceHtmlTravelName(jsonList[i].travellerNames);
                    }
                    orderNumDetailHtml += "</div>";
                } else if (jsonList[i].categoryId == "2" || jsonList[i].categoryId == "8") {//邮轮
                    var roomDetailInfos = jsonList[i].roomTypeAndTravellerInfo;
                    if (roomDetailInfos == null || roomDetailInfos == undefined || roomDetailInfos == '') {
                        for (var num = 1; num <= jsonList[i].quantity; num++) {
                            roomDetailInfos[num - 1] = "";
                        }
                    }
                    if (jsonList[i].quantity == 1) {
                        orderNumDetailHtml += "<p><a href=\"#\" class=\"tag\" tip-content=\"" + roomDetailInfos[0] + "\">房间类型：" + jsonList[i].roomType + " " + jsonList[i].quantity + "间</a></p>";
                    } else {
                        var roomTip = "";
                        for (var j = 1; j <= roomDetailInfos.length; j++) {
                            roomTip += "<i class='order-plan-icon'>第" + SectionToChinese(j) + "间</i>" + roomDetailInfos[j - 1] + "<br>";
                        }
                        orderNumDetailHtml += "<p><a href=\"#\" class=\"tag\" tip-content=\"" + roomTip + "\">房间类型：" + jsonList[i].roomType + " " + jsonList[i].quantity + "间</a></p>";
                    }
                }

           
                //操作
                var operateMap = jsonList[i].operateMap;
                for (var key in operateMap) {
                    if (key == "COMMENT") {//点评
                        operateHtml += "<p><a href=\"//www.lvmama.com/comment/writeComment/writeCmt/" + orderId + ".html\"><span class=\"comment-btn\">立即点评</span></a></p>";
                    } else if (key == "RESEND_SMS_CERT") {//重发短信凭证
                        operateHtml += "<p><a href=\"javascript:void(0);\" onclick=\"sendSms(this,'" + orderId + "','" + jsonList[i].operateDataMap.contractMobile + "','" + jsonList[i].operateDataMap.userOrderId + "');\" name=\"sent_mms\" >重发短信凭证</a></p>";
                    } else if (key == "DOWNLOAD_TICKET_CERT") {//下载门票凭证
                        operateHtml += '<p><a href="javascript:void(0);"  onClick="showDownLoadDisney("' + orderId + '")" class="cancel-order">下载门票凭证</a></p>';
                    } else if (key == "PAYMENT") {//立即支付
                        if (jsonList[i].platform == "NS") {
                            operateHtml += "<p><a target=\"_blank\" class=\"status detail-link\" href=\" " + jsonList[i].operateDataMap.optPayUrl + " \">立即支付</a></p>";
                        } else {
                            operateHtml += "<p>" + payNow(jsonList[i]) + "</p>";
                        }
                    } else if (key == "CANCEL_ORDER") {//取消订单
                        if (jsonList[i].platform == "NS") {
                            operateHtml += "<p><a href=\"javascript:void(0);\" onClick=\"toCancelNS('" + jsonList[i].orderId + "');\"  class=\"cancel-order\">取消订单</a></p>";
                        } else {
                            operateHtml += "<p><a href=\"javascript:void(0);\" onClick=\"toCancel('" + jsonList[i].operateDataMap.userOrderId + "');\"  class=\"cancel-order\">取消订单</a></p>";
                        }
                    } else if (key == "APPLY_REFUND") {//退款申请
                        operateHtml += returnMoneyApply(jsonList[i]);
                    } else if (key == "REORDER") {//再次预定
                        operateHtml += "<p><a target=\"_blank\" class=\"status detail-link\" href=\"http://dujia.lvmama.com/package/recreateOrder/" + orderId + "\">再次预定</a></p>";
                    } else if (key == "DOWNLOAD_INSURANCE_POLICY") {//下载投保单
                        operateHtml += "<p>" + downloadVstPolicyInfo(jsonList[i].operateDataMap.vstPolicyInfo, orderId) + "</p>";
                    } else if (key == "EDIT_TRAVELLER") {//编辑补充游玩人
                        operateHtml += editTraveller(jsonList[i]);
                    }
                    else if (key == "APPLY_CHANGE_DATE") {
                        operateHtml += applyChangeDate(jsonList[i]);
                    } else if (key == "DOWNLOAD_ECONTRACT") {
                        if (jsonList[i].platform == "NS") {
                            operateHtml += "<p><a target=\"_blank\" class=\"status detail-link\" href=\" " + jsonList[i].operateDataMap.optDownloadUrl + " \">下载电子合同</a></p>";
                        } else {
                            operateHtml += "<p><a href=\"javascript:void(0);\"  onClick=\"showMyEcontract('" + orderId + "')\" class=\"cancel-order\">下载电子合同</a></p>";
                        }
                    } else if (key == "APPLY_INVOICE" && jsonList[i].commission != "PROFITS") {
                        operateHtml += "<p><a href=\"javascript:void(0)\" onClick=\"createOneInvoice('" + jsonList[i].categoryId + "','" + orderId + "')\">申请开票</a></p>";
                    } else if (key == "APPLY_INVOICE" && jsonList[i].categoryId == "1" && jsonList[i].commission == "PROFITS") {
                        operateHtml += "<p><a href=\"javascript:void(0)\" onClick=\"return false\" style=\"color:#C0C0C0\" title=\"如需发票，请向酒店前台索取\">申请开票</ a></p>";
                    } else if (key == "VIEW_ORDER_DETAIL") {
                        orderDetailUrl = jsonList[i].operateDataMap.pcOrderDetailUrl;
                    }
                }
                
                //vst订单显示删除按钮
                if (jsonList[i].categoryId != "33" && jsonList[i].platform == "VST") {
                    operateHtml += "<p><a href=\"javascript:;\"  class=\"cancel_order js-dele-btn\" id=\"" + orderId + "\">删除</a></p>";
                }
               
                for (var key in otherOperations) {
                    if (key == "TRIP_NOTE") {
                        otherOperateHtml += "<p><a href=\"//www.lvmama.com/trip/write/\" target=\"_blank\" class=\"order-back-box\">写游记赚钱<span class=\"back-icon\">\n" +
                            "                                                返现<i class=\"conmon_icon back-bottom\"></i>\n" +
                            "                                            </span></a></p>";
                    }
                }
                html = ("<table class=\"order_table\">") +
                    ("<thead>") +
                    ("<tr class=\"order-col-name\">") +
                    ("<th colspan=\"7\" >") +
                    ("<span class=\"date\">下单时间 " + timeHtml + "</span>") +
                    ("<span class=\"num\">订单号：<a href=\"" + orderDetailUrl + "\" target=\"_Blank\">" + orderNo + "</a></span>") +
                    contractStatusHtml +
                    (" </th>") +
                    ("</tr>") +
                    ("</thead>") +
                    ("<tbody>") +
                    ("<tr class=\"order-sep-row\">") +
                    ("	<td width=\"355\">") +
                    ("      <div class=\"product-name\">") +
                    productNameHtml +
                    ("      </div>") +
                    ("  </td>") +
                    ("<td width=\"146\">") +
                    ("  <div class=\"product-type\">") +
                    categoryName +
                    (" </div>") +
                    (" </td>") +
                    ("<td width=\"200\">") +
                    ("   <div class=\"product-date\">") +
                    travelTime +
                    ("</div>") +
                    ("</td>") +
                    (" <td width=\"93\"><div class=\"product-price\">¥") +
                    orderAmount +
                    ("</div></td>") +
                    ("<td class=\"order-line\" width=\"77\">") +
                    ("    <div class=\"order-option\">") +
                    ("       <span class=\"order-status wait\">" + orderStatus + "</span>") +
                    ("      <p>") +
                    ("          <a href=\"") +
                    orderDetailUrl +
                    ("\" class=\"detail-link\"  target=\"_Blank\">订单详情</a>") +
                    ("      </p>") +
                    visaProgressHtml +
                    (" </div>") +
                    ("</td>") +
                    //操作判断
                    (" <td class=\"order-line\" width=\"113\">") +
                    operateHtml +
                    ("</td>") +
                    //其他操作判断
                    (" <td class=\"order-line\" width=\"80\">") +
                    otherOperateHtml +
                    (" </td>") +
                    ("</tr>") +
                    ("<tr class=\"order-bottom-row\">") +
                    (" <td colspan=\"7\">") +
                    ("   <div class=\"num\">") +
                    orderNumDetailHtml +
                    (" </div>") +
                    ("</td>") +
                    ("</tr>") +
                    ("</tbody>") +
                    ("</table>");
                return html;
            }


            function partOfReturnMoney(obj, html) {
                if (obj.operateDataMap.refundStatus != null && obj.operateDataMap.refundStatus == "CANNOT_CHANGE_ORDER") {
                    html += "<a href=\"javascript:void(0);\" onClick=\"orderNoChange('" + obj.operateDataMap.userOrderId + "','" + obj.productName + "','" + obj.operateDataMap.paymentTarget + "','" + obj.operateDataMap.hotelTel + "','" + obj.categoryId + "');\"  class=\"cancel-order\">该订单不退不改</a>"
                } else if (obj.operateDataMap.orderStatus == "CANCEL") {
                    html += "<a href=\"javascript:void(0);\" onClick=\"toCancelSuccess('" + obj.operateDataMap.userOrderId + "','" + obj.productName + "','" + obj.operateDataMap.cancelTime + "');\"  class=\"cancel-order\">订单取消成功</a>"
                } else if (obj.operateDataMap.refundStatus != null && obj.operateDataMap.refundStatus == "REFUND_CHECKING") {
                    html += "<span class=\"c_999\">退款审核中...</span><br class=\"clear\"/>" +
                        "<a href=\"javascript:void(0);\" onclick=\"javascript:refundProgress('" + obj.orderId + "','" + obj.categoryId + "');\">退款进度</a>";
                } else if (obj.operateDataMap.refundStatus != null && obj.operateDataMap.refundStatus == "REFUND_PROCESSING") {
                    html += "<span class=\"c_999\">银行处理中...</span><br class=\"clear\"/>\n" +
                        "<a href=\"javascript:void(0);\" onclick=\"javascript:refundProgress('" + obj.orderId + "','" + obj.categoryId + "');\">退款进度</a>";
                } else if (obj.operateDataMap.refundStatus != null && obj.operateDataMap.refundStatus == "REFUND_SUCCESS") {
                    html += "<span class=\"c_999\">退款成功</span><br class=\"clear\"/>\n" +
                        "<a href=\"javascript:void(0);\" onclick=\"javascript:refundProgress('" + obj.orderId + "','" + obj.categoryId + "');\">退款进度</a>";
                } else if (obj.operateDataMap.refundStatus != null && obj.operateDataMap.refundStatus == "REFUND_FAIL") {
                    html += "<span class=\"c_999\">退款失败</span><br class=\"clear\"/>\n" +
                        "<a href=\"javascript:void(0);\" onclick=\"javascript:refundProgress('" + obj.orderId + "','" + obj.categoryId + "');\">退款进度</a>";
                } else if (obj.operateDataMap.refundStatus != null && obj.operateDataMap.refundStatus == "REFUND_APPLY") {
                    if (obj.operateDataMap.orderSubtype != null && (obj.operateDataMap.orderSubtype == "STAMP" || obj.operateDataMap.orderSubtype == "STAMP_PROD")) { }//预售产品暂不支持在线退款
                    else {
                        html += "<a class=\"refundApplyClass\" id=\"refundApply\" check='" + obj.orderId + obj.operateDataMap.bizType + "' href=\"javascript:;\" onclick=\"vstOrdertoRefundApplyAjax('" + obj.orderId + "','" + obj.categoryId + "');\"><span>退款申请</span></a>";
                    }
                } else if (obj.operateDataMap.refundStatus != null && obj.operateDataMap.refundStatus == "CANNOT_REFUND_APPLY") {
                    if (obj.operateDataMap.orderSubtype != null && (obj.operateDataMap.orderSubtype == "STAMP" || obj.operateDataMap.orderSubtype == "STAMP_PROD")) { }//预售产品暂不支持在线退款
                    else {
                        html += "<a class=\"refundApplyClass\" id=\"refundApply\" check='" + obj.orderId + obj.operateDataMap.bizType + "' disabled=\"true\" style=\"text-decoration:none;\"><span class=\"c_999\">退款申请</span></a>\n" +
                            "<p class=\"c_999\" style=\"color:#666\">超过最晚退款时间</p>";
                    }
                }
                //立即支付按钮
                if (obj.operateDataMap.waitingPay == true) {
                    html += "<a href=\"http://hotels.lvmama.com/order/view.do?orderId=" + obj.orderId + "\"  class=\"pay_btn\"><i>立即支付</i></a>";
                }
                //取消订单按钮显示
                if (obj.operateDataMap.canCancel == true) {
                    //destBuCancelOrder存在表示是酒店订单，没值不做处理，按照之前的逻辑处理
                    if (obj.operateDataMap.destBuCancelOrder != null) {
                        //酒店可退改到付取消订单按钮显示 如果是条件满足:待入住、未担保，方可取消订单
                        if (obj.operateDataMap.destBuCancelOrder == true) {
                            html += "<a href=\"javascript:void(0);\" onClick=\"toCancelHotel('" + obj.operateDataMap.userOrderId + "');\"  class=\"cancel-order\">取消订单</a>";
                        }
                    } else {
                        html += "<a href=\"javascript:void(0);\" onClick=\"toCancelHotel('" + obj.operateDataMap.userOrderId + "');\"  class=\"cancel-order\">取消订单</a>";
                    }
                }
                //下载电子合同
                if (obj.operateDataMap.contractStatus && (obj.operateDataMap.contractStatus == "SIGNED_UNEFFECT" || obj.operateDataMap.contractStatus == "EFFECT")) {
                    html += "<a href=\"javascript:void(0);\"  onClick=\"showMyEcontract('" + obj.orderId + "')\" class=\"cancel-order\">下载电子合同</a>";
                }


                return html;
            }



            var formatDateTime = function (date) {
                if (date == null) {
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
                return y + '-' + m + '-' + d + ' ' + h + ':' + minute;
            };



            function createOneInvoice(currentCategoryId, orderId) {

                $.ajax({
                    type: "POST",
                    url: "/myspace/myNewInvoice/isMakeInvoice",
                    data: { "categoryId": currentCategoryId, "orderId": orderId },
                    dataType: "json",
                    success: function (data) {
                        if (data.result == false) {
                            alert(data.msg);
                        } else {
                            window.open("/myspace/myNewInvoice/createInvoice?categoryId=" + currentCategoryId + "&orderId=" + orderId, "_blank");
                        }

                    }

                });
            }

            function closeWin() {
                closeCannotChangeDiv();
            }

            function closeSendSmsWin() {
                $("#float_layer").hide();
            }

            //用户点击左边菜单栏，使tab页选中第一个（全部订单）
            function changeTabToFirst() {
                $("#tabId").find("li").each(function () {
                    if ($(this).hasClass('active')) {
                        $(this).removeClass("active");
                    }
                })
                $("#tabId li").first().addClass("active");
            }


            $(function () {
                //用户点击tab页时的页面反应
                $("#tabId").on("click", "li", function () {
                    // var tabStatus = $(this).attr("data");
                    $(this).addClass('active').siblings().removeClass('active');
                    getOrderList(1);
                });

                //用户点击hover列表选择器时的页面反应
                $("#ulId").on("click", "li", function () {
                    var leftNav = $(this).attr("id");
                    $("#leftNav").find("a").each(function () {
                        if ($(this).hasClass('on')) {
                            $(this).removeClass("on");
                        }
                        if ($(this).attr("id") == leftNav) {
                            $(this).addClass('on');
                        }
                    });
                    $(this).addClass('selected').siblings().removeClass('selected');
                    getOrderList(1);
                });

                $(".tag").poptip();
                //可配置参数
                $(".tag").poptip({
                    templete: 1,
                    skin: "default",    //默认皮肤
                    tiptitle: "",       //可统一设置标题
                    place: 7,          //点钟方位，默认7点钟方向
                    offsetX: -20,        //偏移修正

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
                    $('cite').html(txt + '<i class="conmon_icon usergift_down"></i>');
                    ul.hide();
                    ul.parent('.order-usergift_tab_box').removeClass('order-usergift_tab_active')
                });

                $(document).on('click', '.js-order-tab li', function (event) {
                    $(this).addClass('active').siblings().removeClass('active')
                    /* Act on the event */
                });

                $(document).bind("click", function (e) {
                    if ($(e.target).closest("cite").length == 0) {
                        ul.slideUp("fast");
                        ul.parent('.order-usergift_tab_box').removeClass('order-usergift_tab_active')
                    }
                })

                //左侧按钮和主页联动
                var flagId = $("#bodyStyle").val();
                changeTabToFirst();
                $("#ulId").find("li").each(function () {
                    if ($(this).hasClass('selected')) {
                        $(this).removeClass("selected");
                    }
                    if ($(this).attr("id") == flagId) {
                        $(this).addClass('selected');
                        $(this).click();
                    }
                });
            });

        </script>
        <!-- 公共js -->
        <script type="text/javascript" src="../Scripts/Personage/orderlistCommon.js"></script>
        <!--  右边部分结束 -->
    </div>
    <!-- 主体部分结束-->

   
    <script>
        cmCreatePageviewTag("我的订单", "D0001", null, null, "-_--_--_--_--_-其他页面");
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
