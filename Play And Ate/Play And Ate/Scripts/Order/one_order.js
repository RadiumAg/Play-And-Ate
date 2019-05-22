var url_u = "/buy";

$(function () {
    //**抵用券文本框点击事件**//

    // 监听成人数改变事件,增加人数
    $('#bbb').bind('click', function () {

        $("#txtHiddenPersonNum").val(Number($("#txtHiddenPersonNum").val()));
        //$("#txtHiddenNums").val(Number($("#txtHiddenPersonNum").val())+1);						 
        var getjiage = $("#txtHiddenUzaiPrice").val() * $("#txtHiddenPersonNum").val();
        $("#getcr").text($("#txtHiddenPersonNum").val());
        $("#getjiage").text(getjiage);
        //调用计算原价的函数
        sumAll();

        // 保险
        sumbx('ddl_nums_77935');
        sumbx('ddl_nums_77936');

    });

    // 监听成人数改变事件,减少人数
    $('#ccc').bind('click', function () {
        $("#txtHiddenPersonNum").val(Number($("#txtHiddenPersonNum").val()) - 1);
        var getcr = $("#txtHiddenPersonNum").val();

        if (getcr < 1) {
            alert('错误，成人数必须大于等于1');
            $("#txtHiddenPersonNum").val("1");
        }
        else {

            $("#getcr").text(getcr);
            var getjiage = $("#getjiage").text() - $("#txtHiddenUzaiPrice").val();
            $("#getjiage").text(getjiage);
            sumAll();
            sumbxx('ddl_nums_77935');
            sumbxx('ddl_nums_77936');
        }

        //sumAll();																			  
    });


    // 监听儿童数改变事件,增加人数
    $('#ddd').bind('click', function () {
        $("#txtHiddenChildNum").val(Number($("#txtHiddenChildNum").val()) + 1);
        $("#getrt").text($("#txtHiddenChildNum").val());

        if ($("#getrt").text() > 0) {
            var getrtjiage = $("#txtHiddenChildPrice").val() * $("#txtHiddenChildNum").val();
            $("#getrtjiage").text(getrtjiage);
        }
        sumAll();
        sumbx('ddl_nums_77935');
        sumbx('ddl_nums_77936');
    });


    // 监听儿童数改变事件,减少人数
    $('#eee').bind('click', function () {
        $("#txtHiddenChildNum").val(Number($("#txtHiddenChildNum").val()) - 1);
        var getrt = $("#txtHiddenChildNum").val();

        if (getrt < 0) {
            alert('错误，儿童数必须大于等于0');
            $("#txtHiddenChildNum").val("0");
        }
        else {
            $("#getrt").text(getrt);
            var getrtjiage = $("#getrtjiage").text() - $("#txtHiddenChildPrice").val();
            $("#getrtjiage").text(getrtjiage);
            sumAll();
            sumbxx('ddl_nums_77935');
            sumbxx('ddl_nums_77936');
        }


    });

    $("#txtActiveCode").click(function () {
        var code = $("#txtActiveCode").val();
        if (code == "请输入抵扣券编号") {
            $("#txtActiveCode").val("");
            $("#txtActiveCode").css("color", "#000");
        }
    });
    /**所有附加产品的备注隐藏和展示
    $('div[id^="dd_travel_"] table tr td.lt a[id^="atoggle_"]').toggle(function() {
        var o = $(this);
        o.find('span.arrowFlag').text('▲');
        var oP = o.parents('tr').next('tr.trhide').show();
    }, function() {
        var o = $(this);
        o.find('span.arrowFlag').text('▼');
        var oP = o.parents('tr').next('tr.trhide').hide();
    });
	
    //**可用日期的循环展示
    $("select[id^='ddl_date_']").each(function() {
        //删除原来的所有选项
        $(this).find("option").remove();
        var id = $(this).attr("id");
        var relationId = id.substr(id.lastIndexOf("_") + 1); //关系Id，不重复
        var str = $("#txtHiddenDateList_" + relationId).val();
        if (str.length > 0) {
            var list = str.split("$");
            for (var i = 0; i < list.length; i++) {
                $(this).append("<option value=\"" + list[i] + "\">" + list[i].split(",")[1] + "</option>");
                //给价格和单位赋初始值，取使用日期中的第一个相应的价格
                $("#td_price_" + relationId).text(list[0].split(",")[2]);
            }
        }
        else {
            $("#tr_" + relationId).next().remove(); //下面的remark也隐藏
            $("#tr_" + relationId).remove(); //隐藏这行，因为没有日期可卖。
            $(this).append("<option value=\"无日期选择\">无日期选择</option>");
        }
    });
	*/
    //**所有的份数都从0开始到出行人数**//
    $("div[id^='dd_travel_'] select[id^='ddl_nums_']").each(function () {
        //删除原来的所有选项
        var id = $(this).attr("id");
        var relationId = id.substr(id.lastIndexOf("_") + 1); //关系Id，不重复
        //清除原来的
        $(this).find("option").remove();
        var personnums = $("#txtHiddenNums").val();
        //判断该附加产品是否是“必买品[包含]”，如果是的话就显示出行人数，否则可以选择购买人数//
        var includeEnable = $("#txtHiddenAddProductIncludeEnable_" + relationId).val(); //获取是否包含的值
        var valuationType = $("#txtHiddenValuationType_" + relationId).val(); //计价方式【1->按照行人数计价，0->按照订单数计价】
        var defaultNums = $("#txtHiddenDefaultNums_" + relationId).val(); //按照行人数的默认值
        var defaultOrderNums = $("#txtHiddenDefaultOrderNums_" + relationId).val(); //按照订单数计价
        var isUserPersonType = $("#txtHiddenIsUserPersonType_" + relationId).val(); //适用人群 0->通用,1->成人,2->儿童
        var addProductTypeId = $("#txtHiddenAddProductTypeId_" + relationId).val(); //附加产品类型
        if (includeEnable == 1) {//按订单数计价就必须包含
            if (valuationType == 1) {
                $(this).append("<option value=\"" + defaultNums + "\">" + defaultNums + "</option>"); //按行人数计价
                personnums = defaultNums;
            } else {
                $(this).append("<option value=\"" + defaultOrderNums + "\">" + defaultOrderNums + "</option>"); //按订单数计价
                personnums = defaultOrderNums;
            }
            /*开始计算总和和打钩图片的显示*/
            var price = $("#td_price_" + relationId).text(); //附加产品单价
            var selectdate = $("#ddl_date_" + relationId).val(); //可以使用日期
            if (selectdate != "无日期选择") {
                if ($("#txtHiddenIsFreeBaoxian_" + relationId) && $("#txtHiddenIsFreeBaoxian_" + relationId).val() == 1) {//赠送保险产品
                    $("#td_total_" + relationId).text("0"); //显示总价为0
                }
                else {
                    $("#td_total_" + relationId).text(parseFloat(personnums * price)); //显示总价
                }
            }
            else {
                //$(this).val("0"); //还是选择0
                $(this).find("option[value=0]").attr("selected", "true");
            }
            //调用计算原价的函数
            sumAll();
        }
        else {//一定是按照行人数计价
            if (isUserPersonType == 1) {
                personnums = $("#txtHiddenPersonNum").val(); //只到成人数
            }
            else if (isUserPersonType == 2) {
                personnums = $("#txtHiddenChildNum").val(); //只到儿童数
            }
            personnums = defaultNums; //最大是计算出的默认值
            for (var i = 0; i <= personnums; i++) {
                //$(this).append("<option value=\"" + i + "\">" + i + "</option>");//这句IE6不兼容，所以换成下面的方式。

                var obj = document.getElementById($(this).attr("id"));
                var op = new Option(i, i);
                obj.options.add(op);
            }
            if (addProductTypeId == 3) {
                //如果是保险产品则默认选择最大值
                if (valuationType == 1) {//按照行人数计价
                    $(this).val(defaultNums); //默认选中默认值
                    /*开始计算总和和打钩图片的显示*/
                    var price = $("#td_price_" + relationId).text(); //附加产品单价
                    var selectdate = $("#ddl_date_" + relationId).val(); //可以使用日期
                    if (selectdate != "无日期选择") {
                        if ($("#txtHiddenIsFreeBaoxian_" + relationId) && $("#txtHiddenIsFreeBaoxian_" + relationId).val() == 1) {//赠送保险产品
                            $("#td_total_" + relationId).text("0"); //显示总价为0
                        }
                        else {
                            $("#td_total_" + relationId).text(parseFloat(defaultNums * price)); //显示总价
                        }
                    }
                    else {
                        $(this).val("0"); //还是选择0
                    }
                    //调用计算原价的函数
                    sumAll();
                }
            }
        }
    });
    //**份数的改变事件**//
    $("div[id^='dd_travel_'] select[id^='ddl_nums_']").each(function () {
        $(this).change(function () {
            var id = $(this).attr("id");
            var relationId = id.substr(id.lastIndexOf("_") + 1); //关系Id，不重复
            var personNums = $(this).val(); //购买份数
            var price = $("#td_price_" + relationId).text(); //附加产品单价
            var selectdate = $("#ddl_date_" + relationId).val(); //可以使用日期
            if (selectdate != "无日期选择") {
                if ($("#txtHiddenIsFreeBaoxian_" + relationId) && $("#txtHiddenIsFreeBaoxian_" + relationId).val() == 1) {//赠送保险产品
                    $("#td_total_" + relationId).text("0"); //显示总价为0
                }
                else {
                    $("#td_total_" + relationId).text(parseFloat(personNums * price)); //显示总价
                }
            }
            else {
                $(this).val("0"); //还是选择0
            }
            //调用计算原价的函数
            sumAll();
        });
    });
    //**日期不可编辑的时候查看该出发日期是否有设定价格，不设定价格则这个Tr隐藏**//
    $("input[id^='txtHiddenAddProductPdateEnable_']").each(function () {
        var id = $(this).attr("id");
        var relationId = id.substr(id.lastIndexOf("_") + 1); //关系Id，不重复
        if ($(this).val() == 0) {
            $("#tr_" + relationId).next().remove(); //下面的remark也隐藏
            $("#tr_" + relationId).remove();
        }
    });
    //**可用日期切换时改变价格和单位**//
    $("select[id^='ddl_date_']").each(function () {
        $(this).change(function () {
            var id = $(this).attr("id");
            var relationId = id.substr(id.lastIndexOf("_") + 1); //关系Id，不重复
            var v = $(this).val();
            //重新赋值 单价和单位
            $("#td_price_" + relationId).text(v.split(",")[2]);
            //重新计算后面的总价格
            var personNums = $("#ddl_nums_" + relationId).val(); //购买份数
            var price = $("#td_price_" + relationId).text(); //附加产品单价
            if ($("#txtHiddenIsFreeBaoxian_" + relationId) && $("#txtHiddenIsFreeBaoxian_" + relationId).val() == 1) {//赠送保险产品
                $("#td_total_" + relationId).text("0"); //显示总价为0
            }
            else {
                $("#td_total_" + relationId).text(parseFloat(personNums * price)); //显示总价
            }
            //调用计算原价的函数
            sumAll();
        });
    });
    //**初始化金币抵扣人数**//
    initCutUb();
    //**金币人数改变事件**//
    $('#ddl_nums_person').bind('keyup', function () {
        this.value = this.value.replace(/\D/g, '');
        if (this.value == '') {
            this.value = 0;
        }
        this.value = parseInt(this.value);
        var all = parseInt($("#span_allScore").text()); //账户余额
        var canCut = parseInt($("#span_canCutScore").text()); //每个人可以抵扣多少金币
        var personnums = parseInt($("#txtHiddenNums").val()); //订单总共几个人
        var total = parseFloat(canCut) * parseInt(personnums); //总共可以抵扣多少 上限
        total = roundd(total, 0);

        if (parseInt(this.value) > parseInt(all)) {
            alert("您的金币余额不足!");
            $(this).val("0");
            $("#span_cutScore").text("0");
            //启用抵用券
            $("#txtActiveCode").removeAttr("readonly");
            $("#txtActiveCode").removeAttr("disabled");
            $("#txtActiveCode").val("请输入抵扣券编号").css("color", "#ccc");
            $("#btnActionCode").removeAttr("disabled").css("color", "#000");
        }
        else {
            if (parseInt(this.value) > parseInt(total)) {
                //输入的金币超过抵扣上限
                alert("此次使用金币必须小于￥" + total);
                $(this).val("0");
                $("#span_cutScore").text("0");
                //启用抵用券
                $("#txtActiveCode").removeAttr("readonly");
                $("#txtActiveCode").removeAttr("disabled");
                $("#txtActiveCode").val("请输入抵扣券编号").css("color", "#ccc");
                $("#btnActionCode").removeAttr("disabled").css("color", "#000");
            }
            else {
                $("#span_cutScore").text(parseInt(this.value));
                if (this.value == '0') {
                    //启用抵用券
                    $("#txtActiveCode").removeAttr("readonly");
                    $("#txtActiveCode").removeAttr("disabled");
                    $("#txtActiveCode").val("请输入抵扣券编号").css("color", "#ccc");
                    $("#btnActionCode").removeAttr("disabled").css("color", "#000");
                }
                else {
                    //禁用抵用券
                    $("#txtActiveCode").attr("readonly", "readonly");
                    $("#txtActiveCode").attr("disabled", "disabled");
                    $("#txtActiveCode").val("请输入抵扣券编号").css("color", "#ccc");
                    $("#span_ActiveCode").text("0");
                    $("#btnActionCode").attr("disabled", "disabled").css("color", "#ccc");
                }
            }
        }
        //调用计算原价的函数
        sumAll();
    });
    //**抵用券点击事件**//
    $("#btnActionCode").click(function () {
        var code = $.trim($("#txtActiveCode").val());
        var pid = $("#txtHiddenPId").val();
        var total = $("#proTotal").text(); //单纯的产品价格
        if (code == "" || code == "请输入抵用券编号") {
            $("#span_ActiveCode").text(0);
            alert("请输入抵用券编号！");
        }
        else {
            $.ajax({
                type: "POST",
                url: url_u + "/proc_activeCode/" + code + "/" + pid + "/" + total,
                success: function (msg) {
                    if (msg == 'error' || msg == "0") {
                        alert("抵用券编号输入错误！");
                        $("#span_ActiveCode").text(0);
                    }
                    else if (msg == "-1") {
                        alert("该抵用券已经被使用过！");
                        $("#span_ActiveCode").text(0);
                    }
                    else if (msg == "-2") {
                        alert("该线路不能使用该抵用券！");
                        $("#span_ActiveCode").text(0);
                    }
                    else if (msg == "-3") {
                        alert("该线路的所在区域不是该抵用券的使用范围！");
                        $("#span_ActiveCode").text(0);
                    }
                    else if (msg == "-4") {
                        alert("此次消费还未到该抵用券指定的金额！");
                        $("#span_ActiveCode").text(0);
                    }
                    else {
                        if (msg != "" && !isNaN(msg)) {
                            $("#span_ActiveCode").text(msg);
                            $("#txtHiddenActiveCode").val(code); //将编号存入到隐藏域中，在提交按钮就做对比，放置客户自行修改
                            //禁用金币
                            $("#ddl_nums_person").val(0);
                            $("#span_cutScore").text(0);
                            //调用计算原价的函数
                            sumAll();
                        }
                    }
                    sumAll();
                } //返回
            }); //end ajax
        }
        //调用计算原价的函数
        sumAll();
    });
    //调用计算原价的函数
    sumAll();
    //**页面提交**//
    $("#btn_Next").click(function () {
        /****************************附加产品***********************************/
        var add = "";
        $("tr[id^='tr_']").each(function () {
            var id = $(this).attr("id");
            var relationId = id.substr(id.lastIndexOf("_") + 1); //关系Id，不重复
            //var addNums = $("div[id^='dd_travel_'] select[id='ddl_nums_" + relationId + "']").val(); //购买份数
            var addNums = document.getElementById("ddl_nums_" + relationId).value;
            if (addNums != "0") {
                //将购买份数不为0的加入字符串中
                var addProId = $("#txtHiddenAddProductId_" + relationId).val(); //附加产品Id
                var addGoDateId = ""; //最终选择日期Id(日期详细表Id)
                var addGoDate = ""; //最终选择日期
                var addPrice = ""; //附加产品单价
                var addProfit = ""; //附加产品成本
                var addUnits = $('#hdunits_' + relationId).val(); //单位
                var dataList = $("#ddl_date_" + relationId).val(); //选择的使用日期
                if ($("#ddl_date_" + relationId) && dataList) {
                    //有可选择日期
                    addGoDateId = dataList.split(",")[0]; //最终选择日期Id(日期详细表Id)
                    addGoDate = dataList.split(",")[1]; //最终选择日期
                    addPrice = dataList.split(",")[2]; //附加产品单价
                    addProfit = dataList.split(",")[3]; //附加产品成本
                }
                else {
                    //没有可选择日期
                    addGoDateId = "0"; //最终选择日期Id(日期详细表Id)
                    addGoDate = "1900-01-01"; //最终选择日期
                    addPrice = $.trim($("#td_price_" + relationId).text()); //附加产品单价
                    addProfit = $("#txtHiddenAddProductProfit_" + relationId).val(); //附加产品成本
                }
                var addProTypeId = $("#txtHiddenAddProductTypeId_" + relationId).val(); //附加产品所属类别Id
                var addTotal = $.trim($("#td_total_" + relationId).text()); //附加产品总金额
                var sHAddtionPriceId = $("#txtHiddenAddProductSHAddtionPriceId_" + relationId).val(); //上航附加产品价格ID
                var sHAddtionCountId = $("#txtHiddenAddProductSHAddtionCountId_" + relationId).val(); //上航附加配额价格ID
                var addSupplierNo = $("#txtHiddenAddProductSupplierNO_" + relationId).val(); //附加产品上航编号
                var addName = $("#txtHiddenAddProductName_" + relationId).val(); //附加产品名称
                if (addPrice) {
                    add += relationId + "^" + addProId + "^" + addNums + "^" + addPrice + "^" + addProfit + "^" + addGoDate + "^" + addGoDateId + "^" + addTotal + "^" + addProTypeId + "^" + addUnits + "^" + sHAddtionPriceId + "^" + sHAddtionCountId + "^" + addSupplierNo + "^" + addName + "$";
                }
            }
        });
        if (add.length > 0) {
            add = add.substr(0, add.length - 1); //将最后一个$截取
        }
        $("#txtSubmitHiddenAdd").val(add); //将多个附加产品拼成字符串放在隐藏域中
        /****************************金币使用情况***********************************/
        var ubNums = 1; //金币使用人数
        var ubTotal = $.trim($("#span_cutScore").text()); //金币抵扣金额
        var usescore = $("#txtHiddenUseScore").val(); //能用的总金币
        var allscore = $("#txtHiddenAllScore").val(); //总金币
        if (parseInt(ubTotal) > parseInt(usescore) || parseInt(ubTotal) > parseInt(allscore)) {
            alert("金币抵扣过多，请修改！");
            return;
        }
        var ubType = "score"; //抵扣类型
        var ub = ubNums + "," + ubTotal + "," + ubType;
        $("#txtSubmitHiddenUb").val(ub); //金币情况放在隐藏域中
        /****************************抵扣券使用情况***********************************/
        var activeCode = $("#txtHiddenActiveCode").val(); //抵扣券
        var codeTotal = $.trim($("#span_ActiveCode").text()); //抵用券金额
        if (activeCode != "" && codeTotal != "0") {
            ubType = "code"; //抵用券类型
            ub = activeCode + "," + codeTotal + "," + ubType;
            $("#txtSubmitHiddenUb").val(ub); //抵扣券情况放在隐藏域中
        }
        var godate = document.getElementById('pTime').value;
        //表单提交
        if (godate != null && godate != "点击选择出发日期") {
            if ($("#txtHiddenPersonNum").val() > 0) {
                $("#one_form").submit();
            }
            else {
                alert("成人数须大于0！");
                document.getElementById('txtHiddenPersonNum').focus();
            }
        }
        else if (godate == "点击选择出发日期") {
            alert("请选择出发日期");
            document.getElementById('calenderPart').style.display = "block";
        }
    });
    //**控制附加产品没有合适的出发日期就不显示**//
    ControlleTable();
    //调用方法从下一个页面跳转过来的方法
    init_onepage();
    //当页面都加载完才显示下面的提交按钮
    $("#gl_return").css("display", "block");
});
//**计算原价和优惠价等信息**//
function sumAll() {
    $("#AddPList").html("");
    $("#DeKouList").html("");
    $("#AddPList").show();
    $("#DeKouList").show();
    var person = $("#txtHiddenPersonNum").val(); //成人数
    var child = $("#txtHiddenChildNum").val(); //儿童数
    var person_price = $("#txtHiddenUzaiPrice").val(); //成人价
    var child_price = $("#txtHiddenChildPrice").val(); //儿童价
    /**附加产品 Start**/
    //var html = "";
    //var addProTotal = 0; //附加产品的总金额
    //$("div[id^='dd_travel_'] select[id^='ddl_nums_'][value!='0']").each(function (i) {
    //    if ($(this).val() != 0) {

    //        var relationId = $(this).attr("id").substr($(this).attr("id").lastIndexOf("_") + 1);
    //        var title = $("#a_" + relationId).text(); //附加产品名称
    //        var gounum = $("#ddl_nums_" + relationId).val(); //附加产品购买份数

    //        //  var gounum = document.getElementById("ddl_nums_" + relationId).value; //附加产品购买份数

    //        var price = $.trim($("#td_price_" + relationId).text()); //附加产品单价
    //        var total = $.trim($("#td_total_" + relationId).text()); //总价
    //        if ($("div[id^='dd_travel_'] select[id^='ddl_nums_'][value!='0']").length - 1 == i) {
    //            //最后一行加样式
    //            html += "<div class=\"last\"><p>" + title + "</p><p><b>￥<s>" + total + "</s></b>" + gounum + "份×￥" + price + "</p></div>";
    //        }
    //        else {
    //            html += "<div><p>" + title + "</p><p><b>￥<s>" + total + "</s></b>" + gounum + "份×￥" + price + "</p></div>";
    //        }
    //        addProTotal += parseFloat(total);
    //    }
    //});
    //if (html != "") {
    //    $("#AddPList").append("<p class=\"p1\">附加产品</p>" + html);
    //}
    ///**附加产品 End**/
    //var cutTotal = $("#span_cutScore").text(); //金币抵扣金额
    //var codeTotal = $("#span_ActiveCode").text(); //抵扣券金额
    //if (cutTotal != 0) {
    //    $("#DeKouList").append("<p class=\"p1\">优惠抵扣</p><p><b>￥-<s>" + cutTotal + "</s></b>金币抵扣</p>");
    //}
    //if (codeTotal != 0) {
    //    $("#DeKouList").append("<p class=\"p1\">优惠抵扣</p><p><b>￥-<s>" + codeTotal + "</s></b>抵用券抵扣</p>");
    //}
    //if ($("#AddPList").html() == "") {
    //    $("#AddPList").hide();
    //}
    //if ($("#DeKouList").html() == "") {
    //    $("#DeKouList").hide();
    //}
    //应付金额
    var all = parseFloat(person * person_price) + parseFloat(child * child_price);
    if (all < 0) {
        $("#offerPrice").text(0);
        document.getElementById("allp").value = 0;
    }
    else {
        $("#offerPrice").text(all);
        document.getElementById("allp").value = all;
    }
}
//**页面是从下一个页面跳转过来的**//
function init_onepage() {
    var yes = $("#txtHiddenYesOrNo").val();
    if (yes == "yes") {
        //开始赋值

        var add = $("#txtSubmitHiddenAdd").val(); //附加产品的字符串
        var ub = $("#txtSubmitHiddenUb").val(); //金币的使用情况

        var addList = add.split("$");

        //开始循环全部附加产品
        $("tr[id^='tr_']").each(function () {

            var id = $(this).attr("id");

            var relationId = id.substr(id.lastIndexOf("_") + 1); //关系Id，不重复

            for (var i = 0; i < addList.length; i++) {
                //初始化之前已经选择的值
                if (addList[i].split("^")[0] == relationId) {
                    //***************使用日期*****************//
                    var dataList = $("#ddl_date_" + relationId).val(); //选择的使用日期
                    if ($("#ddl_date_" + relationId) && dataList) {
                        //有日期选择
                        var dateValue = addList[i].split("^")[6] + "," + addList[i].split("^")[5] + "," + addList[i].split("^")[3] + "," + addList[i].split("^")[4];
                        $("#ddl_date_" + relationId).val(dateValue); //给日期赋值
                        var v = $("#ddl_date_" + relationId).val(); //重新获取Data所选的值
                        //重新赋值 单价和单位
                        $("#td_price_" + relationId).text(v.split(",")[2]);
                    }
                    else {
                        //无日期选择
                    }
                    //***************使用日期 end*****************//
                    $("div[id^='dd_travel_'] select[id='ddl_nums_" + relationId + "']").val(addList[i].split("^")[2]); //购买份数


                    //重新计算后面的总价格
                    var personNums = parseFloat($("#ddl_nums_" + relationId).val()); //购买份数


                    var price = parseFloat($("#td_price_" + relationId).text()); //附加产品单价
                    if ($("#txtHiddenIsFreeBaoxian_" + relationId) && $("#txtHiddenIsFreeBaoxian_" + relationId).val() == 1) {//赠送保险产品
                        $("#td_total_" + relationId).text("0"); //显示总价为0
                    }
                    else {
                        $("#td_total_" + relationId).text(parseFloat(personNums * price)); //显示总价
                    }
                }
            }
        });
        //***************金币*****************//
        var ubList = ub.split(",");
        if (ubList[2] == "score") {//抵扣金币

            $("#ddl_nums_person").val(ubList[1]); //金币使用金额
            if (ubList[1] == "") {
                ubList[1] = 0;
            }
            $("#span_cutScore").text(ubList[1]); //金币抵扣金额
            if ($("#span_cutScore").text() != "0") {
                //禁用抵扣券
                $("#txtActiveCode").attr("readonly", "readonly");
                $("#txtActiveCode").attr("disabled", "disabled");
                $("#txtActiveCode").val("请输入抵扣券编号").css("color", "#ccc");
                $("#span_ActiveCode").text("0");
                $("#btnActionCode").attr("disabled", "disabled").css("color", "#ccc");
            }
            else {
                //启用抵用券
                $("#txtActiveCode").removeAttr("readonly");
                $("#txtActiveCode").removeAttr("disabled");
                $("#txtActiveCode").val("请输入抵扣券编号").css("color", "#ccc");
                $("#btnActionCode").removeAttr("disabled").css("color", "#000");
            }
        } else {//使用抵用券
            //禁用金币的
            $("#ddl_nums_person").val("0");
            $("#span_cutScore").text("0");
            //启用抵用券的
            $("#txtActiveCode").val(ubList[0]).css("color", "#000");
            $("#span_ActiveCode").text(ubList[1]);
            $("#txtHiddenActiveCode").val(ubList[0]);
        }
        sumAll(); //重新计算
    }
}
//**控制附加产品没有合适的出发日期就不显示**//
function ControlleTable() {
    $("div[id^='dd_travel_'] table[id^='table_']").each(function () {
        var count = 0;
        $(this).find("tr").each(function () {
            count++;
        });
        if (count == 1 || count == 2) {
            //如果只有一行显示（标题行）那么则隐藏这个模块
            var ddl_travel_id = $(this).parent().attr("id");
            $("#" + ddl_travel_id).prev().remove(); //table外面的附加产品标题也一起删除
            $("#" + ddl_travel_id).remove(); //删除掉
        }
    });
    if ($("div[id^='dd_travel_']").length == 0) {
        $("#h2_proadd").remove(); //删除“附加产品”标题
    }
}
//**初始化金币抵扣人数**//
function initCutUb() {
    var all = $.trim($("#span_allScore").text()); //账户余额
    var canCut = $.trim($("#span_canCutScore").text()); //每个人可以抵扣多少金币
    var personnums = $("#txtHiddenNums").val(); //订单总共几个人
    var can_total = parseFloat(canCut) * parseInt(personnums); //总共可以抵扣多少
    can_total = roundd(can_total, 1);
    if (all > 0) {
        if (all > can_total) {
            //如果账户余额大于总共抵扣金额
            $("#ddl_nums_person").val(can_total);
            $("#span_cutScore").text(can_total);
            // $("#span_cutScore1").value=can_total;
            //禁用抵用券
            $("#txtActiveCode").attr("readonly", "readonly");
            $("#txtActiveCode").attr("disabled", "disabled");
            $("#txtActiveCode").val("请输入抵扣券编号").css("color", "#ccc");
            $("#span_ActiveCode").text("0");
            $("#btnActionCode").attr("disabled", "disabled").css("color", "#ccc");
        }
        else {
            //否则显示余额
            $("#ddl_nums_person").val(all);
            $("#span_cutScore").text(all);
            //禁用抵用券
            $("#txtActiveCode").attr("readonly", "readonly");
            $("#txtActiveCode").attr("disabled", "disabled");
            $("#txtActiveCode").val("请输入抵扣券编号").css("color", "#ccc");
            $("#span_ActiveCode").text("0");
            $("#btnActionCode").attr("disabled", "disabled").css("color", "#ccc");
        }
    }
    else {
        //如果账户余额大于总共抵扣金额
        $("#ddl_nums_person").val("0");
        $("#span_cutScore").text("0");
        //启用抵用券
        $("#txtActiveCode").removeAttr("readonly");
        $("#txtActiveCode").removeAttr("disabled");
        $("#txtActiveCode").val("请输入抵扣券编号").css("color", "#ccc");
        $("#btnActionCode").removeAttr("disabled").css("color", "#000");
    }
    sumAll(); //重新计算
}


function roundd(v, e) {

    var t = 1;

    for (; e > 0; t *= 10, e--);

    for (; e < 0; t /= 10, e++);

    return Math.round(v * t) / t;

}

function sumbx(dd) {
    var i = Number($("#txtHiddenPersonNum").val()) + Number($("#txtHiddenChildNum").val());
    var obj = document.getElementById(dd);
    var op = new Option(i, i);
    obj.options.add(op);

    //$("#"+dd).find("option[value="+i+"]").attr("selected", "true");
    //obj.options.remove(2);


}


function sumbxx(dd) {
    var i = Number($("#txtHiddenPersonNum").val()) + Number($("#txtHiddenChildNum").val()) + 1;
    var obj = document.getElementById(dd);
    //var op = new Option(i, i);
    //obj.options.add(op);
    obj.options.remove(i);


}