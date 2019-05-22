<%@ Page Title="" Language="C#" MasterPageFile="~/Shared/Main.Master" AutoEventWireup="true" CodeBehind="Personage.aspx.cs" Inherits="Play_And_Ate.Personage.Personage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Style" runat="server">
    <script src="../Scripts/Personage/v.js" type="text/javascript"></script>
    <script src="../Scripts/Personage/mba.js"></script>
    <script src="../Scripts/Personage/mv.js"></script>
    <script src="../Scripts/Personage/fx.js"></script>
    <script src="../Scripts/Personage/hm.js"></script>
    <script src="../Scripts/Personage/analytics.js"></script>
    <script src="../Scripts/Personage/bdctrace-pc.js"></script>
    <link rel="stylesheet" href="../Content/Personage/index.php">
    <link rel="stylesheet" href="../Content/Personage/newmember.css&amp;v=051610">
<link rel="stylesheet" href="../Content/Personage/index(1).php">
<link href="../Content/Personage/header-air.css" rel="stylesheet">
<link href="../Content/Personage/ui-lvmama.css" rel="stylesheet">
<link href="../Content/Personage/ui-components.css" rel="stylesheet">
<link href="../Content/Personage/lv-bought.css" rel="stylesheet">
<link rel="stylesheet" href="../Content/Personage/global_pop.css">
<link href="../Content/Personage/ui-components(1).css" rel="stylesheet">
<link rel="stylesheet" href="../Content/Personage/index(2).php">
<link rel="stylesheet" href="../Content/Personage/newmember.css">
<link rel="stylesheet" href="../Content/Personage/index(3).php">
<link rel="stylesheet" href="../Content/Personage/newcommon.css">
<link rel="stylesheet" href="../Content/Personage/integral.css">
<script src="../Content/Personage/index(4).php"></script>
<script src="../Content/Personage/index(5).php"></script>
<script src="../Content/Personage/lvmember.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <!---会员中心导航--->


<div class="lv_header">
    <div class="header_inner clearfix">
        <div class="lv_logo">
        	<a href="http://www.lvmama.com/">驴妈妈旅游网
                <div class="home_logo">
                    <div class="logo_run1"></div>
                    <div class="logo_run2"></div>
                    <div class="logo_run3"></div>
                    <div class="logo_run4"></div>
                    <div class="logo_run5"></div>
                    <div class="logo_donkey">
                        <div class="logo_donkey1"></div>
                        <div class="logo_donkey2"></div>
                        <div class="logo_donkey3"></div>
                        <div class="logo_donkey4"></div>
                        <div class="logo_donkey5"></div>
                    </div>
                    <%--<div class="logo_b"></div>--%>
                </div>
            </a>
        </div>
        <ul class="lv_baozhang">
            <li><i class="icon_bz1"></i>价格保证</li>
            <li><i class="icon_bz2"></i>退订保障</li>
            <li><i class="icon_bz3"></i>救援保障</li>
            <li><i class="icon_bz4"></i>24时服务</li>
        </ul>
    </div>
</div>
<script type="text/javascript" src="../Scripts/Personage/js.cookie.js"></script>
<script type="text/javascript" src="../Scripts/Personage/fp2.min.js"></script>
<script type="text/javascript" src="../Scripts/Personage/fp2.js"></script>
<script src="../Scripts/Personage/city.js"></script>
<script src="../Scripts/Personage/Method.js"></script>
<!-- 导航标签渲染 -->
<script type="text/javascript" src="../Scripts/Personage/jQuerySuperScript.js"></script>
<!-- 无搜索版，公共头部结束 --><!---会员中心导航开始--->

<!---会员中心导航结束--->
<!---账户安全主体部分--->
<div class="newmember_main">
    <div class="newmember_leftside">
        <dl>
		<dt><i class="per_icon"></i>个人资料<i class="downarr"></i></dt>
		<dd><a href="../Personage/Personage.aspx" id="lvnav_perinfo">个人信息</a></dd>
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
		<dd><a href="../Personage/Order.aspx" id="lvnav_tourinfo">个人订单</a></dd>
	</dl>
	
</div><!-- 会员中心左边菜单部分 -->
    <div class="newmember_rightside">
        <div class="mod_box">
            <div class="mod_content p20_4">
                <div class="password_edit_title">
                    <span class="password-bar-box"><i class="vip-tip-icon"></i>这里是你的个人信息(*^▽^*)！</span>

                </div>
                <div class="per_info_content clearfix">
                  
                    <div class="per_right_box">
                        <p class="clearfix">
                            <label><em>*</em>用户名：</label>lv6236095020777777
                                <a class="pop link-edit" id="bindMobileAndEmailTip">修改</a>
                        </p>

                       
                        <p class="clearfix">
                            <label><em>*</em>手机号：</label>18815168007<a href="#" class="per_mod mar_left10">修改</a>
                            
                        </p>

                        <p class="col9 clearfix"><label><em>*</em>电子邮箱：</label>
                            <a href="#" class="per_mod mar_right10">立即绑定</a>
                        </p>

                        <p class="clearfix"><label>性别：</label>
                            <span class="ipt_rad">
                                <input type="radio" name="gender" value="M">男
                            </span>
                            <span class="ipt_rad">
                                <input type="radio" name="gender" value="F">女
                            </span>
                        </p>
                        <p class="clearfix"><label>出生日期：</label>
                            <select class="mr_rit wd105" name="year" id="tabs1_select_year">
                                <option value="">-年-</option>
                                <option value="2019">2019</option>
                                <option value="2018">2018</option>
                                <option value="2017">2017</option>
                                <option value="2016">2016</option>
                                <option value="2015">2015</option>
                                <option value="2014">2014</option>
                                <option value="2013">2013</option>
                                <option value="2012">2012</option>
                                <option value="2011">2011</option>
                                <option value="2010">2010</option>
                                <option value="2009">2009</option>
                                <option value="2008">2008</option>
                                <option value="2007">2007</option>
                                <option value="2006">2006</option>
                                <option value="2005">2005</option>
                                <option value="2004">2004</option>
                                <option value="2003">2003</option>
                                <option value="2002">2002</option>
                                <option value="2001">2001</option>
                                <option value="2000">2000</option>
                                <option value="1999">1999</option>
                                <option value="1998">1998</option>
                                <option value="1997">1997</option>
                                <option value="1996">1996</option>
                                <option value="1995">1995</option>
                                <option value="1994">1994</option>
                                <option value="1993">1993</option>
                                <option value="1992">1992</option>
                                <option value="1991">1991</option>
                                <option value="1990">1990</option>
                                <option value="1989">1989</option>
                                <option value="1988">1988</option>
                                <option value="1987">1987</option>
                                <option value="1986">1986</option>
                                <option value="1985">1985</option>
                                <option value="1984">1984</option>
                                <option value="1983">1983</option>
                                <option value="1982">1982</option>
                                <option value="1981">1981</option>
                                <option value="1980">1980</option>
                                <option value="1979">1979</option>
                                <option value="1978">1978</option>
                                <option value="1977">1977</option>
                                <option value="1976">1976</option>
                                <option value="1975">1975</option>
                                <option value="1974">1974</option>
                                <option value="1973">1973</option>
                                <option value="1972">1972</option>
                                <option value="1971">1971</option>
                                <option value="1970">1970</option>
                                <option value="1969">1969</option>
                                <option value="1968">1968</option>
                                <option value="1967">1967</option>
                                <option value="1966">1966</option>
                                <option value="1965">1965</option>
                                <option value="1964">1964</option>
                                <option value="1963">1963</option>
                                <option value="1962">1962</option>
                                <option value="1961">1961</option>
                                <option value="1960">1960</option>
                                <option value="1959">1959</option>
                                <option value="1958">1958</option>
                                <option value="1957">1957</option>
                                <option value="1956">1956</option>
                                <option value="1955">1955</option>
                                <option value="1954">1954</option>
                                <option value="1953">1953</option>
                                <option value="1952">1952</option>
                                <option value="1951">1951</option>
                                <option value="1950">1950</option>
                                <option value="1949">1949</option>
                                <option value="1948">1948</option>
                                <option value="1947">1947</option>
                                <option value="1946">1946</option>
                                <option value="1945">1945</option>
                                <option value="1944">1944</option>
                                <option value="1943">1943</option>
                                <option value="1942">1942</option>
                                <option value="1941">1941</option>
                                <option value="1940">1940</option>
                                <option value="1939">1939</option>
                                <option value="1938">1938</option>
                                <option value="1937">1937</option>
                                <option value="1936">1936</option>
                                <option value="1935">1935</option>
                                <option value="1934">1934</option>
                                <option value="1933">1933</option>
                                <option value="1932">1932</option>
                                <option value="1931">1931</option>
                                <option value="1930">1930</option>
                                <option value="1929">1929</option>
                                <option value="1928">1928</option>
                                <option value="1927">1927</option>
                                <option value="1926">1926</option>
                                <option value="1925">1925</option>
                                <option value="1924">1924</option>
                                <option value="1923">1923</option>
                                <option value="1922">1922</option>
                                <option value="1921">1921</option>
                                <option value="1920">1920</option>
                                <option value="1919">1919</option>
                                <option value="1918">1918</option>
                                <option value="1917">1917</option>
                                <option value="1916">1916</option>
                                <option value="1915">1915</option>
                                <option value="1914">1914</option>
                                <option value="1913">1913</option>
                                <option value="1912">1912</option>
                                <option value="1911">1911</option>
                                <option value="1910">1910</option>
                                <option value="1909">1909</option>
                                <option value="1908">1908</option>
                                <option value="1907">1907</option>
                                <option value="1906">1906</option>
                                <option value="1905">1905</option>
                                <option value="1904">1904</option>
                                <option value="1903">1903</option>
                                <option value="1902">1902</option>
                                <option value="1901">1901</option>
                                <option value="1900">1900</option>
                                <option value="1899">1899</option>
                                <option value="1898">1898</option>
                                <option value="1897">1897</option>
                                <option value="1896">1896</option>
                                <option value="1895">1895</option>
                                <option value="1894">1894</option>
                                <option value="1893">1893</option>
                                <option value="1892">1892</option>
                                <option value="1891">1891</option>
                                <option value="1890">1890</option>
                                <option value="1889">1889</option>
                            </select>
                            <select class="mr_rit wd105" name="month" id="tabs1_select_month">
                                <option value="">-月-</option>
                                <option value="01">01</option>
                                <option value="02">02</option>
                                <option value="03">03</option>
                                <option value="04">04</option>
                                <option value="05">05</option>
                                <option value="06">06</option>
                                <option value="07">07</option>
                                <option value="08">08</option>
                                <option value="09">09</option>
                                <option value="10">10</option>
                                <option value="11">11</option>
                                <option value="12">12</option>
                            </select>
                            <select class="mr_rit wd105" name="day" id="tabs1_select_day">
                                <option value="">-日-</option>
                                <option value="01">01</option>
                                <option value="02">02</option>
                                <option value="03">03</option>
                                <option value="04">04</option>
                                <option value="05">05</option>
                                <option value="06">06</option>
                                <option value="07">07</option>
                                <option value="08">08</option>
                                <option value="09">09</option>
                                <option value="10">10</option>
                                <option value="11">11</option>
                                <option value="12">12</option>
                                <option value="13">13</option>
                                <option value="14">14</option>
                                <option value="15">15</option>
                                <option value="16">16</option>
                                <option value="17">17</option>
                                <option value="18">18</option>
                                <option value="19">19</option>
                                <option value="20">20</option>
                                <option value="21">21</option>
                                <option value="22">22</option>
                                <option value="23">23</option>
                                <option value="24">24</option>
                                <option value="25">25</option>
                                <option value="26">26</option>
                                <option value="27">27</option>
                                <option value="28">28</option>
                                <option value="29">29</option>
                                <option value="30">30</option>
                                <option value="31">31</option>
                            </select>
                            <span class="tips_warn" id="birthDayTip"></span>
                            <span class="per_tips">完善生日信息可获得会员"生日礼包"特权的，<a href="http://my.lvmama.com/memberClub/index" class="per_mod mar_left10" target="_blank">点此了解</a></span>
                        </p>
                        <p class="clearfix"><label>所在地：</label>
                            <select id="prov" class="mr_rit wd105" onchange="showCity(this)">
                                <option value="" selected="">-省-</option>
                              </select>
                            <select class="mr_rit wd105" id="city" name="cityId" onchange="showCountry(this)">
                                <option value="">-市-</option></select>
                            
                        </p>
                        <p class="clearfix"><label>QQ：</label>1183164683
                        </p>

                        <p class="per_btn_box">
                            <a href="javascript:;" class="per_btn" id="savaPersonalInformation">保存</a>
                        </p>

                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!---修改用户名弹框开始--->
<div class="mod_user_pop" style="padding: 10px 0 0;">
    <input type="hidden" id="oldUserName" name="oldUserName" value="lv6236095020777777">

    <p><label>当前用户名：</label>lv6236095020777777</p>

    <p>
        <label>新用户名：</label><input name="newUserName" id="newUserName" type="text" class="ipt_txt" onblur="simpleCheck()" maxlength="30">
        <span class="tips_warn mar_left10" id="newUserNameTip"></span>
        <span class="per_tips"><i class="user_tips_icon"></i>用户名可用来登陆，只能修改一次哦~</span>
    </p>

    <p class="address_btn_box per_btn_box">
        <a href="javascript:;" class="btn_yel">保存</a>
        <a href="javascript:;" class="btn_cal">取消</a>
    </p>
</div>
<!---修改用户名弹框结束--->

<div class="address_ok_box" id="updateSuccess">
    <i class="right_icon"></i>个人信息保存成功！
</div>
<div class="address_ok_box" id="updateSuccessPoint">
    <i class="right_icon"></i>个人信息完善成功,为您发送1000驴镑！
</div>
<div class="address_ok_box" id="updateFalsePoint">
    <i class="right_icon"></i>个人信息完善成功,领取驴镑失败！
</div>
<div class="address_ok_box" id="updateFail">
    <i class="wrong_icon"></i>个人信息保存失败！
</div>
<div class="address_ok_box" id="updateNameSuccess">
    <i class="right_icon"></i>用户名修改成功！
</div>
<div class="address_ok_box" id="updateNameFail">
    <i class="wrong_icon"></i>用户名修改失败！
</div>

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
    //《---------关于年月日开始-------------------------》
    var tabs1_leap_year_btn = isLeapYear($('#select_year').val());
    //<!--限制回显时的日-->
    tabsChangeDate($('#tabs1_select_month').val());

    var birthDayErrorTip = $("#birthDayTip");
    $('#tabs1_select_year').change(function () {
        birthDayErrorTip.html("");
        var tabs1_select_year = $('#tabs1_select_year').val();
        var tabs1_select_month = $('#tabs1_select_month').val();
        var tabs1_select_day = $('#tabs1_select_day').val();
        tabs1_leap_year_btn = isLeapYear(tabs1_select_year);

        tabsChangeDate(tabs1_select_month);
    });

    $('#tabs1_select_month').change(function () {
        birthDayErrorTip.html("");
        var tabs1_select_year = $('#tabs1_select_year').val();
        var tabs1_select_month = $('#tabs1_select_month').val();
        var tabs1_select_day = $('#tabs1_select_day').val();
        tabsChangeDate(tabs1_select_month);

    });

    $('#tabs1_select_day').change(function () {
        birthDayErrorTip.html("");
        var tabs1_select_year = $('#tabs1_select_year').val();
        var tabs1_select_month = $('#tabs1_select_month').val();
        var tabs1_select_day = $('#tabs1_select_day').val();
    });

    //是否是闰年
    function isLeapYear(iYear) {
        if (iYear % 4 == 0 && iYear % 100 != 0) {
            return true;
        } else {
            if (iYear % 400 == 0) {
                return true;
            } else {
                return false;
            }
        }
    }
    //年和月对日的影响（新增逻辑，年、月变动时，如果现有日值大于变动后日值范围，则将日值置空）
    function tabsChangeDate(selectMonth) {
        var dayObject = $('#tabs1_select_day');
        if (selectMonth == "") {
            dayObject.val("");
            return;
        }
        switch (selectMonth) {
            case '01':
            case '03':
            case '05':
            case '07':
            case '08':
            case '10':
            case '12':
                $('#tabs1_select_day option').show();
                break;
            case '02':
                $('#tabs1_select_day option').show();
                if (tabs1_leap_year_btn) {
                    $('#tabs1_select_day option:gt(29)').hide();
                    if (dayObject.val() > 29) {
                        dayObject.val("");
                    }
                } else {
                    $('#tabs1_select_day option:gt(28)').hide();
                    if (dayObject.val() > 28) {
                        dayObject.val("")
                    }
                }
                break;
            default:
                $('#tabs1_select_day option').show();
                $('#tabs1_select_day option:last').hide();
                if (dayObject.val() > 30) {
                    dayObject.val("");
                }
                break;
        }
    }
    //《--------关于年月日结束------------------------------》

    //《------------省市联动开始--------------------------------》
    function updateCities(provinceId) {
        if (provinceId == '') {
            $("#cityId").empty();
            $("#cityId").append("<option value=''>-市-</option>");
            return;
        }
        var proviceJson = {
            province: provinceId
        };
        $.ajax({
            url: "/myspace/personInfo/loadCityByProvinceId",
            type: "post",
            dataType: "json",
            data: proviceJson,
            success: function (data) {
                $("#cityId").empty();
                $("#cityId").append("<option value=''>-市-</option>");
                $(data).each(function () {
                    $("#cityId").append("<option value='" + this.cityId + "'>" + this.cityName + "</option>");
                });
                //如果是用户原先的省份，则自动选中原先的城市（目的是为了初始化页面时，回显城市）
                for (var i = 0; i < document.getElementById("cityId").options.length; i++) {
                    if (document.getElementById("cityId").options[i].value == '')
                        document.getElementById("cityId").options[i].selected = "true";
                }
            }
        });
    }

    //给省份下拉列表注册change事件
    $('#provinceId').change(function () {
        updateCities($.trim($("#provinceId").val()))
    });
    //初始化加载，目的是选中用户所在城市
    updateCities("");

    //《------------------------省市联动结束----------------------------------------》

    //《--------------------------用户名更新开始---------------------------------------》

    //保存更新用户名
    $('.btn_yel').live("click", function () {
        var oldUserName = $("#oldUserName").val();
        var newUserName = $.trim($("#newUserName").val());
        //新用户名验空
        if ($.trim($("#newUserName").val()) == '') {
            $("#newUserNameTip").html("<i class='tips_error_icon'></i>请输入用户名");

            return;
        }
        //更新用户名
        $.ajax({
            url: "/myspace/personInfo/asynModifyUserName",
            dataType: "json",
            type: "POST",
            data: {
                oldUserName: oldUserName,
                newUserName: newUserName
            },
            success: function (data) {
                var flag = data.result;
                if (flag == true) {
                    $('.dialog-default').hide();//隐藏修改用户名对话框
                    $('.overlay').hide();//隐藏灰色背景
                    pandora.dialog({
                        title: "修改用户名",
                        content: $("#updateNameSuccess"),
                        width: 500,
                        time: 2000,
                        beforeunload: function () {//关闭事件
                            location.href = "//my.lvmama.com/myspace/personInfo/userInfo";
                        }
                    });
                } else {
                    $("#newUserNameTip").html("<i class='tips_error_icon'></i>" + data.tip);
                    return;

                }
            }
        });


    });
    //取消更新，隐藏弹窗
    $('.btn_cal').click(function () {
        $('.dialog-default').hide();
        $('.overlay').hide();
    });

    //修改用户名弹窗
    $("#editUserNameId").click(function () {
        pandora.dialog({
            title: "修改用户名",
            content: $(".mod_user_pop"),
            width: 500
        });
    })

    //提醒绑定手机和邮箱的弹窗
    $("#bindMobileAndEmailTip").click(function () {
        pandora.dialog({
            title: "修改用户名",
            content: $(".address_caution_box"),
            width: 500
        });
    });
    //简单校验用户名
    function simpleCheck() {
        var oldUserName = $.trim($("#oldUserName").val());
        var newUserName = $.trim($("#newUserName").val());
        if (newUserName == '') {
            $("#newUserNameTip").html("<i class='tips_error_icon'></i>请输入用户名!");
            return;
        }
        if (newUserName == oldUserName) {
            $("#newUserNameTip").html("<i class='tips_error_icon'></i>用户名无修改!");
            return;
        }
        $("#newUserNameTip").html("");

    }


    //《--------------------用户名相关结束---------------------------------》


    //保存按钮click事件
    $('#savaPersonalInformation').live("click", function () {
        var birthDayErrorTip = $("#birthDayTip");
        birthDayErrorTip.html("");//初始置空
        var tabs1_select_year = $.trim($("#tabs1_select_year").val());
        var tabs1_select_month = $.trim($("#tabs1_select_month").val());
        var tabs1_select_day = $.trim($("#tabs1_select_day").val());
        if (tabs1_select_year != "" && tabs1_select_month != "" && tabs1_select_day != "") {
            var date = new Date(parseInt(tabs1_select_year), parseInt(tabs1_select_month) - 1, parseInt(tabs1_select_day));
            if (date.getTime() > (new Date().getTime())) {
                birthDayErrorTip.html("<i class='tips_error_icon'></i>生日日期不能大于当前日期");
                birthDayErrorTip.show();
                return false;
            }
        }
        //关于年月日校验
        if (tabs1_select_day != "" && tabs1_select_month != "" && tabs1_select_year != "") {

        } else if ((tabs1_select_day == "" && tabs1_select_month == "" && tabs1_select_year == "")) {

        } else {
            birthDayErrorTip.html("<i class='tips_error_icon'></i>请输入完整的年月日");
            return;
        }


        var realName = $.trim($("input[name='realName']").val());
        var gender = $.trim($("input[name = 'gender']:checked").val());
        var cityId = $.trim($("#cityId").val());
        var career = $.trim($("input[name = 'career']:checked").val());
        var married = $.trim($("input[name = 'married']:checked").val());

        var birthday = tabs1_select_year + "-" + tabs1_select_month + "-" + tabs1_select_day;
        //保存个人信息异步方法
        $.ajax({
            url: "/myspace/personInfo/updatePersonalInfo",
            dataType: "json",
            type: "POST",
            data: {
                realName: realName,
                gender: gender,
                birthday: birthday,
                cityId: cityId,
                career: career,
                married: married
            },
            success: function (result) {
                //更新失败
                if (!result.success) {
                    $('.dialog-default').hide();
                    $('.overlay').hide();
                    myDialog("updateFail")
                    return;
                }
                //更新成功
                if (result.resultMap.perfectInfo) {
                    $('.dialog-default').hide();
                    $('.overlay').hide();
                    myDialog("updateSuccessPoint");
                } else {
                    myDialog("updateSuccess");
                }
            }
        });
    });
    function myDialog(id) {
        pandora.dialog({
            title: "提示",
            content: $("#" + id),
            width: 500,
            time: 2000
        });
    }
</script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
