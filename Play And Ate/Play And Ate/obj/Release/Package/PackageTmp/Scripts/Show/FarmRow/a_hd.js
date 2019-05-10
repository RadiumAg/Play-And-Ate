
$(function() {
    uzaiDetailBannerSlide();
  


 

});//$(function())



//首页主视觉效果
var c = 0;
var s = 0;
var clock;
function uzaiDetailBannerSlide() {
    c = $("#divbanner li").size();

    bannermouseover();
    bannerlist();
}

function bannerAutoShow() {
    if (s >= c) {
        s = 0;
    }
    var li_src = $("#divbanner li a img").eq(s).attr("src");
    $("#divbanner li a").removeClass();
    $("#divimagebanner a img").attr("src", li_src);
    $("#divbanner li a").eq(s).addClass('on');
    s++;
}
function bannerlist() {
    clock = window.setInterval("bannerAutoShow()", 3000);
}
function bannermouseover() {
    $("#divbanner li").each(function(index) {
        $(this).bind("mouseover", function() {
            var li_src = $("#divbanner li a img").eq(index).attr("src");
            $("#divbanner li a").removeClass();
            $("#divimagebanner a img").attr("src", li_src);
            $("#divbanner li a").eq(index).addClass('on');
            window.clearInterval(clock);
        });
        $(this).bind("mouseout", function() {
            clock = window.setInterval("bannerAutoShow()", 3000);
        });
    });
}
