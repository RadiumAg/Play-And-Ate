var labelFromcity = new Array();
labelFromcity['热门城市'] = new Array(0, 1, 4, 5, 6, 9, 10, 19, 25);
labelFromcity['A-F'] = new Array(0, 3, 31, 34, 35);
labelFromcity['G-J'] = new Array(6, 9, 12, 15, 16, 17, 25, 28);
labelFromcity['K-N'] = new Array(1, 5, 8, 22, 32, 36);
labelFromcity['P-W'] = new Array(2, 4, 7, 10, 14, 11, 13, 20, 23, 26, 29, 30, 33);
labelFromcity['X-Z'] = new Array(18, 19, 21, 24, 27, 37);
var hotList = new Array(0, 1, 4, 5, 6, 9, 10, 19, 25);
$(function () {
    termini();
    farmhouse();
});
$(document).ready(function () {
    $('#fromcity').querycity({ 'data': citysFlight, 'tabs': labelFromcity, 'hotList': hotList });
    $('#fromcitys').querycity({ 'data': citysFlight, 'tabs': labelFromcity, 'hotList': hotList });
    $('#fromcitya').querycity({ 'data': citysFlight, 'tabs': labelFromcity, 'hotList': hotList });
    $('#fromcityb').querycity({ 'data': citysFlight, 'tabs': labelFromcity, 'hotList': hotList });
});
window.onload = function () {
    $("#advert a:eq(0)").css({ "display": "block" });
    $("#adv_txt em:eq(0)").css({ "display": "block" });
    //alert($("#advert a:eq(1)").html());

}
$(document).ready(function () {
    $('input:text').each(function () {
        var txt = $(this).val();
        $(this).focus(function () {
            if (txt === $(this).val()) {
                $(this).val("");
                $(this).removeClass("fd_text1");
                $(this).addClass("fd_text");
            }
        }).blur(function () {
            if ($(this).val() == "") {
                $(this).val(txt);
                $(this).removeClass("fd_text");
                $(this).addClass("fd_text1");
            }
        });
    })

});
function xq_gengduo() {
    var biaoshi = $("#xq_gengduo_input").val();
    if (biaoshi == 0) {
        $("#citys").removeClass("none");
        $("#xq_gengduo_input").val('1');
    }
    else {
        $("#citys").addClass("none");
        $("#xq_gengduo_input").val('0');
    }
}
function xqs_gengduo() {
    var biaoshi = $("#xqs_gengduo_input").val();
    if (biaoshi == 0) {
        $("#cityss").removeClass("none");
        $("#xqs_gengduo_input").val('1');
    }
    else {
        $("#cityss").addClass("none");
        $("#xqs_gengduo_input").val('0');
    }
}
function faxq_citys(id) {
    $("#rm_chengshi li label").removeClass("gbcolor");
    $("#rm_chengshi li a").removeClass("gbcolor");
    $("#remen_citys_" + id).addClass("gbcolor");
    $("#remen_city_" + id).addClass("gbcolor");
    var biaoshi = $("#xq_gengduo_input").val();
    if (biaoshi == 1) {
        $("#citys").addClass("none");
        $("#xq_gengduo_input").val('0');
    }
    $.ajax({
        url: APP_ROOT + "/shop.php?ctl=index&act=faxq_citys&city_id=" + id,
        data: null,
        type: "POST",
        dataType: "json",
        success: function (data) {
            $("#city_name_q").html(data.city_name);
            $("#quxian_name_q").html("");
            $("#jingqu_name_q").html("");
            $("#niyaoqu").removeClass("none");
            $("#morents").addClass("none");

            $("#jl_city").val(id);
            $("#area_qx").html(data.html);
            $("#area_qx").removeClass("none");
        }
    });
}
function faxqs_citys(id) {
    $("#rms_chengshi li label").removeClass("gbcolor");
    $("#rms_chengshi li a").removeClass("gbcolor");
    $("#remens_citys_" + id).addClass("gbcolor");
    $("#remens_city_" + id).addClass("gbcolor");
    var biaoshi = $("#xqs_gengduo_input").val();
    if (biaoshi == 1) {
        $("#cityss").addClass("none");
        $("#xqs_gengduo_input").val('0');
    }
    $.ajax({
        url: APP_ROOT + "/shop.php?ctl=index&act=faxq_cityss&city_id=" + id,
        data: null,
        type: "POST",
        dataType: "json",
        success: function (data) {
            $("#citys_name_q").html(data.city_name);
            $("#quxians_name_q").html("");
            $("#jingqus_name_q").html("");
            $("#niyaoqus").removeClass("none");
            $("#morentss").addClass("none");

            $("#jls_city").val(id);
            $("#areas_qx").html(data.html);
            $("#areas_qx").removeClass("none");
        }
    });
}
function quxian_xx() {
    $("#area_qx").addClass("none");
}
function jingqu_xx() {
    $("#area_jq").addClass("none");
}
function quxians_xx() {
    $("#areas_qx").addClass("none");
}
function jingqus_xx() {
    $("#areas_jq").addClass("none");
}
function mudi_xuanze(id) {	//alert(id);
    var mudi = $("#youwan_xm").html();
    //var cate_xiangmu = $("input[name='cate_id']").val(); 
    var goout_purpose = $("#goout_purpose_" + id).html();

    //alert(goout_purpose);
    if ($("#mudi_xuanze_hid_" + id).val() == 0) {
        $("#xuqiuxz").removeClass("none");
        $("#xuqiutx").addClass("none");

        if ($("#mudi_xz input[value='1']").length < 3) {
            $("#mudi_xuanze_hid_" + id).val("1");
            $("#goout_purpose_" + id).addClass("gbcolor");
            $("#youwan_xm").html(goout_purpose + " " + mudi);
            $("#jl_youwanxiangmu").val(goout_purpose + " " + mudi)
            //$("input[name='cate_id']").val(id+","+cate_xiangmu);

        }
        else {
            $.showErr("您最多可选3个主要项目!", function () {
                return false;
            });
            return false;
        }
    }
    else {

        $("#mudi_xuanze_hid_" + id).val("0");
        $("#goout_purpose_" + id).removeClass("gbcolor");
        var t = mudi.replace(goout_purpose + " ", '');
        $("#youwan_xm").html(t);
        $("#jl_youwanxiangmu").val(t);
        //var r = cate_xiangmu.replace(id+",",'');
        //$("input[name='cate_id']").val(r);


    }
}
function mudis_xuanze(id) {	//alert(id);
    var mudi = $("#youwans_xm").html();
    //var cate_xiangmu = $("input[name='cate_id']").val(); 
    var goout_purpose = $("#goouts_purpose_" + id).html();

    //alert(goout_purpose);
    if ($("#mudis_xuanze_hid_" + id).val() == 0) {
        $("#xuqiuxzs").removeClass("none");
        $("#xuqiutxs").addClass("none");

        if ($("#mudis_xz input[value='1']").length < 3) {
            $("#mudis_xuanze_hid_" + id).val("1");
            $("#goouts_purpose_" + id).addClass("gbcolor");
            $("#youwans_xm").html(goout_purpose + " " + mudi);
            $("#jls_youwanxiangmu").val(goout_purpose + " " + mudi)
            //$("input[name='cate_id']").val(id+","+cate_xiangmu);

        }
        else {
            $.showErr("您最多可选3个主要项目!", function () {
                return false;
            });
            return false;
        }
    }
    else {

        $("#mudis_xuanze_hid_" + id).val("0");
        $("#goouts_purpose_" + id).removeClass("gbcolor");
        var t = mudi.replace(goout_purpose + " ", '');
        $("#youwans_xm").html(t);
        $("#jls_youwanxiangmu").val(t);
        //var r = cate_xiangmu.replace(id+",",'');
        //$("input[name='cate_id']").val(r);
    }
}
function gbxiayi(num) {
    var city_name = $("#city_name_q").html();
    var quxian_name = $("#quxian_name_q").html();
    var jingqu_name = $("#jingqu_name_q").html();
    var city_id = $("#jl_city").val();
    var quxian_id = $("#jl_quxian").val();
    var jingdian = $("#jl_jingdian").val();
    var jl_youwanxiangmu = $("#jl_youwanxiangmu").val();
    var depart_time = $("#depart_time").val(depart_time);
    var leave_time = $("#leave_time").val(leave_time);
    var trip_number = $("#trip_number").val(trip_number);
    var remark = $("#remark").val(remark);
    if (num == 1) {

        if (city_id < 1) {

            $.showErr("未选择城市!", function () {
                return false;
            });
            return false;
        }
        else if (jl_youwanxiangmu == '') {
            $.showErr("未选择出行目的!", function () {
                return false;
            });
            return false;
        }
        else {
            var ajaxurl = APP_ROOT + "/shop.php?ctl=index&act=ajax_one&city_name=" + city_name + "&quxian_name=" + quxian_name + "&jingqu_name=" + jingqu_name + "&jl_youwanxiangmu=" + jl_youwanxiangmu;
            $.ajax({
                url: ajaxurl,
                //dataType: "json",
                success: function (obj) {
                    $("#ajax_tow").addClass("none");
                    $("#ajax_one").removeClass("none");
                    $("#ajax_one").html(obj);
                    if (depart_time != '') {
                        $("input[name='chufa_time']").val(depart_time);
                    }
                    if (trip_number != 0) {
                        $("input[name='goodnum']").val(trip_number);
                    }
                    if (remark != '') {
                        $("input[name='beizhu']").val(remark);
                    }
                    //alert(obj);
                },
                error: function (ajaxobj) {
                    //				if(ajaxobj.responseText!='')
                    //				alert(ajaxobj.responseText);
                }
            });
        }
    }
    else if (num == 0) {
        $("#ajax_tow").removeClass("none");
        $("#ajax_one").addClass("none");
    }
    else if (num == 2) {
        var depart_time = $("input[name='chufa_time']").val();
        var leave_time = $("input[name='leave_time']").val();
        var trip_number = $("input[name='goodnum']").val();
        var remark = $("input[name='beizhu']").val();
        //alert(leave_time);
        if (depart_time == '') {

            alert("请选择出行时间!");
            return false;
        }
        if (leave_time == '') {

            alert("请选择返回时间!");
            return false;
        }
        else if (trip_number < 1) {

            alert("出行人数不正确");
            return false;
        }
        else {
            $("#depart_time").val(depart_time);
            $("#leave_time").val(leave_time);
            $("#trip_number").val(trip_number);
            $("#remark").val(remark);
            var ajaxurl = APP_ROOT + "/shop.php?ctl=index&act=ajax_three";
            $.ajax({
                url: ajaxurl,
                //dataType: "json",
                success: function (obj) {
                    $("#ajax_one").html(obj);
                    //alert(obj);
                },
                error: function (ajaxobj) {
                    //				if(ajaxobj.responseText!='')
                    //				alert(ajaxobj.responseText);
                }
            });
        }

    }

}
function gbxiayis(num) {
    var city_name = $("#citys_name_q").html();
    var quxian_name = $("#quxians_name_q").html();
    var jingqu_name = $("#jingqus_name_q").html();
    var city_id = $("#jls_city").val();
    var quxian_id = $("#jls_quxian").val();
    var jingdian = $("#jls_jingdian").val();
    var jl_youwanxiangmu = $("#jls_youwanxiangmu").val();
    var depart_time = $("#departs_time").val(depart_time);
    var leave_time = $("#leaves_time").val(leave_time);
    var trip_number = $("#trips_number").val(trip_number);
    var remark = $("#remarks").val(remark);
    if (num == 1) {

        if (city_id < 1) {

            $.showErr("未选择城市!", function () {
                return false;
            });
            return false;
        }
        else if (jl_youwanxiangmu == '') {
            $.showErr("未选择出行目的!", function () {
                return false;
            });
            return false;
        }
        else {
            var ajaxurl = APP_ROOT + "/shop.php?ctl=index&act=ajax_ones&city_name=" + city_name + "&quxian_name=" + quxian_name + "&jingqu_name=" + jingqu_name + "&jl_youwanxiangmu=" + jl_youwanxiangmu;
            $.ajax({
                url: ajaxurl,
                //dataType: "json",
                success: function (obj) {
                    $("#ajaxs_tow").addClass("none");
                    $("#ajaxs_one").removeClass("none");
                    $("#ajaxs_one").html(obj);
                    if (depart_time != '') {
                        $("input[name='chufa_time']").val(depart_time);
                    }
                    if (trip_number != 0) {
                        $("input[name='goodnum']").val(trip_number);
                    }
                    if (remark != '') {
                        $("input[name='beizhu']").val(remark);
                    }
                    //alert(obj);
                },
                error: function (ajaxobj) {
                    //				if(ajaxobj.responseText!='')
                    //				alert(ajaxobj.responseText);
                }
            });
        }
    }
    else if (num == 0) {
        $("#ajaxs_tow").removeClass("none");
        $("#ajaxs_one").addClass("none");
    }
    else if (num == 2) {
        var depart_time = $("input[name='chufas_time']").val();
        var leave_time = $("input[name='leaves_time']").val();
        var trip_number = $("input[name='goodnums']").val();
        var remark = $("input[name='beizhus']").val();
        if (depart_time == '') {

            alert("请选择出行时间!");
            return false;
        }
        else if (trip_number < 1) {

            alert("出行人数不正确");
            return false;
        }
        else {
            $("#departs_time").val(depart_time);
            $("#leaves_time").val(leave_time);
            $("#trips_number").val(trip_number);
            $("#remarks").val(remark);
            var ajaxurl = APP_ROOT + "/shop.php?ctl=index&act=ajax_threes";
            $.ajax({
                url: ajaxurl,
                //dataType: "json",
                success: function (obj) {
                    $("#ajaxs_one").html(obj);
                    //alert(obj);
                },
                error: function (ajaxobj) {
                    //				if(ajaxobj.responseText!='')
                    //				alert(ajaxobj.responseText);
                }
            });
        }

    }

}
function kuang_customer(id) {
    $("#kuang_purpose_cate").val(id);
    //$("#cate_"+id).css({"color":"#F60"});
    $(".cxleixin #cate_" + id).addClass("cate_cus").siblings().removeClass("cate_cus");
}
//获取手机验证码
function kuang_mobile_code() {
    var reg = /^0{0,1}(13[0-9]|147|145|178|176|177|15[0-9]|18[0-9])[0-9]{8}$/;
    if (!reg.test($("#kuang_user_phone").val())) {
        $.showErr("您好，您的手机号不正确!", function () {
            return false;
        });
        return false;
    }
    if ($("#kuang_user_phone").val() == "") {
        $.showErr("您好，您的手机号不能为空!", function () {
            return false;
        });
        return false;
    }
    $.ajax({
        url: APP_ROOT + "/shop.php?ctl=index&act=form_mobile&mobile=" + $("#kuang_user_phone").val(),
        data: null,
        type: "POST",
        dataType: "json",
        success: function (data) {
        }
    });
    //倒计数
    function dtime(i) {
        var i = i;
        timer = setInterval(updateNum, 1000);
        updateNum();
        $("#kuang_mobile_code").attr("disabled", "true");
        function updateNum() {
            if (i <= 0) {
                $("#kuang_mobile_code").removeAttr("disabled");
                $("#kuang_mobile_code").val("获取验证码");
                window.clearInterval(timer);
            } else {
                $("#kuang_mobile_code").val(i-- + "秒后重发");
            }
        }
    }
    dtime(60);
}
function kuang() {
    var city_id = $("#jl_city").val();
    var area_id = $("#jl_quxian").val();
    var areas_id = $("#jl_jingdian").val();
    var mudi = $("#jl_youwanxiangmu").val();
    var depart_time = $("#depart_time").val();
    var leave_time = $("#leave_time").val();
    var trip_number = $("#trip_number").val();
    var remark = $("#remark").val();
    var user_name = $("input[name='user_name']").val();
    var user_phone = $("input[name='kuang_user_phone']").val();
    var code = $("input[name='kuang_code']").val();
    if (city_id == 0) {
        alert("城市不能为空!");
        return false;
    }
    if (mudi == '') {
        alert("未选择出行目的!");
        return false;
    }
    if (depart_time == '') {
        alert("出行时间不能为空!");
        return false;
    }
    if (leave_time == '') {
        alert("返回时间不能为空!");
        return false;
    }
    if (trip_number == 0) {
        alert("人数不能为空!");
        return false;
    }
    if ($("input[name='user_name']").val() == '') {
        alert("姓名不能为空!");
        return false;
    }
    if ($("input[name='kuang_user_phone']").val() == '') {
        alert("手机不能为空!");
        return false;
    }
    if ($("input[name='kuang_code']").val() == "") {
        alert("验证码不能为空!");
        return false;
    }
    //var url = APP_ROOT+"/shop.php?ctl=index&act=fabu_from_ajax&city_name="+city_name+"&trip_number="+trip_number+"&purpose_cate="+purpose_cate+"&budget="+budget+"&user_name="+user_name+"&user_phone="+user_phone+"&code="+code;
    $.ajax({
        url: APP_ROOT + "/shop.php?ctl=index&act=main_fabu_from_ajax&city_id=" + city_id + "&area_id=" + area_id + "&areas_id=" + areas_id + "&mudi=" + mudi + "&leave_time=" + leave_time + "&user_name=" + user_name + "&user_phone=" + user_phone + "&code=" + code + "&depart_time=" + depart_time + "&trip_number=" + trip_number + "&remark=" + remark,
        data: null,
        type: "POST",
        success: function (data) {
            if (data == 0) {
                alert("验证码错误!");
                return false;
            }
            if (data == 1) {
                alert("发布成功");
                window.location.href = window.location.href;

            }
        }
    });
}
function kuangs() {
    var city_id = $("#jls_city").val();
    var area_id = $("#jls_quxian").val();
    var areas_id = $("#jls_jingdian").val();
    var mudi = $("#jls_youwanxiangmu").val();
    var depart_time = $("#departs_time").val();
    var leave_time = $("#leaves_time").val();
    var trip_number = $("#trips_number").val();
    var remark = $("#remarks").val();
    var user_name = $("input[name='user_name']").val();
    var user_phone = $("input[name='kuang_user_phone']").val();
    var code = $("input[name='kuang_code']").val();

    if (city_id == 0) {
        alert("城市不能为空!");
        return false;
    }
    if (mudi == '') {
        alert("未选择出行目的!");
        return false;
    }
    if (depart_time == '') {
        alert("出行时间不能为空!");
        return false;
    }
    if (trip_number == 0) {
        alert("人数不能为空!");
        return false;
    }
    if ($("input[name='user_name']").val() == '') {
        alert("姓名不能为空!");
        return false;
    }
    if ($("input[name='kuang_user_phone']").val() == '') {
        alert("手机不能为空!");
        return false;
    }
    if ($("input[name='kuang_code']").val() == "") {
        alert("验证码不能为空!");
        return false;
    }
    //var url = APP_ROOT+"/shop.php?ctl=index&act=fabu_from_ajax&city_name="+city_name+"&trip_number="+trip_number+"&purpose_cate="+purpose_cate+"&budget="+budget+"&user_name="+user_name+"&user_phone="+user_phone+"&code="+code;
    $.ajax({
        url: APP_ROOT + "/shop.php?ctl=index&act=fabu_from_ajax&city_id=" + city_id + "&area_id=" + area_id + "&areas_id=" + areas_id + "&mudi=" + mudi + "&user_name=" + user_name + "&user_phone=" + user_phone + "&code=" + code + "&leave_time=" + leave_time + "&depart_time=" + depart_time + "&trip_number=" + trip_number + "&remark=" + remark,
        data: null,
        type: "POST",
        success: function (data) {
            if (data == 0) {
                alert("验证码错误!");
                return false;
            }
            if (data == 1) {
                alert("发布成功！");
                window.location.href = window.location.href;

            }
        }
    });
}
function faxq_jingqu(id) {
    $("#jl_jingdian").val(id);
    $("#area_jq").addClass("none");
    $.ajax({
        url: APP_ROOT + "/shop.php?ctl=index&act=faxq_jingqu&jingqu_id=" + id,
        data: null,
        type: "POST",
        //dataType: "json",
        success: function (data) {
            $("#jingqu_name_q").html(data);
        }
    });
}
function faxqs_jingqu(id) {
    $("#jls_jingdian").val(id);
    $("#areas_jq").addClass("none");
    $.ajax({
        url: APP_ROOT + "/shop.php?ctl=index&act=faxq_jingqus&jingqu_id=" + id,
        data: null,
        type: "POST",
        //dataType: "json",
        success: function (data) {
            $("#jingqus_name_q").html(data);
        }
    });
}
function faxq_city(id) {
    $("#rm_chengshi li label").removeClass("gbcolor");
    $("#rm_chengshi li a").removeClass("gbcolor");
    $("#remen_citys_" + id).addClass("gbcolor");
    $("#remen_city_" + id).addClass("gbcolor");
    $.ajax({
        url: APP_ROOT + "/shop.php?ctl=index&act=faxq_citys&city_id=" + id,
        data: null,
        type: "POST",
        dataType: "json",
        success: function (data) {

            if (id > 0) {
                $("#morents").addClass("none");
                $("#niyaoqu").removeClass("none");
                $("#city_name_q").html(data.city_name);

            }
            $("#jl_city").val(id);
            $("#area_qx").html(data.html);
            $("#citys").addClass("none");
            $("#xq_gengduo_input").val('0');
            $("#area_qx").removeClass("none");
        }
    });
}
function faxqs_city(id) {
    $("#rms_chengshi li label").removeClass("gbcolor");
    $("#rms_chengshi li a").removeClass("gbcolor");
    $("#remens_citys_" + id).addClass("gbcolor");
    $("#remens_city_" + id).addClass("gbcolor");
    $.ajax({
        url: APP_ROOT + "/shop.php?ctl=index&act=faxq_cityss&city_id=" + id,
        data: null,
        type: "POST",
        dataType: "json",
        success: function (data) {

            if (id > 0) {
                $("#morentss").addClass("none");
                $("#niyaoqus").removeClass("none");
                $("#citys_name_q").html(data.city_name);

            }
            $("#jls_city").val(id);
            $("#areas_qx").html(data.html);
            $("#cityss").addClass("none");
            $("#xqs_gengduo_input").val('0');
            $("#areas_qx").removeClass("none");
        }
    });
}
function faxq_quxian(id) {

    $.ajax({
        url: APP_ROOT + "/shop.php?ctl=index&act=faxq_quxian&quxian_id=" + id,
        data: null,
        type: "POST",
        dataType: "json",
        success: function (data) {
            //alert(data);
            $("#jingqu_name_q").html("");
            $("#quxian_name_q").html(data.qx_name);
            $("#jl_quxian").val(id);
            $("#area_jq").html(data.html);
            $("#area_qx").addClass("none");
            $("#area_jq").removeClass("none");
        }
    });
}
function faxqs_quxian(id) {

    $.ajax({
        url: APP_ROOT + "/shop.php?ctl=index&act=faxq_quxians&quxian_id=" + id,
        data: null,
        type: "POST",
        dataType: "json",
        success: function (data) {
            //alert(data);
            $("#jingqus_name_q").html("");
            $("#quxians_name_q").html(data.qx_name);
            $("#jls_quxian").val(id);
            $("#areas_jq").html(data.html);
            $("#areas_qx").addClass("none");
            $("#areas_jq").removeClass("none");
        }
    });
}
function chakanqb() {
    $("#lxfs").css({ "display": "none" });
    $("#chakanqb").css({ "display": "none" });
    $("#wzlxfs").css({ "display": "block" });
}
//获取手机验证码
function fabu_mobile_code() {
    var reg = /^0{0,1}(13[0-9]|147|145|178|176|177|15[0-9]|18[0-9])[0-9]{8}$/;
    if (!reg.test($("#fabu_user_phone").val())) {
        $.showErr("您好，您的手机号不正确!", function () {
            return false;
        });
        return false;
    }
    if ($("#fabu_user_phone").val() == "") {
        $.showErr("您好，您的手机号不能为空!", function () {
            return false;
        });
        return false;
    }
    $.ajax({
        url: APP_ROOT + "/shop.php?ctl=index&act=form_mobile&mobile=" + $("#fabu_user_phone").val(),
        data: null,
        type: "POST",
        dataType: "json",
        success: function (data) {
        }
    });
    //倒计数
    function dtime(i) {
        var i = i;
        timer = setInterval(updateNum, 1000);
        updateNum();
        $("#fabu_mobile_code").attr("disabled", "true");
        function updateNum() {
            if (i <= 0) {
                $("#fabu_mobile_code").removeAttr("disabled");
                $("#fabu_mobile_code").val("获取验证码");
                window.clearInterval(timer);
            } else {
                $("#fabu_mobile_code").val(i-- + "秒后重发");
            }
        }
    }
    dtime(60);
}
function target_sub() {
    if ($("input[name='title']").val() == '') {
        $.showErr("标题不能为空!", function () {
            return false;
        });
        return false;
    }
    if ($("select[name='city_id']").val() == '0') {
        $.showErr("您还为选择城市!", function () {
            return false;
        });
        return false;
    }
    if ($("select[name='area_id']").val() == '0') {
        $.showErr("您还为选择区县!", function () {
            return false;
        });
        return false;
    }
    if ($("select[name='class_mark']").val() == '0') {
        $.showErr("请选择分类!", function () {
            return false;
        });
        return false;
    }
    if ($("input[name='user_name']").val() == '') {
        $.showErr("请填写联系人!", function () {
            return false;
        });
        return false;
    }
    if ($("input[name='user_phone']").val() == '') {
        $.showErr("请填写联系方式!", function () {
            return false;
        });
        return false;
    }
    else {
        $('#form_target').submit();

    }
}
function fabu() {
    var city_name = $("input[name='fabu_city_name']").val();
    var trip_number = $("input[name='fabu_trip_number']").val();
    var whither = $("input[name='fabu_whither']").val();
    var purpose_cate = $("input[name='fabu_purpose_cate']").val();
    var mudi = $("input[name='fabu_budget']").val();
    var user_name = $("input[name='fabu_user_name']").val();
    var user_phone = $("input[name='fabu_user_phone']").val();
    var code = $("input[name='fabu_code']").val();
    if ($("input[name='fabu_whither']").val() == '') {
        $.showErr("目的地不能为空!", function () {
            return false;
        });
        return false;
    }
    if ($("input[name='fabu_purpose_cate']").val() == '') {
        $.showErr("未选择出行目的!", function () {
            return false;
        });
        return false;
    }
    if ($("input[name='fabu_city_name']").val() == ' ') {
        $.showErr("城市不能为空!", function () {
            return false;
        });
        return false;
    }
    if ($("input[name='fabu_trip_number']").val() == ' ') {
        $.showErr("人数不能为空!", function () {
            return false;
        });
        return false;
    }
    if ($("input[name='fabu_budget']").val() == ' ') {
        $.showErr("出行目的不能为空!", function () {
            return false;
        });
        return false;
    }
    if ($("input[name='fabu_user_name']").val() == ' ') {
        $.showErr("姓名不能为空!", function () {
            return false;
        });
        return false;
    }
    if ($("input[name='fabu_user_phone']").val() == ' ') {
        $.showErr("手机不能为空!", function () {
            return false;
        });
        return false;
    }
    if ($("input[name='fabu_code']").val() == "") {
        $.showErr("验证码不能为空!", function () {
            return false;
        });
        return false;
    }

    //var url = APP_ROOT+"/shop.php?ctl=index&act=fabu_from_ajax&city_name="+city_name+"&trip_number="+trip_number+"&purpose_cate="+purpose_cate+"&budget="+budget+"&user_name="+user_name+"&user_phone="+user_phone+"&code="+code;
    $.ajax({
        url: APP_ROOT + "/shop.php?ctl=index&act=fabu_from_ajax&city_name=" + city_name + "&trip_number=" + trip_number + "&purpose_cate=" + purpose_cate + "&mudi=" + mudi + "&user_name=" + user_name + "&user_phone=" + user_phone + "&code=" + code + "&whither=" + whither,
        data: null,
        type: "POST",
        success: function (data) {
            if (data == 0) {
                $.showErr("验证码错误!", function () {
                    return false;
                });
                return false;
            }
            if (data == 1) {
                $.showSuccess("发布成功！", function () {
                    window.location.href = window.location.href;
                });
            }
        }
    });
}
//企业定制获取手机验证码
function dz_mobile_code() {
    var reg = /^0{0,1}(13[0-9]|147|145|178|176|177|15[0-9]|18[0-9])[0-9]{8}$/;
    if (!reg.test($("#dz_user_phone").val())) {
        $.showErr("您好，您的手机号不正确!", function () {
            return false;
        });
        return false;
    }
    if ($("#dz_user_phone").val() == "") {
        $.showErr("您好，您的手机号不能为空!", function () {
            return false;
        });
        return false;
    }
    $.ajax({
        url: APP_ROOT + "/biz.php?ctl=contract&act=form_mobile&mobile=" + $("#dz_user_phone").val(),
        data: null,
        type: "POST",
        dataType: "json",
        success: function (data) {
        }
    });
    //倒计数
    function dtime(i) {
        var i = i;
        timer = setInterval(updateNum, 1000);
        updateNum();
        $("#dz_mobile_code").attr("disabled", "true");
        function updateNum() {
            if (i <= 0) {
                $("#dz_mobile_code").removeAttr("disabled");
                $("#dz_mobile_code").val("获取验证码");
                window.clearInterval(timer);
            } else {
                $("#dz_mobile_code").val(i-- + "秒后重发");
            }
        }
    }
    dtime(60);
}
function dingzhi() {
    var city_name = $("input[name='dz_city_name']").val();
    var dz_man_number = $("input[name='dz_man_number']").val();
    var custom_class_id = $("input[name='custom_class_id']").val();
    var dz_whither = $("input[name='dz_whither']").val();
    var dz_user_name = $("input[name='dz_user_name']").val();
    var dz_user_phone = $("input[name='dz_user_phone']").val();
    var code = $("input[name='dz_code']").val();
    if ($("input[name='custom_class_id']").val() == '') {
        $.showErr("未选择定制类型!", function () {
            return false;
        });
        return false;
    }
    if ($("input[name='dz_whither']").val() == '') {
        $.showErr("目的地不能为空!", function () {
            return false;
        });
        return false;
    }
    if ($("input[name='dz_city_name']").val() == ' 城市') {
        $.showErr("城市不能为空!", function () {
            return false;
        });
        return false;
    }
    if ($("input[name='dz_man_number']").val() == ' 人数') {
        $.showErr("人数不能为空!", function () {
            return false;
        });
        return false;
    }
    if ($("input[name='dz_user_name']").val() == ' 您的姓名') {
        $.showErr("姓名不能为空!", function () {
            return false;
        });
        return false;
    }
    if ($("input[name='dz_user_phone']").val() == ' 手机号码') {
        $.showErr("手机不能为空!", function () {
            return false;
        });
        return false;
    }
    if ($("input[name='dz_code']").val() == "") {
        $.showErr("验证码不能为空!", function () {
            return false;
        });
        return false;
    }

    //var url = APP_ROOT+"/shop.php?ctl=index&act=fabu_from_ajax&city_name="+city_name+"&trip_number="+trip_number+"&purpose_cate="+purpose_cate+"&budget="+budget+"&user_name="+user_name+"&user_phone="+user_phone+"&code="+code;
    $.ajax({
        url: APP_ROOT + "/shop.php?ctl=index&act=dz_from_ajax&city_name=" + city_name + "&dz_man_number=" + dz_man_number + "&custom_class_id=" + custom_class_id + "&dz_user_name=" + dz_user_name + "&dz_user_phone=" + dz_user_phone + "&code=" + code + "&dz_whither=" + dz_whither,
        data: null,
        type: "POST",
        success: function (data) {
            if (data == 0) {
                $.showErr("验证码错误!", function () {
                    return false;
                });
                return false;
            }
            if (data == 1) {
                $.showSuccess("发布成功！", function () {
                    window.location.href = window.location.href;
                });


            }
        }
    });
}
function mousetheme(id) {
    if (id == 0) {
        $("#theme_0").addClass("di_hui");
        $("#theme_1").removeClass("di_hui");
        $("#theme_2").removeClass("di_hui");
        $("#theme_3").removeClass("di_hui");
    }
    if (id == 1) {
        $("#theme_1").addClass("di_hui");
        $("#theme_0").removeClass("di_hui");
        $("#theme_2").removeClass("di_hui");
        $("#theme_3").removeClass("di_hui");
    }
    if (id == 2) {
        $("#theme_2").addClass("di_hui");
        $("#theme_1").removeClass("di_hui");
        $("#theme_0").removeClass("di_hui");
        $("#theme_3").removeClass("di_hui");
    }
    if (id == 3) {
        $("#theme_3").addClass("di_hui");
        $("#theme_1").removeClass("di_hui");
        $("#theme_2").removeClass("di_hui");
        $("#theme_0").removeClass("di_hui");

    }
    $.ajax({
        url: APP_ROOT + "/shop.php?ctl=index&act=theme&id=" + id,
        data: null,
        type: "POST",
        success: function (data) {
            $("#theme_html").html(data);
        }
    });
}
function rione(id) {
    if (id == 1) {
        $("#one2").removeClass('gdsa2');
        $("#one3").removeClass('gdsa3');
        $("#one4").removeClass('gdsa4');
        $("#one2").addClass('gds2');
        $("#one3").addClass('gds3');
        $("#one4").addClass('gds4');
        $(".gdmsg").addClass('h');
        $("#ones1").removeClass('h');
    }
    else if (id == 2) {
        $("#one1").removeClass('gdsa1');
        $("#one3").removeClass('gdsa3');
        $("#one4").removeClass('gdsa4');
        $("#one1").addClass('gds1');
        $("#one3").addClass('gds3');
        $("#one4").addClass('gds4');
        $(".gdmsg").addClass('h');
        $("#ones2").removeClass('h');
    }
    else if (id == 3) {
        $("#one1").removeClass('gdsa1');
        $("#one2").removeClass('gdsa2');
        $("#one4").removeClass('gdsa4');
        $("#one1").addClass('gds1');
        $("#one2").addClass('gds2');
        $("#one4").addClass('gds4');
        $(".gdmsg").addClass('h');
        $("#ones3").removeClass('h');
    }
    else {
        $("#one1").removeClass('gdsa1');
        $("#one2").removeClass('gdsa2');
        $("#one3").removeClass('gdsa3');
        $("#one1").addClass('gds1');
        $("#one2").addClass('gds2');
        $("#one3").addClass('gds3');
        $(".gdmsg").addClass('h');
        $("#ones4").removeClass('h');

    }
    $("#title_rione div").removeClass('ri_bottom');
    $("#ri_text_" + id).addClass('ri_bottom');
    $("#one" + id).removeClass('gds' + id);
    $("#one" + id).addClass('gdsa' + id);
}
function tc(i) {
    if (i == 1) {
        $('#tc' + 2).removeClass('mtext_z_bg');
        $('#tc' + 3).removeClass('mtext_z_bg');
        $('#tc' + 4).removeClass('mtext_z_bg');

        $('#s' + 4).addClass('h');
        $('#s' + 2).addClass('h');
        $('#s' + 3).addClass('h');
        $('#s' + i).removeClass('h');

        $('#tc' + i).addClass('mtext_z_bg');
    }
    else if (i == 2) {
        $('#tc' + 1).removeClass('mtext_z_bg');
        $('#tc' + 3).removeClass('mtext_z_bg');
        $('#tc' + 4).removeClass('mtext_z_bg');

        $('#s' + 4).addClass('h');
        $('#s' + 1).addClass('h');
        $('#s' + 3).addClass('h');
        $('#s' + i).removeClass('h');

        $('#tc' + i).addClass('mtext_z_bg');
    }
    else if (i == 3) {
        $('#tc' + 1).removeClass('mtext_z_bg');
        $('#tc' + 2).removeClass('mtext_z_bg');
        $('#tc' + 4).removeClass('mtext_z_bg');

        $('#s' + 4).addClass('h');
        $('#s' + 2).addClass('h');
        $('#s' + 1).addClass('h');
        $('#s' + i).removeClass('h');

        $('#tc' + i).addClass('mtext_z_bg');
    }
    else if (i == 4) {
        $('#tc' + 2).removeClass('mtext_z_bg');
        $('#tc' + 3).removeClass('mtext_z_bg');
        $('#tc' + 1).removeClass('mtext_z_bg');

        $('#s' + 2).addClass('h');
        $('#s' + 1).addClass('h');
        $('#s' + 3).addClass('h');
        $('#s' + i).removeClass('h');

        $('#tc' + i).addClass('mtext_z_bg');
    }
}
$(document).ready(function () {
    $("select[name='city_id']").bind("change", function () {
        var city_id = $("select[name='city_id']").val();
        $.ajax({
            url: APP_ROOT + "/biz.php?ctl=contract&act=area_ajax&city_id=" + city_id,
            data: null,
            type: "POST",
            success: function (data) {
                //alert(data);
                $("#area_html").html(data);
            }
        });
    });
});
function destine(id) {
    $.weeboxs.open(APP_ROOT + "/shop.php?ctl=index&act=destine&id=" + id, { contentType: 'ajax', showButton: false, width: 563, height: 300, type: 'wee' });
}
function shfl_customer(id) {
    $("#dz_type_cate").val(id);
    //$("#cate_"+id).css({"color":"#F60"});
    $(".cxleixin #shfl_cates_" + id).addClass("cate_cus").siblings().removeClass("cate_cus");
}
function customer(id) {
    $("#purpose_cate").val(id);
    //$("#cate_"+id).css({"color":"#F60"});
    $(".cxleixin #cate_" + id).addClass("cate_cus").siblings().removeClass("cate_cus");
}
function dz_customer(id) {
    $("#dz_purpose_cate").val(id);
    $(".cxleixin #cates_" + id).addClass("cate_cus").siblings().removeClass("cate_cus");
}
function fabus() {
    var handset = $("input[name='handset']").val();
    var code = $("input[name='code']").val();
    if ($("input[name='user_name']").val() == '') {
        $.showErr("请填写姓名!", function () {
            return false;
        });
        return false;
    }
    if ($("input[name='handset']").val() == '') {
        $.showErr("手机号不能为空!", function () {
            return false;
        });
        return false;
    }
    if ($("input[name='code']").val() == '') {
        $.showErr("验证码不能为空!", function () {
            return false;
        });
        return false;
    }
    if ($("select[name='city_id']").val() == 0) {
        $.showErr("请选择城市!", function () {
            return false;
        });
        return false;
    }
    if ($("select[name='area_id']").val() == 0) {
        $.showErr("请选择区县!", function () {
            return false;
        });
        return false;
    }
    if ($("input[name='address']").val() == "") {
        $.showErr("详细地址不能为空!", function () {
            return false;
        });
        return false;
    }
    if ($("input[name='location_name']").val() == "") {
        $.showErr("农家名称 不能为空!", function () {
            return false;
        });
        return false;
    }
    $.ajax({
        url: APP_ROOT + "/biz.php?ctl=contract&act=fabu_from_ajax&handset=" + handset + "&code=" + code,
        data: null,
        type: "POST",
        success: function (data) {
            if (data == 0) {
                $.showErr("验证码错误!", function () {
                    return false;
                });
                return false;
            }
            if (data == 1) {
                $('#biz_contract').submit();
            }
        }
    });

}
$(function () {
    $("#hot_city_cs a").click(function () {
        $(this).addClass("hot_city_hover").siblings().removeClass("hot_city_hover");
    })
})
function gl(id) {
    //乡村 攻略 民宿
    $('.titlea').removeClass("titlea_hover");
    $('#m' + id).addClass("titlea_hover");
}
function termini() {
    $('.mzt_title a').on("click", function () {
        $(this).addClass("beiji").siblings("a").removeClass("beiji");
    })
}
function shadow(id) {
    $('.mzt_img div').addClass("none");
    $("#shadow_" + id).removeClass("none");

}
function shadowout(id) {
    $("#shadow_" + id).addClass("none");
}
function company(id) {
    //精选
    $('.stitlea').removeClass("stitlea_hover");
    $('#company' + id).addClass("stitlea_hover");
    //企业精选
    $.ajax({
        url: APP_ROOT + "/shop.php?ctl=index&act=company_ajax&id=" + id,
        data: null,
        type: "POST",
        success: function (data) {
            $("#company_html").html(data);
        }
    });
}
function hot_citys(id) {
    //$(this).addClass("hot_city_hover");
    //.siblings().removeClass("hot_city_hover");
    $.ajax({
        url: APP_ROOT + "/shop.php?ctl=index&act=hot_citys_ajax&id=" + id,
        data: null,
        type: "POST",
        success: function (data) {
            $("#hot_citys_html").html(data);
        }
    });
    $.ajax({
        url: APP_ROOT + "/shop.php?ctl=index&act=xiangmu_ajax&id=" + id,
        data: null,
        type: "POST",
        success: function (data) {
            $("#xiangmu_html").html(data);
        }
    });
    $.ajax({
        url: APP_ROOT + "/shop.php?ctl=index&act=purpose_ajax&id=" + id,
        data: null,
        type: "POST",
        success: function (data) {
            $("#purpose_html").html(data);
        }
    });
}
function farmhouse() {
    //优选
    $("#Content_UpBetterSelect a").on("click", function () {
        $(this).addClass("stitlear_hover").siblings("a").removeClass("stitlear_hover");
    });
    //农家优选
}
function season(id) {
    //温泉 采摘 滑雪
    $('.dj').removeClass("titleas_hovers");
    $('#season' + id).addClass("titleas_hovers");

    //当季行
    $.ajax({
        url: APP_ROOT + "/shop.php?ctl=index&act=season_ajax&id=" + id,
        data: null,
        type: "POST",
        success: function (data) {
            $("#season_html").html(data);
        }
    });
}
function gq(id) {	//转让 供求
    $('.titleas').removeClass("titleas_hover");
    $('#g' + id).addClass("titleas_hover");
    //当季行
    $.ajax({
        url: APP_ROOT + "/shop.php?ctl=index&act=need_ajax&id=" + id,
        data: null,
        type: "POST",
        success: function (data) {
            $("#need_html").html(data);
        }
    });
}
function hot(id) {
    //销量 点评 关注
    $('.rm').removeClass("titleass_hover");
    $('#hot' + id).addClass("titleass_hover");
    //当季行
    $.ajax({
        url: APP_ROOT + "/shop.php?ctl=index&act=hot_ajax&id=" + id,
        data: null,
        type: "POST",
        success: function (data) {
            $("#hot_html").html(data);
        }
    });

}
$(function () {
    function $(str) { return document.getElementById(str); }
    function $$(str) { return document.getElementsByTagName(str); }
    var timer;
    function changeMenu(thisObj, num) {
        if (thisObj.className == "over") return false;
        hids(thisObj);
        thisObj.className = "over";
        $("c" + (num + 1)).className = "block";
        $("c" + (num + 1)).onmouseover = function () { clearTimeout(timer); }
        $("c" + (num + 1)).onmouseout = function () { timer = setTimeout(function () { hids(thisObj); }, 500) }
        thisObj.onmouseout = function () { timer = setTimeout(function () { hids(thisObj); }, 3000) }
    }
    function hids(thisObj) {
        clearTimeout(timer);
        var tabObj = thisObj.parentNode.getAttribute("id");
        var obj_dt = $(tabObj).getElementsByTagName("dt");
        for (var i = 0; i < obj_dt.length; i++) {
            obj_dt[i].className = "normal";
            $("c" + (i + 1)).className = "none";
        }
    }
})

