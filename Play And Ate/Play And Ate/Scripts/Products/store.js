jQuery(function(){
$(document).ready(function(e) {
	
	$("#xiugai").click(function(e){
    	$("#mobile_1").css({"display":"block"});
	    $("#mobile").css({"display":"none"});
	    $("#bookStepSubmit").css({"display":"none"});
	    $("#book").css({"display":"block"});
	});
	$("#fanhui").click(function(e){
		$("#mobile_1").css({"display":"none"});
    	$("#mobile").css({"display":"block"});
    	$("#bookStepSubmit").css({"display":"block"});
		 $("#book").css({"display":"none"});
	});
	$("#book").click(function(e){
		$.showErr("您好，请验证您的手机!",function(){
			return false;
		});
		return false;
		
	});
    var reg =/^0{0,1}(13[0-9]|147|145|178|176|177|15[0-9]|18[0-9])[0-9]{8}$/; 
  //获取手机验证码
	$("#mobile_code").click(function(){
		if(!reg.test($("#orderMyTel").val()))
			{
			$.showErr("您好，您的手机号不正确!",function(){
				return false;
			});
			return false;
			}
		if($("#orderMyTel").val()==""){
			$.showErr("您好，您的手机号不能为空!",function(){
				return false;
			});
			return false;
		}
		$.ajax({ 
			url: APP_ROOT+"/msg_send_fs.php?act=form-mobile&mobile="+$("#orderMyTel").val()+"&user_id="+$("#user_id").val(),
			data:null,
			type:"POST",
			dataType: "json",
			success: function(data) {
			}
		});
		//倒计数
		function dtime(i){
			var i = i;
			timer = setInterval(updateNum, 1000);
			updateNum();
			$("#mobile_code").attr("disabled", "true");
			function updateNum() {
			    if(i <= 0){
			    	$("#mobile_code").removeAttr("disabled");
			    	$("#mobile_code").val("发送验证码");
			    	window.clearInterval(timer);
			    } else {
			    	$("#mobile_code").val(i--+"秒后才可重发..");
			    }
			}
		}
		dtime(60);
	});
	if($("#mobile_hi").val()=="")
		{
		 	$("#bookStepSubmit").css({"display":"none"});
		    $("#book").css({"display":"block"});
		}
	$("#mobile_sub").click(function(){
		if($("#code").val()=="")
				{
				$.showErr("验证码不能为空!",function(){
					return false;
				});
				return false;
				 $("#bookStepSubmit").css({"display":"none"});
				 $("#book").css({"display":"block"});
			}
		$.ajax({
			url:APP_ROOT+"/store.php?ctl=order&act=code_submit&dest="+$("#orderMyTel").val()+"&code="+$("#code").val()+"&user_id="+$("#user_id").val(),
			data:null,
			type:"post",
			success:function(result){
				if(result==0)
				{	
					$.showErr("验证码错误!",function(){
						return false;
					});
					return false;
					$("#bookStepSubmit").css({"display":"none"});
					$("#book").css({"display":"block"});
				}
				else{
					$("#mobile_2").html(result);
					$("input[name='mobile_hi']").val(result);
					$("#mobile_1").css({"display":"none"});
			    	$("#mobile").css({"display":"block"});
			    	$("#bookStepSubmit").css({"display":"block"});
					 $("#book").css({"display":"none"});
				}
			}
		});
		return false;
	});
});
	
	$("#brief_small a.act").bind("click",function(){
		$("#brief_big").show();
		$("#brief_small").hide();
	});
	$("#brief_big a.act").bind("click",function(){
		$("#brief_big").hide();
		$("#brief_small").show();
	});
	
	$(".jsForReport").hover(function(){
		$(this).addClass("bgf0");
	},function(){
		$(this).removeClass("bgf0");
	});
	
	$("#submit-store-view-form-date").bind("click",function(){
		$("form#store-view-form-date").submit();
	});
	
	storeViewImpBox();
	
	//预定日期
	if ($("#orderDate").length > 0) {
		$("#orderDate").datepicker({
			minDate: 0,
			numberOfMonths: 2,
			dateFormat: 'yy年mm月dd日 DD'
		});
	}
	
	//计算时间差
	function  DateDiff(sDate1,  sDate2){
	     var  aDate,  oDate1,  oDate2,  iDays;  
	     aDate  =  sDate1.split("-");
	     oDate1 = new Date(aDate[0] , aDate[1] ,aDate[2]);
	     aDate = sDate2.split("-");
	     oDate2 = new Date(aDate[0] , aDate[1] , aDate[2]); 
	     iDays  =  parseInt(Math.abs(oDate1  -  oDate2)  /  1000  /  60  /  60  /24);
	     if(isNaN(iDays)){
	    	 return 0;
	     }
	     return  iDays;  
    }

	//入住时间
	if ($("#arriveDate").length > 0) {
		$("#arriveDate").datepicker({
			minDate : 0,
			numberOfMonths : 2,
			onSelect : function(selectedDate) {
			    $("#leaveDate").datepicker("option", "minDate", selectedDate);
			   
			    //根据时段确定房价
			    var arrive_time = $("#arriveDate").val();
				var leave_time = $("#leaveDate").val();
				if (arrive_time.length > 0 && leave_time.length > 0) {
					room_price = getRoomPrice(store_id,arrive_time, leave_time);
					if (room_price > 0) {
						var days = DateDiff(arrive_time, leave_time);
						var total_price = days*room_price*$("#orderRoomNums").val();
						$("#price").html(total_price);
						$("#room_vip_price").html(room_price);
						$("#total_price").val(total_price);
					}
				}
			}
	    });
	}
	
	//离开时间
	if ($("#leaveDate").length > 0) {
		$("#leaveDate").datepicker({
		    minDate : 0,
			changeMonth : true,
			numberOfMonths : 2,
			onSelect : function(selectedDate) {
			    $("#arriveDate").datepicker("option", "maxDate", selectedDate);
			    
			    //根据时段确定房价
			    var arrive_time = $("#arriveDate").val();
				var leave_time = $("#leaveDate").val();
				if (arrive_time.length > 0 && leave_time.length > 0) {
					room_price = getRoomPrice(store_id,arrive_time, leave_time);
					if (room_price > 0) {
						var days = DateDiff(arrive_time, leave_time);
						var total_price = days*room_price*$("#orderRoomNums").val();
						$("#price").html(total_price);
						$("#room_vip_price").html(room_price);
						$("#total_price").val(total_price);
					}
				}
			}
	    });
	}
	
	//选中房型
	var room_price;
	$(".typename").bind("click", function() {
		$(".typename").removeClass("bod");
		$(this).addClass("bod");
		$("#orderRoomInfo").val($(this).text());
		room_price = $(this).attr("lang");
		
		//根据时段获取优惠房价
		var arrive_time = $("#arriveDate").val();
		var leave_time = $("#leaveDate").val();
		if (arrive_time.length > 0 && leave_time.length > 0) {
			ajax_price = getRoomPrice(store_id,arrive_time, leave_time);
			if (ajax_price > 0) {
				room_price = ajax_price;
			}
		}
		var days = DateDiff(arrive_time, leave_time);
		var total_price = days*room_price*$("#orderRoomNums").val();
		$("#price").html(days);
		$("#total_price").val(total_price);
		
		//显示对应房型信息
		$("#room_img").attr("src", $(this).attr("id"));
		$("#room_img_form").val($(this).attr("id"));
		var store_price = $(this).attr("name");
		$("#room_store_price").html(store_price);
		$("#room_vip_price").html(room_price);
		$("#room_price_info").css("display", "block");
	});
	
	if ($(".typename").length == 1) {
	    $(".typename").click();
	}
	
	//房间数量加减
	var i;
	i=$("#orderRoomNums").val();
	$("#jia").click(function(){
		if(i<20) {
			$("#tx").html("");
			i++;
		} else {
			$("#tx").html("相同房型的房间，每次最多预定20间！");
		}
		$("#orderRoomNums").val(i);
		var arrive_time = $("#arriveDate").val();
		var leave_time = $("#leaveDate").val();
		var days = DateDiff(arrive_time, leave_time);
		var total_price = i*room_price*days;
		$("#price").html(total_price);
		$("#total_price").val(total_price);
	});
	$("#jian").click(function(){
		if(i>1) {
			$("#tx").html("");
			i--;
		} else {
			$("#tx").html("房间数量不能少于1！");		
		}
		$("#orderRoomNums").val(i);
		var arrive_time = $("#arriveDate").val();
		var leave_time = $("#leaveDate").val();
		var days = DateDiff(arrive_time, leave_time);
		$("#price").html(i*room_price*days);
		$("#total_price").val(i*room_price*days);
	});
	
	$("#orderHour").bind("click",function(){
		var obj = $(this);
		var val = obj.val();
		var str = "<ul>";
		var mn_i = 10;
		var mx_i = 21;
		if (deal_type == 1) {
			mn_i = 0;
			mx_i = 24;
		}
		for (i = mn_i; i <= mx_i; i++) {
			if (val == i + "点") 
				str += '<li><a href="javascript:void(0);" class="on">' + i + '点</a></li>';
			else 
				str += '<li><a href="javascript:void(0);">' + i + '点</a></li>';
		}
		str += "</ul>";
		$("#FW-DATE-BOX").html(str);
		$("#FW-DATE-BOX").css({
			width: obj.innerWidth(),
			top: (obj.offset().top + obj.outerHeight()) + "px",
			left: (obj.offset().left) + "px"
		});
		
		$("#FW-DATE-BOX").show();
		setValDate(obj);
		$("body").one("click",function(){
			$("#FW-DATE-BOX").hide();
		});
		return false;
	});
	
	$("#orderMini").bind("click",function(){
		var obj = $(this);
		var val = obj.val();
		var str = "<ul>";
		var k= 0;
		for (i = k; i <= 45; i++) {
			if (i % 15 == 0) {
				if(i==0)
					i="00";
				if (val == i + "分") 
					str += '<li><a href="javascript:void(0);" class="on">' + i + '分</a></li>';
				else 
					str += '<li><a href="javascript:void(0);">' + i + '分</a></li>';
			}
		}
		str += "</ul>";
		$("#FW-DATE-BOX").html(str);
		$("#FW-DATE-BOX").css({
			width: obj.innerWidth(),
			top: (obj.offset().top + obj.outerHeight()) + "px",
			left: (obj.offset().left) + "px"
		});
		
		$("#FW-DATE-BOX").show();
		setValDate(obj);
		$("body").one("click",function(){
			$("#FW-DATE-BOX").hide();
		});
		return false;
	});
	
	$("#orderForOther").bind("click",function(){
		if($(this).attr("checked")==true)
		{
			$("#orderOtherBox").removeClass("hide");
		}
		else{
			$("#orderOtherBox").addClass("hide");
		}
	});
	
	$("#orderReqArea").focus(function(){
		if($(this).val()==$(this).attr("placeholder") || $(this).val()==""){
			$(this).val("");
			$(this).removeClass("g9");
		}
	});
	$("#orderReqArea").blur(function(){
		if($(this).val()==$(this).attr("placeholder") ||$(this).val()==""){
			$(this).val($(this).attr("placeholder"));
			$(this).addClass("g9");
		}
	});
	
	
	$("#bookStepSubmit").click(function(){
		var check = checkStoreOrderForm();
		if (!check) {
			return false;
		}
		
		if($("#orderReqArea").val()==$("#orderReqArea").attr("placeholder")){
			$("#orderReqArea").val("");
		}
		var query = $("#STORE-ORDER-FORM").serialize();
		$.ajax({
			url:APP_ROOT+"/store.php?ctl=order&act=submit&is_ajax=1&deal_type=" + deal_type,
			data:query,
			type:"post",
			dataType: "json",	
			cache:false,
			success:function(result){
				if(result.status==true)
				{
					window.location.href = APP_ROOT+"/store.php?ctl=order&act=view&order_id="+result.order_id;
				}
				else{
					$.showErr(result.message);
				}
			}
		});
		return false;
	});
	$("#bookStepModifySubmit").click(function(){
		checkStoreOrderForm();
		if($("#orderReqArea").val()==$("#orderReqArea").attr("placeholder")){
			$("#orderReqArea").val("");
		}
		var query = $("#STORE-ORDER-MODIFY-FORM").serialize();
		$.ajax({
			url:APP_ROOT+"/store.php?ctl=order&act=update&is_ajax=1",
			data:query,
			type:"post",
			dataType: "json",	
			cache:false,
			success:function(result){
				if(result.status==true)
				{
					window.location.href = APP_ROOT+"/store.php?ctl=order&act=view&order_id="+result.order_id;
				}
				else{
					$.showErr(result.message);
				}
			}
		});
		
		return false;
	});
	if (is_order_show) {
		getSeatStatus();
		$("#orderDate").change(function(){
			getSeatStatus();
		});
	}
	
	$("#ul-store-detail-nav li").click(function(){
		$("#ul-store-detail-nav li").removeClass("act");
		$(this).addClass("act");
		if($(this).attr("rel")=="ul-store-info"){
			$("ul.store-ul").show();
		}
		else{
			$("ul.store-ul").hide();
			$("#"+$(this).attr("rel")).show();
		}
	});
	
	if ($("#choFloatBox").length > 0) {
		$(window).scroll(function(){
		
			var s_top = $(document).scrollTop() + $(window).height() - $("#choFloatBox").height();
			if ($.browser.msie && $.browser.version == "6.0") {
				$("#choFloatBox").css("top", s_top);
			}
		});
	}
	get_ctmenu_float_all(false);
	
	$("#invWriteBtn").bind("click",function(){
		invAlertBox();	
	});
	
});

//根据时段获取房价
function getRoomPrice(location_id, start_time, end_time) {
	var price=0;
	var room_type = $("#orderRoomInfo").val();
	$.ajax({
		url:APP_ROOT+"/store.php?ctl=order&act=roomPrice&location_id="+location_id+"&room_type="+room_type+"&start_time="+start_time+"&end_time="+end_time,
		type:"post",
		dataType: "json",	
		cache:false,
		async:false,
		success:function(result){
			if (result.price > 0) {
				price = result.price;
			}
		},
		error:function(o){
			price = price_org;
		}
	});
	if (price <=0 ) {
		price = price_org;
	}
	return price;
}

function checkStoreOrderForm(){
	if(deal_type == 0) {
		   if($("#orderDate").val()==""){
				var tip = "预定时间不能为空!";
				$.showErr(tip,function(){
					$("#orderDate").focus();
					return false;
				});
				return false;
		   }
	    	
	    	//预订时段
	    	var orderHour_j=0;
	    	$(".orderHour").each(function() {   
	    	   if($(this).attr("checked")) {
	    		   orderHour_j++
	    	   } 
	    	});
	    	if(orderHour_j < 1) {
				var tip = "请选择预定时段!";
				$.showErr(tip,function(){
					return false;
				});
				return false;
			}
	    	
	    	//就餐人数
	    	if($("#orderNums").val()==""){
				var tip = "就餐人数不能为空!";
				$.showErr(tip,function(){
					$("#orderNums").focus();
					return false;
				});
				return false;
			}
	    	
	    	//餐位情况
			var check_seat =false;
			$(".orderSeat").each(function(){
				if($(this).attr("checked")==true){
					check_seat = true;
				}
			});
			if (!check_seat) {
				$.showErr("您还没有选择就餐位!");
				return false;
			}
		} else {
			if($("#arriveDate").val()==""){
				var tip = "入住时间不能为空!";
				$.showErr(tip,function(){
					$("#arriveDate").focus();
					return false;
				});
				return false;
			}
			if($("#leaveDate").val()==""){
				var tip = "离开时间不能为空!";
				$.showErr(tip,function(){
					$("#leaveDate").focus();
					return false;
				});
				return false;
			}
			if($("#orderRoomInfo").val()==""){
				var tip = "入住房型不能为空!";
				$.showErr(tip,function(){
					return false;
				});
				return false;
			}
			if($("#orderRoomInfo").val()==""){
				var tip = "入住房型不能为空!";
				$.showErr(tip,function(){
					return false;
				});
				return false;
			}
			if($("#orderRoomNums").val()==""){
				var tip = "房间数量不能为空!";
				$.showErr(tip,function(){
					return false;
				});
				return false;
			}
			if($("#orderGuestName").val()==""){
				var tip = "住客姓名不能为空!";
				$.showErr(tip,function(){
					$("#orderGuestName").focus();
					return false;
				});
				return false;
			}
			if($("#orderLateArrive").val()==""){
				var tip = "最晚抵达不能为空!";
				$.showErr(tip,function(){
					$("#orderLateArrive").focus();
					return false;
				});
				return false;
			}
		}
		
		var check_seat = false;
		$("input.seatRequire").each(function(){
			if($(this).attr("checked")==true){
				check_seat = true;
			}
		});
				
		if($.trim($("#orderMyTel").val())==""){
			$.showErr("您好，我们需要知道您的手机号以方便联系您!",function(){
				$("#orderMyTel").focus();
				return false;
			});
			return false;
		}
		else if(!$.checkMobilePhone($("#orderMyTel").val())){
			$.showErr("您好，您的手机号格式不正确!",function(){
				$("#orderMyTel").focus();
				return false;
			});
			return false;
		}
		
		if($.trim($("#orderMyName").val())==""){
			$.showErr("您好，我们需要知道您的姓名!",function(){
				$("#orderMyName").focus();
				return false;
			});
			return false;
		}
		return true;
}

function getSeatStatus(){
	if($.trim($("#orderDate").val())!="" && $.trim($("#orderHour").val())!="" && $.trim($("#orderMini").val())!=""){
		var query = new Object();
		query.id = store_id;
		query.orderDate = $.trim($("#orderDate").val());
		query.orderHour = $.trim($("#orderHour").val());
		query.orderMini = $.trim($("#orderMini").val());
		query.seatStatus = seatStatus;
		query.minExpense = minExpense;
		query.seatSwitch = seatSwitch;
		query.deal_type = deal_type;
		$.ajax({
			url:APP_ROOT+"/store.php?ctl=order&act=seatstatus",
			data:query,
			type:"post",
			dataType: "json",	
			cache:false,
			success:function(result){
				if (result.status == 1) {
					$("#seatStatusAjaxBox").html(result.html);
					$("#seatStatusAjaxTip").html(result.message);
					$("#seatStatusAjaxTip").css({"color":"red"});
					$(".seatRequire").click(function(){
						if($(this).val()=="1")
						{
							$("#minExpenseBox").removeClass("hide");
							$("#minExpense").attr("disabled","");
						}
						else{
							$("#minExpenseBox").addClass("hide");
							$("#minExpense").attr("disabled","disabled");
						}
					});
				}
				else {
					$("#seatStatusAjaxBox").html("");
					$("#seatStatusAjaxTip").html(result.message);
					$("#seatStatusAjaxTip").css({"color":"#800"});
				}
			},
			error:function(o){
				//alert(o.responseText);
			}
		});
	}
}

function setValDate(obj){
	$("#FW-DATE-BOX").find("a").bind("click",function(){
		obj.val($(this).html());
		$("#FW-DATE-BOX").hide();
		if(is_order_show){
			getSeatStatus();
		}
		return false;
	});
}

//is_buy==2取所有
function load_store_dp(id,is_best,filter,sort)
{
	$.ajax({ 
		url: APP_ROOT+"/store.php?ctl=review&act=ajax_list&is_best="+is_best+"&supplier_location_id="+id+"&filter="+filter+"&sort="+sort,
		type: "POST",	
		dataType: "json",	
		cache:false,		
		success:function(result){
			$("#store_dp").html(result.html);
		},
		error:function(o){
			//alert(o.responseText);
		}
	});
}

function load_review_form(id,deal_cate_id)
{
	$.ajax({ 
		url: APP_ROOT+"/store.php?ctl=view&act=get_reivew_form&is_ajax=1&id="+id+"&deal_cate_id="+deal_cate_id ,
		type: "POST",		
		cache:false,		
		success:function(result){
			$("#review_form").html(result);
		},
		error:function(o){
			
		}
	});
}

$(document).ready(function(){
	$(".ext_nav").find("li").bind("click",function(){
		load_store_extra($(this).attr("rel"),$(this).attr("data"));
	});
	$(".ext_nav").find("li:first").click();
});

function store_send_form(store_id){
	$.ajax({
		url: APP_ROOT + "/store.php?ctl=index&act=send_sms_view&id=" + store_id,
		type: "POST",
		dataType:"json",
		success: function(result){
			if (result.status == 2) {
				ajax_login();
			}
			else if (result.status == 0) {
				$.showErr(result.message);
			}
			else {
				$.weeboxs.open(result.html, {contentType: 'text',showButton: false,title: LANG['STORE_SMS_TITLE'],width: 500,type: 'wee'});
			}
		}
	});
}

function StoreSmsSend(){
	var check_mobile = false;
	$(".store_sms_form form .mobile-input").each(function(){
		if($(this).val()!=""){
			check_mobile = true;
		}
	});
	
	if(check_mobile==false){
		$.showErr(LANG['FILL_MOBILE_PHONE']);
		return ;
	}
	
	var data = $(".store_sms_form form").serialize();
	
	$.ajax({
		url: APP_ROOT + "/store.php?ctl=index&act=send_store_sms",
		data:data,
		type: "POST",
		dataType: "json",
		success: function(result){
			if (result.status == 2) {
				closeCouponSms();
				ajax_login();
			}
			else if (result.status == 0) {
				$.showErr(result.message);
			}
			else {
				closeCouponSms();
				$.showErr(LANG['SEND_HAS_SUCCESS']);
			}
		}
	});
	
}

function load_store_extra(location_id,type)
{
	$.ajax({ 
		url: APP_ROOT+"/store.php?ctl=view&act=ajax_get_content&is_ajax=1&id="+location_id+"&type="+type ,
		type: "POST",
		success:function(result){
			$(".ext_nav").find("li").removeClass("act");
			$(".ext_nav").find("li[data='"+type+"']").addClass("act");
			$(".detail_cnt").find("li").hide();

			$(".detail_cnt").find("#extra_info").html(result);
			$(".detail_cnt").find("#extra_info").show();
			
			
		},
		error:function(o){
			
		}
	});
}

function vote_tag(tag_name,group_id,location_id,dom)
{
	var query = new Object();
	query.tag_name = tag_name;
	query.group_id = group_id;
	query.location_id = location_id;
	$.ajax({ 
		url: APP_ROOT+"/store.php?ctl=index&act=vote_tag" ,
		type: "POST",
		data:query,
		dataType:"json",
		success:function(result){
			if(result.status==1)
			{
				$(dom).html(result.info);
			}
			else if(result.status==2)
			{
				ajax_login();
			}
			else
			{
				$.showErr(result.info);
			}
			
			
		},
		error:function(o){
			
		}
	});
}

function join_store(url)
{
	var ajaxurl = APP_ROOT+"/shop.php?ctl=ajax&act=check_login_status";
	$.ajax({ 
		url: ajaxurl,
		dataType: "json",
		type: "POST",
		success: function(ajaxobj){
			if(ajaxobj.status==0)
			{
				ajax_login();
			}
			else
			{
				location.href = url;
			}
		},
		error:function(ajaxobj)
		{
//			if(ajaxobj.responseText!='')
//			alert(ajaxobj.responseText);
		}
	});	
}

function sign_location(id)
{
	var ajaxurl_ck = APP_ROOT+"/shop.php?ctl=ajax&act=check_login_status";
	$.ajax({ 
		url: ajaxurl_ck,
		dataType: "json",
		type: "POST",
		success: function(ajaxobj){
			if(ajaxobj.status==0)
			{
				ajax_login();
			}
			else
			{
				var ajaxurl = APP_ROOT+"/store.php?ctl=index&act=sign_page&id="+id;
				$.weeboxs.open(ajaxurl, {contentType: 'ajax',showButton: false,title:"签到评分",width: 500,type: 'wee'});
			}
		},
		error:function(ajaxobj)
		{
//			if(ajaxobj.responseText!='')
//			alert(ajaxobj.responseText);
		}
	});	
	
}


//关于签到的评分

(function($) {      
	//主评分的控制
	$.fn.sign_rating_main = function() {
		var level_data = new Array("差","一般","好","很好","非常好");
		var outBar = $(this);
		$(outBar).find("span").find("input").val(0);	
	    var total_width = $(outBar).width();
	    var sec_width = total_width / 5;	    
	    $(outBar).bind("mousemove mouseover",function(event){
	    	//绑定移动事件
	    	var pageX = event.pageX; //左移量
	    	var left = $(outBar).offset().left;
	    	var move_left = pageX - left;	    	
	    	var sector = Math.ceil(move_left/sec_width);
	    	var cssWidth = (sector * sec_width) + "px";
	    	var tip = level_data[sector - 1];
	    	$("#sign_score_tips").find("span").html(tip);
	    	$(outBar).find("span").attr("sector",sector);
	    	$(outBar).find("span").css("width",cssWidth);	    	
	    });
	    $(outBar).bind("mouseout",function(){
	    	var current_sec = $(outBar).find("span").find("input").val();
	    	var cssWidth = (current_sec * sec_width) + "px";
	    	if(current_sec == 0 )
	    	{
	    		$("#sign_score_tips").find("span").html("点击星星为商家打分，最高5颗星");
	    	}
	    	else
	    	{
	    		$("#dp_point_tips").hide();
	    		var tip = level_data[current_sec - 1];
		    	$("#sign_score_tips").find("span").html(tip);		    	
	    	}
	    	
	    	$(outBar).find("span").css("width",cssWidth);	
	    });
	    $(outBar).bind("click",function(){
	    	var current_sec = $(outBar).find("span").attr("sector");
	    	$(outBar).find("span").find("input").val(current_sec);	
	    });
	    
	};   
	
	
})(jQuery); 

function do_sign_location(id,point)
{
	
	if(isNaN(point)||point<=0||point>5)
	{
		$.showErr("请点击星星为商家打分，最高5颗星");
		return;
	}
	var ajaxurl_ck = APP_ROOT+"/shop.php?ctl=ajax&act=check_login_status";
	$.ajax({ 
		url: ajaxurl_ck,
		dataType: "json",
		type: "POST",
		success: function(ajaxobj){
			if(ajaxobj.status==0)
			{
				close_pop();
				ajax_login();
			}
			else
			{
				var ajaxurl = APP_ROOT+"/store.php?ctl=index&act=do_sign";
				var query = new Object();
				query.id = id;
				query.point = point;
				$.ajax({ 
					url: ajaxurl,
					dataType: "json",
					data:query,
					type: "POST",
					success: function(ajaxobj){
						if(ajaxobj.status)
						{
							$.showSuccess("签到成功",function(){
								location.reload();
							});
						}
						else
						{
							$.showErr(ajaxobj.message);
						}
					},
					error:function(ajaxobj)
					{
//						if(ajaxobj.responseText!='')
//						alert(ajaxobj.responseText);
					}
				});
			}
		},
		error:function(ajaxobj)
		{
//			if(ajaxobj.responseText!='')
//			alert(ajaxobj.responseText);
		}
	});
}

function storeViewImpBox(){
	if ($("#FW-STORE-VIEW-IMP-BOX").length > 0) {
		var obj = $("#FW-STORE-VIEW-IMP-BOX");
		var id = obj.attr("dataid");
		getImpResult(id, function(result){
			if (result.status == true) {
				obj.html(result.html);
				bindImpInput();
				return false;
			}
		});
	}
}

function load_ctmenu_nums_list(){
		if($("#foodListOut .res_cho_list .opt").length > 0){
			var ids = "0";
			$("#foodListOut .res_cho_list").each(function(){
				ids += ","+$(this).attr("data-id");
			});
			var query = new Object();
			query.ctl = "view";
			query.act = "ajax_get_menu_nums";
			query.ids = ids;
			$.ajax({
				url : APP_ROOT + "/store.php",
				data:query,
				type:"POST",
				cache:false,
				dataType:"json",
				success:function(result){
					for(i=0;i<result.length;i++){
						$("#foodListOut .res_cho_list").each(function(){
							if(result[i].id == parseInt($(this).attr("data-id"))){
								$(this).find(".opt").html(result[i].html);
								if(parseInt(result[i].nums) > 0){
									$(this).addClass("res_cho_list_on");
								}
								else{
									$(this).removeClass("res_cho_list_on");
								}
							}
						});
					}
				}
			});
		}
}

function set_ctmenu_nums(id,num,func){
	var query = new Object();
	query.ctl = "view";
	query.act = "ajax_set_menu_nums";
	query.id = id;
	query.num = num;
	$.ajax({
			url : APP_ROOT + "/store.php",
			data:query,
			type:"POST",
			cache:false,
			dataType:"json",
			success:function(result){
				if(result.html!="")
				{
					get_ctmenu_float_all(true);
					if(func!=null)
						func.call(this,result)
				}
			}
	});
}

function get_ctmenu_float_all(v){
	if ($("#foodListOut .res_cho_list").length > 0) {
		var id = store_id;
		$.ajax({
			url:APP_ROOT + "/store.php?ctl=view&act=ajax_get_menu_float_all&id="+id+"&is_morder="+is_morder+"&takeaway="+takeaway,
			dataType:"text",
			cache:false,
			success:function(result){
				$("#choFloatBox").html(result);
				if(v==false){
					$("#choFloatBody").hide();
					$(".res_cho_max_a").show();
					$(".res_cho_min_a").hide();
				}
				else{
					$("#choFloatBody").show();
					$(".res_cho_max_a").hide();
					$(".res_cho_min_a").show();
				}
			}
		});
	}
}

function invAlertBox(){
	var title = '<ul class="lb_tab">';
		title += '<li class="c rt3 " f="sms" title="短信"><a onfocus="$(this).blur();" href="javascript:void(0)">';
		title += '短信</a></li>';
		title += '<li class=" rt3 " f="email" title="邮件"><a onfocus="$(this).blur();" href="javascript:void(0)">';
		title += '邮件</a></li>';
		title += '</ul>';
	$.weeboxs.open(APP_ROOT + "/store.php?ctl=order&act=inv_alert_box&order_id="+order_id, {contentType:'ajax',boxid:'invAlertBox',showButton:false,title:title,width:780,height:305});	
}