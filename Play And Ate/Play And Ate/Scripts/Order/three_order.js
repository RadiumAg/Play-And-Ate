var url_u = "/buy";
$(function() {
    /**返回上一步**/
    $("#btn_Pre").click(function() {
        $("#three_form").attr("action", "188_order_2.php");
        //表单提交
        document.getElementById("three_form").submit();
    });
    initLinker(); //页面初始化
    /**同意合同条款**/
    /*$("#chk_is_contract,#chk_is_contract_1").click(function() {
        var chk = $("#chk_is_contract").attr("checked");
        if ($.trim($(this).attr("id")) == "chk_is_contract_1") {
            chk = chk ? false : true;
            $("#chk_is_contract").attr("checked", chk);
        }
        if (chk) {
            $("#btn_Next").css("display", "inline");
            $("#butHui").css("display", "none");
        }
        else {
            $("#butHui").css("display", "inline");
            $("#btn_Next").css("display", "none");
        }
    });*/
    $("#btn_Next").click(function() {
        //联系人信息封装//
		
        var lname = $("#link_name").text();
        var lmobile = $("#link_mobile").text();
        var lemail = $("#link_email").text();
        var lphone = $("#link_phone").text();
        $("#txtHiddenLinker").val(lname + "," + lmobile + "," + lemail + "," + lphone); //放在隐藏域中
        //游客信息封装
        var clientStr = "";
        var mtype = $("#txtHiddenMType").val();
        if (mtype == 3 || mtype == 2) {//国内
            $("#table_client_ch").find("tr").each(function(i) {
                if (i >= 1) {
                    var cname = $(this).find("td").eq(1).text(); //真实姓名
                    var ctype = $(this).find("td").eq(2).text() == "--" ? "5" : getNie($(this).find("td").eq(2).text()); //证件类型[默认儿童为稍后提供]
                    var cno = $(this).find("td").eq(3).text() == "--" ? "" : $(this).find("td").eq(3).text(); //证件号码
                    var sex = $(this).find("td").eq(4).text() == "--" ? "1" : $(this).find("td").eq(4).text(); //性别[成人默认为男]
                    sex = sex == "男" ? "1" : "0";
                    var birthday = $(this).find("td").eq(5).text() == "--" ? "1900-01-01" : $(this).find("td").eq(5).text(); //出生年月
                    var cmobile = $(this).find("td").eq(6).text() == "--" ? "" : $(this).find("td").eq(6).text(); //手机
                    var selectUser = $.trim($(this).find("td").eq(7).text()) == "" ? "0" : $.trim($(this).find("td").eq(7).text()); //游客Id
                    var cnIsAddorUp = $(this).find("td").eq(8).text(); //是否保存
                    //二次开发增加的字段
                    var type = $(this).find("td").eq(0).text() == "儿童" ? "3" : "0"; //游客类型
                    clientStr += cname + "," + ctype + "," + cno + "," + sex + "," + birthday + "," + cmobile + "," + selectUser + "," + cnIsAddorUp + "," + type + "$";
                }
            });
        }
        else {
            $("#table_client_en").find("tr").each(function(i) {
                if (i >= 1) {
                    var cname = $(this).find("td").eq(1).text(); //中文名称
                    var ctype = getJi($(this).find("td").eq(3).text()); //证件类型
                    var cno = $(this).find("td").eq(4).text(); //证件号码
                    var youxiaoqi = $(this).find("td").eq(5).text(); //有效期
                    var qianfade = $(this).find("td").eq(6).text(); //签发地
                    var cmobile = $(this).find("td").eq(10).text() == "--" ? "" : $(this).find("td").eq(10).text(); //联系电话
                    var address = ""; //出生地
                    var nationality = $(this).find("td").eq(7).text(); //国籍
                    var sex = $(this).find("td").eq(8).text() == "男" ? "1" : "0"; //性别
                    var birthday = $(this).find("td").eq(9).text(); //出生年月
                    var qianzhutype = ""; //护照/签注类型
                    var qianfadate = ""; //签发日期
                    var selectUser = $(this).find("td").eq(11).text() == "" ? "0" : $(this).find("td").eq(11).text(); //游客Id
                    var cnIsAddorUp = $(this).find("td").eq(12).text(); //是否保存
                    //二次开发增加的字段
                    var type = $(this).find("td").eq(0).text() == "儿童" ? "3" : "0"; //游客类型
                    var enname = $(this).find("td").eq(2).text(); //英文姓名
                    clientStr += cname + "," + ctype + "," + cno + "," + youxiaoqi + "," + qianfade + "," + cmobile + "," + address + "," + nationality + "," + sex + "," + birthday + "," + qianzhutype + "," + qianfadate + "," + selectUser + "," + cnIsAddorUp + "," + enname + "," + type + "$";
                }
            });
        }
        if (clientStr != "") {
            clientStr = clientStr.substr(0, clientStr.length - 1);
            $("#txtHiddenClienter").val(clientStr); //放在隐藏域中
        }
		
        //**Ajax 判断是否是重复订单**//
        var goDate = $("#txtHiddenGoDate").val(); //出发日期
        ajax_repeat_orders(goDate, lname); //是否继续下单
	
    });
	
    //**当页面全部加载完成再显示下面的提交按钮**//
    $("#gl_return").css("display", "block");
    //**继续预订**//
    $("#btnGoOn").click(function() {
        //关闭提示窗体
        close_repeat_div();
        //页面遮罩起来，不能重复下单
        $.md({ modal: "#xs2" });
        //提交表单
        $("#three_form").attr("action", "188_order_4.php");
        document.getElementById("three_form").submit();
    })
});
//**初始化游客信息**///
function initLinker() {
    var ulist = $("#txtHiddenUList").val();
    ulist = ulist != "" ? eval("(" + ulist + ")") : ""; //解析json
    //联系人信息
    if (ulist.users && ulist.users.length > 0) {
        var users = ulist.users[0];
        $("#link_name").text(users.uname);
        $("#link_mobile").text(users.umobile);
        $("#link_email").text(users.uemail);
        $("#link_phone").text(users.uphone);
    }
    //游客信息
    var mtype = $("#txtHiddenMType").val();
    if (mtype == 3 || mtype == 2) {//国内
        var clientStr = "";
        if (ulist.client && ulist.client.length > 0) {
            for (var j = 0; j < ulist.client.length; j++) {
                var client = ulist.client[j];
                var ageType = client.ageType == "0" ? "成人" : "儿童";
                var sex = client.ageType == "0" ? "--" : client.sex == "1" ? "男" : "女";
                var birthday = client.ageType == "0" ? "--" : client.birth;
                var mobile = client.ageType == "3" ? "--" : client.mobile;
                var type = client.ageType == "3" ? "--" : getType(client.type); //证件类型
                var code = client.ageType == "3" ? "--" : client.no;
                clientStr += "<tr><td class=\"lt\">" + ageType + "</td><td>" + client.name + "</td><td>" + type + "</td><td>" + code + "</td><td>" + sex + "</td><td>" + birthday + "</td><td>" + mobile + "</td><td style=\"display:none;\">" + client.selectUser + "</td><td style=\"display:none;\">" + client.isUpOrAdd + "</td></tr>";
            } //end for
            $("#table_client_ch").append(clientStr);
        }
    }
    else { //出境
        var clientStr = "";
        if (ulist.client && ulist.client.length > 0) {
            for (var j = 0; j < ulist.client.length; j++) {
                var client = ulist.client[j];
                var ageType = client.ageType == "0" ? "成人" : "儿童";
                var sex = client.sex == "1" ? "男" : "女";
                var mobile = client.ageType == "3" ? "--" : client.mobile;
                clientStr += "<tr><td class=\"lt\">" + ageType + "</td><td>" + client.name + "</td><td>" + client.enname + "</td><td>" + getSeaType(client.type) + "</td><td>" + client.no + "</td><td>" + client.youxiaoqi + "</td><td>" + client.qianfade + "</td><td>" + client.nationality + "</td>";
                clientStr += "<td>" + sex + "</td><td>" + client.birth + "</td><td>" + mobile + "</td><td style=\"display:none;\">" + client.selectUser + "</td><td style=\"display:none;\">" + client.isUpOrAdd + "</td></tr>";
            } //end for
            $("#table_client_en").append(clientStr);
        }
    }
}
//**证件类型【国内线路】**//
function getType(nums) {
    var type = "";
    if (nums == 0) {
        type = "身份证";
    }
    else if (nums == 1) {
        type = "学生证"
    }
    else if (nums == 2) {
        type = "军官证"
    }
    else if (nums == 3) {
        type = "退休证"
    }
    else if (nums == 4) {
        type = "护照";
    }
    else if (nums == 5) {
        type = "稍后提供";
    }
    else {
        type = "其他";
    }
    return type;
}
//**证件类型【出境线路】**//
function getSeaType(nums) {
    var type = "";
    if (nums == 0) {
        type = "护照";
    }
    else if (nums == 1) {
        type = "港澳通行证";
    }
    else if (nums == 2) {
        type = "回乡证";
    }
    else if (nums == 3) {
        type = "台胞证";
    }
    else {
        type = "稍后提供";
    }
    return type;
}
//**Ajax查看是否存在重复订单**//
function ajax_repeat_orders(goDate, userName) {
	var phpurl=  $("#phpurl").val();
    $.ajax({
        type: "POST",
        url: phpurl+"/order/check.php?goDate=" + goDate + "&userName=" + encodeURIComponent(userName),
        success: function(msg) {
            if (msg != "") {
                if (msg == "error") {
                    //弹出重复下单的提示【已经存在重复订单】
                    display_repeat_div();
                } else {
                    //没有重复订单的情况
                    //页面遮罩起来，不能重复下单【不存在重复订单】
				
                    $.md({ modal: "#xs2" });
						
                    //提交表单
                    $("#three_form").attr("action","188_order_4.php");
                    document.getElementById("three_form").submit();
                }
            }
            else {
                //异常情况，继续下单                
                //页面遮罩起来，不能重复下单
                $.md({ modal: "#xs2" });
                //提交表单
                $("#three_form").attr("action",  "188_order_4.php");
                document.getElementById("three_form").submit();
            }
        } //返回
    });       //end ajax
}
//**显示重复下单提示层**//
function display_repeat_div() {
    //添加全屏遮罩层 Start
    window.scrollTo(0, 0);
    var width = document.documentElement.clientWidth + document.documentElement.scrollLeft;
    var height = document.documentElement.clientHeight + document.documentElement.scrollTop;
    var layer = document.createElement('div');
    layer.style.zIndex = 2;
    layer.id = 'layer_repeat';
    layer.style.position = 'absolute';
    layer.style.top = '0px';
    layer.style.left = '0px';
    layer.style.height = document.documentElement.scrollHeight + 'px';
    layer.style.width = width + 'px';
    layer.style.backgroundColor = 'black';
    layer.style.opacity = '.3';
    layer.style.filter += ("progid:DXImageTransform.Microsoft.Alpha(opacity=30)");
    document.body.style.position = 'static';
    document.body.appendChild(layer);
    //添加全屏遮罩层 End
    var size = { 'height': 200, 'width': 400 };
    var top = ((height + document.documentElement.scrollTop) / 2) - (size.height / 2) + 'px';
    var left = (width / 2) - (size.width / 2) + 'px';
    $("#dv_Repeat").css({ "height": "200px", "width": "400px", "position": "absolute", "z-index": "3", "border": "2px", "margin": "0px", "top": top, "left": left, "display": "block" });
}
//**关闭重复下单提示层**//
function close_repeat_div() {
    $("#dv_Repeat").css({ "display": "none" });
    var la = document.getElementById("layer_repeat");
    document.body.removeChild(la);
    document.body.style.position = '';
}
//**根据文字获取int类型的值【国内】**//
function getNie(va) {
    var v = -1;
    if (va == "身份证") {
        v = 0;
    } else if (va == "学生证") {
        v = 1;
    } else if (va == "军官证") {
        v = 2;
    } else if (va == "退休证") {
        v = 3;
    } else if (va == "护照") {
        v = 4;
    } else if (va == "稍后提供") {
        v = 5;
    } else {
        v = -1;
    }
    return v;
}
//**根据文字获取int类型的值【国际】**//
function getJi(va) {
    var v = -1;
    if (va == "护照") {
        v = 0;
    } else if (va == "港澳通行证") {
        v = 1;
    } else if (va == "回乡证") {
        v = 2;
    } else if (va == "台胞证") {
        v = 3;
    } else {
        v = -1;
    }
    return v;
}