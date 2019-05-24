$(function() {


www7188orgShowCalender();


   $(".a_info_right li a:eq(0)").mouseover(function() {
        var top = $(this).offset().top + 20;
        var left = $(this).offset().left - 5;
        var html = "<div class='qjsm' style='width:300px; border:1px solid #ccc;background:#ffffff;padding:8px; line-height:20px; color:#000; position:absolute; top:" + top + "px; left:" + left + "px; z-index:99; '>";
        html += "本起价是可选出发日期中，按双人出行共住一间房核算的最低单人价格。产品价格会根据您所选择的出发日期、出行人数、入住酒店房型、航班或交通以及所选附加服务的不同而有所差别。</div>";
        $("body").prepend(html);
    }).mouseout(function() {
        $(".qjsm").remove();
    });
   
       $(".a_info_right li label a:eq(0)").mouseover(function() {
        var top = $(this).offset().top + 20;
        var left = $(this).offset().left - 5;
        var html = "<div class='qjsm' style='width:300px; border:1px solid #ccc;background:#ffffff;padding:8px; line-height:20px; color:#000; position:absolute; top:" + top + "px; left:" + left + "px; z-index:99; '>";
        html += "一金币等于一元人民币，金币限本人在本站消费，不折现，不能转让！</div>";
        $("body").prepend(html);
    }).mouseout(function() {
        $(".qjsm").remove();
    });
   
   
     $(document).click(function(event) {
        var _this = $(event.target);
        if (_this.attr("class") == "fn-removeJL") {
            return false;
        }
        if (_this.parents(".fn-browse").length <= 0) {
           $(".fn-browseOne").hide();
        };
    });
	 

  $(window).scroll(function() {
							
        var top = $(window).scrollTop();
        if (top > 20) {
		
            $(".J_ScrollTop").show();
        } else {
            $(".J_ScrollTop").hide();
        }
    });
    $(".J_ScrollTop").click(function() {
									 
        $(window).scrollTop(0);
    });
    $(".J_ScrollTop").hover(function() {
        $(this).addClass("J_ScrollTopCur");
    }, function() {
        $(this).removeClass("J_ScrollTopCur");
    });
	
	
	   $(".fn-browseTitle li").each(function(i) {
        $(this).click(function() {
            $(this).addClass("on").siblings().removeClass("on");
            $(".fn-browseOne").show();
            $(this).blur();
        });
    });
   
$("div.fn-browseTop a").click(function() {
      $(".fn-browseOne").hide();
        return false;
    });
});   //$(function()







//输入出游人数
function changNum(obj) {
    var re = /^\d{1,2}$/;
    var per = $("." + obj + " .person").val();
     var son = $("." + obj + " .child").val();
	 
if (re.test(per) && re.test(son)) {
	
	 if (per.length > 1 && per[0] == "0") {
            per = per[1];
        }
		
       // if (parseInt(per) >= parseInt($(".startOrderPersonNum").attr("num"))) {
			
            $("#_hidPersonNum").val($("." + obj + " .person").val());
            $("#_hidChildNum").val($("." + obj + " .child").val());
            $(".person").val($("." + obj + " .person").val());
            $(".child").val($("." + obj + " .child").val());
        //}
	
}
else
{
	
	
        $(".person").val("0");
        $(".child").val("0");
        $("#_hidPersonNum").val("0");
        $("#_hidChildNum").val("0");
        alert("请正确填写成人数和儿童数");
	 
   
}

}
   
   
   
//点击下拉事件(选择日期)
function www7188orgShowCalender() {
	
	

    do71org88ShowCalender("a_info_right");
    //do71org88ShowCalender("fastCalender");
  do71org88ShowCalender("fastCalender1");

	do71org88ShowCalender("fastCalender2");

}


function  do71org88ShowCalender(obj) {
    var tg = $('#' + obj).find('div.p10').find('.calenderPart');
	
	
    var arrow = tg.next('.cArrow');
 
 
    tg.next(".cArrow").click(function() {
									 
  
			
            tg.show();
			
            arrow.attr("class", "cArrow cup");
       
    });


    tg.parents('div.p10').find('span.pTimeSpan').click(function() {
																
        tg.show();
        arrow.attr("class", "cArrow cup");
    });



      tg.parents('div.p10').find('span.pTimeSpan').click(function() {
																
        tg.show();
        arrow.attr("class", "cArrow cup");
    });




    //点击Li日期下拉选项
    tg.find('li').live("click", function() {

        var o = $(this);
        tg.parents('div.p10').find('input.pTime').val(o.text());
        tg.hide();
        arrow.attr("class", "cArrow cdown");
        $("#_hidChenRen").val(o.attr("title"));
        $("#_hidErTong").val(o.attr("son"));
        $("#_hidDate").val(o.attr("v"));
        $("#_hidPersonNum").val($("#person2").val());
        $("#_hidChildNum").val($("#child2").val());

    });

  
  

    $(document).click(function(e) {
							   
        var t = $(e.target);
        var v1 = "#" + obj + " .pTime" + ",#" + obj + " .pDropCalender" + ",#" + obj + " .pDropCalender *,#submit_a,#btnFastCalender,#submit_a";
		
		
        if (!t.is(v1)) {
			
            tg.hide();
            arrow.attr("class", "cArrow cdown");
        }
    });

}


function selectTag(div, obj) {
	
    $("#" + div + " ul li[class!='trim1']").removeClass();
    $("#" + div + " .infotab_d").find(".item").hide();
	if(obj=='dtag1') $("#" + div + " .infotab_d").find(".item").show();
    $("#" + div + " ul li[id='" + obj + "']").addClass("cur");
    $("#" + div + " .infotab_d .item[id='d" + obj + "']").show();
    if (div == "proReviewTab") {
        fenye(obj);
    }
}


function selectTag1(div, obj) {
	
    $("#" + div + " ul li[class!='trim1']").removeClass();
    $("#" + div + " .infotab_dd").find(".item").hide();
	if(obj=='ddtag1') $("#" + div + " #ddtag1").find(".item").show();
    $("#" + div + " ul li[id='" + obj + "']").addClass("cur");
    $("#" + div + " .infotab_dd .item[id='" + obj + "']").show();
    if (div == "proReviewTab") {
        fenye(obj);
    }
}


function Order(obj) {
	
    var godate =document.getElementById('pTime').value;
	 //var godate = $("#" + obj + " input.pTime").val();

    if (godate != null && godate != "点击选择出发日期") {
        if ($("#_hidPersonNum").val() > 0) {
            var pid = $("div#page").attr("pid"); //产品Id
            var U7188Date = $("#_hidDate").val(); //出发日期
            var person = $("#_hidPersonNum").val(); //成人数
            var son = $("#_hidChildNum").val(); //儿童数
            var _hidChenRen = $("#_hidChenRen").val(); //成人单价
            var _hidErTong = $("#_hidErTong").val(); //儿童单价
			var phpurl=  $("#phpurl").attr("pid"); //URL
			var product_number=$("#product_number").val();
		
            //editWidget("/order_login/" + UzaiStartDate + "/" + person + "/" + son + "/" + _hidChenRen + "/" + _hidErTong + "/" + pid + ".html");
             editWidget(phpurl+"/order/order_login.php?pid="+pid+"&U7188Date="+U7188Date+"&person="+person+"&product_number="+product_number+"&son="+son+"&_hidChenRen="+_hidChenRen+"&_hidErTong="+_hidErTong+"&yuding=line");
        }
        else {
            alert("成人数须大于0！");
            document.getElementById('person').focus();

        }
    }
    else if (godate == "点击选择出发日期") {
       alert("请选择出发日期");
	    document.getElementById('calenderPart').style.display="block";
	
	
        //$("#" + obj + " .calenderPart").show();
        $("#" + obj + " .calenderPart").next(".cArrow").addClass("cArrow cup");
    }
    else {
        return 0;
    }


}


function dianpinghotel(obj) {
	var phpurl=  $("#phpurl").attr("pid"); 
	 editWidget(phpurl+"/order/order_login.php?pid="+obj+"&ok=hotel");
}


function Ordersave(obj) {
	
    //var godate = $("#" + obj + " input.pTime").val();
	var godate =document.getElementById('pTime').value;
    if (godate != null && godate != "点击选择出发日期") {
        if ($("#_hidPersonNum").val() > 0) {
          var pid = $("div#page").attr("pid"); //产品Id
            var U7188Date = $("#_hidDate").val(); //出发日期
            var person = $("#_hidPersonNum").val(); //成人数
            var son = $("#_hidChildNum").val(); //儿童数
            var _hidChenRen = $("#_hidChenRen").val(); //成人单价
            var _hidErTong = $("#_hidErTong").val(); //儿童单价
			
			var phpurl=  $("#phpurl").attr("pid"); //URL
		
            //editWidget("/order_login/" + UzaiStartDate + "/" + person + "/" + son + "/" + _hidChenRen + "/" + _hidErTong + "/" + pid + ".html");
             editWidget(phpurl+"/order/order_login.php?pid="+pid+"&U7188Date="+U7188Date+"&person="+person+"&son="+son+"&_hidChenRen="+_hidChenRen+"&_hidErTong="+_hidErTong);
			 
        }
        else {
            alert("成人数须大于0！");
            $("#" + obj + " input").eq(0).focus();

        }
    }
    else if (godate == "点击选择出发日期") {
      
	   alert("请选择出发日期");
	   $("#" + obj + " .calenderPart").show();
        $("#" + obj + " .calenderPart").next(".cArrow").addClass("cArrow cup");
    }
    else {
        return 0;
    }

}



function Orderfast(obj) {
	
    //var godate = $("#" + obj + " input.pTime").val();
	var godate =document.getElementById('pTime').value;
	
    if (godate != null && godate != "点击选择出发日期") {
        if ($("#_hidPersonNum").val() > 0) {
          var pid = $("div#page").attr("pid"); //产品Id
            var U7188Date = $("#_hidDate").val(); //出发日期
            var person = $("#_hidPersonNum").val(); //成人数
            var son = $("#_hidChildNum").val(); //儿童数
            var _hidChenRen = $("#_hidChenRen").val(); //成人单价
            var _hidErTong = $("#_hidErTong").val(); //儿童单价
				var phpurl=  $("#phpurl").attr("pid"); //URL
		
            //editWidget("/order_login/" + UzaiStartDate + "/" + person + "/" + son + "/" + _hidChenRen + "/" + _hidErTong + "/" + pid + ".html");
             editWidget(phpurl+"/order/order_save.php?pid="+pid+"&U7188Date="+U7188Date+"&person="+person+"&son="+son+"&_hidChenRen="+_hidChenRen+"&_hidErTong="+_hidErTong);
			 
        }
        else {
            alert("成人数须大于0！");
            $("#" + obj + " input").eq(0).focus();

        }
    }
    else if (godate == "点击选择出发日期") {
      
	   alert("请选择出发日期");
	    document.getElementById('calenderPart').style.display="block";
        $("#" + obj + " .calenderPart").next(".cArrow").addClass("cArrow cup");
    }
    else {
        return 0;
    }

}


 function editWidget(targeturl)
{
  window.scrollTo(0, 0);
  var width = document.documentElement.clientWidth + document.documentElement.scrollLeft;
  var height = document.documentElement.clientHeight + document.documentElement.scrollTop;
  var layer = document.createElement('div');
  layer.style.zIndex = 2;
  layer.id = 'layer';
  layer.style.position = 'absolute';
  layer.style.top = '0px';
  layer.style.left = '0px';
  layer.style.height = document.documentElement.scrollHeight + 'px';
  layer.style.width = width + 'px';
  layer.style.backgroundColor = 'black';
  layer.style.opacity = '.3';
  layer.style.filter += ("progid:DXImageTransform.Microsoft.Alpha(opacity=30)");
  document.body.style.position = 'static';
  document.body.appendChild(layer);  
  
  var size = { 'height': 250, 'width': 640};
  var iframe = document.createElement('iframe');
  iframe.name = 'Widget Editor';
  iframe.id = 'WidgetEditor';
    iframe.scrolling="no";
	iframe.src = targeturl;
	iframe.style.height = size.height + 'px';
	iframe.style.width = size.width + 'px';
	iframe.style.position = 'absolute';
	iframe.style.zIndex = 9999;
	iframe.style.border = "2px";
	iframe.frameBorder="0px";
	iframe.marginwidth="0";
	iframe.marginheight="0";
	iframe.style.top = ((height + document.documentElement.scrollTop) / 2) - (size.height / 2) + 'px';
	iframe.style.left = (width / 2) - (size.width / 2) + 'px';
  document.body.appendChild(iframe);  
}

function closeEditor()
{
  var we=document.getElementById("WidgetEditor");
  var la=document.getElementById("layer");
  document.body.removeChild(we);
  document.body.removeChild(la);
  document.body.style.position = '';
}





/*----------------回访按钮-----------------------*/
function loginit(urll) {

	 $.ajax({
            type: "get",
            url: urll+"/order/order_login.php?type=talkbacklogin&rad=" + Math.random(),
            success: function(msg) {
					
                if (msg==0) {
					
                    window.location = urll+"/users/order.php?po=line";
                    //window.open("/manage/tour-record?tour=1&oid=" + msg, "_blank", "toolbar=yes, location=yes, directories=no, status=no, menubar=yes, scrollbars=yes, resizable=no, copyhistory=yes, width=800 ,height=600");
                }
                else {
                   $("#leaveMsgPop2").show();
                   $("#leaveMsgPop2 .d4").show();

                }
            }
        });
	 
  
}
/*----------------回访按钮 END-------------------*/

//关闭回访提示
function closetalkback() {
    $("#leaveMsgPop2").hide();
}


//选择select的日期价格
function changeGoDate(obj) {
    $("input.pTime").val($(obj).text());
    $("#_hidChenRen").val($(obj).attr("title"));
    $("#_hidErTong").val($(obj).attr("son"));
    $("#_hidDate").val($(obj).attr("v"));
    $("#_hidPersonNum").val($("#person").val());
    $("#_hidChildNum").val($("#child").val());
}

//calender选择日期
function showdiv(day, obj) {
	
	
    var top = $("#scheduler_here").offset().top + 90;
    var left = $("#scheduler_here").offset().left + 220;
	
    $("#hidden_div").css({ "top": "" + top + "px", "left": "" + left + "px" });
	
    $("#hidden_div").show();
    li = $(".fastCalender1 .p10 ul li");


    for (var i = 0; i <= $(".a_info_right .p10 ul li").length; i++) {
	


        if (li.eq(i).attr("v") == day) {
            $(".pTime").val(li.eq(i).text());
        }
    }
    $("#_hidDate").val(day);
}


       //日历控件弹出层隐藏
    $(document).click(function(e) {
        var t = $(e.target);
        var v1 = "#fastCalender1,#fastCalender1 *,i.calendar_bg_ffffcc,i.calendar_bg_ffffcc *,.fastCalender1 .sClose1";
        if (!t.is(v1)) {
            $("#hidden_div").hide();
        }
    });
function focustonone(obj) {
    $(this).attr("style", "box-shadow:0 0 5px #98bc86;border:1px solid #98bc86;");
    if ($.trim($(obj).val()) == "0") {
        $(obj).val("");
    }
}

//blur
function blurtohave(obj) {
    if ($.trim($(obj).val()) == "") {
        $(obj).val("0");
    }
}


  //滚动导航
  $(function(){
	  var fobj = $('.pkg-detail-tab').eq(0);
	  var fpos = fobj.offset();
	  //$('#total_pirce').html(fpos.top);
	  $(window).scroll(function(){checkPos(fobj,fpos);});
  });
  
  function checkPos(fobj,fpos)
  {
	  if ( $.browser.msie && $.browser.version=='6.0' )
	  {
		  var scTop = $(window).scrollTop();
		  scTop > fpos.top ? fobj.css({'position':'absolute','z-index':3,'top':scTop-fpos.top-13}) : fobj.attr('style','');
	  }
	  else
	  {
		  ($(window).scrollTop()>fpos.top) ? fobj.css({'position':'fixed','z-index':3,'top':0}) : fobj.css({'position':'static'});
	  }
  }
  
  
  $(function(){
	  var tab_a = $('.pkg-detail-tab-bd a');
	  
	  tab_a.click(function(){
						
		  $(this).addClass('current').siblings().removeClass('current');
	  });
	 $(window).scroll(function(){
							   
		  var Scroll_tab = $('.pkg-detail-tab-bd').offset().top;//滚动切换
		
		  $('.pkg-detail-infor').each(function(i,n){
							  
				  var tab_infor = $(n).offset().top;
				  
				  if( tab_infor >0 && Scroll_tab>=tab_infor ){
					 
					  $('.pkg-detail-tab-bd a').eq(i).addClass('current').siblings().removeClass('current');
				  }	
		  });	  
	 });
  });
  

