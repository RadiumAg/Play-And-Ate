$(function () {
    jQuery.validator.addMethod("isMobile", function (value, element) {
        var length = value.length;
        var mobile = /^1[34578]\d{9}$/;/*/^1(3|4|5|7|8)\d{9}$/*/
        return this.optional(element) || (length == 11 && mobile.test(value));
    }, "请正确填写您的手机号码");
    jQuery.validator.addMethod("isIdNumber", function (value, element) {
        let IdCard = /^(\d{15}$|^\d{18}$|^\d{17}(\d|X|x))$/;
        return this.optional(element) || IdCard.test(value);
    }, "身份证格式不正确");
    jQuery.validator.addMethod("isEmail", function (value, element) {
        let email = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
        return this.optional(element) || email.test(value);
    }, "邮箱格式不正确");
    jQuery.validator.addMethod("isTel", function (value, element) {
        let tel = /^((\(\d{3}\))|(\d{3}\-))?(\(0\d{2,3}\)|0\d{2,3}-)?[1-9]\d{6,7}$/;
        return this.optional(element) || tel.test(value + $("txt_start_phone").val());
    }, "固定电话格式不正确");
});
/*解决Jquery validate验证插件验证相同name的代码*/
$(function () {
    if ($.validator) {
        $.validator.prototype.elements = function () {
            var validator = this,
                rulesCache = {};
            return $([]).add(this.currentForm.elements)
                .filter(":input")
                .not(":submit, :reset, :image, [disabled]")
                .not(this.settings.ignore)
                .filter(function () {
                    var elementIdentification = this.id || this.name;
                    !elementIdentification && validator.settings.debug && window.console && console.error("%o has no id nor name assigned", this);
                    if (elementIdentification in rulesCache || !validator.objectLength($(this).rules()))
                        return false;
                    rulesCache[elementIdentification] = true;
                    return true;
                });
        };
    }
});
/*解决Jquery validate验证插件验证相同name的代码*/

/*关闭自动验证*/
$("#form1").submit(function () {
    return false;
});
/*关闭自动验证*/
$(function () {
    $("#form1").validate({
        debug: true,
        rules: {
            name: {
                maxlength: 5,
                required: true,
            },
            phone: {
                required: true,
                isMobile: true,
            },
            CardId: {
                required: true,
                isIdNumber: true,
            },
            txt_name: {
                required: true,
            },
            txt_mobile: {
                required: true,
            },
            txt_email: {
                required: true,
                isEmail: true,
            },
            txt_end_phone: {
                isTel: true,
            },
        },
        messages: {
            name: {
                maxlength: "格式不对！",
                required: "必填!"
            },
            phone: {
                required: "必填!",
                isMobile: "格式不对！"
            },
            CardId: {
                required: "必填!",
                isIdNumber: "格式不对！"
            },
            txt_name: {
                required: "必填!"
            },
            txt_mobile: {
                required: "必填!",
                isMobile: "格式不对！"
            },
            txt_email: {
                required: "必填!",
                isEmail: "格式不对",
            },
            txt_end_phone: {
                isTel: "格式不对",
            }
        }
    });
})


$(function () {
    lone();
    //function lone() {
    //    var sourceNode = document.getElementById("div_ch_person_0"); // 获得被克隆的节点对象 
    //    var GetLength = document.getElementById("Content_GetLength").innerHTML; //获取循环的次数
    //    console.log(GetLength);
    //    for (var i = 1; i < GetLength; i++) {
    //        var clonedNode = sourceNode.cloneNode(true); // 克隆节点 
    //        clonedNode.setAttribute("id", "div_ch_person_" + i); // 修改一下id 值，避免id 重复 
    //        sourceNode.parentNode.appendChild(clonedNode); // 在父节点插入克隆的节点 
    //    }
    //}
    function lone() {
        let length = $("#Content_GetLength").html();
        for (var i = 0; i < length; i++) {
            let html = ` <div class="userType userTypeAdault" id="div_ch_person_` + i + `">
            <div class="hd">
                <label>
                    <input type="checkbox" checked="checked" id="chk_ch_person"`+ i + `/>保存到常用姓名
                                </label>
                成人游客：
                                <div class="tip">
                    填写说明
                                    <div style="display: none;">
                        <p class="smname">
                            填写说明:
                                        </p>
                        <p>
                            1、乘客姓名必须与登机所持证件一致。<br />
                            2、持护照登机，如使用中文姓名，请确保护照上有相应的中文姓名。<br />
                            3、持护照登机的外宾，请以姓在前名在 后的方式填写，例：Zhang（姓）/Sam（名），不区分大小写。<br />
                            4、英文名字长度不超过29个字符，过长请使用缩写。<br />
                            5、名字中含生僻字可直接输入拼音代替。例：“王麙”可输入为“王yan”或者“王-yan”。<br />
                        </p>
                    </div>
                </div>
            </div>
            <div class="bd">
                <table width="100%" cellpadding="0" cellspacing="0" class="tb1">
                    <tbody>
                        <tr>
                            <td class="td1">
                                <i>*</i> 真实姓名：
                            </td>
                            <td>
                                <div class="floatDiv guestInputList">
                                    <input class="input1"  name="name" id="txt_ch_person_RealName_`+ i + `" />
                                    <ul id="ul_ch_person" style="display: none;">
                                        <li style="border-bottom: solid 1px #98bc86; color: #ccc;">常用游客信息</li>
                                        <li>
                                            <a des="asd,0,132356132165414,0,1900-01-01,13246516815,0,1,0asd,0,132356132165414,0,1900-01-01,13246516815,0,1,0asd,0,132356132165414,0,1900-01-01,13246516815,asdD,1,0asdD,0,132356132165415,0,1900-01-01,13246516815,0,1,0eeee,0,112321232222222221,0,1900-01-01,1323">asd
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </td>
                            <td class="td1">
                                <i>*</i> 手机：
                                            </td>
                            <td>
                                <div class="floatDiv">
                                    <input class="input1" name="phone" id="txt_ch_person_Phone_`+ i + `" />
                                </div>
                            </td>
                        </tr>
                        <tr>
                            <td class="td1">
                                <i>*</i> 证件类别：
                                            </td>
                            <td>
                                <select name="select" style="width: 162px;" id="ddl_ch_person_CodeType_`+ i + `">
                                    <option value="1" selected="selected">身份证</option>
                                    <option value="2">学生证</option>
                                    <option value="3">军官证</option>
                                    <option value="4">退休证</option>
                                    <option value="6">护照</option>
                                    <option value="其他">其他</option>
                                </select>
                            </td>
                            <td class="td1" id="td_ch_person_CodeTitle">
                                <i>*</i> 证件号码：
                                            </td>
                            <td id="td_ch_person_CodeInput_2">
                                <input class="input1" name="CardId"  id="txt_ch_person_Code_`+ i + `" />
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>`;
            $("#adult_information").append(html);
        }
    }
    //返回上一页时呈现上一页原有数据
    if (sessionStorage.getItem("dat") != null & sessionStorage.getItem("crsl") != null) {
        var crrs = sessionStorage.getItem("crsl");
        var dat = JSON.parse(sessionStorage.getItem("dat"));
        for (var i = 0; i < crrs; i++) {
            var cName = $("#div_ch_person_" + i + " input[name=name]").val(dat[i].cName);
            var cardTypeId = $("#div_ch_person_" + i + " select[name=select]").val(dat[i].cardTypeId);
            var carId = $("#div_ch_person_" + i + " input[name=CardId]").val(dat[i].carId);
            var phone = $("#div_ch_person_" + i + " input[name=phone]").val(dat[i].phone);
        }
    }
    if (sessionStorage.getItem("Lxname") != null) {
        var lxname = sessionStorage.getItem("Lxname");
        $("#txt_name").val(lxname);
    }
    if (sessionStorage.getItem("Lxmobile") != null) {
        var lxmobile = sessionStorage.getItem("Lxmobile");
        $("#txt_mobile").val(lxmobile);
    }
    if (sessionStorage.getItem("Lxemail") != null) {
        var lxemail = sessionStorage.getItem("Lxemail");
        $("#txt_email").val(lxemail);
    }
    if (sessionStorage.getItem("Lxphone") != null) {
        var lxphone = sessionStorage.getItem("Lxphone");
        $("#txt_start_phone").val(lxphone);
    }
})

if (sessionStorage.getItem("Order") == null) {
    sessionStorage.setItem("Order", document.referrer);
}
//实现返回上一页不刷新
$(function () {
    $("#btn_pre").click(function () {
        var datat = []; //传递成人信息数组
        var name = $("#Content_GetLength").text(); //保存成人数量
        for (var i = 0; i < name; i++) {
            var cName = $("#div_ch_person_" + i + " input[name=name]").val();
            var cardTypeId = $("#div_ch_person_" + i + " select[name=select]").val();
            var carId = $("#div_ch_person_" + i + " input[name=CardId]").val();
            var phone = $("#div_ch_person_" + i + " input[name=phone]").val();
            var person = { cName: cName, cardTypeId: cardTypeId, carId: carId, phone: phone };
            datat.push(person); //将信息存入数组
        }
        //获得联系人信息
        var Lxname = $("#txt_name").val();
        var Lxmobile = $("#txt_mobile").val();
        var Lxemail = $("#txt_email").val();
        var Lxphone = $("#txt_start_phone").val() + "-" + $("#txt_end_phone").val();
        sessionStorage.setItem("dat", JSON.stringify(datat));
        sessionStorage.setItem("Lxname", Lxname);
        sessionStorage.setItem("Lxmobile", Lxmobile);
        sessionStorage.setItem("Lxemail", Lxemail);
        sessionStorage.setItem("Lxphone", Lxphone);
        sessionStorage.setItem("crsl", name);
        //window.location.href = document.referrer;
        //window.history.back(-1); //返回上一页
        //返回上一页
        window.location.href = sessionStorage.getItem("Order");
    })
});

//点击下一页传递数据
$(function () {
    var dat = []; //传递成人信息数组
    $("#btn_next").click(function () {
        var name = $("#Content_GetLength").text(); //保存成人数量
        for (var i = 0; i < parseInt(name); i++) {
            var cName = $("#div_ch_person_" + i + " input[name=name]").val();
            var cardTypeId = $("#div_ch_person_" + i + " select[name=select]").val();
            var carId = $("#div_ch_person_" + i + " input[name=CardId]").val();
            var phone = $("#div_ch_person_" + i + " input[name=phone]").val();
            var person = { cName: cName, cardTypeId: cardTypeId, carId: carId, phone: phone };
            dat.push(person); //将信息存入数组
        }
        //获得联系人信息
        var Lxname = $("#txt_name").val();
        var Lxmobile = $("#txt_mobile").val();
        var Lxemail = $("#txt_email").val();
        var Lxphone = $("#txt_start_phone").val() + "-" + $("#txt_end_phone").val();
        var Crrs = sessionStorage.getItem("crrs"); //成人人数
        var Etrs = sessionStorage.getItem("etrs") //儿童人数
        var Zjg = sessionStorage.getItem("orderzjg") //总金额
        var datt = JSON.stringify(dat); //将数组转化为JSON格式
        sessionStorage.setItem("dat", JSON.stringify(dat));
        sessionStorage.setItem("Lxname", Lxname);
        sessionStorage.setItem("Lxmobile", Lxmobile);
        sessionStorage.setItem("Lxemail", Lxemail);
        sessionStorage.setItem("Lxphone", Lxphone);
        sessionStorage.setItem("crsl", name);
        /*验证表单是否通过*/
        console.log($("#form1").valid());
        if ($("#form1").valid()) {
            window.location.href = "Order_3.aspx?datt=" + datt + "&Lxname=" + Lxname + "&Lxmobile=" + Lxmobile + "&Lxemail=" + Lxemail +
                "&Lxphone=" + Lxphone + "&Crrs=" + Crrs + "&Etrs=" + Etrs + "&Zjg=" + Zjg; //url传递参数
        } else {
            window.alert("存在错误，请检查！");
        }

    });
});

