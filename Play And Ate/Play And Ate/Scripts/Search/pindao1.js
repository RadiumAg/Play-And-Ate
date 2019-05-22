// JavaScript Document

$(document).ready(function(e) {
	//微信
    $(".p_join-weixin").hover(function(){
		$(".p_weixin").show();
		
		},function(){
			$(".p_weixin").hide();
			});
	
	$('.pnav-main li').click(function() {
		$(this).addClass('current_nav').siblings().removeClass('current_nav');
	});
	
	$(".p_search_in").focus(function(e) {
        var txt=$(".p_search_in").val();
		if(txt=="世界杯"){
			$(".p_search_in").val("");
			}
    });
	$(".p_search_in").blur(function(e) {
        var txt=$(".p_search_in").val();
		if(txt==""){
			$(".p_search_in").val("世界杯");
			}
    });
	
	/*$(".p_switch-info").hover(function(){
		
		},function(){
			$(".p_citylist").hide();
			});*/
	$(".p_switch-info").mouseover(function(e) {
        $(".p_citylist").show();
    }).mouseout(function(e) {
         $(".p_citylist").hide();
    });
	$(".p_citylist").hover(function() {
       $(this).show(); 
    },function(){
		$(this).hide();
		});
		
	$(".p_search_btn").hover(function() {
        $(this).css({"backgroundPosition":"-271px -30px"});
    },function(){
		 $(this).css({"backgroundPosition":"-271px 0"});
		});
	
	$(".p_city1").mouseover(function() {
        $(".p_city1list").show();
		$(this).css({background:"url(images/sanjiao2.png) no-repeat 100px 12px",borderBottomColor:"#fff"});
		
		}).mouseleave(function(e) {
        $(".p_city1list").hide();
		$(this).css({background:"url(images/sanjiao.png) no-repeat 100px 12px",borderBottomColor:"#468C00"});
    })
	/*中间大图轮播效果*/
	var timer=setInterval(autoplay,3000);
	var $index=1;
	function autoplay(){
		$(".p_slide-content li").eq($index).fadeIn(40).siblings().fadeOut(40);
		$(".p_slide-nav li").eq($index).addClass("p_current").siblings().removeClass("p_current");
		$index++;
		if($index>9){
			$index=0;
			}
		
		}
	$(".p_slide-nav li").mouseover(function(e) {
		clearInterval(timer);
        $index=$(this).index();
		$(this).addClass("p_current").siblings().removeClass("p_current");
		$(".p_slide-content li").eq($index).fadeIn(200).siblings().fadeOut(200);
		$index++;
		if($index>9){
			$index=0;
			}
		
    });
	$(".p_slide-box").hover(function(){
		clearInterval(timer);
		},function(){
			timer=setInterval(autoplay,3000);
			})
	$(".p_tour_con li").each(function(index, element) {
        var $index1=$(this).index();
		if(($index1+1)%3==0){
			$(this).css({paddingRight:0});
			}
    });
	//路线切换
	/*$(".p_linebox").children(".p_tour_con").eq(0).show().siblings(".p_tour_con").hide();*/
	var $total=$(".p_linebox").length;
	for(var i=0; i<$total; i++){
		$(".p_linebox").eq(i).children(".p_tour_con").eq(0).show().siblings(".p_tour_con").hide();
		}
		
	$(".p_tour_top a").click(function(e) {
		$(this).addClass("p_current3").siblings().removeClass("p_current3");      
		 $(this).attr("id","p_ceshi").siblings().attr("id","");
		$(this).children("i").show();
		$(this).siblings("a").children("i").hide();
		var $index2=$(this).index();
		$(this).parent().siblings(".p_linebox").children(".p_tour_con").eq($index2-1).show().siblings().hide();
		
    }).hover(function() {
        $(this).children("i").show();
		
    },function(){
		if($(this).attr("id")){
			
			}else{
		$(this).children("i").hide();}
		
		});
	  
	  //轮播右侧切换
	var t;
	$(".p_seasonlist li").mouseover(function() {
		if(t!=null)clearTimeout(t);  
        t=null; 
        $(this).addClass("p_current5").siblings().removeClass("p_current5");       
		var $index4=$(this).index();
		$(".p_destination").eq($index4).show().siblings(".p_destination").hide();
		$(this).find("dt").css({color:"#019934"});
		$(this).siblings().find("dt").css({color:"#0183B0"});
    }).mouseout(function(e) {
        $(".p_destination").hide();
		$(this).removeClass("p_current5");
		$(this).find("dt").css({color:"#0183B0"});
    });

	
	$(".p_tour_con li a").hover(function(e) {
        $(this).children("p").css({ color:"#fda900"});
    },function(){
		$(this).children("p").css({ color:"#fff"});
		});
	/*我的lv妈妈*/
	$("#wdlmm").hover(function(){
			$(this).find(".p_top-sub1").show();
			$(this).find(".p_lvlink1").css({
			position: "relative",
			zIndex: "10",
			paddingLeft: "10px",
			marginLeft: "-1px",
			marginRight: "-1px",
			borderColor: "#ddd",
			borderStyle: "solid",
			borderWidth: "1px 1px 0 1px",
			height: "24px",
			background:"url(images/sanjiao2.png) #fff no-repeat 74px 10px"
		 });
	
		},function(){
			$(this).find(".p_top-sub1").hide();
			$(this).find(".p_lvlink1").css({
			backgroundColor: "#fff",
			position: "static",
			zIndex: "10",
			paddingLeft: "10px",
			margin: "-6px 0",
			padding: "0 20px 0 9px",
			borderColor: "#fff",
			borderStyle: "solid",
			borderWidth: "1px 0 0 1px",
			height: "18px" ,
			background:"url(images/sanjiao.png) no-repeat 74px 10px"
			
		 })
	})
	//导航
	
	$(".p_close").click(function(e) {
        $(".p_jumei").hide();
		$(".p_jumei").attr("id","p_close");
    });
	
	var $timer1=setInterval(goto,500);
	function goto(){
		 if($(window).scrollTop()>500){
			  $(".p_tools").show();
			  if(!$(".p_jumei").attr("id")){
			   $(".p_jumei").show(); }}else{
				   $(".p_tools").hide();
			  
			   $(".p_jumei").hide(); }
				   }
  $(".top").click(function(e) {
	   $("html,body").animate({scrollTop:0},0);
});
 
});
