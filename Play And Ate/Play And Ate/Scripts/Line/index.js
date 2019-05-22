/***Index JS***/

$(function() {
		   uzaiIndexPop();
    uzaiIndexBannerSlide();
});

//首页弹出
function uzaiIndexPop() {
    /*
    $('#jqYZXY').jqm({ trigger: '#a_youzai', overlay: 30 });
	*/
   
    $('#jqZYZZ').jqm({ trigger: '#a_ziyouzizai', overlay: 30 });
}

function checksearchForm() {
    var searchkey = $("#input_search_key").val();
    var url = $("#hidurl").val();
    if (url != "") {
        window.location.href = url;
    }
}

//首页主视觉效果
    var c = 0;
    var s = 0;
    var clock;
    function uzaiIndexBannerSlide() {
        c = $("#divbanner li").size();
        
        bannermouseover();
        bannerlist();
    }
 
    function bannerAutoShow() {
        //if (s >= c) {
        //    s = 0;
        //}
        //$("#divbanner li a").removeClass();
        //$("#divimagebanner a").filter(":visible").hide();
        //$("#divbanner li a").eq(s).addClass('on');
        //$("#divimagebanner a").eq(s).show();
        //s++;
    }
    function bannerlist() {
        clock = window.setInterval("bannerAutoShow()", 3000);
    }
    function bannermouseover() {
	
        $("#divbanner li").each(function(index) {
										 
            $(this).bind("mouseover", function() {
                $("#divbanner li a").removeClass();
                $("#divimagebanner a").filter(":visible").hide();
                $("#divbanner li a").eq(index).addClass('on');
                $("#divimagebanner a").eq(index).show();
                window.clearInterval(clock);
            });
            $(this).bind("mouseout", function() {
                clock = window.setInterval("bannerAutoShow()", 3000);
            });
        });
    }




