<%@ Page Title="" Language="C#" MasterPageFile="~/Shared/Main.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Play_And_Ate.LoginAndRegister.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Style" runat="server">
    <%--    <script src="../Scripts/LoginAndRegister/Register/908ca0ab9e4d27144b60bc878b237327.js"></script>
    <script src="../Scripts/LoginAndRegister/Register/baidumap.js"></script>
    <script src="../Scripts/LoginAndRegister/Register/c.js"></script>
    <script src="../Scripts/LoginAndRegister/Register/fgcomm.v620152248.js"></script>
    <script src="../Scripts/LoginAndRegister/Register/header.js"></script>
    <script src="../Scripts/LoginAndRegister/Register/index_header.js"></script>
    <script src="../Scripts/LoginAndRegister/Register/lang.js"></script>
    <script src="../Scripts/LoginAndRegister/Register/mt3.v1014201036.js"></script>
    <script src="../Scripts/LoginAndRegister/Register/sousuo.js"></script>--%>
    <link href="../Content/LoginAndRegister/Register/base.v606141511.css" rel="stylesheet" />
    <%--<link href="../Content/LoginAndRegister/Register/cf62177493ce4db40c22962f60d846f8.css" rel="stylesheet" />--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="wraps">

        <script type="text/javascript" src="./第一农庄网_会员注册_files/lang.js.下载"></script>
        <script type="text/javascript">
            var APP_ROOT = '';
            var CART_URL = '/cart';
            var CART_CHECK_URL = '/cart-check';
            var LOADER_IMG = 'http://sh.01nz.com.cn/app/Tpl/fanwe/images/lazy_loading.gif';
            var ERROR_IMG = 'http://sh.01nz.com.cn/app/Tpl/fanwe/images/image_err.gif';
        </script>

        <div class="blank"></div>
        <style type="text/css">
            .p9 {
                cursor: pointer;
            }
        </style>
        <div class="inc wb">
            <div class="inc_main pd10 clearfix">
                <div class="user_inc_top" style="width: 300px; margin: 0px 117px; color: #ff5c0f">第一农庄网会员注册</div>
                <div class="user-lr-box-left f_l" style="width: 650px">
                    <!--注册 start-->
                    <div class=" p20 f14">
                        <form action="http://sh.01nz.com.cn/user-doregister" method="post" id="signup-user-form">
                            <div class="field mobile" id="mobile-div">
                                <label for="signup-mobile-address">手机</label>
                                <input type="text" value="" class="f-input ipttxt" id="signup-mobile-address" name="mobile" size="30">
                                <span class="f-input-tip"></span>
                                <span class="hint">登录及找回密码用，不会公开</span>
                                <input type="hidden" value="0" id="mobile_hid">
                            </div>
                            <div class="field email" id="email-div">
                                <label for="signup-email-address">邮箱</label>
                                <input type="text" value="" class="f-input ipttxt" id="signup-email-address" name="email" size="30">
                                <span class="f-input-tip"></span>
                                <span class="hint">登录及找回密码用，不会公开</span>
                                <input type="hidden" value="0" id="email_hid">
                            </div>
                            <div class="blank1"></div>
                            <div class="field username">
                                <label for="signup-username">昵称</label>
                                <input type="text" value="" class="f-input ipttxt" id="signup-username" name="user_name" size="30">
                                <span class="f-input-tip"></span>
                                <span class="hint">3-15个字符，一个汉字为两个字符</span>
                                <input type="hidden" value="0" id="user_name_hid">
                            </div>
                            <div class="blank1"></div>
                            <div class="field password">
                                <label for="signup-password">密码</label>
                                <input type="password" class="f-input ipttxt" id="signup-password" name="user_pwd" size="30">
                                <span class="f-input-tip"></span>
                                <span class="hint">最少 4 个字符 </span>
                                <input type="hidden" value="0" id="user_pwd_hid">
                            </div>
                            <div class="blank1"></div>
                            <div class="field password">
                                <label for="signup-password-confirm">确认密码</label>
                                <input type="password" class="f-input ipttxt" id="signup-password-confirm" name="user_pwd_confirm" size="30">
                                <span class="f-input-tip"></span>
                                <span class="hint">与密码保持一致</span>
                                <input type="hidden" value="0" id="user_pwd_confirm_hid">
                            </div>
                            <div class="blank1"></div>
                            <div class="field username" id="reg_email">
                                <label for="signup-verify-address">安全码</label>
                                <div class="verify_row">
                                    <input type="text" value="" id="verify" class="f-input" name="verify" style="height: 20px; padding: 5px;">
                                    <img alt="验证码" src="./第一农庄网_会员注册_files/verify.php" style="height: 30px" onclick="this.src=&#39;/verify.php?rand=&#39;+ Math.random();" title="看不清楚？换一张">
                                </div>

                            </div>
                            <div class="blank"></div>
                            <div class="field username" id="reg_mobile">
                                <label for="signup-verify-address">验证码</label>
                                <div class="verify_row">
                                    <input type="text" value="" id="emailCode" name="vcode" class="f-input" style="height: 20px; padding: 5px;">
                                    <div class="blank1"></div>
                                </div>
                                <div style="float: left; margin-left: 15em; margin-top: -37px;">
                                    <input id="get-code" type="button" style="height: 30px;" value="获取验证码">
                                </div>
                            </div>
                            <div class="blank"></div>
                            <div class="act">
                                <input type="button" class="reg-submit-btn" id="signup-submit" name="commit" value="注册">
                            </div>
                        </form>
                    </div>
                    <!--注册 end-->
                </div>
                <div class="user-lr-box-right f_r" style="margin-top: -50px">
                    <div style="width: 227px;">
                        <a href="http://sh.01nz.com.cn/user-login">
                            <img src="./第一农庄网_会员注册_files/denglu.png" alt="登陆" width="227" height="30"></a>
                    </div>
                    <div class="app_login_box">
                        <div class="blank10"></div>
                        <h3>合作网站账号登录</h3>
                        <div class="blank10"></div>
                        <div class="blank10"></div>
                        <span id="api_Sina_1"><a href="https://api.weibo.com/oauth2/authorize?client_id=1124953983&amp;redirect_uri=http%3A%2F%2Fsh.01nz.com.cn%2Fapi_callback.php%3Fc%3DSina&amp;response_type=code" title="用微博登陆">
                            <img src="./第一农庄网_会员注册_files/52a1881254edd.png" alt="用微博登陆"></a>&nbsp;</span><div class="blank10"></div>
                        <span id="api_Qqv2_1"><a href="http://www.01nz.com.cn/system/api_login/qqv2/qq_login.php" title="用QQ账号登陆">
                            <img src="./第一农庄网_会员注册_files/52d0f08581839.png" alt="用QQ账号登陆"></a>&nbsp;</span><div class="blank10"></div>
                        <span id="api_Wechat_0"><a title="用微信登陆" href="https://open.weixin.qq.com/connect/qrconnect?appid=wx6431ca26112607a7&amp;redirect_uri=http%3A%2F%2F01nz.com.cn%2Fuser-welogin%2F&amp;response_type=code&amp;scope=snsapi_login&amp;state=STATE#wechat_redirect">
                            <img alt="用微信登陆" src="./第一农庄网_会员注册_files/wechat.png"></a>&nbsp;</span>
                    </div>
                    <div style="width: 270px;">
                        <adv adv_id="微信展示"></adv>
                    </div>
                </div>
            </div>
            <div class="inc_foot"></div>
        </div>
        <script type="text/javascript">
            $(document).ready(function () {
                $("#signup-submit").click(function () {
                    //使用邮箱注册
                    if ($.trim($("#signup-mobile-address").val()).length == 0) {
                        $("#signup-mobile-address").focus();
                        $.showErr("手机不能为空");
                        return false;
                    }

                    if (!$.checkEmail($("#signup-mobile-address").val()) && !$.checkMobilePhone($("#signup-mobile-address").val())) {
                        $("#signup-mobile-address").focus();
                        $.showErr("手机格式错误，请重新输入");
                        return false;
                    }

                    if (!$.minLength($("#signup-username").val(), 3, true)) {
                        $("#signup-username").focus();
                        $.showErr("昵称格式错误，请重新输入");
                        return false;
                    }

                    if (!$.maxLength($("#signup-username").val(), 16, true)) {
                        $("#signup-username").focus();
                        $.showErr("昵称格式错误，请重新输入");
                        return false;
                    }

                    if (!$.minLength($("#signup-password").val(), 4, false)) {
                        $("#signup-password").focus();
                        $.showErr("密码格式错误，请重新输入");
                        return false;
                    }

                    if ($("#signup-password-confirm").val() != $("#signup-password").val()) {
                        $("#signup-password-confirm").focus();
                        $.showErr("密码确认失败");
                        return false;
                    }
                    if ($.trim($("#emailCode").val()).length == 0) {
                        $.showErr("手机验证码不能为空");
                        return false;
                    }
                    if ($.trim($("#verify").val()).length == 0) {
                        $.showErr("验证码不能为空");
                        return false;
                    }
                    if ($("#email_hid").val() == 1) {
                        $.showErr("邮箱不正确！");
                        return false;
                    }
                    if ($("#user_pwd_hid").val() == 1) {
                        $.showErr("密码不正确！");
                        return false;
                    }
                    if ($("#user_pwd_confirm_hid").val() == 1) {
                        $.showErr("两次密码不一致！");
                        return false;
                    }
                    var ajaxurl = APP_ROOT + "/shop.php?ctl=user&act=mobile_yz&mobile=" + $("#signup-mobile-address").val() + "&vcode=" + $("#emailCode").val();
                    $.ajax({
                        url: ajaxurl,
                        data: null,
                        type: "POST",
                        success: function (data) {
                            if (data == 2) {
                                $.showErr("手机验证码不正确");
                                return false;
                            }
                            else if (data == 0) {

                                $.showErr("手机验证码不能为空");
                                return false;
                            }
                            else if (data == 1) {
                                $("#signup-user-form").submit();
                            }
                        }
                    });
                });
                //邮箱验证
                $("#signup-email-address").bind("blur", function () {
                    if (!$.checkEmail($("#signup-email-address").val()) && $.trim($("#signup-email-address").val()).length != 0) {
                        formError($("#signup-email-address"), "邮箱格式错误，请重新输入");
                        $("#email_hid").val('1');
                        return false;
                    }
                    var query = new Object();
                    var ajaxurl = APP_ROOT + "/shop.php?ctl=ajax&act=check_field";
                    query.field_name = "email";
                    query.field_data = $.trim($(this).val());
                    //alert($.trim($(this).val()));
                    $.ajax({
                        url: ajaxurl,
                        data: query,
                        type: "POST",
                        dataType: "json",
                        success: function (data) {
                            //alert(data.status);
                            if (data.status == 1) {
                                formSuccess($("#signup-email-address"), "可以使用");
                                $("#email_hid").val('1');
                                return false;
                            }
                            else {
                                if ($.trim($("#signup-email-address").val()).length != 0) {
                                    formError($("#signup-email-address"), data.info);
                                    $("#email_hid").val('1');
                                    return false;
                                }
                            }
                        }
                    });
                    $("#email_hid").val('0');
                });//手机验证
                $("#signup-mobile-address").bind("blur", function () {
                    if ($.trim($("#signup-mobile-address").val()).length == 0) {
                        formError($("#signup-mobile-address"), "手机不能为空");
                        $("#mobile_hid").val('1');
                        return false;
                    }

                    if (!$.checkMobilePhone($("#signup-mobile-address").val())) {
                        formError($("#signup-mobile-address"), "手机格式错误，请重新输入");
                        $("#mobile_hid").val('1');
                        return false;
                    }
                    var query = new Object();
                    var ajaxurl = APP_ROOT + "/shop.php?ctl=ajax&act=check_field";
                    query.field_name = "mobile";
                    query.field_data = $.trim($(this).val());
                    $.ajax({
                        url: ajaxurl,
                        data: query,
                        type: "POST",
                        dataType: "json",
                        success: function (data) {
                            if (data.status == 1) {
                                formSuccess($("#signup-mobile-address"), "可以使用");
                                $("#mobile_hid").val('1');
                                return false;
                            }
                            else {
                                formError($("#signup-mobile-address"), data.info);
                                $("#mobile_hid").val('1');
                                return false;
                            }
                        }
                    });
                    $("#mobile_hid").val('0');
                });
                $("#signup-username").bind("blur", function () {
                    if (!$.minLength($("#signup-username").val(), 3, true)) {
                        formError($("#signup-username"), "昵称格式错误，请重新输入");
                        $("#user_name_hid").val('1');
                        return false;
                    }

                    if (!$.maxLength($("#signup-username").val(), 16, true)) {
                        formError($("#signup-username"), "昵称格式错误，请重新输入");
                        $("#user_name_hid").val('1');
                        return false;
                    }

                    var ajaxurl = APP_ROOT + "/shop.php?ctl=ajax&act=check_field";
                    var query = new Object();
                    query.field_name = "user_name";
                    query.field_data = $.trim($(this).val());
                    $.ajax({
                        url: ajaxurl,
                        data: query,
                        type: "POST",
                        dataType: "json",
                        success: function (data) {
                            if (data.status == 1) {
                                formSuccess($("#signup-username"), "可以使用");
                                $("#user_name_hid").val('1');
                                return false;
                            }
                            else {
                                formError($("#signup-username"), data.info);
                                $("#user_name_hid").val('1');
                                return false;
                            }
                        }
                    });
                    $("#user_name_hid").val('0');
                });//用户名验证


                $("#signup-password").bind("blur", function () {
                    if (!$.minLength($("#signup-password").val(), 4, false)) {
                        formError($("#signup-password"), "密码格式错误，请重新输入");
                        $("#user_pwd").val('1');
                        return false;
                    }
                    formSuccess($("#signup-password"), "可以使用");
                    $("#user_pwd").val('0');
                }); //密码验证

                $("#signup-password-confirm").bind("blur", function () {
                    if ($("#signup-password-confirm").val() != $("#signup-password").val()) {
                        formError($("#signup-password-confirm"), "密码确认失败");
                        $("#user_pwd_confirm").val('1');
                        return false;
                    }
                    formSuccess($("#signup-password-confirm"), "验证正确");
                    $("#user_pwd_confirm").val('0');
                }); //确认密码验证


                //获取激活码
                $("#get-code").bind("click", function () {
                    if ($.trim($("#signup-mobile-address").val()).length == 0) {
                        $("#signup-mobile-address").focus();
                        $.showErr("手机不能为空");
                        return false;
                    }

                    if (!$.checkMobilePhone($("#signup-mobile-address").val())) {
                        $("#signup-mobile-address").focus();
                        $.showErr("手机格式错误，请重新输入");
                        return false;
                    }
                    var query = new Object();
                    var ajaxurl = APP_ROOT + "/shop.php?ctl=ajax&act=check_field";
                    query.field_name = "mobile";
                    query.field_data = $.trim($("#signup-mobile-address").val());
                    $.ajax({
                        url: ajaxurl,
                        data: query,
                        type: "POST",
                        dataType: "json",
                        success: function (data) {
                            if (data.status == 1) {
                                //手机激活码
                                var ajaxurl = APP_ROOT + "/shop.php?ctl=user&act=verify_ajax&verify=" + $("#verify").val();
                                $.ajax({
                                    url: ajaxurl,
                                    data: null,
                                    type: "POST",
                                    //dataType: "json",
                                    success: function (data) {
                                        if (data == 0) {
                                            $.showErr("验证码不正确");
                                            return false;
                                        }
                                        else if (data == 1) {
                                            //手机激活码
                                            $.ajax({
                                                url: APP_ROOT + "/msg_send_fs.php?act=register-mobile&mobile=" + $("#signup-mobile-address").val() + "&verify=" + $("#verify").val(),
                                                data: null,
                                                type: "POST",
                                                dataType: "json",
                                                success: function (data) {
                                                    if (data == 2) {
                                                        $.showErr("安全码不正确");
                                                        return false;
                                                    }
                                                    //alert('激活码发送成功');
                                                }
                                            });
                                            dtime(60);
                                        }
                                    }
                                });
                            }
                            else {
                                $.showErr("手机号已存在");
                                return false;
                            }
                        }
                    });

                    //倒计数
                    function dtime(i) {
                        var i = i;
                        timer = setInterval(updateNum, 1000);
                        updateNum();
                        $("#get-code").attr("disabled", "true");
                        function updateNum() {
                            if (i <= 0) {
                                $("#get-code").removeAttr("disabled");
                                $("#get-code").val("获取验证码");
                                window.clearInterval(timer);
                            } else {
                                $("#get-code").val(i-- + "秒后才可重发..");
                            }
                        }
                    }
                });

            });
        </script>
    </div>
    <div class="blank"></div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
    <div id="ftw">
        <div id="ft">
            <!-- 热门城市 -->
            <!-- 区县分类 -->
            <!-- 热门农庄 -->
            <!-- 友情链接 -->
            <!-- 专题友情链接 -->
            <div class="blank"></div>
            <div class="foot_xian"></div>
            <div class="blank"></div>
            <div class="tc">
                <a href="#" target="_blank">关于我们</a>
                &nbsp;&nbsp;-&nbsp;&nbsp;<a href="#" target="_blank">加入我们</a>
                &nbsp;&nbsp;-&nbsp;&nbsp;<a href="#" target="_blank">联系我们</a>
                &nbsp;&nbsp;-&nbsp;&nbsp;<a href="#" target="_blank">隐私保护</a>
                &nbsp;&nbsp;-&nbsp;&nbsp;<a href="#" target="_blank">网站地图</a>
                &nbsp;&nbsp;-&nbsp;&nbsp;<a href="#" target="_blank">商家登录</a>
            </div>
            <div class="blank"></div>
            <div class="beian" align="center">版权所有：上海威和信息科技有限公司  <a href="http://www.miitbeian.gov.cn/" target="_blank">沪ICP备 13043989号-1</a>  电话：400-021-3158 邮箱：mc_01nz@163.com </div>
            <div align="center" class="beian_eng">
                Copyright 2013 www.01nz.com.cn All Rights Reserved.
            </div>
</asp:Content>
