<%@ Page Title="" Language="C#" MasterPageFile="~/Shared/Main.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Play_And_Ate.LoginAndRegister.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Style" runat="server">
    <script src="../Plugin/jquery-validation-1.14.0/dist/jquery.validate.min.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="wraps">
        <div class="blank"></div>
        <style type="text/css">
            .p9 {
                cursor: pointer;
            }

            label.error {
                font-size: 8px !important;
                color: red;
                width: 100px;
            }
        </style>
        <div class="inc wb">
            <div class="inc_main pd10 clearfix">
                <div class="user_inc_top" style="width: 300px; margin: 0px 117px; color: #ff5c0f">庄源网会员注册</div>
                <div class="user-lr-box-left f_l" style="width: 650px">
                    <!--注册 start-->
                    <div class=" p20 f14">

                        <div class="field mobile" id="mobile-div">
                            <label for="signup-mobile-address">手机</label>
                            <input type="text" value="" class="f-input ipttxt" id="signup-mobile-address" name="phoneNumber" size="30" />
                            <span class="f-input-tip"></span>
                            <span class="hint">登录及找回密码用，不会公开</span>
                            <input type="hidden" value="0" id="mobile_hid" />
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
                            <input type="text" value="" class="f-input ipttxt" id="signup-username" name="user_name" size="30" />
                            <span class="f-input-tip"></span>
                            <span class="hint">3-15个字符，一个汉字为两个字符</span>
                            <input type="hidden" value="0" id="user_name_hid" />
                        </div>
                        <div class="blank1"></div>
                        <div class="field username">
                            <label for="signup-username">地址</label>
                            <input type="text" value="" class="f-input ipttxt" id="signup-address" name="user_address" size="50" />
                            <span class="f-input-tip"></span>
                            <span class="hint">请填写您的详细地址</span>
                            <input type="hidden" value="0" id="address_hid" />
                        </div>
                        <div class="blank1"></div>
                        <div class="field password">
                            <label for="signup-password">密码</label>
                            <input type="password" class="f-input ipttxt" id="signup-password" name="user_pwd" size="30" />
                            <span class="f-input-tip"></span>
                            <span class="hint">最少 4 个字符 </span>
                            <input type="hidden" value="0" id="user_pwd_hid" />
                        </div>
                        <div class="blank1"></div>
                        <div class="field password">
                            <label for="signup-password-confirm">确认密码</label>
                            <input type="password" class="f-input ipttxt" id="signup-password-confirm" name="user_pwd_confirm" size="30" />
                            <span class="f-input-tip"></span>
                            <span class="hint">与密码保持一致</span>
                            <input type="hidden" value="0" id="user_pwd_confirm_hid" />
                        </div>
                        <div class="blank1"></div>
                        <div class="field username">
                            <label for="signup-username">QQ</label>
                            <input type="text" value="" class="f-input ipttxt" id="signup-qq" name="user_qq" size="30" />
                            <span class="f-input-tip"></span>
                            <span class="hint">填写QQ账号</span>
                            <input type="hidden" value="0" id="qq_hid" />
                        </div>
                        <div class="blank"></div>
                        <div class="field username" id="reg_mobile">
                            <label for="signup-verify-address">验证码</label>
                            <div class="verify_row">
                                <input type="text" value="" id="Code" name="vcode" class="f-input" style="height: 20px; padding: 5px;" />
                                <div class="blank1"></div>
                            </div>
                            <div style="float: left; margin-left: 15em; margin-top: -37px;">
                                <input id="get-code" type="button" style="height: 30px;" value="获取验证码" />
                            </div>
                            <script>
                                /*验证*/
                                $(function () {
                                    jQuery.validator.addMethod("phone", function (value, element) {
                                        var phone = /^((\(\d{3}\))|(\d{3}\-))?((13|14)[0-9]|15[0-9]|18[0-9])\d{8}$/;
                                        return this.optional(element) || (phone.test(value));
                                    }, "格式不正确");
                                    jQuery.validator.addMethod("qq", function (value, element) {
                                        var qq = /^[1-9][0-9]{4,11}$/;
                                        return this.optional(element) || (qq.test(value));
                                    }, "格式不正确");
                                    $("#form1").validate({
                                        rules: {
                                            phoneNumber: {
                                                required: true,
                                                phone: true,
                                            },
                                            email: {
                                                email: true,
                                            },
                                            user_name: {
                                                required: true,
                                                minlength: 3,
                                                maxlength: 15,
                                            },
                                            user_pwd: {
                                                required: true,
                                                minlength: 4,
                                            },
                                            user_pwd_confirm: {
                                                equalTo: '#signup-password',
                                            },
                                            user_qq: {
                                                required: true,
                                                qq: true,
                                            }

                                        },
                                        messages: {
                                            phoneNumber: {
                                                required: '手机号码必填',
                                                phone: '手机格式不正确',
                                            },
                                            email: {
                                                email: 'E-mail格式不正确'
                                            },
                                            user_name: {
                                                required: '必填',
                                                maxlength: '最长长度为15',
                                                minlength: '最长长度为10'
                                            },
                                            user_pwd: {
                                                required: '必填',
                                                minlength: '最少长度为4'
                                            },
                                            user_pwd_confirm: {
                                                equalTo: '两次输入密码不一致'
                                            },
                                            user_qq: {
                                                required: '必填',
                                                qq: '请输入正确的qq',
                                            }
                                        }
                                    });
                                })
                            </script>
                            <script>
                                $(function () {
                                    $("#form1").submit(function () {
                                        return false;
                                    });
                                    $("#signup-submit").click(function () {
                                        //1.验证表单是否通过，如果没有通过，则不能注册
                                        if (!$("#form1").valid()) return;
                                        //2.验证验证码
                                        console.log($("#Code").val())
                                        if ($("#Code").val() == "") {
                                            window.alert("请输入验证码");
                                        }
                                        else if ($("#Code").val() != code) {
                                            window.alert("验证码错误");
                                        }
                                        else {
                                            $.ajax({
                                                url: "../Services/Main.ashx?id=4",
                                                type: "POST",
                                                dataType: "JSON",
                                                data: $("#form1").serialize(),
                                                success: function (data) {
                                                    if (data) {
                                                        window.alert("注册成功！");
                                                        window.open("/Home/Home.aspx", "_self");
                                                        dtime(60);
                                                    }
                                                    else {
                                                        window.alert("注册失败！");
                                                        dtime(60);
                                                    }
                                                }
                                            })
                                        }
                                    })
                                })
                            </script>
                            <script>
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
                                let code = "";
                                $(function () {
                                    SMSMsg();
                                });
                                function SMSMsg() {
                                    $("#get-code").click(function () {
                                        $.ajax({
                                            url: "../Services/Main.ashx?id=3",
                                            type: "POST",
                                            dataType: "JSON",
                                            data: {
                                                phoneNumber: $("#signup-mobile-address").val()
                                            },
                                            success: function (data) {
                                                let msg = data;//将json对象赋值给变量
                                                code = msg.Str;//发送的验证码
                                                let result = JSON.parse(msg.Result);//将字符串转换为json对象
                                                console.log(result, code)
                                                if (result.Code == "OK" && result.Message == "OK") {
                                                    alert("发送成功！");
                                                    dtime(60);
                                                }
                                                else {
                                                    alert("发送失败！");
                                                    dtime(60);
                                                }
                                            }
                                        });

                                    });
                                }
                            </script>
                        </div>
                        <div class="blank"></div>
                        <div class="act">
                            <input type="button" class="reg-submit-btn" id="signup-submit" name="commit" value="注册" />
                        </div>

                    </div>
                    <!--注册 end-->
                </div>
                <div class="user-lr-box-right f_r" style="margin-top: -50px">
                    <div style="width: 227px;">
                        <a href="#">
                            <img src="../Images/LoginAndRegister/denglu.png" alt="登陆" width="227" height="30" /></a>
                    </div>
                    <div class="app_login_box">
                        <div class="blank10"></div>
                        <h3>合作网站账号登录</h3>
                        <div class="blank10"></div>
                        <div class="blank10"></div>
                        <div>
                            <span id="api_Qqv2_1">
                                <a href="#" title="用QQ账号登陆" onclick="QQLogin()">
                                    <img src="../Images/LoginAndRegister/52d0f08581839.png" alt="用QQ账号登陆" /></a>&nbsp;</span><div class="blank10" />
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
                    </div>
                    <div style="width: 270px;">
                        <adv adv_id="微信展示"></adv>
                    </div>
                </div>
            </div>
            <div class="inc_foot"></div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server"></asp:Content>
