$(document).ready(function(){
	
	var topMain=$("#header").height();//是头部的高度加头部与nav导航之间的距离
		var nav=$(".nav");
		$(window).scroll(function(){
			if ($(window).scrollTop()>topMain){//如果滚动条顶部的距离大于topMain则就nav导航就添加类.nav_scroll，否则就移除
				nav.addClass("nav_scroll");
			}else{
				nav.removeClass("nav_scroll");
			}
		});
	    $("#keywords span").click(function(){
		$("#header_kw").val($(this).text());
		$("#header_search_box").submit();
	 });
	$('.index_fenlei .sub_fenlei').parent().mouseenter(function(){
		$(this).css({background:'#f5f4f3',"border-left":'1px solid #cccccc',"border-bottom":'1px solid #cccccc'});
		$(this).find('.index_fl').css('border','none');
		$(this).find('.sub_fenlei').show();
	}).mouseleave(function(){
		$(this).css({background:'',border:'none'});
		$(this).find('.index_fl').css('border-bottom','1px solid #cccccc');
		$(this).find('.sub_fenlei').hide();
	});	
	//订单滚动js+微信鼠标浮动
/*var time;
	time=setInterval('AutoScroll("#scrollDiv")',4000)
	$("#scrollDiv li").mouseover(function(){
		clearTimeout(time);
	});
	$("#scrollDiv li").mouseleave(function(){
		time=setInterval('AutoScroll("#scrollDiv")',4000);
	});*/	
	$("#click,#dv").mouseover(function(){
		$("#dv").css({"display":"block"});
	});
	$("#click,#dv").mouseout(function(){
		$("#dv").css({"display":"none"});
	});
	//<!----首页广告幻灯片----->
	$(window).load(function() {
		$('.flexslider').flexslider();
	});
	//最新推荐
	$('#select_btn li:first').css('border','none');
	if ($('#zSlider').length) {
		zSlider();
		$('#h_sns').find('img').hover(function(){
			$(this).fadeTo(200,0.5);
		}, function(){
			$(this).fadeTo(100,1);
		});
	}
	function zSlider(ID, delay){
		var ID=ID?ID:'#zSlider';
		var delay=delay?delay:5000;
		var currentEQ=0, picnum=$('#picshow_img li').size(), autoScrollFUN;
		$('#select_btn li').eq(currentEQ).addClass('current');
		$('#picshow_img li').eq(currentEQ).show();
		$('#picshow_tx li').eq(currentEQ).show();
		autoScrollFUN=setTimeout(autoScroll, delay);
		function autoScroll(){
			clearTimeout(autoScrollFUN);
			currentEQ++;
			if (currentEQ>picnum-1) currentEQ=0;
			$('#select_btn li').removeClass('current');
			$('#picshow_img li').hide();
			$('#picshow_tx li').hide().eq(currentEQ).slideDown(400);
			$('#select_btn li').eq(currentEQ).addClass('current');
			$('#picshow_img li').eq(currentEQ).show();
			autoScrollFUN = setTimeout(autoScroll, delay);
		}
		$('#picshow').hover(function(){
			clearTimeout(autoScrollFUN);
		}, function(){
			autoScrollFUN = setTimeout(autoScroll, delay);
		});
		$('#select_btn li').hover(function(){
			var picEQ=$('#select_btn li').index($(this));
			if (picEQ==currentEQ) return false;
			currentEQ = picEQ;
			$('#select_btn li').removeClass('current');
			$('#picshow_img li').hide();
			$('#picshow_tx li').hide().eq(currentEQ).slideDown(100);
			$('#select_btn li').eq(currentEQ).addClass('current');
			$('#picshow_img li').eq(currentEQ).show();
			return false;
		});
	};
});
$(document).ready(function(e) {
	$("#dp_zuixin").mouseover(function(e){
    	$(this).css({"background":"#ae6cbf","color":"#fff","border-radius":"5px"});
    	$("#dp_TOP").css({"background":"none","color":"#ae6cbf"})
    	$("#dp_zuixin_neirong").css({"display":"block"});
    	$("#dp_TOP_neirong").css({"display":"none"});
		});
    $("#dp_TOP").mouseover(function(e){
    	$(this).css({"background":"#ae6cbf","color":"#fff","border-radius":"5px"});
    	$("#dp_zuixin").css({"background":"none","color":"#ae6cbf"})
    	$("#dp_TOP_neirong").css({"display":"block"});
    	$("#dp_zuixin_neirong").css({"display":"none"});
   	});
    $("#dp_TOP_neirong div:eq(0) .toptu").html('TOP1');
	$("#dp_TOP_neirong div:eq(1) .toptu").html('TOP2');
	$("#dp_TOP_neirong div:eq(2) .toptu").html('TOP3');
	$("#dp_TOP_neirong div:eq(3) .toptu").html('TOP4');
	$("#dp_TOP_neirong div:eq(4) .toptu").html('TOP5');
	$("#dp_TOP_neirong div:eq(5) .toptu").html('TOP6');
});