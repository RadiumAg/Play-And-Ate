$(function(){


    $(document).on('click','.js_cancel_baoxian',function(){
        var orderId = $(this).attr("id");
        //取消意外险，弹出层
        pandora.dialog({
            title: "",
            content: $(".cancel_insurance_box"),
            width:400,
            cancel:function(){
                //调用取消意外险接口
                var updateMsg = cancelAccInsurance(orderId);
                if (updateMsg.msg !="") {
                    $.alert(updateMsg.msg);
                    return false;
                }else{
                    $.msg('<span class="tip-icon tip-icon-success tip-center"></span>取消意外险成功');
                    $(".dest_bu_trav_delay_"+orderId).parent().append("<span style='color:red'>意外险已取消</span><br>");
                    $(".dest_bu_trav_delay_"+orderId).remove();
                }
            },
            ok:function(){},
            okValue: "否", // 确定按钮文本
            cancelValue: "是", // 取消按钮文本
            okClassName: "btn btn-lg btn-orange",
            cancelClassName: "btn btn-lg",
            wrapClass:'cancel_insurance_dialog'
        });
    });
    // 删除
    $(document).on('click', '.js-dele-btn', function(event) {
        var orderId=$(this).attr('id');
        $.ajax({
            type: "post",
            url: "/myspace/isOrdeletedOrder",
            data: {orderId:orderId},
            dataType: "json",
            success: function (data) {
                if(data.result==true){
                    nova.dialog({
                        title: "删除订单",
                        okCallback: true,  //确定按钮
                        cancelCallback: true,  //取消按钮
                        okText: "确定",  //确定按钮文本
                        cancelText: "取消",  //取消按钮文本
                        wrapClass: "del-wrap-box",  //弹窗class
                        content: "删除后订单记录无法还原，确定删除吗？",
                        okCallback:function () {
                            $.ajax({
                                type: "post",
                                url: "/myspace/deletedOrder",
                                data: {orderId:orderId},
                                dataType: "json",
                                success:function (data) {
                                    if(data.result==true){
                                        window.location.reload();
                                        nova.dialog({
                                            title: "温馨提示",
                                            okCallback: true,  //确定按钮
                                            okText: "确定",  //确定按钮文本
                                            wrapClass: "del-wrap-box",  //弹窗class
                                            content: "删除订单成功。"
                                        });
                                    }else{
                                        if(data.tip=="未登录"){
                                            nova.dialog({
                                                title: "温馨提示",
                                                okCallback: true,  //确定按钮
                                                okText: "确定",  //确定按钮文本
                                                wrapClass: "del-wrap-box",  //弹窗class
                                                content: "用户未登录,请先登录。"
                                            });
                                        }
                                        else if(data.tip=="false"){
                                            nova.dialog({
                                                title: "温馨提示",
                                                okCallback: true,  //确定按钮
                                                okText: "确定",  //确定按钮文本
                                                wrapClass: "del-wrap-box",  //弹窗class
                                                content: "删除订单失败。"
                                            });
                                        }else{
                                            nova.dialog({
                                                title: "温馨提示",
                                                okCallback: true,  //确定按钮
                                                okText: "确定",  //确定按钮文本
                                                wrapClass: "del-wrap-box",  //弹窗class
                                                content: "删除订单异常。"
                                            });
                                        }
                                    }
                                }

                            });
                        }
                    });
                }else{
                    if(data.tip=="未登录"){
                        nova.dialog({
                            title: "温馨提示",
                            okCallback: true,  //确定按钮
                            okText: "确定",  //确定按钮文本
                            wrapClass: "del-wrap-box",  //弹窗class
                            content: "用户未登录,请先登录。"
                        });
                    }
                    else if(data.tip=="false"){
                        nova.dialog({
                            title: "温馨提示",
                            okCallback: true,  //确定按钮
                            okText: "确定",  //确定按钮文本
                            wrapClass: "del-wrap-box",  //弹窗class
                            content: "待支付、待出票、待出行等特殊情况订单不能删除，请知悉。"
                        });
                    }else{
                        nova.dialog({
                            title: "温馨提示",
                            okCallback: true,  //确定按钮
                            okText: "确定",  //确定按钮文本
                            wrapClass: "del-wrap-box",  //弹窗class
                            content: "查询订单异常。"
                        });
                    }
                }
            }
        })
    });
});

//取消意外险
function cancelAccInsurance(orderId){
    var updateMsg = {errorCode:0,msg:""};
    $.ajax({
        url : "/vstHotelOrder/myspace/ajax/cancelAccInsurance",
        type : "post",
        dataType:'JSON',
        async: false,
        data : {orderId : orderId},
        success : function(data) {
            if(!data.success){
                updateMsg.msg = data.errorMsg;
            }
        }
    });
    return updateMsg;
};



function showEcontractTible(){
    pandora.dialog({
        title: "合同列表",
        width:830,
        content:$("#contactList")
    });
}

function showMyEcontract(id){
    $("#contactList tr:gt(0)").remove();
    $.get("/myspace/myEcontract",{orderId:id},function(data){
        var trStr="";
        if(data!=null){
            data = eval(data);
            $.each(data,function(i,item){
                trStr +='<tr><td>'+eval(i+1)+'</td>';
                trStr+='<td>'+item.version+'</td>';
                trStr+='<td>'+item.contractName+'</td>';
                trStr+='<td class="pad0">';
                trStr+='<table cellspacing="0" cellpadding="0" class="multi_column">';
                $.each(item.orderItemList,function(j,childItem){
                    var size = item.orderItemList.length;
                    if(size==j+1){
                        trStr+='<tr><td class="last_item">';
                    }else{
                        trStr+='<tr><td>';
                    }
                    trStr+=childItem.productName+'</td></tr>';
                });
                trStr+='</table></td>';

                trStr+='<td class="pad0">';
                trStr+='<table cellspacing="0" cellpadding="0" class="multi_column">';
                $.each(item.orderItemList,function(j,childItem){
                    var size = item.orderItemList.length;
                    if(size==j+1){
                        trStr+='<tr><td class="last_item">';
                    }else{
                        trStr+='<tr><td>';
                    }
                    trStr+=childItem.visitTime+'</td></tr>';
                });
                trStr+='</table></td>';

                trStr+='<td class="right0">';

                var status = item.status;
                if(status=='SIGNED_UNEFFECT'||status=='EFFECT'){
                    trStr+=' <a target="_blank" href="/myspace/myEcontract/downLoadFile?fileId='+item.fileId+'&orderId='+item.orderId+'&target=ht">下载合同</a><br>';
                }
                if(item.additionFileId!=''){
                    trStr+='<a target="_blank" href="/myspace/myEcontract/downLoadFile?fileId='+item.additionFileId+'&orderId='+item.orderId+'&target=xcd">下载行程单</a><br>';
                }
                if(item.attachementFileId!=''){
                    trStr+='<a target="_blank" href="/myspace/myEcontract/supplementaryTerms/downLoadFile?fileId='+item.attachementFileId+'">下载补充条款</a>';
                }

                trStr+='</td></tr>';
            });
        }
        $("#contactList tbody").append(trStr);
        showEcontractTible();
    });
}

{
    $('.cancel_bg,.denglv02,.denglv03').click(function(){
        $('.bg-tan,.cancel_wapper,.cancel_wapper01').hide();
    })
}

function toCancel(orderId) {
    $("#orderIdBtn").val(orderId);
    $("#isNS").attr("value","false");
    var leftN=$(window).width()/2-162,topN=$(window).height()/2-151;
    $('.bg-tan').show();
    $(".order_cancel_t").fadeIn(10).css({"top":topN+$(window).scrollTop(),"left":leftN});
}

function toCancelNS(orderId) {
    $("#orderIdBtn").val(orderId);
    $("#isNS").attr("value","true");
    var leftN=$(window).width()/2-162,topN=$(window).height()/2-151;
    $('.bg-tan').show();
    $(".order_cancel_t").fadeIn(10).css({"top":topN+$(window).scrollTop(),"left":leftN});
}

function cancel() {
    var reasonRadio = $('input:radio[name="itemCode"]:checked');
    var itemCode = reasonRadio.val();
    var orderId = $("#orderIdBtn").val();
    var isNS = $("#isNS").val();
    var reason = "";
    if (itemCode=="57") {
        reason = "其他_" + $("#otherReason").val();
    }else{
        reason = reasonRadio.attr("data");
    }

    if((typeof(itemCode) == "undefined") && (typeof(reason) == "undefined" || reason == "")){
        alert("请选择或输入取消订单理由!");
        return;
    }
    if(isNS == "true"){
        if(itemCode != "57"){
            reason = reasonRadio.attr("data");
        }
        var flag = canelNS(orderId,reason);
    } else {
        var flag = canel(orderId,itemCode,reason);
    }

    if(!flag){
        // alert(flag);
        // window.location.reload()
        return;
    }
    var leftN=$(window).width()/2-162,topN=$(window).height()/2-151;
    $('.bg-tan').show();
    $('.order_cancel_t').hide();
    $(".order_cancel_t01").fadeIn(10).css({"top":topN+$(window).scrollTop(),"left":leftN});

    for(i=0;i<=5;i++) {
        window.setTimeout("update(" + i + ")", i * 1000);
    }

}

function update(num) {
    if(num == 5) {
        $('.bg-tan,.cancel_wapper,.cancel_wapper01').hide();
    }else {
        printnr = 5-num;
        $('#fleshId').html("页面将在<strong>" + printnr + "</strong>秒内自动刷新") ;
        $('#fleshId').show();
        $('#fleshId2').html("页面将在<strong>" + printnr + "</strong>秒内自动刷新") ;
        $('#fleshId2').show();
    }
}
$("#mergePayCheckBox").click(function (){
    if($('#mergePayCheckBox').attr("checked")){
        $("[name='orderMergePayCheckBox']").each(function(){
            if($(this).attr("disabled")!="disabled"){
                $(this).attr("checked",'true');
            }
        })
    }
    else{
        $("[name='orderMergePayCheckBox']").removeAttr("checked");
    }
});
function mergePay(){
    var orderIds="";
    var isCanPay = true;
    $("input[name='orderMergePayCheckBox']:checkbox").each(function(){
        if($(this).attr("checked")){
            if($(this).attr("canPay")!="true"){
                isCanPay=false;
                return ;
            }
            //如果为后台下单的门票订单，只有信息审核通过和资源审核通过后才可在页面支付
            else if($(this).attr("distributorId") == "2" && $(this).attr("buCode") == "TICKET_BU"){
                if($(this).attr("infoStatus") != "INFOPASS" || $(this).attr("resourceStatus") != "AMPLE"){
                    isCanPay=false;
                    retur;
                }
            }
            orderIds += $(this).val()+",";
        }
    })
    if(!isCanPay){
        alert("所选订单不符合合并支付的规则!");
        return;
    }
    if(orderIds!=""){
        orderIds=orderIds.substring(0,orderIds.length-1);
    }
    else{
        alert("没有可以合并支付的订单!");
        return ;
    }
    window.location.href="${base}/view/viewMergePay?orderIds="+orderIds;
}
_constrB='<p>抱歉，酒店订单不可与其他订单合并开票</p>';
function showPop1B(){
    new Lvmm_pop({
        popW:300,
        popTop:50,
        popWarpClass:"common_pop", // pop box
        popStyleClass:"grey_common_pop", // yellow_common_pop
        popClose:"common_pop_close", // close
        pop_tit:"提示",
        pop_str: _constrB,
        pop_btn:true, // false
        popBtnSure:"common_btn yellow_common_btn", // sure yellow_common_btn
        popCover:"popCover",// layerover
        popBtnHtml:"<p class='common_center'>\
	  				     <span class=' common_opt_closeBtn common_btn yellow_common_btn combine_pay_btn'>确定</span>\
	  			    </p>"
    }).common_showPop();
}
//弹出迪士尼下载凭证列表
function showDownLoadDisneyTible(){
    pandora.dialog({
        title: "凭证列表",
        width:710,
        content:$("#disney_list")
    });
}

function showDownLoadDisney(id){
    $("#disney_list tr:gt(0)").remove();
    $.get("myspace/myOrderItem",{orderId:id},function(data){
        var trStr="";
        if(data!=null){
            data = eval(data);
            $.each(data,function(i,item){
                trStr +='<tr><td>'+eval(i+1)+'</td>';
                trStr+='<td>'+item.suppGoodsName+'</td>';
                trStr+='<td>'+item.visitTime+'</td>';
                trStr+='<td>' + '<a target="_blank" href="http://hotels.lvmama.com/vst_front/order/file/downLoad.do?fileId='+item.fileId+'&orderId='+ id +'&orderItemId='+ item.orderItemId+' ">下载凭证</a>';
                trStr+='</td></tr>';
            });
        }
        $("#disney_list tbody").append(trStr);
        showDownLoadDisneyTible();
    });
}



$(function(){
    $(".add_xu_cont .add_hover").bind("mouseover",function(){
        $(this).parent().css({'position':'relative'});
        $(this).next().show();
    });
    $(".add_xu_cont .add_hover").bind("mouseout",function(){
        $(this).parent().css({'position':'static'});
        $(this).next().hide();
    })
    if($("input[caninvoice='true']").length>=1){
        $('.order_combine_ticket').show();
        $(".ui-disbtn").hide();
    }else{
        $('.order_combine_ticket').hide();
        $(".ui-disbtn").show();
    }
    $(".createOneInvoice").bind('click',function(){
        //newValidateInvoice4One($(this).prev());
        newCreateInvoice($(this).prev());
    });
    //已废弃
    // initInvoice();
});

function initInvoice(){
    if($("input[caninvoice='true']").length>1){
        $('.order_combine_ticket').show();
        $(".ui-disbtn").hide();
        $('.order_combine_ticket').bind('click',function(){
            if(validaInvoice()){
                var orderIds="";
                $("input[name='orderMergePayCheckBox']:checkbox").each(function(){
                    if($(this).attr("checked")){
                        if($(this).attr("canInvoice")!="true"){
                            isCanPay=false;
                            return ;
                        }
                        orderIds += $(this).val()+",";
                    }
                })
                if(orderIds!=""){
                    orderIds=orderIds.substring(0,orderIds.length-1);
                }
                else{
                    alert("没有可以合并开票的订单!");
                    return ;
                }
                window.location.href="${base}/myspace/addInvoicInfo?orderIds="+orderIds;
            }else{
                showPop1B();
            }

        });
    }else{
        $('.order_combine_ticket').hide();
        $(".ui-disbtn").show();
    }
}

function validaInvoice(){
    var orderType = "";
    var isOk=true;
    $("input[name='orderMergePayCheckBox']:checkbox").each(function(){
        if(!isOk) return;
        if($(this).attr("checked")){
            if($(this).attr("caninvoice")!="true"){
                _constrB='<p>抱歉，所选订单不符合合并开票的规则</p>';
                isOk = false;
            }
            if(orderType=="HOTEL"){
                if($.trim($(this).attr("ordType"))!="HOTEL"){
                    _constrB='<p>抱歉，酒店订单不可与其他订单合并开票</p>';
                    isOk= false;
                }
            }else{
                if(orderType!=""&&$.trim($(this).attr("ordType"))=="HOTEL"){
                    _constrB='<p>抱歉，酒店订单不可与其他订单合并开票</p>';
                    isOk = false;
                }
            }
            if($.trim($(this).attr("ordType"))=="HOTEL"){
                orderType = $(this).attr("ordType");
            }else{
                orderType += $(this).attr("ordType")+",";
            }
        }
    });
    return isOk;

}
function invoiceFail(message){
    var ok = '<span class="tip-icon-big tip-icon-big-error"></span><a class="dialog-close">×</a><h3>'+ message +'</h3><p class="invoice-dialog-info">联系客服申请发票' ;
    var html = '<style>.invoice-dialog { position: fixed; left: 50%; top: 50%; margin: -70px 0 0 -200px; padding: 30px 20px 20px 60px; width: 320px; height: 90px; background: #fff; border: 4px solid #999; overflow: hidden;}.invoice-dialog .tip-icon-big { position: absolute; left: 20px; top: 30px;}.invoice-dialog h3 { color: #333;}.invoice-dialog-info { border-bottom: 1px solid #eee; padding-bottom: 5px; color: #666;}.invoice-dialog-tel { margin-top: 5px; color: #999;}.invoice-dialog-tel em{ color:#09c;}</style><div class="invoice-dialog dialog-default dialog">' + ok + '</p><p class="invoice-dialog-tel">如有疑问请致电<em>10106060</em>查询。</p></div>';

    $(document.body).append(html);
    $('.invoice-dialog').on('click','.dialog-close',function(){
        $(this).parents('.invoice-dialog').remove();
    });
}
/**
 *	合并开票校验 针对VST订单
 */
function newValidateInvoice(){

    var totalAmount = 0;
    var errMsg="";
    var invoiceType="";
    var orderIds="";
    var userId = $("input[name='userId']").val();
    var selectCount=0;
    var canInvoice="true";
    $("input[name='orderMergePayCheckBox']:checkbox").each(function(){
        if($(this).prop("checked")){
            if($(this).attr("canInvoice") != "true"){
                canInvoice = "false";
            }
            selectCount++;

            /*当前金额   = 应付金额-退款金额-奖金支付金额-保险金额*/
            var oughtAmount = typeof($(this).attr("oughtAmount"))=='number'?$(this).attr("oughtAmount"):parseInt($(this).attr("oughtAmount"));
            var refundedAmount = typeof($(this).attr("refundedAmount"))=='number'?$(this).attr("refundedAmount"):parseInt($(this).attr("refundedAmount"));
            var bonusAmount = typeof($(this).attr("bonusAmount"))=='number'?$(this).attr("bonusAmount"):parseInt($(this).attr("bonusAmount"));;//$(this).attr("bonusAmount");
            var insuranceAmount = typeof($(this).attr("insuranceAmount"))=='number'?$(this).attr("insuranceAmount"):parseInt($(this).attr("insuranceAmount"));;//$(this).attr("insuranceAmount");
            var currentAmount = oughtAmount - refundedAmount - bonusAmount - insuranceAmount;

            var orderId = $(this).val();
            var currentCategoryId = $(this).attr("categoryId");
            var currentInvoiceType = "";
            if($(this).attr("orderStatus")=='CANCEL'){
                errMsg = "您好，订单[" + orderId + "]状态已取消，不能开票。";
            }else if($(this).attr("paymentStatus")!='PAYED'){
                errMsg = "您好，订单[" + orderId + "]未付款，不能开票。";
            }else if($(this).attr("paymentType")!='PREPAID'){
                errMsg = "您好，订单[" + orderId + "]付款方式不是预付，不能开票。";
            }else if(currentCategoryId==3){
                errMsg = "您好，订单[" + orderId + "]为保险品类订单，不能开票。";
            }else if(currentCategoryId ==5){
                errMsg = "您好，订单[" + orderId + "]为门票品类订单，不能开票。";
            }else if(currentCategoryId ==11){
                errMsg = "您好，订单[" + orderId + "]为景点门票品类订单，不能开票。";
            }else if($(this).attr("needInvoice")=="true"){
                errMsg = "您好，订单[" + orderId + "]已开票，不能开票。";
            }else

            /**
             1、团费，旅游费：	线路14，跟团游15，当地游16，巴士24，其他巴士25，游轮2，游轮组合8，游轮附加项10，定制游42
             2、住宿代理费，代订住宿费：酒店1
             3、服务费-签证：签证4
             4、门票服务费，旅游费：门票5，景点门票11，组合套餐票13，其他票12
             5、旅游费，代办费（机票+酒店），旅游费（门票+酒店）：自由行18，酒店套餐17
             6、旅游服务费：电话wifi28
             */

            if(currentCategoryId==14 || currentCategoryId==15 || currentCategoryId==16 || currentCategoryId==24
                || currentCategoryId==25 ||currentCategoryId==2 ||currentCategoryId==8 || currentCategoryId==10 || currentCategoryId==42){
                if(invoiceType ==""){
                    invoiceType = "1";
                }else if(invoiceType != "1"){
                    errMsg="您好，开票类别不一致，请核实。";
                }
            }else if(currentCategoryId ==1){
                if(invoiceType ==""){
                    invoiceType = "2";
                }else if(invoiceType != "2"){
                    errMsg="您好，开票类别不一致，请核实。";
                }
            }else if(currentCategoryId ==4){
                if(invoiceType ==""){
                    invoiceType = "3";
                }else if(invoiceType != "3"){
                    errMsg="您好，开票类别不一致，请核实。";
                }
            }else if(currentCategoryId ==12 ||currentCategoryId ==13){
                if(invoiceType ==""){
                    invoiceType = "4";
                }else if(invoiceType != "4"){
                    errMsg="您好，开票类别不一致，请核实。";
                }
            }else if(currentCategoryId ==17 || currentCategoryId ==18 ){
                if(invoiceType ==""){
                    invoiceType = "5";
                }else if(invoiceType != "5"){
                    errMsg="您好，开票类别不一致，请核实。";
                }
            }else if(currentCategoryId ==28 ){
                if(invoiceType ==""){
                    invoiceType = "6";
                }else if(invoiceType != "6"){
                    errMsg="您好，开票类别不一致，请核实。";
                }
            }
            //else if(currentCategoryId ==29){
            //    if(invoiceType ==""){
            //        invoiceType = "6";
            //    }else if(invoiceType != "6"){
            //        errMsg="您好，开票类别不一致，请核实。";
            //    }
            //}


            if(errMsg!=""){
                invoiceFail(errMsg);
                return false;
            }
            if(orderIds.length==0){
                orderIds+=orderId;
            }else{
                orderIds=orderIds + ',' + orderId;
            }
            totalAmount += currentAmount;
        }
    });
    if(errMsg!=""){
        return;
    }
    if(canInvoice=="false"){
        return;
    }
    if(selectCount==0){
        invoiceFail("您好，请至少选择一条需要开票的订单。");
        return;
    }
    //金额以分为单位
    if(totalAmount<10){
        invoiceFail("您好，申请订单总金额低于0.1元，不能开票。");
        return;
    }else{
        window.location.href="${base}/myspace/addInvoicInfo4Vst?invoiceAmount="+ totalAmount +"&orderIds=" + orderIds + "&invoiceType="+ invoiceType +"&userId="+ userId;
    }
}
/**
 *	合并开票校验 针对VST订单
 */
function newValidateInvoice4One(me){
    var totalAmount = 0;
    var errMsg="";
    var invoiceType="";
    var orderIds="";
    var userId = $("input[name='userId']").val();
    /*当前金额   = 应付金额-退款金额-奖金支付金额-保险金额*/
    /*发票金额在代码层通过接口查询，不再使用此计算*/
    var oughtAmount = typeof(me.attr("oughtAmount"))=='number'?me.attr("oughtAmount"):parseInt(me.attr("oughtAmount"));
    var refundedAmount = typeof(me.attr("refundedAmount"))=='number'?me.attr("refundedAmount"):parseInt(me.attr("refundedAmount"));
    var bonusAmount = typeof(me.attr("bonusAmount"))=='number'?me.attr("bonusAmount"):parseInt(me.attr("bonusAmount"));;//me.attr("bonusAmount");
    var insuranceAmount = typeof(me.attr("insuranceAmount"))=='number'?me.attr("insuranceAmount"):parseInt(me.attr("insuranceAmount"));;//me.attr("insuranceAmount");
    var currentAmount = oughtAmount - refundedAmount - bonusAmount - insuranceAmount;

    var orderId = me.val();
    var currentCategoryId = me.attr("categoryId");
    var currentInvoiceType = "";
    if(me.attr("orderStatus")=='CANCEL'){
        errMsg = "您好，订单[" + orderId + "]状态已取消，不能开票。";
    }else if(me.attr("paymentStatus")!='PAYED'){
        errMsg = "您好，订单[" + orderId + "]未付款，不能开票。";
    }else if(me.attr("paymentType")!='PREPAID'){
        errMsg = "您好，订单[" + orderId + "]付款方式不是预付，不能开票。";
    }else if(currentCategoryId==3){
        errMsg = "您好，订单[" + orderId + "]为保险品类订单，不能开票。";
    }else if(currentCategoryId ==5){
        errMsg = "您好，订单[" + orderId + "]为门票品类订单，不能开票。";
    }else if(currentCategoryId ==11){
        errMsg = "您好，订单[" + orderId + "]为景点门票品类订单，不能开票。";
    }else if(me.attr("needInvoice")=="true"){
        errMsg = "您好，订单[" + orderId + "]已开票，不能开票。";
    }
    /**
     1、团费，旅游费：	线路14，跟团游15，当地游16，巴士24，其他巴士25，游轮2，游轮组合8，游轮附加项10，定制游42
     2、住宿代理费，代订住宿费：酒店1
     3、服务费-签证：签证4
     4、门票服务费，旅游费：门票5，景点门票11，组合套餐票13，其他票12
     5、旅游费，代办费（机票+酒店），旅游费（门票+酒店）：自由行18，酒店套餐17
     6、旅游服务费：电话wifi28
     */
    if(currentCategoryId==14 || currentCategoryId==15 || currentCategoryId==16 || currentCategoryId==24
        || currentCategoryId==25 ||currentCategoryId==2 ||currentCategoryId==8 || currentCategoryId==10 || currentCategoryId==42){
        invoiceType = "1";
    }else if(currentCategoryId ==1){
        invoiceType = "2";
    }else if(currentCategoryId ==4){
        invoiceType = "3";
    }else if(currentCategoryId ==12 ||currentCategoryId ==13){
        invoiceType = "4";
    }else if(currentCategoryId ==17 || currentCategoryId ==18 ){
        invoiceType = "5";
    }else if(currentCategoryId ==28){
        invoiceType = "6";
    }
    //else if(currentCategoryId ==29){
    //    invoiceType = "6";
    //}
    if(errMsg!=""){
        invoiceFail(errMsg);
        return false;
    }
    if(orderIds.length==0){
        orderIds+=orderId;
    }else{
        orderIds=orderIds + ',' + orderId;
    }
    totalAmount += currentAmount;
    if(errMsg!=""){
        return;
    }
    //校验放在createInvoice4Vst.ftl中 modify by ccj 20170109
    //金额以分为单位
    //if(totalAmount<100){
    //    invoiceFail("您好，申请订单总金额低于1元，不能开票。");
    //    return;
    //}else{
    window.location.href="${base}/myspace/addInvoicInfo4Vst?invoiceAmount="+ totalAmount +"&orderIds=" + orderIds + "&invoiceType="+ invoiceType +"&userId="+ userId;
    //}

}

