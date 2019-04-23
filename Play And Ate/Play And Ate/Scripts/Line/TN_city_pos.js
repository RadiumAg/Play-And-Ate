//城市选择插件
(function($) {
    $.fn.TN_CityPos = function(settings) {
		settings = jQuery.extend({
		    ldObj:                   null,
			ldObjInitTxt:            '',
		    hotCity_W:               'TN_Pos_W',             //热门城市容器
			hotcityArr:              null,                       //热门城市数组
			delayTimes:              100,                        //城市弹出层弹出时延迟时间
			pageLen:                 12
		},settings);
		
		var jQueryMatchedObj = this;    //保存目标对象
		var hotCity_Obj = null;         //热门城市容器对象
		
		var vleft;
		var vtop;
		
		//初始化函数
		function _initialize() 
		{
		    //热门城市容器对象创建
 		    hotCity_Obj = $('<div class="TN_pos_w" id="'+ settings.hotCity_W +'"></div>').appendTo('body');
			//定义为绝对定位并隐藏
			hotCity_Obj.css({'position':'absolute'}).hide();
			
			if ($(jQueryMatchedObj).val()!='街道/地标')
					    $(jQueryMatchedObj).css({'color':'#000'});
			
			hotCity_Obj.click(function(evt){
				evt = evt || window.event;
				evt.stopPropagation?evt.stopPropagation():evt.cancelBubble=true;	
			});
			hotCity_Obj.mousedown(function(evt){
				hotel.choosePosition(this);
				evt = evt || window.event;
				evt.stopPropagation?evt.stopPropagation():evt.cancelBubble=true;	
			});


			//阻止输入框点击事件冒泡
			$(jQueryMatchedObj).click(function(evt){
			    evt = evt || window.event;
				evt.stopPropagation?evt.stopPropagation():evt.cancelBubble=true;	
			});
			$(jQueryMatchedObj).mousedown(function(evt){
			    evt = evt || window.event;
				evt.stopPropagation?evt.stopPropagation():evt.cancelBubble=true;	
			});

			

			//输入框获取焦点事件
		    $(jQueryMatchedObj).focus(function(){
			        if (settings.ldObj.val()!=settings.ldObjInitTxt)
				{
				    hotCity_Obj.find('.TN_hotcity_div').html('数据载入中...');
					
			        //初始化热门城市容器对象内容
					_initHotCity();
					
					if ($(jQueryMatchedObj).val()=='街道/地标')
					    $(jQueryMatchedObj).val('').css({'color':'#000'});
					
					var pos = getPos($(this));
				    vleft = pos.left;
				    vtop = pos.top + $(this).outerHeight() + 1;
				    hotCity_Obj.css({'left':vleft+'px','top':vtop+'px'}).show(settings.delayTimes,function(){
						$(document).unbind('click',blurPro);
						$(document).unbind('keydown',blurPro);
						$(document).unbind('mousedown',blurPro);
						$(document).click(blurPro);
						$(document).keydown(blurPro);
						$(document).mousedown(blurPro);
				    });
				}
				else
				{
				    if ($(jQueryMatchedObj).val()=='街道/地标')
					    $(jQueryMatchedObj).val('').css({'color':'#000'});
						
					$(jQueryMatchedObj).one('blur',function(){
					    if ($(jQueryMatchedObj).val()=='')
							$(jQueryMatchedObj).val('街道/地标').css({'color':'#999'});
					})
				}
			});
		}
		
		$(window).resize(function(){
		try{
		    if (hotCity_Obj.is(':visible'))
			{
			    var pos = getPos($(jQueryMatchedObj));
				vleft = pos.left;
				vtop = pos.top + $(jQueryMatchedObj).outerHeight() + 1;
				hotCity_Obj.css({'left':vleft,'top':vtop});
			}
			}catch(e){
			    
			}
        }); 
        
		
		//热门城市容器对象内容创建
        function _initHotCity()
        {
		    var tstr = '';
		    tstr += '<div class="TN_city_h"><span>请直接选择地理位置。</span></div>'; 
			tstr += '<div class="TN_hotcity_div"><a href="javascript:void(0);" id="park_0">不限</a>';
			
			
			var info = {
				flag		: 'commercial',
				city		: $("#city").val()
			};
			$.post('/main.php?do=hotel_new_match_ajax',info,function(data){
				data = eval("("+data+")");
				if(data.length>0){
					for(var i=0;i<data.length;i++){
						tstr += ('<a id="park_'+data[i]['id']+'" href="javascript:void(0);">'+data[i]['park_name']+'</a>');
					}
				}
				tstr += '</div>';
			
				hotCity_Obj.html(tstr);
				
				hotCity_Obj.find('a').click(function(evt){
				
	                hotel.choosePosition(this);			
				
					$(jQueryMatchedObj).val($(this).html());
					hotCity_Obj.hide();
					evt = evt || window.event;
					evt.stopPropagation?evt.stopPropagation():evt.cancelBubble=true;				
					return false;
				}).mousedown(function(evt){
					hotel.choosePosition(this);
					$(jQueryMatchedObj).val($(this).html());
					hotCity_Obj.hide();
					$(jQueryMatchedObj).blur();
					return false;
				});
			});
        }
		
		
		
		

		//输入框失去焦点事件
		function blurPro(evt)
		{
		
		     switch (evt.type)
			{
			    case "keydown":
					switch(evt.keyCode)
	                {
	                    case 9: //tab
		                    hotCity_Obj.hide();
							if ($(jQueryMatchedObj).val()=='')
							$(jQueryMatchedObj).val('街道/地标').css({'color':'#999'});
			                break;
						default:
						    break;
					}
				    break;
				default:
				    hotCity_Obj.hide();
					if ($(jQueryMatchedObj).val()=='')
					$(jQueryMatchedObj).val('街道/地标').css({'color':'#999'});
				    break;
			}
			 
		}
        //获取对象位置
        function getPos(obj)
        {
		    var offsetPos = obj.offset();
			return offsetPos;
        }		
		
		//初始化城市选择插件
		_initialize();
}		
})(jQuery);
