$(function(){
	if($(".ico-bind-email").length > 0){
		var xh_left_email = $(".ico-bind-email").position().left +20;
		var xh_top_email = $(".ico-bind-email").position().top -10;
	
		$(".bind-email").css({"left":xh_left_email,"top":xh_top_email,"display":"block"});
	}
	if($(".ico-bind-phone").length > 0){

		var xh_left_phone = $(".ico-bind-phone").position().left +20;
		var xh_top_phone = $(".ico-bind-phone").position().top -10;
		$(".bind-phone").css({"left":xh_left_phone,"top":xh_top_phone,"display":"block"});
	}

	// Tabs
	$('#tabs').tabs();
	
	$("a.show-tips-detail").bind("click", 
    function () {
		$(this).removeClass("new").end().parent("li").siblings().removeClass("no-bg").children(".lv-tips-box").hide();
		if($(this).next().css("display")=="block"){
			$(this).parent().removeClass("no-bg");
			$(this).next().hide();
		}else{
			$(this).parent().addClass("no-bg");
			$(this).next().show();
		}
    })
 	
	$(function(){ 
		$(".menu").mouseover(function(){ 
		$(".submenu").slideDown(400); 
	}) 
	
	$(".submenu").mouseover(
		function(e){ 
			/*$(document).mouseover(function(e){*/ 
			var crtC=$(e.target).attr("class"); 
			if(crtC=="submenu"||crtC=="menu"){;
				$(".submenu").slideDown(400); 
			} 
		}).mouseout(
		function(e){ 
			//var crtC=$(e.target).attr("class"); 
			//var crtC=$(e.target).attr("class"); 
			if($(e.target).hasClass("submenu")){ 
				$(".submenu").slideUp(400); 
			}
		}) 
	}) 
	
	$("#points-tooltip a.view_detail").tooltip({
	   // tweak the position
	   position: "bottom right",
	   offset: [10, -240],
	   events:{
		   def:"mouseenter,mouseleave",
		   tooltip:"mouseenter,mouseleave"
		   //tooltip: "mouseenter"
		   },
	   effect: 'slide'
	// add dynamic plugin with optional configuration for bottom edge
	})//.dynamic({ bottom: { direction: 'down', bounce: true } });
	
	$("#coupon-tooltip a.view_detail").tooltip({
	   position: "bottom left",
	   offset: [10, 50],
	   events:{
		   def:"mouseenter,mouseleave",
		   tooltip:"mouseenter,mouseleave"
		   },
	   effect: 'slide'
	})
	
	$("i.ico-help").tooltip({
	   position: "bottom right",
	   offset: [10, -45],
	   events:{
		   def:"mouseenter,mouseleave",
		   tooltip:"mouseenter,mouseleave"
		   },
	   effect: 'slide'
	})
	
	$(".g_btn a.prev,.g_btn a.next,a.lv-guide").live('click',function(){
		$("div.xh_overlay").show().height($(document).height());
	    $($(this).attr("href")).fadeIn("slow");
		$(this).parents('.guide_step').fadeOut("slow");
	});
	
	$(".xh_btn-ok,.xh_btn-cancel,.xh_close,.close-this").bind('click',function(){
		$("div.xh_dialog,div.xh_overlay,div.guide_step").hide();
	})
	
	$(".lvcenter-list li").hover(
	function(){
		$(this).addClass("lvapp-item-hover");
	},function(){
		$(this).removeClass("lvapp-item-hover");
	})
	
	//切换样式(采用参数调用形式，方便扩展)
	JS_tab_nav("#J_tab-type label.store_set_type","#J_tab-info div.tabcon","selected","click");
	function JS_tab_nav(tab_nav,tab_con,selected,tri_type){
		$tab_obj=$(tab_nav);
		$tab_obj.bind(tri_type,function(){
			var tab_li_index = $(tab_nav).index(this);
			$(this).addClass(selected).siblings().removeClass(selected);
			$(tab_con).eq(tab_li_index).show().siblings().hide();
		});
	}; 
	
	/* 手机号码输入视觉优化 */
	$("input.input-phone").change(function(e){
		//e.keyCode!=8  如果不是按回退键
		if(e.keyCode!=8){
			var a = $(this).attr("value");
			var oldArr = a.replace(/\s/g,"").split("");		//过滤所有的空格
			var arr = [];
			for(var i=0;i<oldArr.length;i++){
				arr.push(oldArr[i]);
				if(i==2 || i==6){
					arr.push(" ");			//在第三个和第七个数字后自动增加空格
				}
			}
			this.value = arr.join("");
		}
	})

	// 身份证号码视觉优化
	$("input.input-idcards").change(function(e){
		//e.keyCode!=8  如果不是按回退键
		if(e.keyCode!=8){
			var a = $(this).attr("value");
			var oldArr = a.replace(/\s/g,"").split("");		//过滤所有的空格
			var arr = [];
			for(var i=0;i<oldArr.length;i++){
				arr.push(oldArr[i]);
				if(i==5 || i==13){
					arr.push(" ");			//按684划分
				}
			}
			this.value = arr.join("");
		}
	})




	/*实名认证*/
		function JS_countdown(_cdbox){
			var _InterValObj;   //timer变量，控制时间
			var _count = 6;    //间隔函数，1秒执行
			var _curCount;      //当前剩余秒数
			
			sendMessage(_count);
			
			function sendMessage(_count){
				_curCount = _count;
				$(_cdbox).html(_curCount);
				_InterValObj = window.setInterval(SetRemainTime, 1000); //启动计时器，1秒执行一次
			}
			
			//timer处理函数
			function SetRemainTime() {
				if (_curCount == 0) {
					window.clearInterval(_InterValObj);     //停止计时器
					var expr = _cdbox.indexOf("-old")>0?"-old":"";
					$("#JS_countdown"+expr).children(".tip-success").html('<span class="tip-icon tip-icon-success"></span>校验码已发送成功，以最近发送的验证码为准').end().hide();
					$("#send-verifycode"+expr).html("重新发送验证码").show();
					$(".sendcodeinfo").hide();
					$(".sendcode").html("重新发送验证码").show();
				} else {
					_curCount--;
					$(_cdbox).html(_curCount);
					//alert("aaa");
				}
			}
		}
		
		$("#send-verifycode").click(function(){
			$(this).hide();
			$("#JS_countdown").show();
			JS_countdown("#JS_countdown span.J_num");
			//return false;
		})
		
		
		 
		$('.textIntro img').hover(function(){ 
			var Src = $(this).attr('src');
			var Top = $(this).offset().top;
				var Left = $(this).offset().left;
				var Height = $(this).height()+10;
			if($('.weizhi').length == 0){
				var html= '<div class="poptip tip-light poptip-default max343 weizhi"><div class="tip-arrow tip-arrow-12"><em>◆</em><i>◆</i></div><div class="tip-content"><img src="'+ Src +'" width="343" height="216" alt=""></div></div>'
				$('body').append(html);
				$('.weizhi').css({'left':Left-100,'top':Top+Height});
			}else{
				$('.weizhi').show().css({'left':Left-100,'top':Top+Height}).find('img').attr('src',Src);
			}
			
		},function(){
			$('.weizhi').hide();
		})
		

	$(".js_poptip").poptip({
	    place : 6
	});

	//点钟方位的提示信息
	$(".js_tips_7").poptip({
		place : 7
	});
	//$("#send-verifycode").click(function(){
	//	if ($("#sso_mobile").hasClass("input_border_red")) {
	//		// 什么都不做
	//	}else{
	//		$(this).hide();
	//		$("#JS_countdown").show();
	//		JS_countdown("#JS_countdown span.num-second");
	//	}
	//});
	
	// 右侧浮动
/*	$("#xh_floatR").show();
	$("#xh_floatR i.close").click(function(){
		$("#xh_floatR").hide();
		if(window.localStorage){
			window.localStorage.setItem("adkey","0");
			window.localStorage.setItem("adlifetime",new Date().getTime()+"");
		}
	})
	if(window.localStorage && window.localStorage.getItem("adkey") == "0"){
		$("#xh_floatR").hide();
	}
	if(window.localStorage && (new Date().getTime()) - parseInt(window.localStorage.getItem("adlifetime"))>86400000){
		$("#xh_floatR").show();
		window.localStorage.setItem("adkey","1");
	}
*/	
});	

function JS_countdown(_cdbox){
	/*-------------------------------------------*/
	var _InterValObj; //timer变量，控制时间
	var _count = 60; //间隔函数，1秒执行
	var _curCount;//当前剩余秒数
	sendMessage(_count);
	function sendMessage(_count){
		_curCount = _count;
			$(_cdbox).html(_curCount);
			_InterValObj = window.setInterval(SetRemainTime, 1000); //启动计时器，1秒执行一次
		}
	//timer处理函数
	function SetRemainTime() {
		if (_curCount == 0) {                
			window.clearInterval(_InterValObj);//停止计时器
			var expr = _cdbox.indexOf("-old")>0?"-old":"";
			$("#JS_countdown"+expr).children(".tips-success").html("<span class=\"tips-ico01\"></span>校验码已发送成功，以最近发送的校验码为准").end().hide();
			$("#send-verifycode"+expr).html("<i>重新发送验证码</i>").show();
		}
		else {
			_curCount--;
			$(_cdbox).html(_curCount);
		}
	}
};

//要求文档都加载完才执行的时候可使用这种方法
window.onload = function(){
	$("#scrollable").scrollable({
		conf:{item:"> ul",items:"#scrollable .items",next:"span.next",prev:"span.prev"}
	}).navigator();

};

//绑定流程优化
(function() {

	var emailErrorInfo = "请输入有效的Email地址";
	var $tipsEmail = $(".bind-email");
	var $lvCCEmail = $(".lv-cc-email");
	var emailRegExp = /^(\w)+(\.\w+)*@(\w)+((\.\w+)+)$/;
	var $lvUnbindEmail = $(".lv-unbind-email");
	var $lvBindEmail = $(".lv-bind-email");
	var $iconBindEmail = $(".ico-bind-email");

	$lvUnbindEmail.on("click", function() {
		$lvUnbindEmail.hide();
		var text = $lvBindEmail.data("value");
		$lvBindEmail.show().val(text).get(0).select();
		$tipsEmail.css({
			"left": 357
		});
	});

	$lvBindEmail.on("propertychange input blur", lvEmailHandle);

	function lvEmailHandle() {
		var text = $lvBindEmail.val();
		var isVerify = emailRegExp.test(text);
		if(isVerify) {
			$tipsEmail.show();
			$lvCCEmail.hide();
			$iconBindEmail.removeClass("tips-ico02").addClass("tips-ico03");
			$lvBindEmail.attr("data-isverify", "true");
		} else {
			$tipsEmail.hide();
			$lvCCEmail.html(emailErrorInfo).show();
			$iconBindEmail.removeClass("tips-ico03").addClass("tips-ico02");
			$lvBindEmail.attr("data-isverify", "false");
		}
	}

	var phoneErrorInfo = "请输入有效的手机号码";
	var $lvCCPhone= $(".lv-cc-phone");
	var phoneRegExp = /^((\(\d{2,3}\))|(\d{3}\-))?(13|14|15|18|17)\d{9}$/;
	var $tipsPhone = $(".bind-phone");
	var $lvUnbindPhone = $(".lv-unbind-phone");
	var $lvBindPhone = $(".lv-bind-phone");
	var $iconBindPhone = $(".ico-bind-phone");

	$lvUnbindPhone.on("click", function() {
		$lvUnbindPhone.hide();
		var text = $lvBindPhone.data("value");
		$lvBindPhone.show().val(text).get(0).select();
		$tipsPhone.css({
			"left": 307
		});
	});

	$lvBindPhone.on("propertychange input blur", lvPhoneHandle);

	function lvPhoneHandle() {
		var text = $lvBindPhone.val();
		var isVerify = phoneRegExp.test(text);
		if(isVerify) {
			$tipsPhone.show();
			$lvCCPhone.hide();
			$iconBindPhone.removeClass("tips-ico02").addClass("tips-ico03");
			$lvBindPhone.attr("data-isverify", "true");
		} else {
			$tipsPhone.hide();
			$lvCCPhone.html(phoneErrorInfo).show();
			$iconBindPhone.removeClass("tips-ico03").addClass("tips-ico02");
			$lvBindPhone.attr("data-isverify", "false");
		}
	}
})();

function JS_error_tips($ele, text) {
	var $parent = $ele.parent();
	var $icon = $parent.find(".tips-show");
	var $text = $parent.find(".lv-cc");
	var tips = $ele.attr("data-tips");
	var $tips = $("."+tips);

	$ele.get(0).select();
	$tips.hide();
	$icon.removeClass("tips-ico03").addClass("tips-ico02");
	$text.html(text).show();
}




// 订单详情页 游玩人后置
$(function(){

	//游玩人更多展开
	$('.js_name_shouqi').live('click',function(){
		if ($(this).hasClass('jt_up')) {
			$(this).removeClass('jt_up').parent('.name_list_new').css('height',26);
		}else{
			$(this).addClass('jt_up').parent('.name_list_new').css('height','auto');
		};
		$(this).parents('.name_list_new_box').height($(this).parent().outerHeight(true));
	});


	//鼠标离开输入框，验证
	$('.js_yz').live('blur',function(){ 
		var This = $(this);
		yanzhengThis(This);
	});
	//选生日
	$(".js_selectdate").each(function(){
		$(this).ui("calendar",{
		   input : this,
		   parm:{dateFmt:'yyyy-MM-dd'}
		})
	})


	//邮轮修改游玩人按钮
	$('.js_btn_change').bind('click',function(){
		$('.play_write_box').show();
		$('.play_yl_table').hide();
	});

	//常用联系人跟随
	var name_list_new_box = $('.js_name_float'),
		namebox_len = name_list_new_box.length;
	if(namebox_len>0){
		$(window).scroll(function(){ 
			
			var last_namebox = name_list_new_box;
			var win_t = $(window).height() - last_namebox.height();
			var obj_t = last_namebox.offset().top;
			var scroll_t = $(document).scrollTop();
			var order_box_h = last_namebox.parents('.play_write_box').height();

			console.log(order_box_h)
			if(scroll_t > obj_t && scroll_t && scroll_t < order_box_h+obj_t-100){
				
				last_namebox.find('.name_list_new').css({'position':'fixed','top':0,'z-index':199})
			}else{
				last_namebox.find('.name_list_new').css({'position':'relative','top':'inherit','z-index':0})
			}
		});
	}
	

});


//检测是否全部填写OK
	function yanzhengOk(){

		var $yanzheng = $('.js_yz');
		for(var i=0;i<$yanzheng.length;i++){
			var This = $yanzheng.eq(i);
			yanzhengThis(This)
		}
		
		var _english2 = /^[a-zA-Z\s]+$/;
		for(var i=0;i<$('.error_show').length;i++){
			var $error_show = $('.error_show').eq(i),
				yzInput = $error_show.find('.js_yz');
			if($error_show.is(':visible')){
				yzInput.eq(0).focus();
				if(yzInput.eq(0).attr('type_name')=='english2'){
					if(_english2.test(yzInput.eq(0).val())){
						yzInput.eq(1).focus();
					}
				}
				
				return false;
			}
		};
		

		return true;
	}

//验证当前输入框
	function yanzhengThis(This){
	    var _mobile = /^\d{11}$/;
		var _mobile2 = /^((13[0-9])|(14[5|7])|(15([0-3]|[5-9]))|(17\d{1})|(18([0-4]|[5-9])))\d{8}$/;
		var _email = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
		var isIDCard2= /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;/*/^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{4}$/*/
		var _english = /^[\u4e00-\u9fa5]+$/;
		var _english2 = /^[a-zA-Z\s]+$/;
		var _username = /^[a-zA-Z\u4e00-\u9fa5\s]+$/;
		var value = $.trim(This.val()),
			thisSvalue = $.trim(This.siblings('input').val());
		var thisP = This.parent(),
			errorDom = thisP.find('.error_text');
			
		function errorHtml(text){
			thisP.addClass('error_show');
			errorDom.html('<i class="tip-icon tip-icon-error"></i>'+ text +'。');
		}
			
		if(This.is(':visible')){
			
			var optional = This.attr('optional');
			
			//验证是否输入文字
			if(This.attr('type_name')=='text'){
				var error_tips = This.attr('placeholder');
				if(value=='' && optional!="true"){
					errorHtml(error_tips);
				}else{
					thisP.removeClass('error_show');
				}
			};
			
			
			//验证中英文姓名
			if(This.attr('type_name')=='username'){
				if( value=='' && optional!="true"){
					errorHtml('请输入姓名');
				}else if(!_username.test(value) && value!=''){
					errorHtml('姓名只能包含汉字、字母和空格，请重新输入');
				}else{
					thisP.removeClass('error_show');
				}
			};
			
			
			//验证非汉字
			if(This.attr('type_name')=='english'){
				if( value=='' || _english.test(value)){
					thisP.addClass('error_show');
				}else{
					thisP.removeClass('error_show');
				}
			};
			
			//验证汉字
			if(This.attr('type_name')=='chinese'){
				if( value==''){
					errorHtml('请输入中文姓名');
				}else if(!_english.test(value)){
					errorHtml('中文姓名只能包含汉字，请重新输入');
				}else{
					thisP.removeClass('error_show');
				}
			};
			
			//验证英文字母
			if(This.attr('type_name')=='english2'){
				if(value=='' && optional!="true"){
					errorHtml('请输入英文姓、名');
				}else if(!_english2.test(value) && value!=''){
					errorHtml('英文姓名只能包含字母，请重新输入');
				}else{
					if(This.siblings('input').attr('type_name')=='english2' && _english2.test(thisSvalue) || thisSvalue=='' && optional=="true"){
						thisP.removeClass('error_show');
					}else if(optional!="true"){
						thisP.addClass('error_show');
					}
				}
			};
			
			//验证抵现数字
			if(This.attr('type_name')=='number'){
				if( value=='' && This.prev().find('input').attr('checked') || isNaN(value) && This.prev().find('input').attr('checked') ||  isNaN(value) && This.prev().find('input').length==0 ||  value=='' && This.prev().find('input').length==0){
					thisP.addClass('error_show');
				}else{
					thisP.removeClass('error_show');
				}
			};
			//验证优惠券是否选择和输入
			if(This.attr('type_name')=='youhuiquan'){
				if( value=='' && This.prev().find('input').attr('checked') || isNaN(value) && This.prev().find('input').attr('checked')){
					thisP.addClass('error_show');
				}else{
					thisP.removeClass('error_show');
				}
			};
			//验证手机
			if(This.attr('type_name')=='mobile'){
				if(value=='' && optional!="true"){
					errorHtml('请输入手机号');
				}else if(!_mobile.test(value) && value!=''){
					errorHtml('手机号码必须为11位的数字，请重新输入');
				}else if(value.length==11 && !_mobile2.test(value)){
					errorHtml('暂不支持您输入的号码段，请联系驴妈妈客服<span class="c_f60">1010-6060</span>进行反馈');
				}else{
					thisP.removeClass('error_show');
				}
			};
			//验证邮箱
			if(This.attr('type_name')=='email'){
				if(value=='' && optional!="true"){
					errorHtml('请输入邮箱地址');
				}else if(!_email.test(value) && value!=''){
					errorHtml('电子邮箱格式不正确，请重新输入');
				}else{
					thisP.removeClass('error_show');
				}
			};
			//验证身份证
			if(This.attr('type_name')=='shenfenzheng'){
			    if(value=='' && optional!="true"){
					errorHtml('请输入证件号码');
				}else if(!isIdCardNo(value) && This.siblings('.select').val() == 'ID_CARD' && value!=''){
					errorHtml('请输入正确的身份证号码');
				}else{
					thisP.removeClass('error_show');
				}
			};
			
			//验证中英文
			if(This.attr('type_name')=='cnEn'){
				var error_tips = This.attr('placeholder');
				if( value=='' && optional!="true"){
					errorHtml(error_tips);
				}else if(!_username.test(value) && value!=''){
					errorHtml('只能填写汉字或字母，请重新输入');
				}else{
					thisP.removeClass('error_show');
				}
			};
			
		}//检测是否可见，只验证可见元素
	}

	function isIdCardNo(num) {
	    num = num.toUpperCase();
	    if (!(/(^\d{15}$)|(^\d{17}([0-9]|X)$)/.test(num))) {
	        return false;
	    }
	    //校验位按照ISO 7064:1983.MOD 11-2的规定生成，X可以认为是数字10。 
	    var len, re;
	    len = num.length;
	    if (len == 15) {
	        re = new RegExp(/^(\d{6})(\d{2})(\d{2})(\d{2})(\d{3})$/);
	        var arrSplit = num.match(re);
	        //检查生日日期是否正确 
	        var dtmBirth = new Date('19' + arrSplit[2] + '/' + arrSplit[3] + '/' + arrSplit[4]);
	        var bGoodDay;
	        bGoodDay = (dtmBirth.getYear() == Number(arrSplit[2])) && ((dtmBirth.getMonth() + 1) == Number(arrSplit[3])) && (dtmBirth.getDate() == Number(arrSplit[4]));
	        if (!bGoodDay) {
	            return false;
	        } else {
	            //将15位身份证转成18位 
	            //校验位按照ISO 7064:1983.MOD 11-2的规定生成，X可以认为是数字10。 
	            var arrInt = new Array(7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2);
	            var arrCh = new Array('1', '0', 'X', '9', '8', '7', '6', '5', '4', '3', '2');
	            var nTemp = 0, i;
	            num = num.substr(0, 6) + '19' + num.substr(6, num.length - 6);
	            for (i = 0; i < 17; i++) {
	                nTemp += num.substr(i, 1) * arrInt[i];
	            }
	            num += arrCh[nTemp % 11];
	            return num;
	        }
	    }
	    if (len == 18) {
	        re = new RegExp(/^(\d{6})(\d{4})(\d{2})(\d{2})(\d{3})([0-9]|X)$/);
	        var arrSplit = num.match(re);
	        //检查生日日期是否正确 
	        var dtmBirth = new Date(arrSplit[2] + "/" + arrSplit[3] + "/" + arrSplit[4]);
	        var bGoodDay;
	        bGoodDay = (dtmBirth.getFullYear() == Number(arrSplit[2])) && ((dtmBirth.getMonth() + 1) == Number(arrSplit[3])) && (dtmBirth.getDate() == Number(arrSplit[4]));
	        if (!bGoodDay) {
	            return false;
	        }
	        else {
	            //检验18位身份证的校验码是否正确。 
	            //校验位按照ISO 7064:1983.MOD 11-2的规定生成，X可以认为是数字10。 
	            var valnum;
	            var arrInt = new Array(7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2);
	            var arrCh = new Array('1', '0', 'X', '9', '8', '7', '6', '5', '4', '3', '2');
	            var nTemp = 0, i;
	            for (i = 0; i < 17; i++) {
	                nTemp += num.substr(i, 1) * arrInt[i];
	            }
	            valnum = arrCh[nTemp % 11];
	            if (valnum != num.substr(17, 1)) {
	                return false;
	            }
	            return num;
	        }
	    }
	    return false;
	}

