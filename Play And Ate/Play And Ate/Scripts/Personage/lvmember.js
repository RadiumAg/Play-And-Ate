 //检测是否全部填写OK
    function yanzhengOk(){
        var obj = $('.js_youwanTime'); 
        for(var i=0;i<obj.length;i++){
            objThis = obj.eq(i);
            if(objThis.is(':visible')){
                if(objThis.val()==''){
                    $('body,html').scrollTop(0);
                    objThis.addClass('input_red');
                    nameFull(objThis,'请选择游玩日期',215,-25,'warning'); 
                    return false;
                }else{
                    objThis.removeClass('input_red');
                }
            }
        }

        //长隆马戏场地选择验证
        var $circus = $('#circus');
        var $d_ccSelect = $('.d_ccSelect');
        if($circus.length != 0) {
            if ($d_ccSelect.is(':hidden')) {
                $('body,html').scrollTop(0);
                alert('暂无场次信息，请选择其他日期。');
                return false;
            }
            if ($d_ccSelect.val() == "-请选择场次-") {
                $('body,html').scrollTop(0);
                $d_ccSelect.addClass('input_red');
                $circus.find('.d_floatTip').show();
                return false;
            }else{
                $d_ccSelect.removeClass('input_red');
                $circus.find('.d_floatTip').hide();
            }
        }
        
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
        
        for(var i=0;i<$('.error_show2').length;i++){
            if($('.error_show2').eq(i).is(':visible')){
                $('.error_show2').eq(i).find('.js_yz:first').focus();
                return false;
            }
        };
        
        if(!$('.xieyi_ok').find('input').attr('checked') && $('.xieyi_ok').is(':visible')){
            //alert('请勾选同意预定须知及合同条款')
            if($('.xieyi_ok').length>0){
                $(document).scrollTop($('.xieyi_ok').offset().top-100);
                $('.xieyi_ok').find('.check').addClass('xieyi_shake');
            }
            
            $('.xieyi_ok').addClass('red');
            return false;
        }

        return true;
    }
    
    //验证当前输入框
    function yanzhengThis(This){
        var _mobile = /^\d{11}$/;
        var _mobile2 = /^1[3-9]\d{9}$/;
        var _email = /^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/;
        var isIDCard2= /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;/*/^[1-9]\d{5}[1-9]\d{3}((0\d)|(1[0-2]))(([0|1|2]\d)|3[0-1])\d{4}$/*/
        var _english = /^[\u4e00-\u9fa5]+$/;
        var _english2 = /^[a-zA-Z\s]+$/;
        var _username = /^[a-zA-Z\u4e00-\u9fa5\s]+$/;
        var _username2 = /^[a-zA-Z\u4e00-\u9fa5]+$/;
        var _passportname = /^([a-zA-Z])+\/+([a-zA-Z])+$/;
        var _flightname = /^([a-zA-Z])+\/+([a-zA-Z])+$/;
        var _chinese = /^[\u4e00-\u9fa5]+$/;
        var _youbian = /^\d{6}$/;
        var _address = /^[^\s][\u4E00-\u9FA5A-Za-z0-9-\s]+$/;

        var _companyname = /^[a-zA-Z\u4e00-\u9fa5\(\)\（\）\-]+$/;
        var _taxpayer = /^[A-Z0-9]{20}$|^[A-Z0-9]{18}$|^[A-Z0-9]{15}$/;
        var _telephone = /^[\d\-]{7,15}$/;
        var _bankNumber = /^[A-Za-z0-9]{10,25}$/;

        var value = $.trim(This.val()),
            thisSvalue = $.trim(This.siblings('input').val());
        var thisP = This.parent(),
            errorDom = thisP.find('.error_text');
            
        function errorHtml(text){
            thisP.addClass('error_show');
            errorDom.html('<i class="tip-icon tip-icon-error"></i>'+ text +'。');
        }
        function okHtml(){
            thisP.removeClass('error_show').find('.error_text').html('<i class="tip-icon tip-icon-success"></i>');
        }

        function numTwo(num){
            if (num>9) {return num;}else{return '0'+num;};
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

            //验证护照姓名
            if(This.attr('type_name')=='passportname'){
                if( value=='' && optional!="true"){
                    errorHtml('请输入姓名');
                }else if(_passportname.test(value)){
                    thisP.removeClass('error_show');
                }else if(!_username.test(value)){
                    errorHtml('姓名只能包含汉字、字母和空格，请重新输入');
                }else if(_english2.test(value)){// || _passportname.test(value)
                    errorHtml('英文姓名请用“/”分割');
                }else{
                    thisP.removeClass('error_show');
                };
            };


            //机票姓名
            if(This.attr('type_name')=='flightname'){
                if( value=='' && optional!="true"){
                    errorHtml('请输入姓名');
                }else if( value.length<2){
                    errorHtml('姓名至少为2个字');
                }else if(_flightname.test(value)){
                    thisP.removeClass('error_show');
                }else if(!_username2.test(value)){
                    errorHtml('姓名只能包含汉字、字母，请重新输入');
                }else if(_english2.test(value)){// || _passportname.test(value)
                    errorHtml('英文姓名请用“/”分割');
                }else{
                    thisP.removeClass('error_show');
                };
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
                }else if(value.length>100){
                    errorHtml('邮箱最多输入100个字符');
                }else if(!_email.test(value) && value!=''){
                    errorHtml('电子邮箱格式不正确，请重新输入');
                }else{
                    thisP.removeClass('error_show');
                }
            };
            //验证身份证
            if(This.attr('type_name')=='shenfenzheng'){
                var minage = This.attr('min_age');
                if(value=='' && optional!="true"){
                    errorHtml('请输入证件号码');
                }else if(!isIdCardNo(value) && This.siblings('.select').val() == 'ID_CARD' && value!=''){
                    errorHtml('请输入正确的身份证号码');
                }else if(minage && value.length==18){//判断是否满多少岁
                    //获取身份证年月日
                    var birthdayYear = parseInt(value.substring(6,10)),
                        birthdayMonth = parseInt('1'+value.substring(10,14));
                    //获取现在的年月日
                    var date = new Date();
                    var nowYear = date.getFullYear(),
                        nowMonth = parseInt('1'+numTwo(date.getMonth()+1)+numTwo(date.getDate())),
                        age = nowYear-birthdayYear;
                    //判断生日是否满
                    if (birthdayMonth > nowMonth) {
                        age = age-1;
                    };

                    //判断生日是否满18岁
                    if (age<minage) {
                        errorHtml('游玩人1，年龄需满'+minage+'周岁');
                    }else{
                        thisP.removeClass('error_show');
                    };
                    
                }else{
                    thisP.removeClass('error_show');
                }
            };
            //验证地址
            if(This.attr('type_name')=='address'){
                if($('#js_city1').val()=='选择省' || $('#js_city2').val()=='选择市'){
                    errorHtml('请选择省份、城市');
                }else if(value=='' || value.length<5){
                    errorHtml('请输入正确的详细地址');
                }else{
                    thisP.removeClass('error_show');
                }
            };

            //验证地址(省/市/区)
            if(This.attr('type_name')=='new_address'){
                if(value=='' || value.length<5 ||  $('#js_new_city1').val()=='选择省' || $('#js_new_city2').val()=='选择市' || $('#js_new_city3').val()=='选择区'){
                    thisP.addClass('error_show');
                }else{
                    thisP.removeClass('error_show');
                }
            };

            //验证邮编
            if(This.attr('type_name')=='youbian'){
                if(value.length!=6 && value!=''){
                    errorHtml('邮政编码只能为6位数字，请重新输入');
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
            //验证邮编
            if(This.attr('type_name')=='youbian_new'){
                if(value=='' && optional!="true"){
                    errorHtml('邮政编码只能为6位数字，请重新输入');
                }else if(!_youbian.test(value) && value!=''){
                    errorHtml('邮政编码只能为6位数字，请重新输入');
                }else{
                    okHtml();
                }
                return;
            };
            //验证发票抬头
            if(This.attr('type_name')=='fapiao'){
                if( value==''){
                    errorHtml('请输入发票抬头');
                }else if(!_chinese.test(This.val())){
                    errorHtml('发票抬头只能包含汉字，请重新输入');
                }else{
                    okHtml();
                }
                return;
            };
            //验证发票抬头公司名称
            if(This.attr('type_name')=='invoice-company'){
                if(value=='' && optional!="true"){
                    errorHtml('请输入公司名称');
                }else if(!_companyname.test(value) && value!=''){
                    errorHtml('请输入正确的公司名称');
                }else{
                    okHtml();
                }
                return;
            }
            //验证发票抬头个人名称
            if(This.attr('type_name')=='invoice-name'){
                if(value=='' && optional!="true"){
                    errorHtml('请输入个人名称');
                }else if(!_username.test(value) && value!=''){
                    errorHtml('个人名称只能包含汉字、字母和空格，请重新输入');
                }else{
                    okHtml();
                }
                return;
            };

            //验证地址
            if(This.attr('type_name')=='city'){
                var cityOK = function(){
                    var city_select = This.parent().find('.js_yz');
                    for (var i = 0; i < city_select.length; i++) {
                        var thisVal = city_select.eq(i).val();
                        if(/选择/.test(thisVal)){return false;}
                    };
                    return true;
                }

                if(/选择/.test(value) || !cityOK()){
                    errorHtml('请选择省份、城市');
                }else{
                    okHtml();
                }
                return;
            };

            //验证地址
            if(This.attr('type_name')=='address_new'){
                if(This.val()=='' && optional!="true" || optional!="true" && This.val().length<5){
                    errorHtml('详细地址不能为空，且不小于五位');
                }else if (!_address.test(This.val())  && This.val()!='' ) {
                    errorHtml('请输入正确的详细地址');
                } else {
                    okHtml();
                }
                return;
            };
            
            //纳税人识别号
            if(This.attr('type_name')=='taxpayer'){
                if(value==''){
                    errorHtml('请输入纳税人识别号');
                }else if(/\s|\#|\;|\*|\.|\!|\,|\-|\@|\！|\~|\?|\？/.test(value)){
                    errorHtml('不能包含空格等特殊字符');
                    return false;
                }else if(!_taxpayer.test(value)){
                    if (value.length==15 || value.length==18 || value.length==20) {
                        errorHtml('税号只能包含大写字母和数字');
                    }else{
                        errorHtml('请输入正确的纳税人识别号');
                    };
                }else{
                    okHtml();
                }
                return;
            };

            //公司注册电话
            if(This.attr('type_name')=='telephone'){
                if(value=='' && optional!="true"){
                    errorHtml('请输入电话号码');
                    return false;
                }else if(!_telephone.test(value) && value!=''){
                    errorHtml('请输入正确的电话号码');
                    return false;
                }else{
                    okHtml();
                }
                return;
            };


            //公司开户银行账号
            if(This.attr('type_name')=='bankNumber'){
                if(value=='' && optional!="true"){
                    errorHtml('请输入银行账号');
                    return false;
                }else if(!_bankNumber.test(value) && value!=''){
                    errorHtml('请输入正确的银行账号');
                    return false;
                }else{
                    okHtml();
                }
                return;
            };








        }//检测是否可见，只验证可见元素
    }
$(function(){ 
	//左侧导航
	var leftdl = $('.newmember_leftside').find('dl');
		leftdl.each(function(){
			$(this).find('dt').toggle(function(){
				var _this = $(this);
				_this.siblings('dd').hide();
				_this.find('.downarr').addClass('uparr');
			},function(){
				var _this = $(this);
				_this.siblings('dd').show();
				_this.find('.downarr').removeClass('uparr');
			});
		});
	
	//右侧导航
	$('.help_box').hover(function(){
		$(this).find('.help_box_content').stop().animate({"width":120},500);
	},function(){
		$(this).find('.help_box_content').stop().animate({"width":0},500);
	})
	//弹出
	function tanchu(){ 
			var _scrolltop = $(document).scrollTop()+150;
			var height_w =$(document).height();
			$('.pop_body_bg').css({'height':height_w,'width':$(document.body).width()}).show();
			$('.grade_bg').show().css({'top':_scrolltop});
	};
	$('.close').click(function(){
		$('.pop_body_bg,.grade_bg').hide();
	});
	//导航下拉
	$('.newmember_list').hover(function(){
		$(this).addClass('newmember_act');
	},function(){
		$(this).removeClass('newmember_act');
	})
	// 默认调用倒计时
	var timer=null,
		countdown = $('#countdown'),
		timestart = countdown.text(),
		time=timestart;
	$('.code').click(function(){
		var This = $(this);
		This.hide().siblings('.time').css({'display':'inline-block'});
		timer = setInterval(function(){
			time--;
			if(time==0){
				clearTimeout(timer);
				This.show().siblings('a').hide();
				time = timestart;
				countdown.text(time);
			}
			countdown.text(time);
		},1000)
	})
	// 积分明细切换
	function comon_tab(This){
		var _this = $(This),
		in_num = _this.index();
		_this.addClass('active').siblings().removeClass('active');
		_this.parents().siblings('.js_con').eq(in_num).show().siblings('.js_con').hide();
		_this.parent().siblings('.js_more').eq(in_num).show().siblings('.js_more').hide();
	};
	$('.comon_tab li').click(function(){
		comon_tab(this);
	});
	$('.fav-tab li').click(function(){
		comon_tab(this);
	});
    $('.user_comon_tab li').click(function(){
        comon_tab(this);
    });
	//站内消息
	// $('.news_bt').click(function(){
	// 	var _this = $(this);
	// 	_this.parent().siblings('.lv_tips_box').slideToggle().parent().siblings().find('.lv_tips_box').hide();
	// });

	//订阅邮件
	$('#rssMail').hover(function() {
		$(this).addClass('active')
	}, function() {
		$(this).removeClass('active')
	});
	$('.rssMailBtn').click(function() {
		$(this).parent('.rssMailIpt').hide().siblings('.rssMailOk').show();
	});

	//展开券详情
	$('.js_quan li:gt(2)').hide();
	$('.quan_more').toggle(function(){
		$('.js_quan li').show();
		$(this).html('收起券详情<i class="icon_down icon_up">');
	},function(){
		$('.js_quan li:gt(2)').hide();
		$(this).html('展开券详情<i class="icon_down">');
	});

    //左侧订单菜单
   $('.js-order-list-box dd:gt(6) ').hide();
   $('.js-order-list-btn').toggle(function() {
       $('.js-order-list-box dd').show();
       $(this).html('收起'+'<i class="conmon_icon order-list-icon-up order-list-icon-down"></i>')
   }, function() {
       $('.js-order-list-box dd:gt(6) ').hide();
       $(this).html('更多'+'<i class="conmon_icon order-list-icon-up"></i>')
   });

    //预售弹窗 详情切换
    $('.sale-detail-tit em').live('click', function(event) {
        var _self = $(this);
        var _parent = _self.parents('li');
        var scroNum;
        var $saleDetailBox = $('.saleDetailBox');

        if ( _parent.hasClass('current') ) {
            _parent.removeClass('current');
            saleDetail.pos(); //重置窗口高度及定位

            //计算选中的scrollTop
            scroNum = _parent.offset().top - $saleDetailBox.offset().top + $saleDetailBox.scrollTop();
            $saleDetailBox.scrollTop( scroNum );
            return false;
        }

        _parent.addClass('current').siblings().removeClass('current');
        saleDetail.pos();

        //计算选中的scrollTop
        scroNum = _parent.offset().top - $saleDetailBox.offset().top + $saleDetailBox.scrollTop();
        $saleDetailBox.scrollTop( scroNum );
    });

});

/*
* 预售弹窗原型
*/
function saleAlert(elem) {
    this.o = elem;
};
saleAlert.prototype = {
    opcity : $('.alertOpcity'),
    init: function() {
        var _self = this;
        this.o.find('.alertBox-close').live('click', function(event) {
            _self.close();
        });
        this.opcity.click(function(event){
            _self.close();
        });
    },
    open: function() {
        //var h = this.o.outerHeight();
        this.opcity.show();
        //this.o.show().css({'marginTop': -h/2});
        this.o.show();
        this.pos();
        document.documentElement.style.cssText = 'overflow:none;+overflow:hidden;_overflow:hidden;';
        document.body.style.cssText = 'overflow:hidden;+overflow:none;_overflow:none;padding:0 17px 0 0;';
    },
    close: function() {
    	$('.saleDetailBox').scrollTop(0);
        this.opcity.hide();
        this.o.hide();
        document.documentElement.style.cssText = '';
        document.body.style.cssText = '';

        //关闭窗口内的li展开
        $('.sale-detail li').removeClass('current');

    },
    pos: function() {
        //更新位置
        var h = this.o.outerHeight();
        this.o.css({'marginTop': -h/2});
    }
};

//验证
$('.js_yz').live('blur',function(){ 
        var This = $(this);
        yanzhengThis(This);
       
    });

   
    //倒计时
    //alert(111)
    $('.js-count-down').each(function(){
        var $this=$(this),
        $parent=$this.parent(),
        html=$this.html();
        html=parseInt(html/1000);
        conversionTime(html,$parent,$this);
        var timer=setInterval(function(){
            html--;
            conversionTime(html,$parent,$this);
        },1000);
        function hasClass(obj)
        {
         return obj.hasClass("js-tuan-gou")?true:false;
     }
     function conversionTime(date,parent,obj){
        var day=parseInt(date/(24*60*60));
        var hour=parseInt((date-day*24*60*60)/3600);
        var minute=parseInt((date-day*24*60*60-hour*60*60)/60);
        var second=parseInt(date-day*24*60*60-hour*60*60-minute*60);
        var flag=hasClass(parent);
        if(flag)
        {
            if(day>15)
            {
                parent.hide();
            }
            else if(day<=0&&hour<=0&&minute<=0&&second<=0)
            {
                obj.html('<b>00</b>时'+'<b>00</b>分'+'<b>00</b>秒');
                clearInterval(timer);

            }
            else
            {
                obj.html("<b>"+add0(hour)+'</b>时'+"<b>"+add0(minute)+'</b>分'+"<b>"+add0(second)+'</b>秒');
            }
        }

        else
        {
           if(day<=0&&hour<=0&&minute<=0&&second<=0)
           {
            obj.html('<b>00</b>时'+'<b>00</b>分'+'<b>00</b>秒');
            clearInterval(timer);
        }
        else
        {
           obj.html("<b>"+add0(hour)+'</b>时'+"<b>"+add0(minute)+'</b>分'+"<b>"+add0(second)+'</b>秒'); 
       }

    }
    }
    function add0(num){
    num=num<10?("0"+num):num;
    return num;
    }
    });
