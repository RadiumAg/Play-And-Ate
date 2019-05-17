
$(function () {
    //取消自动提交表单
    $("#form1").submit(function () {
        return false;
    });
    //点击注册按钮触发事件
    $("#signup-submit").click(function () {
        if ($("#Code").val() == "") {
            window.alert("请输入验证码") //验证码框为空时提示非空
        }
        else if ($("#Code").val() != code) { //code为短信接受的验证码
            window.alert("验证码错误") //验证码框输入的内容于接收到的短信验证码不同时提示错误
        }
        else {
            //验证码输入正确是提交表单完成注册
            $.ajax({
                url: "../Services/Main.ashx?id=4",
                type: "POST",
                dataType: "JSON",
                data: $("#form1").serialize(),
                success: function (data) {
                    if (data) {
                        window.alert("注册成功！")
                    }
                    else {
                        window.alert("注册失败！")
                    }
                }
            })
        }
    })
})

let code = "";
$(function () {
    SMSMsg();
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
//发送短信验证码
function SMSMsg() {
    $("#get-code").click(function () {
        if (!$("#phoneNumber").val() == "") {
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
                        $.showErr("发送失败");
                        dtime(60);
                    }
                }
            });
        }

    });
}

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
        //var ajaxurl = APP_ROOT + "/shop.php?ctl=user&act=mobile_yz&mobile=" + $("#signup-mobile-address").val() + "&vcode=" + $("#emailCode").val();
        //$.ajax({
        //    url: ajaxurl,
        //    data: null,
        //    type: "POST",
        //    success: function (data) {
        //        if (data == 2) {
        //            $.showErr("手机验证码不正确");
        //            return false;
        //        }
        //        else if (data == 0) {

        //            $.showErr("手机验证码不能为空");
        //            return false;
        //        }
        //        else if (data == 1) {
        //            $("#signup-user-form").submit();
        //        }
        //    }
        //});
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

    });

});