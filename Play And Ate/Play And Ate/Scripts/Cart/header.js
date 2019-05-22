/* header 页 JS*/
window.onload=function(){
	
	//导航悬浮
	var topMain=$("#header").height()//是头部的高度加头部与nav导航之间的距离
	var nav=$("#nav");
	$(window).scroll(function(){
		if ($(window).scrollTop()>topMain){//如果滚动条顶部的距离大于topMain则就nav导航就添加类.nav_scroll，否则就移除
			nav.addClass("nav_scroll");
		}else{
			nav.removeClass("nav_scroll");
		}
	});
	//END 导航悬浮
	$('.flexslider').flexslider();
	//标题介绍滚动
	var scrollnews = document.getElementById('scrollnews');
	var lis = scrollnews.getElementsByTagName('li');
	var ml = 0;
	var timer1 = setInterval(function(){
	    var liHeight = lis[0].offsetHeight;
	    var timer2 = setInterval(function(){
	     scrollnews.scrollTop = (++ml);
	     if(ml == liHeight){
	        clearInterval(timer2);
	        scrollnews.scrollTop = 0;
	        ml = 0;
	        lis[0].parentNode.appendChild(lis[0]);
	     }
	  },10);
	},5000);
	//END 标题介绍滚动
	$('.index_fenlei .sub_fenlei').parent().mouseenter(function(){
		$(this).css({background:'#f5f4f3',"border-left":'1px solid #cccccc',"border-bottom":'1px solid #cccccc'});
		$(this).find('.index_fl').css('border','none');
		$(this).find('.sub_fenlei').show();
	}).mouseleave(function(){
		$(this).css({background:'',border:'none'});
		$(this).find('.index_fl').css('border-bottom','1px solid #cccccc');
		$(this).find('.sub_fenlei').hide();
	});	
}
