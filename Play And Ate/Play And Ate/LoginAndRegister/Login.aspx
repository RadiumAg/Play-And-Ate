﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Shared/Main.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Play_And_Ate.LoginAndRegister.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Style" runat="server">
    <link href="../Content/LoginAndRegister/Login/base.v606141511.css" rel="stylesheet" />
    <link href="../Content/LoginAndRegister/Login/Login.css" rel="stylesheet" />
    <script src="../Scripts/LoginAndRegister/Login/baidumap.js"></script>
    <script src="../Scripts/LoginAndRegister/Login/c.js"></script>
    <script src="../Scripts/LoginAndRegister/Login/lang.js"></script>
    <script src="../Plugin/jquery-validation-1.14.0/dist/jquery.validate.min.js"></script>
    <style>
        #discode {
            padding: 0px;
            margin: 0px;
            text-align: center;
            border: 1px solid gray;
            display: inline-block;
            height: 35px;
            line-height: 35px;
            cursor: pointer;
            margin-left: 10px;
        }

        label.error {
            font-size: 8px !important;
            color: red;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="wraps">
        <div class="blank"></div>
        <div class="inc wb">
            <div class="user_inc_top">第一农庄网会员登陆 <span>&nbsp;或者 <a href="Register.aspx">注册</a></span>	</div>
            <div class="inc_main clearfix">
                <div class="user-lr-box-left f_l">
                    <div style="margin: 10px;">
                        <!--登录表单-->
                        <div class="field email">
                            <label for="login-email-address">手机</label>
                            <input type="text" value="" class="f-input ipttxt" id="login-email-address" name="email" size="30" tabindex="1" />
                        </div>
                        <div class="field password">
                            <label for="login-password">密码</label>
                            <input type="password" value="" class="f-input ipttxt" id="login-password" name="user_pwd" size="30" tabindex="2" />
                            <%--<span class="lostpassword">&nbsp;&nbsp;<a href="#">忘记密码?</a></span>--%>
                        </div>
                        <div class="field autologin">
                            <div class="input">
                                <input id="t1" class="f-input ipttxt" style="width: 100px;" type="text" name="u" placeholder="验证码" />
                                <span id="discode" onclick="createCode()"></span>
                            </div>
                        </div>
                        <div class="field autologin">
                            <input type="checkbox" id="autologin" name="auto_login" value="false" />下次自动登录？
                        </div>
                        <script>
                            $("#autologin").click(function () {
                                if ($(this).val() == "false") {
                                    $(this).val("true");
                                } else {
                                    $(this).val("false");
                                }
                            });
                        </script>
                        <div class="clear"></div>
                        <div class="act">
                            <input type="hidden" name="ajax" value="1" />
                            <input type="submit" class="login-submit-btn" id="user-login-submit" name="commit" value="登录" />
                            <script>
                                /*验证*/
                                $(function () {
                                    jQuery.validator.addMethod("phone", function (value, element) {
                                        var phone = /^((\(\d{3}\))|(\d{3}\-))?((13|14)[0-9]|15[0-9]|18[0-9])\d{8}$/;
                                        return this.optional(element) || (phone.test(value));
                                    }, "格式不正确");

                                    //取消表单提交
                                    $("#form1").submit(function () {
                                        return false;
                                    });
                                    $("#form1").validate({
                                        rules: {
                                            email: {
                                                required: true,
                                                phone: true,
                                            },
                                            user_pwd: {
                                                required: true,
                                            }
                                        },
                                        messages: {
                                            email: {
                                                required: '手机号必填！',
                                                phone: '格式不正确！'
                                            },
                                            user_pwd: {
                                                required: '密码必填！'
                                            },
                                        }
                                    });
                                });
                                /*验证*/

                                createCode();
                                var code; //在全局 定义验证码
                                function createCode() { //创建验证码函数
                                    code = "";
                                    var codeLength = 4;//验证码的长度
                                    var selectChar = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K',
                                        'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z');//所有候选组成验证码的字符，当然也可以用中文的
                                    for (var i = 0; i < codeLength; i++) {
                                        var charIndex = Math.floor(Math.random() * 36);
                                        code += selectChar[charIndex];
                                    }
                                    // 设置验证码的显示样式，并显示
                                    document.getElementById("discode").style.fontFamily = "Fixedsys"; //设置字体
                                    document.getElementById("discode").style.letterSpacing = "5px"; //字体间距
                                    document.getElementById("discode").style.color = "#0ab000"; //字体颜色
                                    document.getElementById("discode").innerHTML = code; // 显示
                                }
                                function but() {//验证验证码输入是否正确
                                    var val1 = document.getElementById("t1").value;
                                    var val2 = code;
                                    if (val1.toLowerCase() != val2.toLowerCase()) {
                                        alert("验证码错误!");
                                        document.getElementById('t1').value = "";
                                        return false;
                                    }
                                    return true;
                                }

                                $("#user-login-submit").click(function () {
                                    if ($("#form1").valid()) {
                                        let isSubmit = but();
                                        if (isSubmit) {
                                            $.ajax({
                                                type: 'POST',
                                                dataType: "JSON",
                                                data: $("#form1").serialize(),
                                                url: "/Services/Main.ashx?id=1",
                                                success: function (data) {
                                                    let msg = data;
                                                    if (msg.isLogin) {
                                                        alert("登陆成功！");
                                                        var search = location.href.toString().lastIndexOf("?");
                                                        var returnUrl = location.href.toString().substring(search + 1);
                                                        window.open(data.Role + ".html?" + returnUrl, "_self");
                                                    }
                                                    else {
                                                        alert("登陆失败！");
                                                    }
                                                }
                                            });
                                        }
                                    }
                                });

                            </script>
                            <span class="to_regsiter">还没有账户？<a href="Register.aspx">立即注册</a></span>
                        </div>
                        <!--登录表单-->
                    </div>
                </div>
                <div class="user-lr-box-right f_r">
                    <div class="app_login_box">
                        <div class="blank10"></div>
                        <h3>合作网站账号登录</h3>
                        <div class="blank10"></div>
                        <div class="blank10"></div>
                        <div>
                            <span id="api_Qqv2_1">
                                <a href="#" title="用QQ账号登陆" id="QQLogin">
                                    <img src="../Images/LoginAndRegister/52d0f08581839.png" alt="用QQ账号登陆" onclick="QQLogin()" /></a>&nbsp;</span><div class="blank10" />
                        </div>
                        <script>
                            function QQLogin() {
                                QC.Login.showPopup({
                                    appId: "101574283",
                                    redirectURI: "http://www.playandate.club/LoginAndRegister/Login.aspx"
                                });
                                //关闭本窗口关闭本窗口
                                open("", '_self').close();
                            }
                        </script>
                        <script>
                            //从页面收集OpenAPI必要的参数。get_user_info不需要输入参数，因此paras中没有参数
                            var paras = {};
                            //用JS SDK调用OpenAPI
                            QC.api("get_user_info", paras)
                                //指定接口访问成功的接受函数，s为成功返回Response对象
                                .success(function (s) {
                                    //成功回调，通过s.data获取OpenAPI的返回数
                                    console.log(s);
                                    console.log("登录状态:" + QC.Login.check());
                                    if (QC.Login.check()) {
                                        QC.Login.getMe(function (openId, accessToken) {
                                            console.log(openId, accessToken);
                                            //向服务端发送信息
                                            $.ajax({
                                                url: '/Services/QQLogin.ashx?id=1',
                                                type: "GET",
                                                dataType: "JSON",
                                                data: {
                                                    OpenId: openId,
                                                    AccessToken: accessToken,
                                                    NickName: s.data.nickname,
                                                    City: s.data.city,
                                                    Province: s.data.province
                                                },
                                                success: function (data) {
                                                    console.log(data);
                                                    if (data) {
                                                        console.log("服务器回传数据成功");
                                                        var returnUrl = "<%=returnUrl%>";
                                                        if (returnUrl != "") {
                                                            window.open("<%=returnUrl%>", "_self");
                                                        }
                                                        else {
                                                            window.open("/Home/Home.aspx", "_self");
                                                        }
                                                    }
                                                    else {
                                                        console.log("服务器回传数据失败");
                                                    }
                                                },
                                                error: function (data) {
                                                    console.log(data);
                                                }
                                            });
                                        });
                                    }
                                })
                                //指定接口访问失败的接收函数，f为失败返回的Response对象
                                .error(function (f) {
                                    //调用失败
                                    alert("调用用户信息失败");

                                })
                                //指定接口完成请求后的接收函数，c为完成请求返回Response对象
                                .complete(function (c) {
                                    //完成请求回调
                                    console.log("获取用户信息完成！");
                                })
                        </script>
                    </div>
                </div>
                <div id="gotop" style="display: none;"></div>
                <a href="#" target="_blank">
                    <div id="gowu"></div>
                </a>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
