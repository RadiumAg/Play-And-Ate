(function($){$.fn.countdown=function(options){var defaults={format:"dd:hh:mm:ss",prezero:true,effect:false,overtips:"已结束",timeauto:false,daytips:false,timeday:3,timediff:0,overFn:null}
var opt=$.extend(true,defaults,options||{});function timeOver(obj,all){var time=parseInt(all/1000);var s=time%60;time=parseInt(time/60);var m=time%60;time=parseInt(time/60);var h=parseInt(time%24);var day=parseInt(time/24);if(opt.daytips&&day>opt.timeday-1){obj.innerHTML=opt.timeday+'天以上';return;}
var times=1000;var labelleft="";var labelright="";if(opt.effect){labelleft="<i>";labelright="</i>";}
if(opt.prezero){m=(m<10)?("0"+m):m;h=(h<10)?("0"+h):h;s=(s<10)?("0"+s):s;}
if(opt.timeauto){if(all<86400000){opt.format="hh:mm:ss";if(all<3600000){opt.format="mm:ss";if(all<60000){opt.format="ss";}}}}
switch(opt.format){case"dd:hh:mm:ss":times=1000;obj.innerHTML=labelleft+day+labelright+"天"+labelleft+h+labelright+"时"
+labelleft+m+labelright+"分"+labelleft+s+labelright+"秒";break;case"hh:mm:ss":times=1000;obj.innerHTML=labelleft+h+labelright+"时"+labelleft+m+labelright+"分"
+labelleft+s+labelright+"秒";break;case"hh::mm::ss":times=1000;obj.innerHTML=labelleft+h+labelright+"："+labelleft+m+labelright+"："
+labelleft+s+labelright;break;case"mm:ss":times=1000;obj.innerHTML=labelleft+m+labelright+"分"+labelleft+s+labelright+"秒";break;case"ss":times=1000;obj.innerHTML=labelleft+s+labelright+"秒";break;case"dd:hh:mm":times=60000;if(day==0){obj.innerHTML=labelleft+h+labelright+"时"+labelleft+m+labelright+"分";}else{obj.innerHTML=labelleft+day+labelright+"天"+labelleft+h+labelright+"时"
+labelleft+m+labelright+"分";}
break;case"h:m:s":times=1000;obj.innerHTML="还剩<span>"+labelleft+h+labelright+":"+labelleft+m+labelright+":"
+labelleft+s+labelright+"</span>结束";break;case"eng":times=1000;obj.innerHTML=labelleft+h+labelright+"h"+labelleft+m+labelright+"'"
+labelleft+s+labelright+"''";break;default:times=1000;obj.innerHTML=day+"天"+h+"时"+m+"分"+s+"秒";}
setTimeout(function(){all-=times;if(all>0){timeOver(obj,all);}else{obj.innerHTML=opt.overtips;if(typeof opt.overFn==="function"){opt.overFn(obj);}}},times);}
var all="";for(var i=0,len=this.length;i<len;i++){if($(this).attr('data-time')){all=$(this[i]).attr('data-time');}else{all=$(this[i]).html();}
if(!(/(^-?[1-9]\d*$)/.test(all))){this.innerHTML=all;return;}
if(parseInt(all)<0){this[i].innerHTML=opt.overtips;return;}
all=Number(all)+opt.timediff;timeOver(this[i],all);}};})(jQuery);