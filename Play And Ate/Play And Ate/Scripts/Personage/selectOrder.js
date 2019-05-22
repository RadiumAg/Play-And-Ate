/**
 * 页面加载完毕之后就执行的方法
 */
$(function(){
    $(".tagtips").poptip();//"不可退款" mouseOver事件
});


/**
 * 退款弹框的关闭事件
 */
function closePopDiv(){
    $("#refundSubmitButton").show();//显示“确定”按钮
    $("#refundApplyDiv").hide();//隐藏div弹框
    clearSubDom();//清空退款弹框的各个被填充元素的子元素
    $('.bg-tan').hide();//移除遮罩层
    $("#refundApply").show();//"退款申请"按钮显示
}

/**
 * 清空退款弹框的各个被填充元素的子元素
 */
function clearSubDom(){
    $("#refundReasonType").find("option[value='0']").attr("selected",true);//选中第一个option
    $('.refund-exp').hide();//隐藏掉说明输入框层
    $("#refundReason").val('');//说明输入框清空
    $("#replaceName").html('');//订单名称清空
    $("#actualAmount").empty();  //订单金额子元素清空
    $("#deductMoney").empty();//扣款金额子元素清空
    $("#refundMoney").empty();//退款金额子元素清空
}


/**
 * 退款申请弹框上的退款原因下拉框的change事件绑定
 */
function refundReasonTypeChange(){
    //选择“其他”，就显示“说明”输入框，否则隐藏
    var selectedValue = $("#refundReasonType").find("option:selected").val();
    if(selectedValue!=null && selectedValue==6){
        $("#refundReason").val('');//说明输入框内容清除掉
        $('.refund-exp').show();//显示出说明输入框层
    }else{
        $('.refund-exp').hide();//隐藏掉说明输入框层
    }
}


/**
 * 点击“退款申请”按钮事件
 */
function toRefundApplyAjax(orderId){

    //1、---------隐藏“退款申请”按钮，校验入参
    $("#refundApply").hide();
    if(orderId==undefined || orderId==null || orderId==''){
        return;
    }

    clearSubDom();//清空退款弹框的各个被填充元素的子元素
    $("#orderIdForRefundApply").val(orderId);//隐藏orderId的值

    //2、---------异步校验退款神申请资质是否合格
    $.ajax({
        url:'/myspace/ajax/getOrderRefundApplyCheckInfo',
        data:{orderId:orderId},
        type:'post',
        dataType:'json',
        success:function(result){
            //3、--------------查询成功后，拼装弹框，并显示
            if(result!=null && result.success){
                var userRefundApplyVO = result.userRefundApplyVO;
                //总订单退款为0
                if(userRefundApplyVO.refundAmount!=null && userRefundApplyVO.refundAmount <= 0){
                    pandora.dialog({
                        title: "",
                        content:$(".reApply_box"),
                        width:500,
                        okClassName: "giftSureBtn",
                        ok: function(){
                            // 确认按钮回调函数
                        }
                    });
                    return;
                }
                //根据返回值给弹框div赋值
                var replaceName = userRefundApplyVO.orderName;//订单名称
                var actualAmount = (userRefundApplyVO.actualPayAmount*1.00/100.00).toFixed(2);//订单金额（即订单实付金额）
                var deductMoney = (userRefundApplyVO.deductAmount==null)?-1:userRefundApplyVO.deductAmount*1.00/100.00;//扣款金额
                var refundMoney = (userRefundApplyVO.refundAmount==null)?-1:userRefundApplyVO.refundAmount*1.00/100.00;//退款金额
                var refundType = userRefundApplyVO.refundType;//退款类型
                var userDeductDetailVOs = userRefundApplyVO.userDeductDetailVOs;//扣款明细

                //订单名称填充
                $("#replaceName").html(replaceName);

                //订单金额填充
                var $actualAmount = $("#actualAmount");
                var $actualAmoutJqueryObj = "<dfn>&yen;"+actualAmount+"</dfn>";
                $actualAmount.append($actualAmoutJqueryObj);

                //扣款金额、退款金额填充
                var $deductMoney = $("#deductMoney");//扣款金额jQuery对象
                var $refundMoney = $("#refundMoney");//退款金额jQuery对象

                if(refundType=='REFUND' && deductMoney!=-1 && refundMoney!=-1){//退款类型
                    var $deductMoneyJqueryObj = "<span><dfn>&yen;"+(deductMoney*1.00).toFixed(2)+"</dfn></span>";//扣款金额dom元素
                    $deductMoney.append($deductMoneyJqueryObj);
                    var $refundMoneyJqueryObj = '<dfn>&yen;'+(refundMoney*1.00).toFixed(2)+'</dfn>'+'&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="refund-rep">注：暂不支持退优惠券</span>';//退款金额dom元素
                    $refundMoney.append($refundMoneyJqueryObj);
                    //退款明细dom元素
                    $.each(userDeductDetailVOs,function(index,value){
                        //$itemNameAndDeductAmount = '';
                        var itemOrderAndProductName = '';
                        itemOrderAndProductName = itemOrderAndProductName + ((value.itemProductName==null)? '' : value.itemProductName);
                        itemOrderAndProductName = itemOrderAndProductName + '(' +((value.itemSuppGoodsName==null)? '' : value.itemSuppGoodsName) + ')';
                        var $itemNameAndDeductAmount = '<p class="refund-pro"><span class="refund-pri">&yen;'+(value.itemDeductAmount*1.00/100.00).toFixed(2)+'</span> |'+itemOrderAndProductName+'</p>'; //扣款明细金额和子订单名称dom元素
                        var $itemRefundExplain = '<p class="refund-rep">扣款说明：'+value.itemDeductExplain+'</p>'; //扣款明细说明dom元素
                        $deductMoney.append($itemNameAndDeductAmount);
                        $deductMoney.append($itemRefundExplain);
                    });
                }else{//售后类型
                    $deductMoney.append('<p class="refund-pro"><span class="refund-pri">扣款金额需审核，提交后客服会尽快与您核实</p>');
                    $refundMoney.append('<p class="refund-pro"><span class="refund-pri">扣款金额需审核，提交后客服会尽快与您核实</p>');
                }

                //显示弹框
                $('#refundApplyDiv').show();
                //加遮罩
                $('.bg-tan').show();
            }else if(result!=null){
                alert(result.errorMsg);
                $("#refundApply").show();//"退款申请"按钮显示
            }
        },
        error:function(){
            alert("系统异常！");
            $("#refundApply").show();//"退款申请"按钮显示
        }
    });

}

/**
 * 退款申请 入库后台提交
 * @param orderId
 * @param reason
 */
function refundAjax(isNeedVaildNum){
    $("#refundSubmitButton").hide();//隐藏“确定”按钮，防双击
    var orderId = $("#orderIdForRefundApply").val();//订单id

    //1、---------退款原因选择“其他”时，校验说明是否为空(说明为必填项)
    var selectedValue = $("#refundReasonType").find("option:selected").val();
    var reason = $("#refundReasonType").find("option:selected").text();
    var cancelCode=$("#refundReasonType").find("option:selected").attr("data");
    var orderName = $("#replaceName").text();
    if(selectedValue!=null && selectedValue==0){
        alert("请选择退款原因！");
        $("#refundSubmitButton").show();//显示“确定”按钮
        return;
    }
    if(selectedValue!=null && selectedValue==6){
        var refundReason = $.trim($("#refundReason").val());
        if(refundReason==undefined || refundReason==null || refundReason==''){
            alert("请填写说明！");
            $("#refundSubmitButton").show();//显示“确定”按钮
            return;
        }else if(refundReason.length>100){
            alert("说明填写的内容长度超过了100个字符！");
            $("#refundSubmitButton").show();//显示“确定”按钮
            return;
        }else{
            reason = refundReason;
        }
    }

    //2、---------是否需要校验判断
    var isNeedVaild = true;//默认需要
    if(isNeedVaildNum!=null && isNeedVaildNum==1){
        isNeedVaild = false;
    }

    //3、---------异步提交后台

    var domainUrl="/myspace/ajax/refundAjaxSubmit";
    var dataParam={orderId:orderId,cancelCode:cancelCode,reason:reason,isNeedVaild:isNeedVaild};
    if(categoryId=="1" ||categoryId=="17" || categoryId=="18" || categoryId=="181"){//如果是酒店订单申请退款确认提交到酒店的action
        domainUrl="/vstHotelOrder/myspace/ajax/refundAjaxSubmit";
        dataParam={orderId:orderId,reason:reason,isNeedVaild:isNeedVaild};
    }
    $.ajax({
        url:domainUrl,
        data:dataParam,
        type:'post',
        dataType:'json',
        success:function(result){

            if(result!=null && result.resultMap!=null){
                //如果是confirm之后的提交，则直接成功，刷新页面
                if(isNeedVaildNum==1){
                    alert("退款申请提交成功！");
                    window.location.href="/myspace/order";//刷新“我的订单”页面
                    return;
                }

                var comfirmMsg = '';

                if(result.resultMap.IS_CHANGE!=null && !result.resultMap.IS_CHANGE){//退款金额和类型未发生变化时，直接成功，刷新页面
                    alert("退款申请提交成功！");
                    window.location.href="/myspace/order";//刷新“我的订单”页面
                    return;
                }else if(result.resultMap.IS_CHANGE!=null && result.resultMap.IS_CHANGE){//退款金额和类型发生变化时，根据变化弹出相应的confirm弹窗

                    if(result.resultMap.BEFORE_REFUND_TYPE!=null
                        && result.resultMap.NOW_REFUND_TYPE!=null
                        && result.resultMap.BEFORE_REFUND_TYPE != result.resultMap.NOW_REFUND_TYPE){//退款变售后
                        comfirmMsg = '当前退款条件不满足可退范围，提交后客服会尽快与您核实';
                    }else{//退款金额发生变化
                        var beforeRefundAmont = result.resultMap.BEFORE_REFUND_AMOUNT*1.00/100.00;
                        var nowRefundAmont = result.resultMap.NOW_REFUND_AMOUNT*1.00/100.00;
                        comfirmMsg = '因退款时间变化，可退金额由'+beforeRefundAmont+'变化为'+nowRefundAmont;
                    }
                    if(confirm(comfirmMsg)){
                        $("#refundSubmitButton").show();//显示“确定”按钮
                        refundAjax(1);
                    }else{
                        closePopDiv();//隐藏弹框div、去掉遮罩层
                    }
                }
            }else if(result.errorMsg.indexOf("超过最晚退改时间")!=-1){
                closePopDiv();//隐藏弹框div、去掉遮罩层
                if(categoryId=="1" ||categoryId=="17" || categoryId=="18"){
                    $("#hotel_refund_fail_div .refund_create_time").text(result.nowDate);
                    $("#hotel_refund_fail_div .last_cancel_time").text(result.errorMsg);
                    $("#hotel_refund_fail_div .order_name").text(orderName);
                    $(".hotel_refund_fail_t").show();
                    $(".hotel_refund_fail").show();
                    $("#hotel_refund_fail_div").show();
                }else if(categoryId=="181"){
                    $("#route_refund_fail_div .refund_create_time").text(result.nowDate);
                    $("#route_refund_fail_div .last_cancel_time").text(result.errorMsg);
                    $("#route_refund_fail_div .order_name").text(orderName);
                    $(".route_refund_fail_t").show();
                    $(".route_refund_fail").show();
                    $("#route_refund_fail_div").show();
                }


            }else{
                alert(result.errorMsg);
                $("#refundSubmitButton").show();//显示“确定”按钮
            }
        },
        error:function(){
            alert("系统异常！");
            $("#refundSubmitButton").show();//显示“确定”按钮
        }
    });
}

/**
 * 退款进度 点击事件
 */
function refundProgress(orderId,categoryId){
    if(orderId==undefined || orderId==null || orderId==''){
        return;
    }
    var openUrl="/myspace/refundProgress?orderId="+orderId;
    if(categoryId=="1" ||categoryId=="17" || categoryId=="18"){
        openUrl="/vstHotelOrder/myspace/refundProgress?orderId="+orderId+"&categoryId="+categoryId;
    }else if(categoryId == "181"){//酒+景进度
        openUrl="/vstRouteOrder/myspace/refundRouteProgress?orderId="+orderId+"&categoryId="+categoryId;
    }
    window.open(openUrl);
}

function closePop() {
    $("#floatbox-background").remove();
    $("#floatbox-box").remove();
}

/**
 * 取消订单js
 * @param str
 * @param itemCode
 * @param otherReason
 */
function canel(str, itemCode, otherReason) {
    var data = "orderId=" + str;
    if (itemCode!=null) {
        data = data + "&itemCode=" + itemCode;
    }
    if (otherReason!=null) {
        data = data + "&reason=" + otherReason;
    }
    var isCancleSuccess = false;
    $.ajax({
        type:"POST",
        url:encodeURI("/myspace/ordercancel?" + data,'UTF-8'),
        async:false,
        dataType:"json",
        success:function (json) {
            if (json.status == "true") {
                if(json.supplierChannel=="true"){
                    $(".cancel_closed").html("取消申请中.");
                }else{
                    $(".cancel_closed").html("您的订单已取消");
                }
                try{
                    losc.cmCreateClickTag('orderList','ordercancel',{
                        on: json.orderId,
                        uf: json.userId
                    });

                }catch(e){

                }
                isCancleSuccess = true;
                window.setTimeout("window.location.reload()", 5000);
            } else {
                alert("\u53d6\u6d88\u8ba2\u5355\u9519\u8bef\uff01");
                isCancleSuccess = false;
            }
        }
    });
    return isCancleSuccess;
}

/**
 * 取消NS订单js
 * @param str
 * @param oreason
 */
function canelNS(str, reason) {
    var data = "orderId=" + str + "&reason=" + reason;
    var isCancleSuccess = false;
    $.ajax({
        type:"POST",
        url:encodeURI("/myspace/nsordercancel?" + data,'UTF-8'),
        async:false,
        dataType:"json",
        success:function (json) {
            if (json.status == "true") {
                $(".cancel_closed").html("取消申请中.");
                isCancleSuccess = true;
                window.setTimeout("window.location.reload()", 5000);
            } else {
                alert("\u53d6\u6d88\u8ba2\u5355\u9519\u8bef\uff01");
                isCancleSuccess = false;
            }
        }
    });
    return isCancleSuccess;
}

//function canelRefundApply(str,reason,bizType){
//	$.ajax({
//		type:"POST",
//		url:"/ajax/validateOrdRefundApply",
//		async:false,
//		dataType:"json",
//        data:{
//            orderId:str,
//            reason:reason,
//            bizType:bizType
//        },
//		success:function (json) {
//            if(json != null){
//                $(".cancel_closed").html(json.msg);
//                window.setTimeout("window.location.reload()", 5000);
//            }else{
//                alert("服务器端处理失败!");
//            }
//		}
//	});
//}

/**
 * 退款明细点击事件
 * @param orderId
 * @param bizType
 */
/*function toRefundDetail(orderId, bizType){
	$.ajax({
		type:"POST",
		url:"/ajax/refundDetail?orderId=" + orderId + "&bizType= " + bizType,
		async:false,
		dataType:"json",
		success:function (json) {
			var con = '<div class="tkmx_box" id="js_tkmx"><p><strong>订单金额：</strong><b>'+json.orderAmount+'</b>元</p> ' +
			'<p><strong>已支付金额：</strong><span class="lv-c1">'+json.actualPay+'</span>元<span class="c_999 ml10">订单金额￥'+json.orderAmount+'-优惠￥'+json.youHuiAmount+'</span>' +
			'</p><p><strong>退款金额：</strong><span class="lv-c1">'+json.refundAmount+'</span>元</p>';
			if(json.pealtyAmount == null || json.pealtyAmount == "0.0"){
				con += '</div>';
			}else{
				con += '<p><strong>违约金：</strong>'+json.pealtyAmount+'元</p></div>';
			}
			pandora.dialog({
				title: "退款明细",
				content:con
			});
		}
	});
}*/
function pops(str) {
    $.pop({content:"<div class='order_cancel'><p>\u4f60\u786e\u8ba4\u8981\u53d6\u6d88\u8ba2\u5355" + str + "\uff1f</p><input name='' type='button' value='\u662f' onclick=canel('" + str + "') /><input name='' type='button' onclick='javascript:closePop();' value='\u5426'/></div>", boxConfig:{width:"280px", marginLeft:"-140px"}});
}

function sendSms(obj,id,mobile,userOrderId){
    $("#resendmsg").attr("disabled","true");
    $("#resendmsg").removeClass("sm-gray-btn");
    $("#reorderheadId").attr("value",id);
    $("#sendmobile").attr("value",mobile);
    $("#reuserOrderId").attr("value",userOrderId);
    subSendSms();
}
function subSendSms() {
    var float_layer = $("#float_layer");
    var float_bg = $("#float_bg");
    var close_btn = $("#close_btn");
    layer_xy(float_layer);
    float_layer.fadeIn("fast");
    var close_btn = $("#close_btn");
    close_btn.click(function(){
        float_bg.css({"display":""});
        float_layer.fadeOut("fast");
    })
    runtime();
}
function layer_xy(obj){
    var windows = $(window);
    var ctop = (windows.height() - obj.height())/2;
    var cleft = (windows.width() - obj.width())/2;
    if(ctop<=0){ctop = 0 + windows.scrollTop()}else{ctop=parseInt(ctop + windows.scrollTop())};
    if(cleft<=0){cleft = 0}else{cleft=parseInt(cleft)};
    obj.css({"top":ctop + "px","left":cleft + "px"});
}
var maxtime = -1;
var timer=null;
function resendmsg(){
    maxtime=60;
    var orderheadid=$("#reorderheadId").val();
    var mobile = $("#sendmobile").val();
    var reuserOrderId = $("#reuserOrderId").val();
    var dataMember = {'orderHeadId':orderheadid,'mobileNumber':mobile,'reuserOrderId':reuserOrderId};
    timer = setInterval("runtime()",1000);
    $.ajax({
        type:"POST",
        url:"/myspace/resendMsg",
        async:false,
        data:dataMember,
        dataType:"json",
        success:function (data) {}
    });
}

function runtime(){
    if(maxtime>0){
        $("#resendmsg").attr("disabled","true");
        $("#resendmsg").addClass("sm-gray-btn");
    }else{
        $("#resendmsg").removeAttr("disabled");
        $("#resendmsg").removeClass("sm-gray-btn");
    }
    if(maxtime>=0){
        seconds = Math.floor(maxtime%60);
        msg ="重发倒计时："+seconds;
        document.getElementById("timer").innerHTML=msg;
        --maxtime;
    }else{
        clearInterval(timer);
    }
}



/*********************酒店退款按钮事件**************************/
/**
 点击“退款申请”按钮事件
 */
var categoryId="";
function vstOrdertoRefundApplyAjax(orderId,categoryId) {
    this.categoryId = categoryId;
    //1、---------隐藏“退款申请”按钮，校验入参
    $("#refundApply").hide();
    if (orderId == undefined || orderId == null || orderId == '') {
        return;
    }
    clearSubDom();//清空退款弹框的各个被填充元素的子元素
    $("#orderIdForRefundApply").val(orderId);//隐藏orderId的值

    //2、---------异步校验退款神申请资质是否合格
    $.ajax({
        url: '/vstHotelOrder/myspace/ajax/getOrderRefundApplyCheckInfo',
        data: {orderId: orderId},
        type: 'post',
        dataType: 'text',
        success: function (result) {
            result = JSON.parse(result);
            //3、--------------查询成功后，拼装弹框，并显示
            if (result != null && result.success) {
                var userRefundApplyVO = result.userRefundApplyVO;
                //根据返回值给弹框div赋值
                var replaceName = userRefundApplyVO.orderName;//订单名称
                var deductTypeName = userRefundApplyVO.deductTypeName;//预付扣款类型
                var actualAmount = (userRefundApplyVO.actualPayAmount * 1.00 / 100.00).toFixed(2);//订单金额（即订单实付金额）
                var deductMoney = (userRefundApplyVO.deductAmount != null && userRefundApplyVO.deductAmount >= 0) ? userRefundApplyVO.deductAmount * 1.00 / 100.00 : -1;//扣款金额
                var refundMoney = (userRefundApplyVO.refundAmount != null && userRefundApplyVO.refundAmount > 0) ? userRefundApplyVO.refundAmount * 1.00 / 100.00 : -1;//退款金额
                var refundType = userRefundApplyVO.refundType;//退款类型
                var userDeductDetailVOs = userRefundApplyVO.userDeductDetailVOs;//扣款明细

                //订单名称填充
                $("#replaceName").html(replaceName);

                //订单金额填充
                var $actualAmount = $("#actualAmount");
                var $actualAmoutJqueryObj = "<dfn>&yen;" + actualAmount + "</dfn>";
                $actualAmount.append($actualAmoutJqueryObj);

                //扣款金额、退款金额填充
                var $deductMoney = $("#deductMoney");//扣款金额jQuery对象
                var $refundMoney = $("#refundMoney");//退款金额jQuery对象

                if (refundType == 'REFUND' && deductMoney != -1 && refundMoney != -1 ) {//退款类型 //refundType=='REFUND' && deductMoney!=-1 && refundMoney!=-1
                    if(categoryId==1){
                        var $deductMoneyJqueryObj = "<span><dfn>&yen;" + (deductMoney * 1.00).toFixed(2) + "</dfn></span>";//扣款金额dom元素
                        $deductMoney.append($deductMoneyJqueryObj + "</br><span>" + deductTypeName + "</span>");
                        var $refundMoneyJqueryObj = '<dfn>&yen;' + (refundMoney * 1.00).toFixed(2) + '</dfn>' + '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="refund-rep">注：暂不支持退优惠券</span>';//退款金额dom元素
                        $refundMoney.append($refundMoneyJqueryObj);
                    }else if(categoryId == 181){
                        var $deductMoneyJqueryObj = "<span><dfn>&yen;" + (deductMoney * 1.00).toFixed(2) + "</dfn></span>";//扣款金额dom元素
                        $deductMoney.append($deductMoneyJqueryObj);
                        //退款明细dom元素
                        $.each(userDeductDetailVOs, function (index, value) {
                            var itemOrderAndProductName = '';
                            var itemCategoryId = value.itemCategoryId;
                            if(itemCategoryId == 1){//酒店
                                itemOrderAndProductName = itemOrderAndProductName + "【酒店】";
                            }else if(itemCategoryId == 5 || itemCategoryId == 11 || itemCategoryId == 12 || itemCategoryId == 13){
                                itemOrderAndProductName = itemOrderAndProductName + "【门票】";
                            }else if(itemCategoryId == 3){
                                itemOrderAndProductName = itemOrderAndProductName + "【保险】";
                            }

                            itemOrderAndProductName = itemOrderAndProductName + ((value.itemProductName == null) ? '' : value.itemProductName);
                            itemOrderAndProductName = itemOrderAndProductName + '(' + ((value.itemSuppGoodsName == null) ? '' : value.itemSuppGoodsName) + ')';
                            var $itemNameAndDeductAmount = '<p class="refund-pro">'+itemOrderAndProductName+'</p>'; //扣款明细金额和子订单名称dom元素
                            var $itemRefundExplain = '<p class="refund-rep">扣款说明：' + value.itemDeductExplain + '共扣款<span class="refund-pri">&yen;' + (value.itemDeductAmount * 1.00 / 100.00).toFixed(2) + '</span></p>'; //扣款明细说明dom元素
                            $deductMoney.append($itemNameAndDeductAmount);
                            $deductMoney.append($itemRefundExplain);
                        });
                        var $refundMoneyJqueryObj = '<dfn>&yen;' + (refundMoney * 1.00).toFixed(2) + '</dfn>';//退款金额dom元素
                        $refundMoney.append($refundMoneyJqueryObj);
                    }else if(categoryId==17 || categoryId==18){
                        $deductMoney.append("您所订购的订单需要工作人员与供应商沟通确认退款金额提交退款申请后，会由我们工作人员与您联系");
                        $refundMoney.append("待确认");
                    }


                }else {//售后类型
                    $deductMoney.append('<p class="refund-pro"><span class="refund-pri">扣款金额需审核，提交后客服会尽快与您核实</p>');
                    $refundMoney.append('<p class="refund-pro"><span class="refund-pri">扣款金额需审核，提交后客服会尽快与您核实</p>');
                }

                //显示弹框
                $('#refundApplyDiv').show();
                //加遮罩
                $('.bg-tan').show();
            } else if (result != null) {
                alert(result.errorMsg);
                $("#refundApply").show();//"退款申请"按钮显示
            }
        },
        error: function () {
            alert("系统异常！");
            $("#refundApply").show();//"退款申请"按钮显示
        }
    });

}

/**
 * 酒店取消
 */
function cancelHotel() {
    var reasonRadio = $('input:radio[name="itemCode"]:checked');
    var itemCode = reasonRadio.val();
    var orderId = $("#hotel_cancel_order_id_input_hidden").val();
    var reason = "";
    if (itemCode == "57") {
        reason = "其他_" + $("#otherReason_hotel").val();
    }

    if ((typeof(itemCode) == "undefined") && (typeof(reason) == "undefined" || reason == "")) {
        alert("请选择或输入取消订单理由!");
        return;
    }

    canel(orderId, itemCode, reason);

    var leftN = $(window).width() / 2 - 162, topN = $(window).height() / 2 - 151;
    $('.hotel_order_cancel_div').show();
    $('.hotel_order_cancel_div_t').hide();
    $(".hotel_order_cancel_t01").fadeIn(10).css({"top": topN + $(window).scrollTop(), "left": leftN});
}

/**
 * 酒店取消
 */
function cancelRoute() {
    var reasonRadio = $('input:radio[name="itemCode"]:checked');
    var itemCode = reasonRadio.val();
    var orderId = $("#route_cancel_order_id_input_hidden").val();
    var reason = "";
    if (itemCode == "57") {
        reason = "其他_" + $("#otherReason_route").val();
    }

    if ((typeof(itemCode) == "undefined") && (typeof(reason) == "undefined" || reason == "")) {
        alert("请选择或输入取消订单理由!");
        return;
    }

    canel(orderId, itemCode, reason);

    var leftN = $(window).width() / 2 - 162, topN = $(window).height() / 2 - 151;
    $('.route_order_cancel_div').show();
    $('.route_order_cancel_div_t').hide();
    $(".route_order_cancel_t01").fadeIn(10).css({"top": topN + $(window).scrollTop(), "left": leftN});
}

/**
 * 关闭div dialog
 */
function closeCannotChangeDiv() {
    $('#hotel_cannot_change_div').hide();
}
function closeCancelingDiv() {
    $('.hotel_canceling_t').hide();
}
function closeCancelSuccessDiv() {
    $('#hotel_cancel_success_div').hide();
}

//酒+景取消成功
function closeRouteCancelSuccessDiv() {
    $('#route_cancel_success_div').hide();
}

function closeCancelFailDiv() {
    $('.order_cancel_fail_t').hide();
}
function closeRefundFailDiv() {
    $('#hotel_refund_fail_div').hide();
}

//酒+景关闭退款失败框
function closeRouteRefundFailDiv() {
    $('#route_refund_fail_div').hide();
}

//酒店订单取消
function toCancelHotel(orderId) {
    $("#hotel_cancel_order_id_input_hidden").val(orderId);
    var leftN = $(window).width() / 2 - 162, topN = $(window).height() / 2 - 151;
    $('.hotel_order_cancel_div').show();
    $(".hotel_order_cancel_div_t").fadeIn(10).css({"top": topN + $(window).scrollTop(), "left": leftN});

}

//酒店订单取消
function toCancelRoute(orderId) {
    $("#route_cancel_order_id_input_hidden").val(orderId);
    var leftN = $(window).width() / 2 - 162, topN = $(window).height() / 2 - 151;
    $('.route_order_cancel_div').show();
    $(".route_order_cancel_div_t").fadeIn(10).css({"top": topN + $(window).scrollTop(), "left": leftN});

}

//订单不退不改

function orderNoChange(orderId, productName, paymentTarget, hotelTel,categoryId) {
    if(categoryId == 1){
        if (paymentTarget == "PREPAID") {
            $("#contact_information").text("预付：如有疑问，可联系驴妈妈客服热线1010-6060");
        } else if(paymentTarget == "PAY"){
            if(hotelTel==undefined || hotelTel==""){
                $("#contact_information").text("");
            }else{
                $("#contact_information").text("到付：如有疑问，可联系酒店电话:" + hotelTel);
            }
        }
        $(".cannot_change_show_message").html("非常报歉 ，您的订单酒店要求下单后不得退改");

        if(productName.length >40){
            productName = productName.substring(0,40)+'...';
        }
        $("#hotel_name").text(productName);
        $("#orderIdBtn").val(orderId);

        $('.hotel_cannto_change_t').show();
        $('#hotel_cannot_change_div').show();
    }else if(categoryId == 17 || categoryId == 18 || categoryId == 181){
        $(".cannot_change_show_message").html("非常抱歉，您的订单不支持退改");
        $("#contact_information").html("如有疑问，可以联系驴妈妈客服热线1010-6060");

        if(productName.length >40){
            productName = productName.substring(0,40)+'...';
        }
        $("#route_name").text(productName);
        $("#orderIdBtn").val(orderId);

        $('.route_cannto_change_t').show();
        $('#route_cannot_change_div').show();
    }
}


function contactService(productName) {
    if(productName.length >40){
        productName = productName.substring(0,40)+'...';
    }
    $("#route_order_product_name").text(productName);

    $('.route_contact_service_t').show();
    $('#route_contact_service_div').show();
}

function closeContactServiceDiv(){
    $('#route_contact_service_div').hide();
}

//订单取消中
function toCancelOn(orderId, productName, cancelTime) {
    $(".hotel_canceling_t .order_name").text(productName);
    $(".hotel_canceling_t .order_cancel_time").text(cancelTime);
    $("#hotel_canceling_orderId").val(orderId);
    var leftN = $(window).width() / 2 - 162, topN = $(window).height() / 2 - 151;
    $('.hotel_canceling').show();
    $(".hotel_canceling_t").fadeIn(10).css({"top": topN + $(window).scrollTop(), "left": leftN});
}

//订单取消成功
function toCancelSuccess(orderId, productName, cancelTime) {
    //productName过长截取
    if(productName.length >40){
        productName = productName.substring(0,40)+'...';
    }

    $(".hotel_cancel_success_t .order_name").text(productName);
    $(".hotel_cancel_success_t .order_cancel_time").text(cancelTime);
    $(".hotel_cancel_success_t").show();
    $('.hotel_cancel_success').show();
    $('#hotel_cancel_success_div').show();
}

//酒+景订单取消成功
function toCancelRouteSuccess(orderId, productName, cancelTime) {
    //productName过长截取
    if(productName.length >40){
        productName = productName.substring(0,40)+'...';
    }

    $(".route_cancel_success_t .order_name").text(productName);
    $(".route_cancel_success_t .order_cancel_time").text(cancelTime);
    $(".route_cancel_success_t").show();
    $('.route_cancel_success').show();
    $('#route_cancel_success_div').show();
}

//订单取消失败
function toCancelFail(orderId, productName, cancelTime) {
    $(".order_cancel_fail_t .order_name").text(productName);
    $(".order_cancel_fail_t .order_cancel_time").text(cancelTime);
    $("#orderIdBtn4").val(orderId);
    var leftN = $(window).width() / 2 - 162, topN = $(window).height() / 2 - 151;
    $('.hotel_cancel_fail').show();
    $(".order_cancel_fail_t").fadeIn(10).css({"top": topN + $(window).scrollTop(), "left": leftN});
}

// ------------------------------------------------------ 门票部分退 ----------------------------------------------------------
$(".tag").poptip();

var partRefundOrderId;		// Main order id
var ticketSubOrderId;		// Ticket sub-order id
var ticketCategoryId;		// Ticket category id

var adultAndChildSum;		// 大人儿童总数
var availableRefundQuantity;// 可退份数
var refundWay;				// 退款类型
var isLossAmountShown;		// 退款明细是否显示

var isInsuranceExist;		// 门票订单是否存在
var isInsuranceCanRefund;	// 门票是否可退
var insuranceSubOrderId;	// 保险子订单id
var insuranceCategoryId;	// 保险品类id

var partRefundAmount;
////////////////////////////////////////////////////////////////////
var selectedRefundQuantity = 0;
// 退票游玩人
var selectedRefundPerson = [];
var refundQuantity = 0;				// ticket refund quantity
var insuranceRefundQuantity = 0;	// insurance refund quantity

$(function() {

    $('.js_reApply_part').click(function() {

        var orderId = $(this).attr('order_id');
        if(orderId == undefined || orderId == null || orderId == '') {
            alert("订单id不存在哦~，请刷新页面后重试一次!");
            return;
        }
        // Main order id
        partRefundOrderId = orderId;

        // init
        selectedRefundQuantity = 0;
        selectedRefundPerson = [];
        refundQuantity = 0;
        insuranceRefundQuantity = 0;
        $("#refundExplainId").text("");
        // 2、---------异步校验退款神申请资质是否合格
        $.ajax({
            url: '/myspace/ajax/getOrderRefundApplyCheckInfo',
            data: {orderId: orderId},
            type: 'post',
            dataType: 'json',
            success: function(result) {
                // 3、--------------查询成功后，拼装弹框，并显示
                if(result != null && result.success) {
                    var userRefundApplyVO = result.userRefundApplyVO;
                    // 部分退超时，不再支持
                    if(null != userRefundApplyVO.isCurrentPartRefundSupport && !userRefundApplyVO.isCurrentPartRefundSupport) {
                        pandora.dialog({
                            title: '页面超时',
                            content: '当前页面已过期，单击“确定”为您刷新页面！',
                            width: 500,
                            okClassName: "giftSureBtn",
                            ok: function() {
                                window.location.reload();
                            }
                        });
                    }
                    // 退款方式异常
                    if(userRefundApplyVO.refundWay == null) {
                        pandora.dialog({
                            title: '页面加载失败',
                            content: '页面加载遇到问题，将为您刷新后重试！',
                            width: 500,
                            okClassName: "giftSureBtn",
                            ok: function() {
                                window.location.reload();
                            }
                        });
                        return;
                    }

                    // 退款原因 默认值
                    if(7 == $('#partRefundReasonType').get(0).selectedIndex) {
                        $('.ipt_txt1').hide();
                    }
                    $('#partRefundReasonType').get(0).selectedIndex = 0;

                    // (门票)
                    ticketSubOrderId = userRefundApplyVO.subOrderId;
                    ticketCategoryId = userRefundApplyVO.categoryId;
                    // 每份票总数
                    adultAndChildSum = userRefundApplyVO.sumAdultAndChild;
                    // 可退份数
                    availableRefundQuantity = userRefundApplyVO.availableRefundQuantity;
                    refundWay = userRefundApplyVO.refundWay;

                    // 扣款明细隐藏(默认隐藏)
                    $('#lossAmount-detail').hide();
                    // 设置标志
                    isLossAmountShown = false;

                    // 保险
                    if(userRefundApplyVO.isInsuranceExist) {
                        isInsuranceExist = true;
                        // 可退
                        if(userRefundApplyVO.isInsuranceCanRefund) {
                            isInsuranceCanRefund = true;
                            insuranceSubOrderId = userRefundApplyVO.insuranceSubOrderId;
                            insuranceCategoryId = 3;
                            // 不可退
                        } else {
                            isInsuranceCanRefund=false;
                            $('#insurance-memo').html('（' + userRefundApplyVO.insuranceMemo + '）');
                        }
                    }else{
                        isInsuranceExist=false;
                    }

                    // 退款详细信息
                    var refundDetail = '';
                    // 退款方式(PERSON), 按人退
                    if(refundWay == 'PERSON') {
                        refundDetail += '<span class="refund_left_word fl"><em class="waitf30">*</em>退票游玩人：</span>';
                        refundDetail += '<div class="titck-person-box fl"><dl class="titck-person-list scrollbar">';
                        refundDetail += '<dt><a class="check" href="javascript:;" id="allcheck"><span class="checkbox personCheckBox"></span>全选</a><span class="tick-num-box">共有<em>';
                        refundDetail += availableRefundQuantity;
                        refundDetail += '</em>份门票可退</span></dt>';
                        var refundPersons = userRefundApplyVO.orderPersons;
                        $.each(refundPersons, function(index, value) {
                            refundDetail += '<dd><a class="check " href="javascript:;"><span class="checkbox personCheckBox" personId="';
                            refundDetail += value.personId;
                            refundDetail += '"></span>';
                            refundDetail += value.name;
                            refundDetail += '<span class="marL20">';
                            refundDetail += value.certNo;
                            refundDetail += '</span></a></dd>';
                        });
                        refundDetail += '</dl></div>';

                        // 退款方式(QUANTITY), 按份退
                    } else if(refundWay == 'QUANTITY') {

                        refundDetail += '<span class="refund_left_word "><em class="waitf30">*</em>订单份数：</span>';
                        refundDetail += '<div class="orderNumBox clearfix">';
                        refundDetail += '<a href="javascript:;" class="orderContro orderReduce num_stop fl">-</a>';
                        refundDetail += '<input type="text" value="0" disabled="disabled" id="refundNum-input" class="ordeRoomNum js_input fl" >';
                        refundDetail += '<a href="javascript:;" class="orderContro orderAdd fl">+</a>';
                        refundDetail += '<div class="orderNumBox-tip" id="refundMaxAmountWarning"><div class="orderNumBox_arrow"><span>◆</span><i>◆</i></div><i class="conmon_icon yel_mark"></i>达到最大可退数';
                        refundDetail += availableRefundQuantity;	// 份数
                        refundDetail += '份</div></div>';
                        refundDetail += '<span class="tick-num-box"> 共有<em>';
                        refundDetail += availableRefundQuantity;	// 份数
                        refundDetail += '</em>份门票可退</span>';

                    } else {}

                    // 退款总额
                    $('#refundAmount').html('--');
                    $('#insurance-memo').html('');
                    $('#partRefund-refundDetail').html(refundDetail);

                    // show dialog
                    pandora.dialog({
                        title: "申请退款",
                        content:$("#partRefund"),
                        width: 520,
                        cancelValue: "",
                        okValue: "",
                        ok: function(){ },
                        cancel: function(){ }
                    });

                    // hide info when refundway is "QUANTITY"
                    $('#refundMaxAmountWarning').hide();
                    $('#partRefund-lossDetail').hide();

                } else if(result != null) {
                    pandora.dialog({
                        title: "系统异常",
                        content: '小驴出错了，请重试一次！',
                        width: 500,
                        okClassName: "giftSureBtn",
                        ok: function() {}
                    });
                    return false;
                }
            },
            error:function() {
                pandora.dialog({
                    title: '系统异常',
                    content: "小驴出错了:'(",
                    width: 500,
                    okClassName: "giftSureBtn",
                    ok: function() {
                        window.location.reload();
                    }
                });
            }
        });
    });
});

//明细展示
function showdetail(obj){
    obj.find('.tick-down').addClass('tick-up')
    obj.siblings('.tick-pro-info').show();
}
function hidedetail(obj){
    obj.find('.tick-down').removeClass('tick-up')
    obj.siblings('.tick-pro-info').hide();
}
$(function() {
    $('.tick-detailed').toggle(function() {
        var _this = $(this);
        showdetail(_this);
    },function(){
        var _this = $(this);
        hidedetail(_this)
    });
});

//选择其它
function selectOther(){
    $('#partRefundReasonType option').each(function(){
        if($('#partRefundReasonType option:last').attr('selected')){
            $('.ipt_txt1').show();
        }else{
            $('.ipt_txt1').hide();
        }
    })
}
$(function() {
    $('#partRefundReasonType').change(function(){
        selectOther()
    });
});

///////////////////////////////// 计算退款详情 /////////////////////////////////
var timer;

// ajax计算退款
function calcRefundDetail(refundValue) {
    $("#refundSign").text("￥");
    $("#refundExplainId").text("");
    var data = {
        orderId: partRefundOrderId,
        ticketOrderItemId: ticketSubOrderId,
        ticketCategoryId: ticketCategoryId,
    };
    var checkQuality=0;
    if(refundWay == 'PERSON') {
        checkQuality=refundValue.length;
        refundQuantity = refundValue.length / adultAndChildSum;
        insuranceRefundQuantity = refundValue.length;
    } else if(refundWay == 'QUANTITY') {
        checkQuality=refundValue;
        refundQuantity = refundValue;
        insuranceRefundQuantity = refundValue;
    }
    if(checkQuality==null || parseInt(checkQuality)<=0){
        $('#refundAmount').html("");
        $("#refundSign").text("");
        $('#refundExplainId').html("");
        $('#insurance-memo').html("");
        $('#partRefund-submit').hide();
        return false;
    }
    data.ticketRefundQuantity = refundQuantity;
    // insurance
    if(isInsuranceExist && isInsuranceCanRefund) {
        data.insuranceOrderItemId = insuranceSubOrderId;
        data.insuranceCategoryId = insuranceCategoryId;
        data.insuranceRefundQuantity = insuranceRefundQuantity;
    }

    if(timer) {
        clearTimeout(timer);
    }
    timer = setTimeout(function() {

        $.ajax({
            url:'/myspace/ajax/calcPartRefundAmount',
            data: data,
            type: 'post',
            dataType: 'json',
            error: function() {
                alert("系统异常！");
                $("#refundApply").show();	// "退款申请"按钮显示
            },
            beforeSend:function(XMLHttpRequest){
                $('#partRefund-submit').hide();
            },
            success: function(message) {
                if(null == message || false == message.success || null == message.partRefundVo) {
                    pandora.dialog({
                        title: '页面加载失败',
                        content: '页面加载遇到问题，将为您刷新后重试！',
                        width: 500,
                        okClassName: "giftSureBtn",
                        ok: function() {
                            window.location.reload();
                        }
                    });
                    return;
                }
                var partRefund = message.partRefundVo;

                // 扣款及详细说明
                if(null!=partRefund.lossAmount && 0 != partRefund.lossAmount) {
                    // 扣款总额
                    $('#lossAmount').html(partRefund.lossAmount);
                    // 扣款明细
                    var lossAmountDetails = partRefund.lossAmountDetailList;
                    var refundGoodsDetail = '';
                    var lossExplainDetail = '';
                    $.each(lossAmountDetails, function(index, value) {
                        refundGoodsDetail += '<i id="partRefund-goodName">';
                        refundGoodsDetail += value.suppGoodsName;
                        refundGoodsDetail += '</i>×<i id="partRefund-goodNum">';
                        refundGoodsDetail += value.refundQuality;
                        refundGoodsDetail += '</i><span class="marL20">单价：￥<i id="partRefund-goodPrice">';
                        refundGoodsDetail += value.price;
                        refundGoodsDetail += '</i></span>';
                        lossExplainDetail += value.lossExplain;
                    });
                    $('#refundGoodsDetail').html(refundGoodsDetail);
                    $('#refundLossExplain').html(lossExplainDetail);

                    if(!isLossAmountShown) {
                        $('#lossAmount-detail').show();
                        isLossAmountShown = true;
                    }

                } else {
                    if(isLossAmountShown) {
                        $('#lossAmount-detail').hide();
                        isLossAmountShown = false;
                    }
                }

                // show submit button
                if(partRefund.refundAmount!=null && partRefund.refundAmount!=""){
                    $("#refundExplainId").text("");
                    // 退款总额
                    $('#refundAmount').html(partRefund.refundAmount);
                    partRefundAmount = partRefund.refundAmount;
                    // 退款保险说明
                    if(isInsuranceExist && isInsuranceCanRefund) {
                        $('#insurance-memo').html('（' + partRefund.refundExplain + '）');//有保险且可退时存放保险退改说明
                    }else if(isInsuranceExist && !isInsuranceCanRefund){
                        $('#insurance-memo').html('（' +"保险已生效，不可退"+ '）');//有保险且可退时存放保险退改说明
                    }
                    $('#partRefund-submit').show();
                }else{
                    $('#refundAmount').html("");
                    $("#refundSign").text("");
                    //for font-size
                    $('#refundExplainId').html(partRefund.refundExplain);//本次退款申请无法提交,如有疑问请联系客服!
                    $('#insurance-memo').html("");
                    $('#partRefund-submit').hide();
                }
            }
        });

    }, 1000);	// delay for 1 sec;

}

////////////////////////////////////////////////////////////////////////////////
// 按人退
// 单选
$('body').on('click', '.check', function() {
    var _this = $(this);
    var person;
    person = _this.children('.personCheckBox').attr('personId');   // get personId
    if( _this.hasClass('checked') ) {
        $('#allcheck').removeClass('checked');
        _this.removeClass('checked');
        if(null != person) {
            selectedRefundPerson.splice(selectedRefundPerson.indexOf(person), 1);
            $('#partRefund-submit').hide();
            calcRefundDetail(selectedRefundPerson);
        }
    } else {
        _this.addClass('checked');
        if(null != person) {
            selectedRefundPerson.push(person);
            $('#partRefund-submit').hide();
            calcRefundDetail(selectedRefundPerson);
        }
    }
});
// 全选游玩人
$('body').on('click', '#allcheck', function() {
    if( $(this).hasClass('checked') ) {
        $('.check').addClass('checked');
        selectedRefundPerson = [];
        var personList = $('.titck-person-list').children('dd');
        personList.each(function() {
            var person;
            person = $(this).find('a.checked').children('.personCheckBox').attr('personId');  // get personId
            selectedRefundPerson.push(person);
            $('#partRefund-submit').hide();
            calcRefundDetail(selectedRefundPerson);
        });
    } else {
        $('.check').removeClass('checked');
        selectedRefundPerson = [];
        $('#partRefund-submit').hide();
        // lazy solution
        calcRefundDetail(selectedRefundPerson);
    }
});

//////////////////////////////////////////////////////////////////////////
// 按份数退
// +
$('body').on('click', '.orderAdd', function() {
    var val = $('#refundNum-input').val();
    if(val == availableRefundQuantity) {
        return;
    }
    $('#refundNum-input').val(++val);
    selectedRefundQuantity = val;
    calcRefundDetail(val);
    if( $('.orderReduce').hasClass('num_stop') ) {
        $('.orderReduce').removeClass('num_stop');
    }
    if( val == availableRefundQuantity && !$('.orderAdd').hasClass('num_stop') ) {
        $('.orderAdd').addClass('num_stop');
        $('#refundMaxAmountWarning').fadeIn();
    }
});

// -
$('body').on('click', '.orderReduce', function() {
    var val = $('#refundNum-input').val();
    if(val == 0) {
        return;
    }
    $('#refundNum-input').val(--val);
    selectedRefundQuantity = val;
    calcRefundDetail(val);
    if(val == 0) {
        $('.orderReduce').addClass('num_stop');
    }
    if( val < availableRefundQuantity && $('.orderAdd').hasClass('num_stop') ) {
        $('.orderAdd').removeClass('num_stop');
        $('#refundMaxAmountWarning').fadeOut();
    }
});

$(function() {
    // 提交
    $('#partRefund-submit').click(function() {

        //1、---------退款原因选择“其他”时，校验说明是否为空(说明为必填项)
        var selectedValue = $("#partRefundReasonType").find("option:selected").val();
        var reason = $("#partRefundReasonType").find("option:selected").text();
        var cancelCode=$("#partRefundReasonType").find("option:selected").attr("data");
        if(selectedValue != null && selectedValue == 0) {
            pandora.dialog({
                title: '提交信息不完整',
                content: '亲，你忘记选择退款原因喽！',
                width: 500,
                okClassName: "giftSureBtn",
                ok: function() {}
            });
            return false;
        }
        if(selectedValue != null && selectedValue == 7) {
            var refundReason = $.trim($("#partRefundReason").val());
            if(refundReason == undefined || refundReason == null || refundReason == '') {
                pandora.dialog({
                    title: '提交信息不完整',
                    content: '亲，请填写退款说明哦！',
                    width: 500,
                    okClassName: "giftSureBtn",
                    ok: function() {}
                });
                return false;
            } else if(refundReason.length > 100) {
                pandora.dialog({
                    title: '提交信息不完整',
                    content: '亲，我知道您有很多话要说，但是最多支持100个字符哦！',
                    width: 500,
                    okClassName: "giftSureBtn",
                    ok: function() {}
                });
                return false;
            } else {
                reason = refundReason;
            }
        }
        var lossExplain=$('#refundLossExplain').text();
        var lossAmount=$('#lossAmount').text();
        var data = {
            orderId: partRefundOrderId,
            ticketOrderItemId: ticketSubOrderId,
            ticketCategoryId: ticketCategoryId,
            reason: reason,
            cancelCode:cancelCode,
            refundAmount: partRefundAmount,
            refundWay:refundWay,
            lossExplain:lossExplain,
            lossAmount:lossAmount
        };
        if(refundWay == 'PERSON') {
            if(selectedRefundPerson!=null && selectedRefundPerson.length>0){
                data.refundPersons = JSON.stringify(selectedRefundPerson);
            }
        }
        data.ticketRefundQuantity = refundQuantity;
        if(isInsuranceExist){
            data.insuranceRefundExplain = $('#insurance-memo').text();
        }
        // insurance
        if(isInsuranceExist && isInsuranceCanRefund) {
            data.insuranceOrderItemId = insuranceSubOrderId;
            data.insuranceCategoryId = insuranceCategoryId;
            data.insuranceRefundQuantity = insuranceRefundQuantity;
        }

        if (0 == data.ticketRefundQuantity) {
            pandora.dialog({
                title: '提示',
                content: '亲，你选择的退款项目不符合要求哦！',
                width: 500,
                okClassName: "giftSureBtn",
                ok: function() {}
            });
            return false;
        }

        $.ajax({
            url: '/myspace/ajax/refundAjaxSubmit',
            data: data,
            type: 'post',
            dataType: 'json',
            beforeSend:function(XMLHttpRequest){
                $('#partRefund-submit').hide();
            },
            success: function(result) {
                var resultMap = result.resultMap;
                if(result != null && resultMap != null && null != resultMap.PART_REFUND_SUCCESS) {

                    if(resultMap.PART_REFUND_SUCCESS) {
                        pandora.dialog({
                            title: '恭喜！',
                            content: '退款申请成功，将为您刷新页面更新状态！',
                            width: 500,
                            okClassName: "giftSureBtn",
                            ok: function() {
                                window.location.reload();
                            }
                        });
                        return;
                    } else {
                        var errorType = null;
                        if(null != resultMap.PART_REFUND_ERROR_TYPE) {
                            errorType = resultMap.PART_REFUND_ERROR_TYPE;
                        }
                        // 提交失败详情获取出错
                        if(null == errorType) {
                            pandora.dialog({
                                title: '系统异常',
                                content: '小驴走丢了，请再试一次!',
                                width: 500,
                                okClassName: "giftSureBtn",
                                ok: function() {}
                            });
                            return false;
                        }
                        if('QUANTITY' == errorType) {
                            pandora.dialog({
                                title: '出错喽！',
                                content: resultMap.MSG,
                                width: 500,
                                okClassName: "giftSureBtn",
                                ok: function() {
                                    window.location.reload();
                                }
                            });
                            return false;
                        } else if('AMOUNT' == errorType) {
                            pandora.dialog({
                                title: '出错喽！',
                                content: resultMap.MSG,
                                width: 500,
                                okClassName: "giftSureBtn",
                                ok: function() {
                                    window.location.reload();
                                }
                            });
                            return false;
                        } else {

                        }

                    }

                } else {
                    pandora.dialog({
                        title: '系统异常！',
                        content: result.errorMsg,
                        width: 500,
                        okClassName: "giftSureBtn",
                        ok: function() {}
                    });
                    // show submit button to enable submit again
                    $('#partRefund-submit').show();
                    return false;
                }
            },
            error:function(){
                pandora.dialog({
                    title: '系统异常！',
                    content: '小驴走丢了，请重试一次！',
                    width: 500,
                    okClassName: "giftSureBtn",
                    ok: function() {}
                });
                return false;
            }
        });

    });
});
