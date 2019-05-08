var url_u = "/buy";
var mobileReg = new RegExp(/^((\(\d{3}\))|(\d{3}\-))?((13|14)[0-9]|15[0-9]|18[0-9])\d{8}$/); //手机
var codeReg = new RegExp(/^(\d{15}$|^\d{18}$|^\d{17}(\d|X|x))$/); //身份证
var hzhaoReg = new RegExp(/^[G|g]\d{8}$/); //护照
var gangaoReg = new RegExp(/^[W|w]\d{8}$/); //港澳通行证
var emailReg = new RegExp(/^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/); //邮箱
var phoneReg = new RegExp(/^((\(\d{3}\))|(\d{3}\-))?(\(0\d{2,3}\)|0\d{2,3}-)?[1-9]\d{6,7}$/); //固定电话
var dataeReg = new RegExp(/^((((19|20)\d{2})-(0?(1|[3-9])|1[012])-(0?[1-9]|[12]\d|30))|(((19|20)\d{2})-(0?[13578]|1[02])-31)|(((19|20)\d{2})-0?2-(0?[1-9]|1\d|2[0-8]))|((((19|20])([13579][26]|[2468][048]|0[48]))|(2000))-0?2-29))$/); //日期
var nameReg = new RegExp(/^[A-Za-z\u4E00-\u9FA5\_\＿\/]+$/); //姓名【字母，中文，下划线，反斜线】
var processtype = $("#txtHiddenProcessType").val();
$(function() {
		   
   // $(".b_date").mask("9999-99-99"); //控制日期输入格式
		
    //*************返回上一个页面*********************//
    $("#btn_Pre").click(function() {
        $("#two_form").attr("action", "188_order.php");
        //表单提交
        document.getElementById("two_form").submit();
    });
    //**订单备注点击事件**//
    $("#txtDes").click(function() {
        var code = $.trim($("#txtDes").text());
        if (code == "请输入订单备注") {
            $("#txtDes").text("");
        }
    });

    //************国内成人自动补全************//
    $("ul[id^='ul_ch_person_']").find("a").click(function() {
        var des = $(this).attr("des"); //游客的详细信息，以逗号隔开
        if (des.length > 0) {
            var ul_Id = $(this).parents("ul").attr("id");
            var ii = ul_Id.substr(ul_Id.lastIndexOf("_") + 1);
            $("#txt_ch_person_UserId_" + ii).val(des.split(',')[0]); //隐藏域 游客Id
            $("#txt_ch_person_Phone_" + ii).val(des.split(',')[5]); //手机
            $("#ddl_ch_person_CodeType_" + ii).val(des.split(',')[1]); //证件类别
            $("#txt_ch_person_Code_" + ii).val(des.split(',')[2]); //证件号码
            $("#ddl_ch_person_CodeType_" + ii).change(); //触发证件类别的事件
            $("#txt_ch_person_RealName_" + ii).focus(); //触发真实姓名获取焦点事件
        }
    });
    //************国内儿童自动补全************//
    $("ul[id^='ul_ch_child_']").find("a").click(function() {
        var des = $(this).attr("des"); //游客的详细信息，以逗号隔开
        if (des.length > 0) {
            var ul_Id = $(this).parents("ul").attr("id");
            var ii = ul_Id.substr(ul_Id.lastIndexOf("_") + 1);
            $("#txt_ch_child_UserId_" + ii).val(des.split(',')[0]); //隐藏域 游客Id
            $("#ddl_ch_child_Sex_" + ii).val(des.split(',')[10]); //性别
            if (des.split(',')[14] != "1900-01-01") {
                $("#txt_ch_child_Birthday_" + ii).val(des.split(',')[14]); //出生年月
            }
            $("#txt_ch_child_RealName_" + ii).focus(); //触发真实姓名获取焦点事件
        }
    });
    //************出境成人自动补全************//
    $("ul[id^='ul_en_person_']").find("a").click(function() {
        var des = $(this).attr("des"); //游客的详细信息，以逗号隔开
        if (des.length > 0) {
            var ul_Id = $(this).parents("ul").attr("id");
            var ii = ul_Id.substr(ul_Id.lastIndexOf("_") + 1);
            $("#txt_en_person_UserId_" + ii).val(des.split(',')[0]); //隐藏域 游客Id
            $("#ddl_en_person_Sex_" + ii).val(des.split(',')[10]); //性别
            $("#txt_en_person_Nationality_" + ii).val(des.split(',')[9]); //国籍
            $("#ddl_en_person_Type_" + ii).val(des.split(',')[3]); //证件类别
            $("#txt_en_person_Birthday_" + ii).val(des.split(',')[14]); //出生年月
            $("#txt_en_person_Code_" + ii).val(des.split(',')[4]); //证件号码
            if (des.split(',')[6] != "1900-01-01") {
                $("#txt_en_person_Valiad_" + ii).val(des.split(',')[6]); //证件有效期    
            }
            $("#txt_en_person_CodeAddress_" + ii).val(des.split(',')[8]); //签发地
            $("#txt_en_person_Phone_" + ii).val(des.split(',')[2]); //手机
            $("#txt_en_person_RealNameEn_" + ii).val(des.split(',')[16]); //英文姓名
            $("#ddl_en_person_Type_" + ii).change(); //触发证件类别事件
            $("#txt_en_person_RealName_" + ii).focus(); //触发真实姓名获取焦点事件
        }
    });
    //************出境儿童自动补全************//
    $("ul[id^='ul_en_child_']").find("a").click(function() {
        var des = $(this).attr("des"); //游客的详细信息，以逗号隔开
        if (des.length > 0) {
            var ul_Id = $(this).parents("ul").attr("id");
            var ii = ul_Id.substr(ul_Id.lastIndexOf("_") + 1);
            $("#txt_en_child_UserId_" + ii).val(des.split(',')[0]); //隐藏域 游客Id
            $("#ddl_en_child_Sex_" + ii).val(des.split(',')[10]); //性别
            $("#txt_en_child_Nationality_" + ii).val(des.split(',')[9]); //国籍
            $("#ddl_en_child_Type_" + ii).val(des.split(',')[3]); //证件类别
            if (des.split(',')[14] != "1900-01-0") {
                $("#txt_en_child_Birthday_" + ii).val(des.split(',')[14]); //出生年月
            }
            $("#txt_en_child_Code_" + ii).val(des.split(',')[4]); //证件号码
            if (des.split(',')[6] != "1900-01-01") {
                $("#txt_en_child_Valiad_" + ii).val(des.split(',')[6]); //证件有效期    
            }
            $("#txt_en_child_CodeAddress_" + ii).val(des.split(',')[8]); //签发地
            $("#txt_en_child_RealNameEn_" + ii).val(des.split(',')[16]); //备注
            $("#ddl_en_child_Type_" + ii).change(); //触发证件类别事件
            $("#txt_en_child_RealName_" + ii).focus(); //触发真实姓名获取焦点事件
        }
    });
    //*************国内成人证件类别的选择******************//
    $("select[id^='ddl_ch_person_CodeType_']").change(function() {
        var type = $(this).val(); //证件类型
        var ii = $(this).attr("id").substr($(this).attr("id").lastIndexOf("_") + 1);
        if (type == "5") {//稍后提供
            //证件号码隐藏
            $("#td_ch_person_CodeTitle_" + ii).hide();
            $("#td_ch_person_CodeInput_" + ii).hide();
        }
        else {
            //证件号码显示
            $("#td_ch_person_CodeTitle_" + ii).show();
            $("#td_ch_person_CodeInput_" + ii).show();
        }
    });
    //*************出境成人证件类别的选择******************//
    $("select[id^='ddl_en_person_Type_']").change(function() {
        var type = $(this).val(); //证件类型
        var ii = $(this).attr("id").substr($(this).attr("id").lastIndexOf("_") + 1);
        if (type == "-1") {//稍后提供
            $("#tr_en_person_Code_" + ii).hide();
            $("#td_en_person_CodeAddressTitle_" + ii).hide();
            $("#td_en_person_CodeAddressInput_" + ii).hide();
        }
        else {
            $("#tr_en_person_Code_" + ii).show();
            $("#td_en_person_CodeAddressTitle_" + ii).show();
            $("#td_en_person_CodeAddressInput_" + ii).show();
        }
    });
    //*************出境儿童证件类别的选择******************//
    $("select[id^='ddl_en_child_Type_']").change(function() {
        var type = $(this).val(); //证件类型
        var ii = $(this).attr("id").substr($(this).attr("id").lastIndexOf("_") + 1);
        if (type == "-1") {//稍后提供
            //证件号码隐藏
            $("#tr_en_child_Code_" + ii).hide();
            $("#tr_en_child_CodeAddress_" + ii).hide();
        }
        else {
            //证件号码显示
            $("#tr_en_child_Code_" + ii).show();
            $("#tr_en_child_CodeAddress_" + ii).show();
        }
    });
    //*************国内成人、儿童验证******************//
    //成人、儿童真实姓名验证
    $("input[id^='txt_ch_person_RealName_'],input[id^='txt_ch_child_RealName_']").blur(function() {
        $(this).parent("div").find("span").text("");
        if ($.trim($(this).val()) == "") {
            $(this).parent("div").find("span").text("必填");
        } else {
            //支持在线支付的时候判断姓名的格式
            if (processtype == 1) {
                if (!nameReg.test($.trim($(this).val()))) {
                    $(this).parent("div").find("span").text("格式错误");
                }
            }
        }
    });
    //手机验证
    $("input[id^='txt_ch_person_Phone_']").blur(function() {
        $(this).next().text("");
        if ($.trim($(this).val()) == "") {
            $(this).next().text("必填");
        }
        else {
            if (!mobileReg.test($.trim($(this).val()))) {
                $(this).next().text("格式错误");
            }
        }
    });
    //证件号码验证
    $("input[id^='txt_ch_person_Code_']").blur(function() {
        var ii = $(this).attr("id").substr($(this).attr("id").lastIndexOf("_") + 1);
        var type = $("#ddl_ch_person_CodeType_" + ii).val(); //选择证件类型
        $(this).next().text("");
        if ($.trim($(this).val()) == "") {
            $(this).next().text("必填");
        }
        else {
            if (type == "0") {//选择了省份证
                if (!codeReg.test($.trim($(this).val()))) {
                    $(this).next().text("格式错误");
                }
            }
        }
    });
    //生日验证
    $("input[id^='txt_ch_child_Birthday_']").blur(function() {
        $(this).next().text("");
        if ($.trim($(this).val()) == "") {
            $(this).next().text("必填");
        }
        else {
            if (!dataeReg.test($.trim($(this).val()))) {
                $(this).next().text("格式错误");
            }
        }
    });
    //*************出境成人、儿童验证******************//
    //成人、儿童的中文名称验证
    $("input[id^='txt_en_person_RealName_'],input[id^='txt_en_child_RealName_']").blur(function() {
        $(this).parent("div").find("span").text("");
        if ($.trim($(this).val()) == "") {
            $(this).parent("div").find("span").text("必填");
        }
    });
    //成人、儿童的英文名称验证
    $("input[id^='txt_en_person_RealNameEn_'],input[id^='txt_en_child_RealNameEn_']").blur(function() {
        $(this).next().text("");
        if ($.trim($(this).val()) == "") {
            $(this).next().text("必填");
        }
    });
    //成人、儿童的国籍验证
    $("input[id^='txt_en_person_Nationality_'],input[id^='txt_en_child_Nationality_']").blur(function() {
        $(this).next().text("");
        if ($.trim($(this).val()) == "") {
            $(this).next().text("必填");
        }
    });
    //成人、儿童的生日验证
    $("input[id^='txt_en_child_Birthday_'],input[id^='txt_en_person_Birthday_']").blur(function() {
        $(this).next().text("");
        if ($.trim($(this).val()) == "") {
            $(this).next().text("必填");
        } else {
            if (!dataeReg.test($.trim($(this).val()))) {
                $(this).next().text("格式错误");
            }
        }
    });
    //成人的证件号码验证
    $("input[id^='txt_en_person_Code_']").blur(function() {
        var ii = $(this).attr("id").substr($(this).attr("id").lastIndexOf("_") + 1);
        var type = $("#ddl_en_person_Type_" + ii).val(); //选择证件类型
        $(this).next().text("");
        if ($.trim($(this).val()) == "") {
            $(this).next().text("必填");
        }
        else {
            if (type == "0") {//护照
                if (!hzhaoReg.test($.trim($(this).val()))) {
                    $(this).next().text("格式错误");
                }
            }
            if (type == "1") {//港澳通行证
                if (!gangaoReg.test($.trim($(this).val()))) {
                    $(this).next().text("格式错误");
                }
            }
        }
    });
    //儿童的证件号码验证
    $("input[id^='txt_en_child_Code_']").blur(function() {
        var ii = $(this).attr("id").substr($(this).attr("id").lastIndexOf("_") + 1);
        var type = $("#ddl_en_child_Type_" + ii).val(); //选择证件类型
        $(this).next().text("");
        if ($.trim($(this).val()) == "") {
            $(this).next().text("必填");
        }
        else {
            if (type == "0") {//护照
                if (!hzhaoReg.test($.trim($(this).val()))) {
                    $(this).next().text("格式错误");
                }
            }
            if (type == "1") {//港澳通行证
                if (!gangaoReg.test($.trim($(this).val()))) {
                    $(this).next().text("格式错误");
                }
            }
        }
    });
    //成人、儿童的证件有效期验证
    $("input[id^='txt_en_person_Valiad_'],input[id^='txt_en_child_Valiad_']").blur(function() {
        $(this).next().text("");
        if ($.trim($(this).val()) == "") {
            $(this).next().text("必填");
        }
        else {
            if (!dataeReg.test($.trim($(this).val()))) {
                $(this).next().text("格式错误");
            }
        }
    });
    //成人的手机验证
    $("input[id^='txt_en_person_Phone_']").blur(function() {
        $(this).next().text("");
        if ($.trim($(this).val()) == "") {
            $(this).next().text("必填");
        }
        else {
            if (!mobileReg.test($.trim($(this).val()))) {
                $(this).next().text("格式错误");
            }
        }
    });
    //*************联系人验证******************//
    //姓名
    $("#txt_name").blur(function() {
        $(this).next().text("");
        if ($.trim($(this).val()) == "") {
            $(this).next().text("必填");
        }
    });
    //手机
    $("#txt_mobile").blur(function() {
        $(this).next().text("");
        if ($.trim($(this).val()) == "") {
            $(this).next().text("必填");
        }
        else {
            if (!mobileReg.test($.trim($(this).val()))) {
                $(this).next().text("格式错误");
            }
        }
    });
    //Email
    $("#txt_email").blur(function() {
        $(this).next().text("");
        if ($.trim($(this).val()) == "") {
            $(this).next().text("必填");
        }
        else {
            if (!emailReg.test($.trim($(this).val()))) {
                $(this).next().text("格式错误");
            }
        }
    });
    //固定电话
    $("#txt_start_phone,#txt_end_phone").blur(function() {
        $("#span_phone").text("");
        var start = $.trim($("#txt_start_phone").val());
        var end = $.trim($("#txt_end_phone").val());
        var phone = (start != "") ? start + "-" + end : end;
        if (phone != "" && !phoneReg.test(phone)) {
            $("#span_phone").text("格式错误");
        }
    });
    //订单备注字数限制
    $("#txtDes").keyup(function() {
        var des = $(this).val();
        if (des.length <= 200) {
            $("#eCodeLeft").text(parseInt(200 - des.length));
        }
        else {
            $(this).val($(this).val().substr(0, 200));
        }
    });
    LoadUserInfo(); //页面回退回来之后的页面加载
    //*************提交下一步表单******************//
    $("#btn_Next").click(function() {
        $(".userInfo table").find("span").text("");
        var clientArr = "";
        var flag = false;
        var phonenum = 0;
        var en_phonenum = 0;
        var otherUserNameArray = new Array(); //名称集合
        var otherUserPassCodeArray = new Array(); //证件集合
        //******国内 成人*****//
        $("div[id^='div_ch_person_']").each(function() {
            var ii = $(this).attr("id").substr($(this).attr("id").lastIndexOf("_") + 1);
            var ch_person_RealName = $.trim($("#txt_ch_person_RealName_" + ii).val());
            var ch_person_Phone = $.trim($("#txt_ch_person_Phone_" + ii).val());
            var ch_person_CodeType = $("#ddl_ch_person_CodeType_" + ii).val();
            var ch_person_Code = $.trim($("#txt_ch_person_Code_" + ii).val());
            $("#txt_ch_person_RealName_" + ii).parent("div").find("span").text();
            $("#txt_ch_person_Phone_" + ii).next().text("");
            $("#txt_ch_person_Code_" + ii).next().text("");
            //真实姓名
            if (ch_person_RealName == "") {
                $("#txt_ch_person_RealName_" + ii).parent("div").find("span").text("必填");
                flag = true;
            } else {
                //在线支付时判断姓名的格式
                if (processtype == 1) {
                    if (!nameReg.test(ch_person_RealName)) {
                        $("#txt_ch_person_RealName_" + ii).parent("div").find("span").text("格式错误");
                        flag = true;
                    } else {
                        otherUserNameArray.push(ch_person_RealName); //追加用户名，用于判断不能重复，放入集合
                    }
                }
            }
            //手机 支持在线支付的必须输入手机号 2012-04-24
            if (processtype == 1) {
                if (ch_person_Phone == "") {
                    $("#txt_ch_person_Phone_" + ii).next().text("必填");
                    flag = true;
                }
                else {
                    if (!mobileReg.test(ch_person_Phone)) {
                        $("#txt_ch_person_Phone_" + ii).next().text("格式错误");
                        flag = true;
                    }
                }
            }
            //手机【只要输入一个手机即可以提交订单】
            if (ch_person_Phone != "") {
                phonenum++; //标示输入手机的加人
                if (!mobileReg.test(ch_person_Phone)) {
                    $("#txt_ch_person_Phone_" + ii).next().text("格式错误");
                    flag = true;
                }
            }
            //证件号码
            if (ch_person_CodeType != "5") {//不选择稍后提供就判断
                if (ch_person_Code == "") {
                    $("#txt_ch_person_Code_" + ii).next().text("必填");
                    flag = true;
                } else {
                    if (ch_person_CodeType == "0") {//选择了省份证
                        if (!codeReg.test(ch_person_Code)) {
                            $("#txt_ch_person_Code_" + ii).next().text("格式错误");
                            flag = true;
                        } else {
                            //在线支付时判断姓名的格式
                            if (processtype == 1) {
                                otherUserPassCodeArray.push(ch_person_Code); //追加用户名，用于判断不能重复，放入集合
                            }
                        }
                    }
                    else {//选择其他的只要是非空就要封装
                        //在线支付时判断姓名的格式
                        if (processtype == 1) {
                            otherUserPassCodeArray.push(ch_person_Code); //追加用户名，用于判断不能重复，放入集合
                        }
                    }
                }
            }
            if (!flag) {
                //提取信息
                var birthday = "1900-01-01"; //生日
                if (ch_person_CodeType == "0") {
                    birthday = ch_person_Code.substr(6, 4) + "-" + ch_person_Code.substr(10, 2) + "-" + ch_person_Code.substr(12, 2); //从省份证中读取出生年月
                }
                var sex = "1"; //默认性别
                var userType = "0"; //0成人3儿童
                var selectUserId = $.trim($("#txt_ch_person_UserId_" + ii).val()); //游客Id
                var cnIsAddorUp = $("#chk_ch_person_" + ii).attr("checked"); //是否保存游客信息
			
                cnIsAddorUp = cnIsAddorUp ? '1' : '0';
                clientArr += "{\"name\":\"" + ch_person_RealName + "\",\"type\":\"" + ch_person_CodeType + "\",\"no\":\"" + ch_person_Code + "\",\"sex\":\"" + sex + "\",\"birth\":\"" + birthday + "\",\"mobile\":\"" + ch_person_Phone + "\",\"selectUser\":\"" + selectUserId + "\",\"isUpOrAdd\":\"" + cnIsAddorUp + "\",\"ageType\":\"" + userType + "\"},";
            }
        });
        //******国内 有成人的时候再统计*****//
        if ($("div[id^='div_ch_person_']").length > 0) {
            if (phonenum == 0) {
                if ($("#txt_ch_person_Phone_0")) {
                    $("#txt_ch_person_Phone_0").next().text("必填");
                    flag = true;
                }
            }
        }
        //******国内 儿童*****//
        $("div[id^='div_ch_child_']").each(function() {
            var ii = $(this).attr("id").substr($(this).attr("id").lastIndexOf("_") + 1);
            var ch_child_RealName = $.trim($("#txt_ch_child_RealName_" + ii).val());
            var ch_child_Birthday = $.trim($("#txt_ch_child_Birthday_" + ii).val());
            var ch_child_Sex = $("#ddl_ch_child_Sex_" + ii).val();
            $("#txt_ch_child_RealName_" + ii).parent("div").find("span").text("");
            $("#txt_ch_child_Birthday_" + ii).next().text("");
            //真实姓名
            if (ch_child_RealName == "") {
                $("#txt_ch_child_RealName_" + ii).parent("div").find("span").text("必填");
                flag = true;
            } else {
                //在线支付时判断姓名的格式
                if (processtype == 1) {
                    if (!nameReg.test(ch_child_RealName)) {
                        $("#txt_ch_child_RealName_" + ii).parent("div").find("span").text("格式错误");
                        flag = true;
                    } else {
                        otherUserNameArray.push(ch_child_RealName); //追加用户名，用于判断不能重复，放入集合
                    }
                }
            }
            //出生日期
            if (ch_child_Birthday == "") {
                $("#txt_ch_child_Birthday_" + ii).next().text("必填");
                flag = true;
            }
            else {
                if (!dataeReg.test(ch_child_Birthday)) {
                    $("#txt_ch_child_Birthday_" + ii).next().text("格式错误");
                    flag = true;
                }
            }
            if (!flag) {
                //提取信息
                var type = "5"; //证件类型默认为”稍后提供“
                var code = ""; //证件号码
                var phone = ""; //手机
                var userType = "3"; //0成人3儿童
                var selectUserId = $.trim($("#txt_ch_child_UserId_" + ii).val()); //游客Id
                var cnIsAddorUp = $("#chk_ch_child_" + ii).attr("checked"); //是否保存游客信息
                cnIsAddorUp = cnIsAddorUp ? '1' : '0';
                clientArr += "{\"name\":\"" + ch_child_RealName + "\",\"type\":\"" + type + "\",\"no\":\"" + code + "\",\"sex\":\"" + ch_child_Sex + "\",\"birth\":\"" + ch_child_Birthday + "\",\"mobile\":\"" + phone + "\",\"selectUser\":\"" + selectUserId + "\",\"isUpOrAdd\":\"" + cnIsAddorUp + "\",\"ageType\":\"" + userType + "\"},";
            }
        });
        //******出境 成人*****//
        $("div[id^='div_en_person_']").each(function() {
            var ii = $(this).attr("id").substr($(this).attr("id").lastIndexOf("_") + 1);
            var en_person_RealName = $.trim($("#txt_en_person_RealName_" + ii).val());
            var en_person_RealNameEn = $.trim($("#txt_en_person_RealNameEn_" + ii).val());
            var en_person_Nationality = $.trim($("#txt_en_person_Nationality_" + ii).val());
            var en_person_Birthday = $.trim($("#txt_en_person_Birthday_" + ii).val());
            var en_person_Phone = $.trim($("#txt_en_person_Phone_" + ii).val());
            var en_person_Type = $.trim($("#ddl_en_person_Type_" + ii).val());
            var en_person_Code = $.trim($("#txt_en_person_Code_" + ii).val());
            var en_person_Valiad = $.trim($("#txt_en_person_Valiad_" + ii).val());
            var en_person_Sex = $("#ddl_en_person_Sex_" + ii).val();
            var en_person_CodeAddress = $.trim($("#txt_en_person_CodeAddress_" + ii).val()); //签发地
            $("#txt_en_person_RealName_" + ii).parent("div").find("span").text("");
            $("#txt_en_person_RealNameEn_" + ii).next().text("");
            $("#txt_en_person_Nationality_" + ii).next().text("");
            $("#txt_en_person_Birthday_" + ii).next().text("");
            $("#txt_en_person_Phone_" + ii).next().text("");
            $("#txt_en_person_Code_" + ii).next().text("");
            $("#txt_en_person_Valiad_" + ii).next().text("");
            //中文姓名
            if (en_person_RealName == "") {
                $("#txt_en_person_RealName_" + ii).parent("div").find("span").text("必填");
                flag = true;
            }
            //英文姓名
            if (en_person_RealNameEn == "") {
                $("#txt_en_person_RealNameEn_" + ii).next().text("必填");
                flag = true;
            }
            //国籍
            if (en_person_Nationality == "") {
                $("#txt_en_person_Nationality_" + ii).next().text("必填");
                flag = true;
            }
            //出生日期
            if (en_person_Birthday == "") {
                $("#txt_en_person_Birthday_" + ii).next().text("必填");
                flag = true;
            }
            else {
                if (!dataeReg.test(en_person_Birthday)) {
                    $("#txt_en_person_Birthday_" + ii).next().text("格式错误");
                    flag = true;
                }
            }
            /*//手机
            if (en_person_Phone == "") {
            $("#txt_en_person_Phone_" + ii).next().text("必填");
            flag = true;
            }
            else {
            if (!mobileReg.test(en_person_Phone)) {
            $("#txt_en_person_Phone_" + ii).next().text("格式错误");
            flag = true;
            }
            }*/
            //手机【只要输入一个手机即可以提交订单】
            if (en_person_Phone != "") {
                en_phonenum++;
                if (!mobileReg.test(en_person_Phone)) {
                    $("#txt_en_person_Phone_" + ii).next().text("格式错误");
                    flag = true;
                }
            }
            //证件号码
            if (en_person_Type != "-1") {//不选择稍后提供就判断
                if (en_person_Code == "") {
                    $("#txt_en_person_Code_" + ii).next().text("必填");
                    flag = true;
                } else {
                    if (en_person_Type == "0") {//选择了护照
                        if (!hzhaoReg.test(en_person_Code)) {
                            $("#txt_en_person_Code_" + ii).next().text("格式错误");
                            flag = true;
                        }
                    }
                    if (en_person_Type == "1") {//选择了港澳通行证
                        if (!gangaoReg.test(en_person_Code)) {
                            $("#txt_en_person_Code_" + ii).next().text("格式错误");
                            flag = true;
                        }
                    }
                }
            }
            //证件有效期
            if (en_person_Type != "-1") {//不选择稍后提供就判断
                if (en_person_Valiad == "") {
                    $("#txt_en_person_Valiad_" + ii).next().text("必填");
                    flag = true;
                }
                else {
                    if (!dataeReg.test(en_person_Valiad)) {
                        $("#txt_en_person_Valiad_" + ii).next().text("格式错误");
                        flag = true;
                    }
                }
            }
            if (!flag) {
                //提取信息                
                var userType = "0"; //0成人3儿童
                var selectUserId = $.trim($("#txt_en_person_UserId_" + ii).val()); //游客Id
                var cnIsAddorUp = $("#chk_en_person_" + ii).attr("checked"); //是否保存游客信息
                cnIsAddorUp = cnIsAddorUp ? '1' : '0';
                var address = ""; //户籍地
                var qianzhutype = ""; //签注类型
                var qianfadate = "1900-01-01"; //签发日期
                clientArr += "{\"name\":\"" + en_person_RealName + "\",\"type\":\"" + en_person_Type + "\",\"nationality\":\"" + en_person_Nationality + "\",\"no\":\"" + en_person_Code + "\",\"sex\":\"" + en_person_Sex +
                            "\",\"youxiaoqi\":\"" + en_person_Valiad + "\",\"birth\":\"" + en_person_Birthday + "\",\"qianfade\":\"" + en_person_CodeAddress + "\",\"qianzhutype\":\"" + qianzhutype + "\",\"mobile\":\"" + en_person_Phone +
                            "\",\"address\":\"" + address + "\",\"qianfadate\":\"" + qianfadate + "\",\"selectUser\":\"" + selectUserId + "\",\"isUpOrAdd\":\"" + cnIsAddorUp + "\",\"ageType\":\"" + userType + "\",\"enname\":\"" + en_person_RealNameEn + "\"},";
            }
        });
        //******出境 有成人的时候再统计*****//
        if ($("div[id^='div_en_person_']").length > 0) {
            if (en_phonenum == 0) {
                if ($("#txt_en_person_Phone_0")) {
                    $("#txt_en_person_Phone_0").next().text("必填");
                    flag = true;
                }
            }
        }
        //******出境 儿童*****//
        $("div[id^='div_en_child_']").each(function() {
            var ii = $(this).attr("id").substr($(this).attr("id").lastIndexOf("_") + 1);
            var en_child_RealName = $.trim($("#txt_en_child_RealName_" + ii).val());
            var en_child_RealNameEn = $.trim($("#txt_en_child_RealNameEn_" + ii).val());
            var en_child_Nationality = $.trim($("#txt_en_child_Nationality_" + ii).val());
            var en_child_Birthday = $.trim($("#txt_en_child_Birthday_" + ii).val());
            var en_child_Type = $.trim($("#ddl_en_child_Type_" + ii).val());
            var en_child_Code = $.trim($("#txt_en_child_Code_" + ii).val());
            var en_child_Valiad = $.trim($("#txt_en_child_Valiad_" + ii).val());
            var en_child_Sex = $("#ddl_en_child_Sex_" + ii).val();
            var en_child_CodeAddress = $.trim($("#txt_en_child_CodeAddress_" + ii).val()); //签发地
            $("#txt_en_child_RealName_" + ii).parent("div").find("span").text("");
            $("#txt_en_child_RealNameEn_" + ii).next().text("");
            $("#txt_en_child_Nationality_" + ii).next().text("");
            $("#txt_en_child_Birthday_" + ii).next().text("");
            $("#txt_en_child_Code_" + ii).next().text("");
            $("#txt_en_child_Valiad_" + ii).next().text("");
            //中文姓名
            if (en_child_RealName == "") {
                $("#txt_en_child_RealName_" + ii).parent("div").find("span").text("必填");
                flag = true;
            }
            //英文姓名
            if (en_child_RealNameEn == "") {
                $("#txt_en_child_RealNameEn_" + ii).next().text("必填");
                flag = true;
            }
            //国籍
            if (en_child_Nationality == "") {
                $("#txt_en_child_Nationality_" + ii).next().text("必填");
                flag = true;
            }
            //出生日期
            if (en_child_Birthday == "") {
                $("#txt_en_child_Birthday_" + ii).next().text("必填");
                flag = true;
            }
            else {
                if (!dataeReg.test(en_child_Birthday)) {
                    $("#txt_en_child_Birthday_" + ii).next().text("格式错误");
                    flag = true;
                }
            }
            //证件号码
            if (en_child_Type != "-1") {//不选择稍后提供就判断
                if (en_child_Code == "") {
                    $("#txt_en_child_Code_" + ii).next().text("必填");
                    flag = true;
                } else {
                    if (en_child_Type == "0") {//选择了护照
                        if (!hzhaoReg.test(en_child_Code)) {
                            $("#txt_en_child_Code_" + ii).next().text("格式错误");
                            flag = true;
                        }
                    }
                    if (en_child_Type == "1") {//选择了港澳通行证
                        if (!gangaoReg.test(en_child_Code)) {
                            $("#txt_en_child_Code_" + ii).next().text("格式错误");
                            flag = true;
                        }
                    }
                }
            }
            //证件有效期
            if (en_child_Type != "-1") {//不选择稍后提供就判断
                if (en_child_Valiad == "") {
                    $("#txt_en_child_Valiad_" + ii).next().text("必填");
                    flag = true;
                }
                else {
                    if (!dataeReg.test(en_child_Valiad)) {
                        $("#txt_en_child_Valiad_" + ii).next().text("格式错误");
                        flag = true;
                    }
                }
            }
            if (!flag) {
                //提取信息                
                var userType = "3"; //0成人3儿童
                var selectUserId = $.trim($("#txt_en_child_UserId_" + ii).val()); //游客Id
                var cnIsAddorUp = $("#chk_en_child_" + ii).attr("checked"); //是否保存游客信息
                cnIsAddorUp = cnIsAddorUp ? '1' : '0';
                var address = ""; //户籍地
                var qianzhutype = ""; //签注类型
                var qianfadate = "1900-01-01"; //签发日期
                var phone = ""; //手机
                clientArr += "{\"name\":\"" + en_child_RealName + "\",\"type\":\"" + en_child_Type + "\",\"nationality\":\"" + en_child_Nationality + "\",\"no\":\"" + en_child_Code + "\",\"sex\":\"" + en_child_Sex +
                            "\",\"youxiaoqi\":\"" + en_child_Valiad + "\",\"birth\":\"" + en_child_Birthday + "\",\"qianfade\":\"" + en_child_CodeAddress + "\",\"qianzhutype\":\"" + qianzhutype + "\",\"mobile\":\"" + phone +
                            "\",\"address\":\"" + address + "\",\"qianfadate\":\"" + qianfadate + "\",\"selectUser\":\"" + selectUserId + "\",\"isUpOrAdd\":\"" + cnIsAddorUp + "\",\"ageType\":\"" + userType + "\",\"enname\":\"" + en_child_RealNameEn + "\"},";
            }
        });
        //******在线支付游客信息重复判断【姓名、证件号码】*****//
        if (processtype == 1) {
            //姓名
            var personandchild = $("input[id^='txt_ch_person_RealName_'],input[id^='txt_ch_child_RealName_']").length; //成人加儿童的总数
            if (personandchild == otherUserNameArray.length) {//姓名都输入正确值了之后再判断
                $("input[id^='txt_ch_person_RealName_'],input[id^='txt_ch_child_RealName_']").each(function() {
                    var vl = $.trim($(this).val());
                    var usernamecount = 0;
                    for (var i = 0; i < otherUserNameArray.length; i++) {
                        if (otherUserNameArray[i] == vl) {
                            usernamecount++;
                        }
                    }
                    if (usernamecount > 1) {//说明有重复的
                        $(this).parent("div").find("span").text("不能重复");
                        flag = true;
                        return false;
                    }
                });
            }
            //证件号码
            var personcodecount = $("input[id^='txt_ch_person_Code_']").length; //成人证件号码总数
            if (otherUserPassCodeArray.length == personcodecount) {//证件号码都输入正确值了之后再判断
                $("input[id^='txt_ch_person_Code_']").each(function() {
                    var vl = $.trim($(this).val());
                    var codecount = 0;
                    for (var i = 0; i < otherUserPassCodeArray.length; i++) {
                        if (otherUserPassCodeArray[i] == vl) {
                            codecount++;
                        }
                    }
                    if (codecount > 1) {//说明有重复的
                        $(this).next().text("不能重复");
                        flag = true;
                        return false;
                    }
                });
            }
        }
        //******联系人信息*****//
        var link_name = $.trim($("#txt_name").val());
        var link_mobile = $.trim($("#txt_mobile").val());
        var link_email = $.trim($("#txt_email").val());
        var strat_phone = $.trim($("#txt_start_phone").val());
        var end_phone = $.trim($("#txt_end_phone").val());
        //联系人姓名
        if (link_name == "") {
            $("#txt_name").next().text("必填");
            flag = true;
        }
        //联系人手机
        if (link_mobile == "") {
            $("#txt_mobile").next().text("必填");
            flag = true;
        } else {
            if (!mobileReg.test(link_mobile)) {
                $("#txt_mobile").next().text("格式错误");
                flag = true;
            }
        }
        //联系人邮箱
        if (link_email == "") {
            $("#txt_email").next().text("必填");
            flag = true;
        }
        else {
            if (!emailReg.test(link_email)) {
                $("#txt_email").next().text("格式错误");
                flag = true;
            }
        }
        //联系人的固定电话
        var phone = (strat_phone != "") ? strat_phone + "-" + end_phone : end_phone;
        if (phone != "" && !phoneReg.test(phone)) {
            $("#span_phone").text("格式错误");
            flag = true;
        }
        if (flag) {
            //window.location.hash = "";
            //window.location.hash = "userInfo";
            /*定位焦点*/
            $(".userInfo table").find("span").each(function() {
                if ($.trim($(this).text()) == "必填" || $.trim($(this).text()) == "格式错误" || $.trim($(this).text()) == "不能重复") {
                    $(this).prevAll("input").focus();
                    return false;
                }
            });
            /*定位焦点 End*/
            return;
        }
        else {
            if (clientArr && clientArr.length >= 1) {
                clientArr = ",\"client\":[" + clientArr.substr(0, clientArr.length - 1) + "]";
            }
            var userJsonObject = "{\"users\":[{\"uname\":\"" + link_name + "\",\"umobile\":\"" + link_mobile + "\",\"uemail\":\"" + link_email + "\",\"uphone\":\"" + phone + "\"}]" + clientArr + "}";
            userJsonObject = eval("'" + userJsonObject + "'");
            $("#txtHiddenUList").val(userJsonObject); //游客、用户信息
            //备注信息
            var des = $.trim($("#txtDes").val());
            if (des && des != "请输入订单备注") {
                $("#txtHiddenDes").val(des);
            }
            //表单提交
            $("#two_form").attr("action","188_order_3.php");
            document.getElementById("two_form").submit();
        }
    });
    //*************显示上一步、下一步按钮******************//
    $("#gl_submit").css("display", "block");
});
function LoadUserInfo() {
    var ulist = $("#txtHiddenUList").val();

    ulist = ulist != "" ? eval("(" + ulist + ")") : ""; //解析json
    //联系人信息

    if (ulist.users && ulist.users.length > 0) {
        var users = ulist.users[0];
        $("#txt_name").val(users.uname);
        $("#txt_mobile").val(users.umobile);
        $("#txt_email").val(users.uemail);
        //固定电话
        if (users.uphone) {
            var uphone = users.uphone.split('-');
            if (uphone.length > 1) {
                $("#txt_start_phone").val(uphone[0]);
                $("#txt_end_phone").val(uphone[1]);
            }
            else {
                $("#txt_end_phone").val(users.uphone);
            }
        }
    }
    //游客信息
    var mtype = $("#txtHiddenMType").val();

    if (mtype == 3 || mtype == 2) {//国内
	
        if (ulist.client && ulist.client.length > 0) {
            //******初始化国内成人*****//
			
            var person_length = $("div[id^='div_ch_person_']").length; //获取成人的数量
            $("div[id^='div_ch_person_']").each(function(i) {
                var ii = $(this).attr("id").substr($(this).attr("id").lastIndexOf("_") + 1);
                var client = ulist.client[i];
                if (client.isUpOrAdd == "1") {
                    $("#chk_ch_person_" + ii).attr('checked', true); //是否保存
                }
                else {
                    $("#chk_ch_person_" + ii).attr('checked', false);
                }
                $("#txt_ch_person_RealName_" + ii).val(client.name);
                $("#txt_ch_person_UserId_" + ii).val(client.selectUser)//游客Id
                $("#txt_ch_person_Phone_" + ii).val(client.mobile);
                $("#ddl_ch_person_CodeType_" + ii).val(client.type);
                $("#txt_ch_person_Code_" + ii).val(client.no);
                $("#ddl_ch_person_CodeType_" + ii).change(); //触发证件类别的事件
            });
            //******初始化国内儿童*****//
            $("div[id^='div_ch_child_']").each(function(i) {
                var ii = $(this).attr("id").substr($(this).attr("id").lastIndexOf("_") + 1);
                var client = ulist.client[person_length + i]; //获取儿童在所有国内集合中的索引
                if (client.isUpOrAdd == "1") {
                    $("#chk_ch_child_" + ii).attr('checked', true); //是否保存
                }
                else {
                    $("#chk_ch_child_" + ii).attr('checked', false);
                }
                $("#txt_ch_child_RealName_" + ii).val(client.name);
                $("#txt_ch_child_UserId_" + ii).val(client.selectUser)//游客Id
                $("#ddl_ch_child_Sex_" + ii).val(client.sex);
                $("#txt_ch_child_Birthday_" + ii).val(client.birth);
            });
        }
    }
    else { //出境
        if (ulist.client && ulist.client.length > 0) {
            //******初始化出境成人*****//
            var person_length = $("div[id^='div_en_person_']").length; //获取成人的数量
            $("div[id^='div_en_person_']").each(function(i) {
                var ii = $(this).attr("id").substr($(this).attr("id").lastIndexOf("_") + 1);
                var client = ulist.client[i];
                if (client.isUpOrAdd == "1") {
                    $("#chk_en_person_" + ii).attr('checked', true); //是否保存
                }
                else {
                    $("#chk_en_person_" + ii).attr('checked', false);
                }
                $("#txt_en_person_RealName_" + ii).val(client.name);
                $("#txt_en_person_UserId_" + ii).val(client.selectUser)//游客Id
                $("#txt_en_person_RealNameEn_" + ii).val(client.enname); //英文名称
                $("#ddl_en_person_Sex_" + ii).val(client.sex);
                $("#txt_en_person_Nationality_" + ii).val(client.nationality); //国籍
                $("#ddl_en_person_Type_" + ii).val(client.type);
                $("#txt_en_person_Birthday_" + ii).val(client.birth);
                $("#txt_en_person_Code_" + ii).val(client.no);
                $("#txt_en_person_Valiad_" + ii).val(client.youxiaoqi); //证件有效期
                $("#txt_en_person_Phone_" + ii).val(client.mobile);
                $("#txt_en_person_CodeAddress_" + ii).val(client.qianfade); //签发地
                $("#ddl_en_person_Type_" + ii).change(); //触发证件类别的事件
            });
            //******初始化出境儿童*****//
            $("div[id^='div_en_child_']").each(function(i) {
                var ii = $(this).attr("id").substr($(this).attr("id").lastIndexOf("_") + 1);
                var client = ulist.client[person_length + i];
                if (client.isUpOrAdd == "1") {
                    $("#chk_en_child_" + ii).attr('checked', true); //是否保存
                }
                else {
                    $("#chk_en_child_" + ii).attr('checked', false);
                }
                $("#txt_en_child_RealName_" + ii).val(client.name);
                $("#txt_en_child_UserId_" + ii).val(client.selectUser)//游客Id
                $("#txt_en_child_RealNameEn_" + ii).val(client.enname); //英文名称
                $("#ddl_en_child_Sex_" + ii).val(client.sex);
                $("#txt_en_child_Nationality_" + ii).val(client.nationality); //国籍
                $("#ddl_en_child_Type_" + ii).val(client.type);
                $("#txt_en_child_Birthday_" + ii).val(client.birth);
                $("#txt_en_child_Code_" + ii).val(client.no);
                $("#txt_en_child_Valiad_" + ii).val(client.youxiaoqi); //证件有效期
                $("#txt_en_child_CodeAddress_" + ii).val(client.qianfade); //签发地
                $("#ddl_en_child_Type_" + ii).change(); //触发证件类别的事件
            });
        }
    }
}
