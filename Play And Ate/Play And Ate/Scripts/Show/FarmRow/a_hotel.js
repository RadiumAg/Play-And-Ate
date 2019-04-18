// ColorBox v1.3.18 - a full featured, light-weight, customizable lightbox based on jQuery 1.3+
// Copyright (c) 2011 Jack Moore - jack@colorpowered.com
// Licensed under the MIT license: http://www.opensource.org/licenses/mit-license.php
(function(a,b,c){function Y(c,d,e){var g=b.createElement(c);return d&&(g.id=f+d),e&&(g.style.cssText=e),a(g)}function Z(a){var b=y.length,c=(Q+a)%b;return c<0?b+c:c}function $(a,b){return Math.round((/%/.test(a)?(b==="x"?z.width():z.height())/100:1)*parseInt(a,10))}function _(a){return K.photo||/\.(gif|png|jpe?g|bmp|ico)((#|\?).*)?$/i.test(a)}function ab(){var b;K=a.extend({},a.data(P,e));for(b in K)a.isFunction(K[b])&&b.slice(0,2)!=="on"&&(K[b]=K[b].call(P));K.rel=K.rel||P.rel||"nofollow",K.href=K.href||a(P).attr("href"),K.title=K.title||P.title,typeof K.href=="string"&&(K.href=a.trim(K.href))}function bb(b,c){a.event.trigger(b),c&&c.call(P)}function cb(){var a,b=f+"Slideshow_",c="click."+f,d,e,g;K.slideshow&&y[1]?(d=function(){F.text(K.slideshowStop).unbind(c).bind(j,function(){if(Q<y.length-1||K.loop)a=setTimeout(W.next,K.slideshowSpeed)}).bind(i,function(){clearTimeout(a)}).one(c+" "+k,e),r.removeClass(b+"off").addClass(b+"on"),a=setTimeout(W.next,K.slideshowSpeed)},e=function(){clearTimeout(a),F.text(K.slideshowStart).unbind([j,i,k,c].join(" ")).one(c,function(){W.next(),d()}),r.removeClass(b+"on").addClass(b+"off")},K.slideshowAuto?d():e()):r.removeClass(b+"off "+b+"on")}function db(b){if(!U){P=b,ab(),y=a(P),Q=0,K.rel!=="nofollow"&&(y=a("."+g).filter(function(){var b=a.data(this,e).rel||this.rel;return b===K.rel}),Q=y.index(P),Q===-1&&(y=y.add(P),Q=y.length-1));if(!S){S=T=!0,r.show();if(K.returnFocus)try{P.blur(),a(P).one(l,function(){try{this.focus()}catch(a){}})}catch(c){}q.css({opacity:+K.opacity,cursor:K.overlayClose?"pointer":"auto"}).show(),K.w=$(K.initialWidth,"x"),K.h=$(K.initialHeight,"y"),W.position(),o&&z.bind("resize."+p+" scroll."+p,function(){q.css({width:z.width(),height:z.height(),top:z.scrollTop(),left:z.scrollLeft()})}).trigger("resize."+p),bb(h,K.onOpen),J.add(D).hide(),I.html(K.close).show()}W.load(!0)}}var d={transition:"elastic",speed:300,width:!1,initialWidth:"600",innerWidth:!1,maxWidth:!1,height:!1,initialHeight:"450",innerHeight:!1,maxHeight:!1,scalePhotos:!0,scrolling:!0,inline:!1,html:!1,iframe:!1,fastIframe:!0,photo:!1,href:!1,title:!1,rel:!1,opacity:.9,preloading:!0,current:"image {current} of {total}",previous:"previous",next:"next",close:"close",open:!1,returnFocus:!0,loop:!0,slideshow:!1,slideshowAuto:!0,slideshowSpeed:2500,slideshowStart:"start slideshow",slideshowStop:"stop slideshow",onOpen:!1,onLoad:!1,onComplete:!1,onCleanup:!1,onClosed:!1,overlayClose:!0,escKey:!0,arrowKey:!0,top:!1,bottom:!1,left:!1,right:!1,fixed:!1,data:undefined},e="colorbox",f="cbox",g=f+"Element",h=f+"_open",i=f+"_load",j=f+"_complete",k=f+"_cleanup",l=f+"_closed",m=f+"_purge",n=a.browser.msie&&!a.support.opacity,o=n&&a.browser.version<7,p=f+"_IE6",q,r,s,t,u,v,w,x,y,z,A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X="div";W=a.fn[e]=a[e]=function(b,c){var f=this;b=b||{},W.init();if(!f[0]){if(f.selector)return f;f=a("<a/>"),b.open=!0}return c&&(b.onComplete=c),f.each(function(){a.data(this,e,a.extend({},a.data(this,e)||d,b)),a(this).addClass(g)}),(a.isFunction(b.open)&&b.open.call(f)||b.open)&&db(f[0]),f},W.init=function(){if(!r){if(!a("body")[0]){a(W.init);return}z=a(c),r=Y(X).attr({id:e,"class":n?f+(o?"IE6":"IE"):""}),q=Y(X,"Overlay",o?"position:absolute":"").hide(),s=Y(X,"Wrapper"),t=Y(X,"Content").append(A=Y(X,"LoadedContent","width:0; height:0; overflow:hidden"),C=Y(X,"LoadingOverlay").add(Y(X,"LoadingGraphic")),D=Y(X,"Title"),E=Y(X,"Current"),G=Y(X,"Next"),H=Y(X,"Previous"),F=Y(X,"Slideshow").bind(h,cb),I=Y(X,"Close")),s.append(Y(X).append(Y(X,"TopLeft"),u=Y(X,"TopCenter"),Y(X,"TopRight")),Y(X,!1,"clear:left").append(v=Y(X,"MiddleLeft"),t,w=Y(X,"MiddleRight")),Y(X,!1,"clear:left").append(Y(X,"BottomLeft"),x=Y(X,"BottomCenter"),Y(X,"BottomRight"))).find("div div").css({"float":"left"}),B=Y(X,!1,"position:absolute; width:9999px; visibility:hidden; display:none"),a("body").prepend(q,r.append(s,B)),L=u.height()+x.height()+t.outerHeight(!0)-t.height(),M=v.width()+w.width()+t.outerWidth(!0)-t.width(),N=A.outerHeight(!0),O=A.outerWidth(!0),r.css({"padding-bottom":L,"padding-right":M}).hide(),G.click(function(){W.next()}),H.click(function(){W.prev()}),I.click(function(){W.close()}),J=G.add(H).add(E).add(F),q.click(function(){K.overlayClose&&W.close()}),a(b).bind("keydown."+f,function(a){var b=a.keyCode;S&&K.escKey&&b===27&&(a.preventDefault(),W.close()),S&&K.arrowKey&&y[1]&&(b===37?(a.preventDefault(),H.click()):b===39&&(a.preventDefault(),G.click()))})}},W.remove=function(){r.add(q).remove(),r=null,a("."+g).removeData(e).removeClass(g)},W.position=function(a,b){function i(a){u[0].style.width=x[0].style.width=t[0].style.width=a.style.width,C[0].style.height=C[1].style.height=t[0].style.height=v[0].style.height=w[0].style.height=a.style.height}var c=0,d=0,e=r.offset(),g=z.scrollTop(),h=z.scrollLeft();z.unbind("resize."+f),r.css({top:-9e4,left:-9e4}),K.fixed&&!o?(e.top-=g,e.left-=h,r.css({position:"fixed"})):(c=g,d=h,r.css({position:"absolute"})),K.right!==!1?d+=Math.max(z.width()-K.w-O-M-$(K.right,"x"),0):K.left!==!1?d+=$(K.left,"x"):d+=Math.round(Math.max(z.width()-K.w-O-M,0)/2),K.bottom!==!1?c+=Math.max(z.height()-K.h-N-L-$(K.bottom,"y"),0):K.top!==!1?c+=$(K.top,"y"):c+=Math.round(Math.max(z.height()-K.h-N-L,0)/2),r.css({top:e.top,left:e.left}),a=r.width()===K.w+O&&r.height()===K.h+N?0:a||0,s[0].style.width=s[0].style.height="9999px",r.dequeue().animate({width:K.w+O,height:K.h+N,top:c,left:d},{duration:a,complete:function(){i(this),T=!1,s[0].style.width=K.w+O+M+"px",s[0].style.height=K.h+N+L+"px",b&&b(),setTimeout(function(){z.bind("resize."+f,W.position)},1)},step:function(){i(this)}})},W.resize=function(a){S&&(a=a||{},a.width&&(K.w=$(a.width,"x")-O-M),a.innerWidth&&(K.w=$(a.innerWidth,"x")),A.css({width:K.w}),a.height&&(K.h=$(a.height,"y")-N-L),a.innerHeight&&(K.h=$(a.innerHeight,"y")),!a.innerHeight&&!a.height&&(A.css({height:"auto"}),K.h=A.height()),A.css({height:K.h}),W.position(K.transition==="none"?0:K.speed))},W.prep=function(b){function g(){return K.w=K.w||A.width(),K.w=K.mw&&K.mw<K.w?K.mw:K.w,K.w}function h(){return K.h=K.h||A.height(),K.h=K.mh&&K.mh<K.h?K.mh:K.h,K.h}if(!S)return;var c,d=K.transition==="none"?0:K.speed;A.remove(),A=Y(X,"LoadedContent").append(b),A.hide().appendTo(B.show()).css({width:g(),overflow:K.scrolling?"auto":"hidden"}).css({height:h()}).prependTo(t),B.hide(),a(R).css({"float":"none"}),o&&a("select").not(r.find("select")).filter(function(){return this.style.visibility!=="hidden"}).css({visibility:"hidden"}).one(k,function(){this.style.visibility="inherit"}),c=function(){function q(){n&&r[0].style.removeAttribute("filter")}var b,c,g=y.length,h,i="frameBorder",k="allowTransparency",l,o,p;if(!S)return;l=function(){clearTimeout(V),C.hide(),bb(j,K.onComplete)},n&&R&&A.fadeIn(100),D.html(K.title).add(A).show();if(g>1){typeof K.current=="string"&&E.html(K.current.replace("{current}",Q+1).replace("{total}",g)).show(),G[K.loop||Q<g-1?"show":"hide"]().html(K.next),H[K.loop||Q?"show":"hide"]().html(K.previous),K.slideshow&&F.show();if(K.preloading){b=[Z(-1),Z(1)];while(c=y[b.pop()])o=a.data(c,e).href||c.href,a.isFunction(o)&&(o=o.call(c)),_(o)&&(p=new Image,p.src=o)}}else J.hide();K.iframe?(h=Y("iframe")[0],i in h&&(h[i]=0),k in h&&(h[k]="true"),h.name=f+ +(new Date),K.fastIframe?l():a(h).one("load",l),h.src=K.href,K.scrolling||(h.scrolling="no"),a(h).addClass(f+"Iframe").appendTo(A).one(m,function(){h.src="//about:blank"})):l(),K.transition==="fade"?r.fadeTo(d,1,q):q()},K.transition==="fade"?r.fadeTo(d,0,function(){W.position(0,c)}):W.position(d,c)},W.load=function(b){var c,d,e=W.prep;T=!0,R=!1,P=y[Q],b||ab(),bb(m),bb(i,K.onLoad),K.h=K.height?$(K.height,"y")-N-L:K.innerHeight&&$(K.innerHeight,"y"),K.w=K.width?$(K.width,"x")-O-M:K.innerWidth&&$(K.innerWidth,"x"),K.mw=K.w,K.mh=K.h,K.maxWidth&&(K.mw=$(K.maxWidth,"x")-O-M,K.mw=K.w&&K.w<K.mw?K.w:K.mw),K.maxHeight&&(K.mh=$(K.maxHeight,"y")-N-L,K.mh=K.h&&K.h<K.mh?K.h:K.mh),c=K.href,V=setTimeout(function(){C.show()},100),K.inline?(Y(X).hide().insertBefore(a(c)[0]).one(m,function(){a(this).replaceWith(A.children())}),e(a(c))):K.iframe?e(" "):K.html?e(K.html):_(c)?(a(R=new Image).addClass(f+"Photo").error(function(){K.title=!1,e(Y(X,"Error").text("This image could not be loaded"))}).load(function(){var a;R.onload=null,K.scalePhotos&&(d=function(){R.height-=R.height*a,R.width-=R.width*a},K.mw&&R.width>K.mw&&(a=(R.width-K.mw)/R.width,d()),K.mh&&R.height>K.mh&&(a=(R.height-K.mh)/R.height,d())),K.h&&(R.style.marginTop=Math.max(K.h-R.height,0)/2+"px"),y[1]&&(Q<y.length-1||K.loop)&&(R.style.cursor="pointer",R.onclick=function(){W.next()}),n&&(R.style.msInterpolationMode="bicubic"),setTimeout(function(){e(R)},1)}),setTimeout(function(){R.src=c},1)):c&&B.load(c,K.data,function(b,c,d){e(c==="error"?Y(X,"Error").text("Request unsuccessful: "+d.statusText):a(this).contents())})},W.next=function(){!T&&y[1]&&(Q<y.length-1||K.loop)&&(Q=Z(1),W.load())},W.prev=function(){!T&&y[1]&&(Q||K.loop)&&(Q=Z(-1),W.load())},W.close=function(){S&&!U&&(U=!0,S=!1,bb(k,K.onCleanup),z.unbind("."+f+" ."+p),q.fadeTo(200,0),r.stop().fadeTo(300,0,function(){r.add(q).css({opacity:1,cursor:"auto"}).hide(),bb(m),A.remove(),setTimeout(function(){U=!1,bb(l,K.onClosed)},1)}))},W.element=function(){return a(P)},W.settings=d,a("."+g,b).live("click",function(a){a.which>1||a.shiftKey||a.altKey||a.metaKey||(a.preventDefault(),db(this))}),W.init()})(jQuery,document,this);
;function traffic(){$("#traffic_des").show();$("#attractions_des").hide();$("#hotarea_des").hide();$("#traffic").addClass("select");$("#attractions").removeClass("select");$("#hotarea").removeClass("select");var lat=$("#lat").attr("value");var lng=$("#lng").attr("value");var latlng=new google.maps.LatLng(lat,lng);var myOptions={zoom:10,center:latlng,mapTypeId:google.maps.MapTypeId.ROADMAP};var trafficMap=new google.maps.Map(document.getElementById("google_map"),myOptions);var hotel_image=http_file_url+'/image/common/hotel.png';var traffic_image=http_file_url+'/image/common/traffic.png';var hotelLatLng=new google.maps.LatLng(lat,lng);var hotelMarker=new google.maps.Marker({position:hotelLatLng,map:trafficMap,icon:hotel_image});var hotelname=$("#hotelname").attr("value");var hoteladd=$("#hotel_add").attr("value");var message="<b>"+hotelname+"</b>"+"<br><br>"+hoteladd;hotelMarker.setTitle(hotelname);attachSecretMessage(trafficMap,hotelMarker,message);var trafficul=$("#traffic_ul");trafficul.children(".around_traffic").each(function(){var traffic_lat=$(this).attr("lat");var traffic_lng=$(this).attr("lng");var trafficLatLng=new google.maps.LatLng(traffic_lat,traffic_lng);var trafficMarker=new google.maps.Marker({position:trafficLatLng,map:trafficMap,icon:traffic_image});var addr=$(this).attr("trafficname");trafficMarker.setTitle(addr);attachSecretMessage(trafficMap,trafficMarker,addr);var infowindow=new google.maps.InfoWindow({content:addr,size:new google.maps.Size(50,50)});$(this).click(function(){infowindow.open(trafficMap,trafficMarker);});$(this).mouseout(function(){infowindow.close(trafficMap,trafficMarker);});});}
function attractions(){$("#traffic_des").hide();$("#attractions_des").show();$("#hotarea_des").hide();$("#traffic").removeClass("select");$("#attractions").addClass("select");$("#hotarea").removeClass("select");var lat=$("#lat").attr("value");var lng=$("#lng").attr("value");var latlng=new google.maps.LatLng(lat,lng);var myOptions={zoom:10,center:latlng,mapTypeId:google.maps.MapTypeId.ROADMAP};var attractionsMap=new google.maps.Map(document.getElementById("google_map"),myOptions);var hotel_image=http_file_url+'/image/common/hotel.png';var attractions_image=http_file_url+'/image/common/attractions.png';var hotelLatLng=new google.maps.LatLng(lat,lng);var hotelMarker=new google.maps.Marker({position:hotelLatLng,map:attractionsMap,icon:hotel_image});var hotelname=$("#hotelname").attr("value");var hoteladd=$("#hotel_add").attr("value");var message="<b>"+hotelname+"</b>"+"<br><br>"+hoteladd;hotelMarker.setTitle(hotelname);attachSecretMessage(attractionsMap,hotelMarker,message);var attractionsul=$("#attractions_ul");attractionsul.children(".around_attractions").each(function(){var attractions_lat=$(this).attr("lat");var attractions_lng=$(this).attr("lng");var attractionsLatLng=new google.maps.LatLng(attractions_lat,attractions_lng);var attractionsMarker=new google.maps.Marker({position:attractionsLatLng,map:attractionsMap,icon:attractions_image});var addr=$(this).attr("attractionsname");attractionsMarker.setTitle(addr);attachSecretMessage(attractionsMap,attractionsMarker,addr);var infowindow=new google.maps.InfoWindow({content:addr,size:new google.maps.Size(50,50)});$(this).click(function(){infowindow.open(attractionsMap,attractionsMarker);});$(this).mouseout(function(){infowindow.close(attractionsMap,attractionsMarker);});});}
function hotarea(){$("#traffic_des").hide();$("#attractions_des").hide();$("#hotarea_des").show();$("#traffic").removeClass("select");$("#attractions").removeClass("select");$("#hotarea").addClass("select");var lat=$("#lat").attr("value");var lng=$("#lng").attr("value");var latlng=new google.maps.LatLng(lat,lng);var myOptions={zoom:12,center:latlng,mapTypeId:google.maps.MapTypeId.ROADMAP};var hotareaMap=new google.maps.Map(document.getElementById("google_map"),myOptions);var hotel_image=http_file_url+'/image/common/hotel.png';var hotarea_image=http_file_url+'/image/common/area.png';var hotelLatLng=new google.maps.LatLng(lat,lng);var hotelMarker=new google.maps.Marker({position:hotelLatLng,map:hotareaMap,icon:hotel_image});var hotelname=$("#hotelname").attr("value");var hoteladd=$("#hotel_add").attr("value");var message="<b>"+hotelname+"</b>"+"<br><br>"+hoteladd;hotelMarker.setTitle(hotelname);attachSecretMessage(hotareaMap,hotelMarker,message);var hotareaul=$("#hotarea_ul");hotareaul.children(".around_hotarea").each(function(){var hotarea_lat=$(this).attr("lat");var hotarea_lng=$(this).attr("lng");var hotareaLatLng=new google.maps.LatLng(hotarea_lat,hotarea_lng);var hotareaMarker=new google.maps.Marker({position:hotareaLatLng,map:hotareaMap,icon:hotarea_image});var addr=$(this).attr("hotareaname");hotareaMarker.setTitle(addr);attachSecretMessage(hotareaMap,hotareaMarker,addr);var infowindow=new google.maps.InfoWindow({content:addr,size:new google.maps.Size(50,50)});$(this).click(function(){infowindow.open(hotareaMap,hotareaMarker);});$(this).mouseout(function(){infowindow.close(hotareaMap,hotareaMarker);});});}
function attachSecretMessage(map,marker,message){var mes=message;var infowindow=new google.maps.InfoWindow({content:mes,size:new google.maps.Size(50,50)});google.maps.event.addListener(marker,'mouseover',function(){infowindow.open(map,marker);});google.maps.event.addListener(marker,'mouseout',function(){infowindow.close(map,marker);});};function SimpleCityClew()
{var cityInputId="";var div=document.createElement("div");if('https:'==document.location.protocol){var frame_src=etpass_global.iframe_https_src;}else{var frame_src="javascript:false;";}
div.innerHTML='<!--[if IE 6]><iframe src="'+frame_src+'" id="ie6iframe"  frameborder="0"  style="position:absolute;left:0px;top:0px;width:100%;height:100%;filter:Alpha(Opacity=0);z-index:-1;"></iframe><![endif]--><ul id="SCCcityList"></ul>';div.id="simpleCityClew";div.className="simpleCityClew";div.style.display="none";document.body.appendChild(div);var inputCitys={};var cityClew=document.getElementById("simpleCityClew");this.setCityInputId=function(inputId,citysArray,otherFunction)
{if(citysArray)
{inputCitys[inputId]=citysArray;}
else
{inputCitys[inputId]=citysStatic;}
if(otherFunction)
{inputCitys[inputId+"Fun"]=otherFunction;}
var input=document.getElementById(inputId);if(input){input.onkeyup=this.setArguFunction;input.onkeydown=this.setArguFunction;input.onblur=this.setArguFunction;}}
this.setArguFunction=function(oEvent)
{if(window.event)
{oEvent=window.event;cityInputId=window.event.srcElement.id;}
else
{cityInputId=oEvent.target.id;}
if(typeof layerControler!="undefined"&&oEvent.type!="blur")
{layerControler.closeOtherLayer("simpleCityClew");}
if(oEvent.type=="blur")
{simpleCityClew.fire("setCity");if(inputCitys[cityInputId+"Fun"])
{inputCitys[cityInputId+"Fun"]();}}
else
{simpleCityClew.fire(oEvent);}}
var Status=function(){}
Status.prototype={isShow:false,city:"",showCity:"",preShowCity:"",showCitys:{}};var status1=new Status();var CityClewLayer=function(){}
CityClewLayer.prototype={observer:function(action,city){switch(action)
{case"close":delete status1.isShow;delete status1.city;delete status1.showCity;delete status1.preShowCity;delete status1.showCitys;break;case"mouseover":status1.preShowCity=status1.showCity;status1.showCity=city;break;default:if(action.type=="keydown")
{if(action.keyCode==38)
{var preShowCity="";for(var city in status1.showCitys)
{if(city==status1.showCity)
{break;}
else
{preShowCity=city;}}
if(preShowCity.length>0)
{status1.preShowCity=status1.showCity;status1.showCity=preShowCity;}}
else if(action.keyCode==40)
{var nextShowCity="";for(var city in status1.showCitys)
{if(nextShowCity.length>0)
{nextShowCity=city;break;}
if(city==status1.showCity)
{nextShowCity=city;}}
if(nextShowCity.length>0)
{status1.preShowCity=status1.showCity;status1.showCity=nextShowCity;}}}
else
{status1.isShow=true;if(document.getElementById(cityInputId).value.length==0)
{delete status1.isShow;delete status1.city;delete status1.showCity;delete status1.preShowCity;delete status1.showCitys;}
else
status1.city=document.getElementById(cityInputId).value.toLowerCase();if(action.keyCode&&status1.showCity.length>0)
{switch(action.keyCode)
{case 13:simpleCityClew.fire("setCity",status1.showCity);default:if((action.keyCode>=65&&action.keyCode<=90)||(action.keyCode==8)||(action.keyCode==46))
{delete status1.preShowCity;delete status1.showCity;delete status1.showCitys;}
break;}}
break;}}},initial:function()
{cityInput=document.getElementById(cityInputId);var p=countPosition(cityInput);cityClew.style.left=p.left+"px";cityClew.style.top=(p.top+cityInput.scrollHeight)+"px";var reg=new RegExp("^"+status1.city+"[a-z]*$");var reg_u=new RegExp("^[\\u4e00-\\u9fa5]*$");var reg_u_city=new RegExp("^"+status1.city+"[\\u4e00-\\u9fa5]*$");status1.showCitys={};var aCityHtml=[""];if(reg_u.test(status1.city))
{for(var city in inputCitys[cityInputId])
{if(reg_u_city.test(inputCitys[cityInputId][city][0]))
{city_U="<span class='SCCleft'><span class='SCCselected'>"+status1.city+"</span>";city_U+=inputCitys[cityInputId][city][0].substring(status1.city.length)+"</span><span class='SCCright'>"+city+"</span>";aCityHtml[aCityHtml.length]="<li onmouseover=simpleCityClew.fire('mouseover','"+city+"')  onclick=simpleCityClew.fire('setCity','"+city+"') id='"+city+"'>"+city_U+"</li>";status1.showCitys[city]=inputCitys[cityInputId][city][0];}}}
else
{var alreadyExistCity={};for(var city in inputCitys[cityInputId])
{if(reg.test(city))
{if(!alreadyExistCity[city])
{alreadyExistCity[city]=1;city_en="<span class='SCCleft'>"+inputCitys[cityInputId][city][0]+"</span>"+"<span class='SCCright'><span class='SCCselected'>"+status1.city+"</span>";city_en+=city.substring(status1.city.length)+"</span>";aCityHtml[aCityHtml.length]="<li onmouseover=simpleCityClew.fire('mouseover','"+city+"') onclick=simpleCityClew.fire('setCity','"+city+"') id='"+city+"'>"+city_en+"</li>";status1.showCitys[city]=inputCitys[cityInputId][city][0];}}}
for(var city in inputCitys[cityInputId]){if(!alreadyExistCity[city]&&inputCitys[cityInputId][city][1]&&reg.test(inputCitys[cityInputId][city][1]))
{city_enlish="<span class='SCCleft'>"+inputCitys[cityInputId][city][0]+"</span>"+"<span class='SCCright'><span class='SCCselected'>"+status1.city+"</span>";city_enlish+=inputCitys[cityInputId][city][1].substring(status1.city.length)+"</span>";aCityHtml[aCityHtml.length]="<li onmouseover=simpleCityClew.fire('mouseover','"+city+"')  onclick=simpleCityClew.fire('setCity','"+city+"') id='"+city+"'>"+city_enlish+"</li>";status1.showCitys[city]=inputCitys[cityInputId][city][0];}}
for(var city in inputCitys[cityInputId]){if(!alreadyExistCity[city]&&inputCitys[cityInputId][city][2]&&reg.test(inputCitys[cityInputId][city][2]))
{city_enlish="<span class='SCCleft'>"+inputCitys[cityInputId][city][0]+"</span>"+"<span class='SCCright'><span class='SCCselected'>"+status1.city+"</span>";city_enlish+=inputCitys[cityInputId][city][2].substring(status1.city.length)+"</span>";aCityHtml[aCityHtml.length]="<li onmouseover=simpleCityClew.fire('mouseover','"+city+"')  onclick=simpleCityClew.fire('setCity','"+city+"') id='"+city+"'>"+city_enlish+"</li>";status1.showCitys[city]=inputCitys[cityInputId][city][0];}}
for(var city in inputCitys[cityInputId]){if(!alreadyExistCity[city]&&inputCitys[cityInputId][city][3]&&reg.test(inputCitys[cityInputId][city][3]))
{city_enlish="<span class='SCCleft'>"+inputCitys[cityInputId][city][0]+"</span>"+"<span class='SCCright'><span class='SCCselected'>"+status1.city+"</span>";city_enlish+=inputCitys[cityInputId][city][3].substring(status1.city.length)+"</span>";aCityHtml[aCityHtml.length]="<li onmouseover=simpleCityClew.fire('mouseover','"+city+"')  onclick=simpleCityClew.fire('setCity','"+city+"') id='"+city+"'>"+city_enlish+"</li>";status1.showCitys[city]=inputCitys[cityInputId][city][0];}}}
if(aCityHtml.length==1)
{aCityHtml[aCityHtml.length]="<li>输入错误！</li>";}
document.getElementById("SCCcityList").innerHTML=aCityHtml.join("");document.getElementById("simpleCityClew").style.display="";if(document.getElementById("ie6iframe"))
{document.getElementById("ie6iframe").style.width=document.getElementById("simpleCityClew").clientWidth+"px";document.getElementById("ie6iframe").style.height=document.getElementById("simpleCityClew").clientHeight+"px";}
var lis=document.getElementById("SCCcityList").childNodes;var showLi="";for(var li=0;li<lis.length;li++)
{if(lis[li].nodeType==1&&lis[li].id!="SCCHead")
{showLi=lis[li];break;}}
status1.showCity=showLi.id;},decorate:function()
{if(document.getElementById(status1.preShowCity))
{document.getElementById(status1.preShowCity).style.border="";}
if(document.getElementById(status1.showCity))
{document.getElementById(status1.showCity).style.border="1px solid #46A9E2";}},drawSelf:function()
{if(!status1.isShow)
{document.getElementById("simpleCityClew").style.display="none";}
else
{if(status1.preShowCity.length>0)
{if(status1.showCity)
{this.decorate();}}
else
{this.initial();if(status1.showCity)
{this.decorate();}}}}};var cityClewLayer=new CityClewLayer();this.fire=function(action,city)
{if(!action&&window.event)
{action=window.event;}
switch(action)
{case"setCity":if(!city)
{if(status1.showCity.length>0)
{city=status1.showCity;}}
if(city)
{if(inputCitys[cityInputId][city][0])
{document.getElementById(cityInputId).value=inputCitys[cityInputId][city][0];}}
simpleCityClew.fire("close");break;default:cityClewLayer.observer(action,city);cityClewLayer.drawSelf();break;}}
function countPosition(input)
{var left=input.offsetLeft;var top=input.offsetTop;var n=0;while((input=input.offsetParent)!=null)
{n++;if(n>10)
break;left+=input.offsetLeft;top+=input.offsetTop;}
return{left:left,top:top};}
};function SimpleHotelClew()
{var hotelInputId="";var div=document.createElement("div");div.innerHTML='<ul id="SCChotelList"></ul>';div.id="simpleHotelClew";div.className="simpleCityClew";div.style.display="none";document.body.appendChild(div);var inputHotels={};var hotelClew=document.getElementById("simpleHotelClew");this.setHotelInputId=function(inputId)
{document.getElementById(inputId).onkeyup=this.setArguFunction;document.getElementById(inputId).onblur=this.setArguFunction;}
this.setArguFunction=function(oEvent)
{if(window.event)
{oEvent=window.event;hotelInputId=window.event.srcElement.id;}
else
{hotelInputId=oEvent.target.id;}
city=$("#city").val()
hotel_name=$("#"+hotelInputId).val()
if(!city||city=="拼音/中文/英文"){if(oEvent.type!="blur"){alert("请输入查询城市!");try{$("#city")[0].click();$("#city")[0].focus();}
catch(e){$("#city").click();$("#city").focus();}
finally{}}}else{if(typeof layerControler!="undefined"&&oEvent.type!="blur")
{layerControler.closeOtherLayer("simpleHotelClew");}
if(oEvent.type=="blur"){simpleHotelClew.fire("setHotel");}else{if((oEvent.keyCode>=65&&oEvent.keyCode<=90)||(oEvent.keyCode==8)||(oEvent.keyCode==46)||(oEvent.keyCode==32)||(oEvent.keyCode>=48&&oEvent.keyCode<=57)){if(jQuery.trim(hotel_name)!=""){http_url=$("#httpurl").val();$.getJSON(http_url+'/service/hotel/get_hotel.php?jsoncallback=?',{q:hotel_name,city:city,act:"pingyinhotels"},function(data){inputHotels=data;simpleHotelClew.fire(oEvent);});}else{simpleHotelClew.fire(oEvent);}}else{simpleHotelClew.fire(oEvent);}}}}
var Status=function(){}
Status.prototype={isShow:false,hotel:"",showHotel:"",preShowHotel:"",showHotels:{}};var status1=new Status();var HotelClewLayer=function(){}
HotelClewLayer.prototype={observer:function(action,hotel){switch(action)
{case"close":delete status1.isShow;delete status1.hotel;delete status1.showHotel;delete status1.preShowHotel;delete status1.showHotels;break;case"mouseover":status1.preShowHotel=status1.showHotel;status1.showHotel=hotel;break;default:status1.isShow=true;if(document.getElementById(hotelInputId).value.length==0)
{delete status1.isShow;delete status1.hotel;delete status1.showHotel;delete status1.preShowHotel;delete status1.showHotels;}
else{status1.hotel=document.getElementById(hotelInputId).value;}
try{if(action.keyCode==38){var preShowHotel="";for(var hotel in status1.showHotels)
{if(hotel==status1.showHotel)
{break;}
else
{preShowHotel=hotel;}}
if(preShowHotel.length>0)
{status1.preShowHotel=status1.showHotel;status1.showHotel=preShowHotel;}}else if(action.keyCode==40){var nextShowHotel="";if(status1.showHotel=="")
status1.showHotel=-1;for(var hotel in status1.showHotels)
{if(parseInt(hotel)>parseInt(status1.showHotel))
{nextShowHotel=hotel;break;}}
if(nextShowHotel.length>0)
{status1.preShowHotel=status1.showHotel;status1.showHotel=nextShowHotel;}}
if(action.keyCode==13)
{simpleHotelClew.fire("setHotel",status1.showHotel);}else{if((action.keyCode>=65&&action.keyCode<=90)||(action.keyCode==8)||(action.keyCode==46)||(action.keyCode==32)||(action.keyCode>=48&&action.keyCode<=57))
{delete status1.preShowHotel;delete status1.showHotel;delete status1.showHotels;}}}catch(err){}
break;}},initial:function()
{hotelInput=document.getElementById(hotelInputId);var p=countPosition(hotelInput);hotelClew.style.left=p.left+"px";hotelClew.style.top=(p.top+hotelInput.scrollHeight)+"px";status1.showHotels={};var aHotelHtml=[""];for(var hotel in inputHotels)
{hotel_U="<span class='SCCleft'>";hotel_U+=inputHotels[hotel]['name'].replace(status1.hotel,"<span class='SCCselected'>"+status1.hotel+"</span>")+"</span>";aHotelHtml[aHotelHtml.length]="<li onmouseover=simpleHotelClew.fire('mouseover','"+hotel+"')  onclick=simpleHotelClew.fire('setHotel','"+hotel+"') id='"+hotel+"'>"+hotel_U+"</li>";status1.showHotels[hotel]=inputHotels[hotel]['name'];}
document.getElementById("SCChotelList").innerHTML=aHotelHtml.join("");document.getElementById("simpleHotelClew").style.display="";},decorate:function()
{if(document.getElementById(status1.preShowHotel))
{document.getElementById(status1.preShowHotel).style.border="";}
if(document.getElementById(status1.showHotel))
{document.getElementById(status1.showHotel).style.border="1px solid #46A9E2";}},drawSelf:function()
{if(!status1.isShow)
{document.getElementById("simpleHotelClew").style.display="none";}
else
{if(status1.preShowHotel.length>0)
{if(status1.showHotel)
{this.decorate();}}
else
{this.initial();if(status1.showHotel)
{this.decorate();}}}}};var hotelClewLayer=new HotelClewLayer();this.fire=function(action,hotel)
{if(!action&&window.event)
{action=window.event;}
switch(action)
{case"setHotel":if(!hotel)
{if(status1.showHotel.length>0)
{hotel=status1.showHotel;}}
if(hotel)
{if(inputHotels[hotel]['name'])
{document.getElementById(hotelInputId).value=inputHotels[hotel]['name'];}}
simpleHotelClew.fire("close");break;default:hotelClewLayer.observer(action,hotel);hotelClewLayer.drawSelf();break;}}
function countPosition(input)
{var left=input.offsetLeft;var top=input.offsetTop;var n=0;while((input=input.offsetParent)!=null)
{n++;if(n>10)
break;left+=input.offsetLeft;top+=input.offsetTop;}
return{left:left,top:top};}};function SimpleDatePicker(){var dateInputInfo={};var dateInputId="";this.setDateInputId=function(inputId,otherInfo){document.getElementById(inputId).onclick=this.setArguFunction;if(document.getElementById(inputId+"Img")){document.getElementById(inputId+"Img").onclick=this.setArguFunction;}
dateInputInfo[inputId]={rightFrame:1,hasOtherInfo:0,showMonths:3,otherClick:"",position:{"left":0,"top":0}};if(otherInfo){dateInputInfo[inputId]=$.extend(dateInputInfo[inputId],otherInfo);}}
this.setArguFunction=function(oEvent){if(window.event){dateInputId=window.event.srcElement.id;window.event.cancelBubble=true;}
else{dateInputId=oEvent.target.id;oEvent.stopPropagation();}
if(typeof layerControler!="undefined"){layerControler.closeOtherLayer("simpleDatePicker");}
if(dateInputId.substr(dateInputId.length-3)=="Img"){dateInputId=dateInputId.substr(0,dateInputId.length-3);}
if(dateInputInfo[dateInputId]["hasOtherInfo"]==1){if(SDPdata["price"]["flag"]){simpleDatePicker.date_fire.call(simpleDatePicker,'now');}}
else{simpleDatePicker.date_fire.call(simpleDatePicker,'now');}}
this.processDateFire=function(argu){simpleDatePicker.date_fire.call(simpleDatePicker,argu);if(!isNaN(argu)){if(dateInputId=="end_date"){start_date=document.getElementById("start_date").value;end_date=document.getElementById("end_date").value;startTime=start_date.replace(/\-/g,"/");endTime=end_date.replace(/\-/g,"/");sTime=new Date(startTime);eTime=new Date(endTime);divNum=1000*3600*24;var dayCount=parseInt((eTime.getTime()-sTime.getTime())/parseInt(divNum));document.getElementById("dayCount").innerHTML="(共"+dayCount+"晚)";printFestival('end_date','end_dateWeek');if(end_date<=start_date){layerControler.showPopLayer("end_dateImg","error_dada");}else{if(dayCount>21){layerControler.showPopLayer("end_dateImg","max_book_dada");}}}
if(dateInputId=="start_date"){printFestival('start_date','start_dateWeek');var start_date_search=document.getElementById("start_date").value;var start_time_dete=start_date_search.replace(/\-/g,"/");var e_time_dete=new Date(start_time_dete);e_time_dete.setDate(e_time_dete.getDate()+1);document.getElementById("end_date").value=getFormatDate(e_time_dete);document.getElementById("dayCount").innerHTML="(共1晚)";printFestival('end_date','end_dateWeek');}
if(dateInputId=="end_date_detail"){start_date_search_detail=document.getElementById("start_date_detail").value;end_date_search_detail=document.getElementById("end_date_detail").value;startTime_detail=start_date_search_detail.replace(/\-/g,"/");endTime_detail=end_date_search_detail.replace(/\-/g,"/");sTime_detail=new Date(startTime_detail);eTime_detail=new Date(endTime_detail);limitDate=new Date();limitDate.setDate(limitDate.getDate()+21);divNum=1000*3600*24;var dayCount_detail=parseInt((eTime_detail.getTime()-sTime_detail.getTime())/parseInt(divNum));var hotelid=$("#hotelid").val();if(dayCount_detail>21){document.getElementById("dayCount_detail").innerHTML="共"+dayCount_detail+"晚";printFestival('end_date_detail','end_date_detailWeek');layerControler.showPopLayer("end_date_detail","max_book_dada");}else if(end_date_search_detail<=start_date_search_detail){document.getElementById("dayCount_detail").innerHTML="共"+dayCount_detail+"晚";printFestival('end_date_detail','end_date_detailWeek');layerControler.showPopLayer("end_date_detail","error_dada");}else{document.getElementById("dayCount_detail").innerHTML="共"+dayCount_detail+"晚";printFestival('end_date_detail','end_date_detailWeek');if(hotelid!=''&&hotelid!==undefined){detail_rooms(hotelid,start_date_search_detail,end_date_search_detail);refreshSpecialFlight();}}}
if(dateInputId=="start_date_detail"){printFestival('start_date_detail','start_date_detailWeek');var start_detail_search=document.getElementById("start_date_detail").value;var start_detail_detail=start_detail_search.replace(/\-/g,"/");var e_dete=new Date(start_detail_detail);e_dete.setDate(e_dete.getDate()+1);document.getElementById("end_date_detail").value=getFormatDate(e_dete);printFestival('end_date_detail','end_date_detailWeek');document.getElementById("dayCount_detail").innerHTML="共1晚";var hotelid=$("#hotelid").val();var end_detail_search=document.getElementById("end_date_detail").value;if(hotelid!=''&&hotelid!==undefined){detail_rooms(hotelid,start_detail_search,end_detail_search);refreshSpecialFlight();}}}}
function DateStatus(){}
var nowDateTime=new Date();DateStatus.prototype={now:new Date(),nowShowDate:new Date(nowDateTime.getFullYear(),nowDateTime.getMonth(),1),isShow:false};function getFormatDate(oDate){var iYear=oDate.getFullYear();var iMonth=oDate.getMonth()+1;var iDate=oDate.getDate();iMonth=iMonth<10?"0"+iMonth:iMonth;iDate=iDate<10?"0"+iDate:iDate;var sDateStr=iYear+"-"+iMonth+"-"+iDate;return sDateStr;}
function DateLayer(){}
DateLayer.prototype={observer:function(nowShowDate){if(nowShowDate=="close"){delete dateStatus.nowShowDate;delete dateStatus.isShow;}
else{dateStatus.isShow=true;dateStatus.nowShowDate=nowShowDate;}},setPosition:function(){var dateLayer=document.getElementById("simpleDatePicker");var dateInput=document.getElementById(dateInputId);var p=countPosition(dateInput);p.left+=dateInputInfo[dateInputId]["position"]["left"];p.top+=dateInputInfo[dateInputId]["position"]["top"];dateLayer.style.left=p.left+"px";dateLayer.style.top=(p.top+dateInput.scrollHeight)+"px";},initial:function(){this.setPosition();document.getElementById("simpleDatePicker").style.display="block";for(var i=1;i<=42;i++){document.getElementById("SDPd1"+i).innerHTML="";document.getElementById("SDPd2"+i).innerHTML="";}},drawSelf:function(){if(!dateStatus.isShow){document.getElementById("simpleDatePicker").style.display="none";return;}
else{this.initial();for(var m=1;m<=42;m++){if(document.getElementById("SDPd1"+m).className=="today"){document.getElementById("SDPd1"+m).className="";}
if(document.getElementById("SDPd2"+m).className=="today"){document.getElementById("SDPd2"+m).className="";}}
document.getElementById("SDPfirstDate").innerHTML=dateStatus.nowShowDate.getFullYear()+"年"+(dateStatus.nowShowDate.getMonth()+1)+"月";var nowMonthFirstDay=new Date(dateStatus.nowShowDate.getFullYear(),dateStatus.nowShowDate.getMonth(),1);var nowWeek1=nowMonthFirstDay.getDay();nowWeek1+=1;nowMonthFirstDay.setMonth(nowMonthFirstDay.getMonth()+1);nowMonthFirstDay.setDate(0);var oneMonthDay1=nowMonthFirstDay.getDate();var day=1;var nowDateStr=new Date(dateStatus.now.getFullYear(),dateStatus.now.getMonth(),dateStatus.now.getDate()).getTime();var sSearchDate="";var input_date_time=document.getElementById(dateInputId).value;if(input_date_time){var input_date_times=input_date_time.split('-');var input_date=new Date(input_date_times[0],input_date_times[1]-1,input_date_times[2]).getTime();}else{var input_date='';}
for(var i=nowWeek1;i<nowWeek1+oneMonthDay1;i++){nowMonthFirstDay.setDate(day);var showdateStr=nowMonthFirstDay.getTime();sSearchDate=getFormatDate(nowMonthFirstDay);if(dateInputInfo[dateInputId]["hasOtherInfo"]==1){if(showdateStr==nowDateStr){document.getElementById("SDPd1"+i).innerHTML="<div class='today hand' onclick='"+dateInputInfo[dateInputId]["otherClick"]+"(\""+sSearchDate+"\")'>"+day+"</div><p class='price blue hand' onclick='"+dateInputInfo[dateInputId]["otherClick"]+"(\""+sSearchDate+"\")'>"+SDPdata["price"][showdateStr]["price"]+"</p>";}
else
if(nowMonthFirstDay<dateStatus.now){document.getElementById("SDPd1"+i).innerHTML="<div class='gray fb' onclick='"+dateInputInfo[dateInputId]["otherClick"]+"(\""+sSearchDate+"\")'>"+day+"</div><p class='price gray'>"+SDPdata["price"][showdateStr]["price"]+"</p>";}
else{document.getElementById("SDPd1"+i).innerHTML="<div class='fb hand' onclick='"+dateInputInfo[dateInputId]["otherClick"]+"(\""+sSearchDate+"\")'>"+day+"</div><p class='price blue hand' onclick='"+dateInputInfo[dateInputId]["otherClick"]+"(\""+sSearchDate+"\")'>"+SDPdata["price"][showdateStr]["price"]+"</p>";}}
else
{if(showdateStr==nowDateStr){document.getElementById("SDPd1"+i).innerHTML="<span class='after' id='SDPnowDate' href='javascript:' onclick=simpleDatePicker.processDateFire('"+nowMonthFirstDay.getTime()+"')>"+day+"</span>";document.getElementById("SDPd1"+i).className="today";}
else
if(nowMonthFirstDay<dateStatus.now){document.getElementById("SDPd1"+i).innerHTML='<span class="before">'+day+'</span>';}
else{if(nowMonthFirstDay.getTime()==input_date){document.getElementById("SDPd1"+i).className="current";}else{document.getElementById("SDPd1"+i).className="";}
document.getElementById("SDPd1"+i).innerHTML="<span class='after' href='javascript:' onclick=simpleDatePicker.processDateFire('"+nowMonthFirstDay.getTime()+"') >"+day+"</span>";}}
day++;}
if(dateInputInfo[dateInputId]["rightFrame"]==1){document.getElementById("SDPright").style.display="";nowMonthFirstDay=new Date(dateStatus.nowShowDate.getFullYear(),dateStatus.nowShowDate.getMonth()+1,1);document.getElementById("SDPsecondDate").innerHTML=nowMonthFirstDay.getFullYear()+"年"+(nowMonthFirstDay.getMonth()+1)+"月";nowWeek2=nowMonthFirstDay.getDay();nowWeek2+=1;nowMonthFirstDay.setMonth(nowMonthFirstDay.getMonth()+1);nowMonthFirstDay.setDate(0);var oneMonthDay2=nowMonthFirstDay.getDate();var day=1;for(var i=nowWeek2;i<nowWeek2+oneMonthDay2;i++){nowMonthFirstDay.setDate(day);var showdateStr=nowMonthFirstDay.getTime();if(showdateStr==nowDateStr){document.getElementById("SDPd2"+i).innerHTML="<span class='after' href='javascript:' onclick=simpleDatePicker.processDateFire('"+nowMonthFirstDay.getTime()+"')>"+day+"</div>";document.getElementById("SDPd2"+i).className="today";}
else if(nowMonthFirstDay<dateStatus.now){document.getElementById("SDPd2"+i).innerHTML="<span class='before'>"+day+"</span>";}
else{if(nowMonthFirstDay.getTime()==input_date){document.getElementById("SDPd2"+i).className="current";}else{document.getElementById("SDPd2"+i).className="";}
document.getElementById("SDPd2"+i).innerHTML="<span class='after' href='javascript:' onclick=simpleDatePicker.processDateFire('"+nowMonthFirstDay.getTime()+"') >"+day+"</span>";}
day++;}
if(document.getElementById("SDPd136").innerHTML.length!=0||document.getElementById("SDPd236").innerHTML.length!=0){if(document.getElementById("SDPd136").innerHTML.length==0){document.getElementById("SDPd136").innerHTML="&nbsp;";}
if(document.getElementById("SDPd236").innerHTML.length==0){document.getElementById("SDPd236").innerHTML="&nbsp;";}}}
else{document.getElementById("SDPright").style.display="none";document.getElementById("next_btn").style.display="";}
if(dateInputInfo[dateInputId]["hasOtherInfo"]==1){document.getElementById("next_btn").style.display="block";document.getElementById("up_btn").style.display="block";document.getElementById("SDPleft").className="price_date_big";if(dateInputInfo[dateInputId]["showMonths"]!=0){if(nowMonthFirstDay.getFullYear()+"-"+nowMonthFirstDay.getMonth()==dateStatus.now.getFullYear()+"-"+dateStatus.now.getMonth()){document.getElementById("up_btn").style.display="none";document.getElementById("next_btn").style.display="block";}
var oEndMonths=new Date(dateStatus.now.getFullYear(),dateStatus.now.getMonth()+dateInputInfo[dateInputId]["showMonths"]-1,1);if(nowMonthFirstDay.getFullYear()+"-"+nowMonthFirstDay.getMonth()==oEndMonths.getFullYear()+"-"+oEndMonths.getMonth()){document.getElementById("next_btn").style.display="none";document.getElementById("up_btn").style.display="block";}}}
else{document.getElementById("SDPleft").className="price_date";document.getElementById("up_btn").style.display="";}}}};var dateStatus=new DateStatus();var dateLayer=new DateLayer();this.date_fire=function(nowShowDate){var observerDate="";switch(nowShowDate){case"pre":observerDate=new Date(dateStatus.nowShowDate.getFullYear(),dateStatus.nowShowDate.getMonth()-1,1);dateRun(observerDate);break;case"next":observerDate=new Date(dateStatus.nowShowDate.getFullYear(),dateStatus.nowShowDate.getMonth()+1,1);dateRun(observerDate);break;case"now":if(dateInputId=="end_date"){start_date=document.getElementById("start_date").value;startTime=start_date.replace(/\-/g,"/");observerDate=new Date(startTime);}else{observerDate=new Date();}
dateRun(observerDate);break;case"close":observerDate="close";dateRun(observerDate);break;case"bodyClick":this.date_fire("close");break;default:var selectDate=new Date(parseInt(nowShowDate));selectDateStr=selectDate.getFullYear()+"-"+(selectDate.getMonth()+1<10?("0"+(selectDate.getMonth()+1)):selectDate.getMonth()+1)+"-"+(selectDate.getDate()<10?"0"+selectDate.getDate():selectDate.getDate());document.getElementById(dateInputId).value=selectDateStr;this.date_fire("close");break;}}
function dateRun(observerDate){dateLayer.observer(observerDate);dateLayer.drawSelf();}
function countPosition(input){var left=input.offsetLeft;var top=input.offsetTop;var n=0;while((input=input.offsetParent)!=null){n++;if(n>10)
break;left+=input.offsetLeft;top+=input.offsetTop;}
return{left:left,top:top};}
if('https:'==document.location.protocol){var frame_src=etpass_global.iframe_https_src;}else{var frame_src="javascript:false;";};}
function leapMonth(y){return(tInfo[y-1900]&0xf);}
function leapDays(y){if(leapMonth(y))return((tInfo[y-1900]&0x10000)?30:29);else return(0);}
function monthDays(y,m){return((tInfo[y-1900]&(0x10000>>m))?30:29);}
function Lunar(objDate){var i,leap=0,temp=0;var offset=(Date.UTC(objDate.getFullYear(),objDate.getMonth(),objDate.getDate())-Date.UTC(1900,0,31))/86400000;for(i=1900;i<2050&&offset>0;i++){temp=lYearDays(i);offset-=temp;}
if(offset<0){offset+=temp;i--;}
this.year=i;leap=leapMonth(i);this.isLeap=false;for(i=1;i<13&&offset>0;i++){if(leap>0&&i==(leap+1)&&this.isLeap==false)
{--i;this.isLeap=true;temp=leapDays(this.year);}
else
{temp=monthDays(this.year,i);}
if(this.isLeap==true&&i==(leap+1))this.isLeap=false;offset-=temp;}
if(offset==0&&leap>0&&i==leap+1)
if(this.isLeap)
{this.isLeap=false;}
else
{this.isLeap=true;--i;}
if(offset<0){offset+=temp;--i;}
this.month=i;this.day=offset+1;}
function sTerm(y,n){if(y==2009&&n==2){sTermInfo[n]=43467}
var offDate=new Date((31556925974.7*(y-1900)+sTermInfo[n]*60000)+Date.UTC(1900,0,6,2,5));return(offDate.getUTCDate());}
function getSolarTerms(y,m,d)
{var solarTerms=new Array(2);var tmp1=sTerm(y,m*2);var tmp2=sTerm(y,m*2+1);solarTerms[tmp1]=solarTerm[m*2];solarTerms[tmp2]=solarTerm[m*2+1];return solarTerms[d];}
var solarMonth=new Array(31,28,31,30,31,30,31,31,30,31,30,31);function solarDays(y,m){if(m==1)
return(((y%4==0)&&(y%100!=0)||(y%400==0))?29:28);else
return(solarMonth[m]);}
function getWeekFestival(y,m,d)
{var sDObj=new Date(y,m,1,0,0,0,0);var wlength=solarDays(y,m);var firstWeek=sDObj.getDay();var i;var wFestival=new Array();for(i in wFtv)
if(wFtv[i].match(/^(\d{2})(\d)(\d)([\s\*])(.+)$/))
if(Number(RegExp.$1)==(m+1)){var tmp1=Number(RegExp.$2);var tmp2=Number(RegExp.$3);if(tmp1<5)
wFestival[((firstWeek>tmp2)?7:0)+7*(tmp1-1)+tmp2-firstWeek+1]=RegExp.$5;else{tmp1-=5;tmp3=(firstWeek+wlength-1)%7;wFestival[wlength-tmp3-7*tmp1+tmp2-(tmp2>tmp3?7:0)]=RegExp.$5;}}
return wFestival[d];}
function getLunarFestival(sDObj)
{var lDObj=new Lunar(sDObj);var lM=lDObj.month;var lD=lDObj.day;if(lM<10)
lM="0"+lM;if(lD<10)
lD="0"+lD;var lDate=(""+lM+lD);return lFtv[lDate];}
function getWeek(sDObj)
{var w=sDObj.getDay();var week=new Array(9);week[0]="星期天";week[1]="星期一";week[2]="星期二";week[3]="星期三";week[4]="星期四";week[5]="星期五";week[6]="星期六";return week[w];}
function getFestival(y,m,d)
{var sDObj=new Date(y,m-1,d);var week=getWeek(sDObj);sDay=(""+m+d);var festival="";if(wFestival=getWeekFestival(y,m-1,d*1))
{festival=wFestival;}
else if(sFestival=sFtv[sDay])
{festival=sFestival;}else if(lFestival=getLunarFestival(sDObj))
{festival=lFestival;}else if(stFestival=getSolarTerms(y,m-1,d*1))
{festival=stFestival;}
pFestival=new Array(week,festival);return pFestival;}
function printFestival(dateId,printId){var func=function()
{var darr=$("#"+dateId).val().split("-");var y=darr[0],m=darr[1],d=darr[2];var pFestival=getFestival(y,m,d);if($("#"+dateId).val()!=""){$("#"+printId).html(pFestival[0]+"  "+pFestival[1]);}else{$("#"+printId).html("&nbsp;");}}
func();if(navigator.userAgent.indexOf("MSIE")>0)
$("#"+dateId).bind('propertychange',func);else
{$("#"+dateId).bind('blur',func,false);}};$(document).ready(function(){layerControler=new LayerControler(["simpleDatePicker","simpleCityClew","simpleHotelClew","popLayer"]);HotelSearch();layerControler.stopPropagation();});var simpleCityClew;var simpleDatePicker;var simpleHotelClew;function HotelSearch()
{hotelSearchInit();function hotelSearchInit()
{eventBind();}
function eventBind()
{
	var citysClewInfo;


var cityDefaultValue=$("#city").attr("default");var hotelDefaultValue=$("#hotel_name").attr("default");var keywordDefaultValue=$("#destination").attr("default");$("#city").click(function(event){this.value="";delsearch();hotCityOpen(event);});if($("#cityImg").length>0){$("#cityImg").click(function(event){$("#city").value="";delsearch();hotCityOpen(event);});}
$("#city").blur(function(){if(this.value=="")
{this.value=cityDefaultValue;}
$("#destination").attr("value",keywordDefaultValue);$("#hotel_name").attr("value",hotelDefaultValue);});$("#hotel_name").click(function(event){if(this.value==hotelDefaultValue||this.value=="")
{this.value="";}
else{etpass_global.selectAllTxt("hotel_name");}});$("#hotel_name").blur(function(){if(this.value=="")
{this.value=hotelDefaultValue;}});$("#destination").click(function(event){event.stopPropagation();delsearch();if(this.value==keywordDefaultValue||this.value==""){this.value="";}
else{etpass_global.selectAllTxt("destination");}
hotKeywordOpen(event);});$("#destination").blur(function(){if(this.value=="")
{this.value=keywordDefaultValue;}});$("#searchButton").click(function(event){event.stopPropagation();if(validate(event))
{if('https:'==document.location.protocol){var hotel_url=$.trim($('#hotel_url').val());var city=$.trim($('#city').val());var start_date=$.trim($('#start_date').val());var end_date=$.trim($('#end_date').val());var price=$.trim($('#h_price').val());var star=$.trim($('#h_star').val());location.href=hotel_url+"search/?city="+city+"&start_date="+start_date+"&end_date="+end_date+"&price="+price+"&star="+star;}else{$("#hotelSearch").submit();}}});$("#hotCityTop li").click(function(event){$("#hotCityTop li").removeClass("onclick");var clickHotCityId=$(event.target)[0].getAttribute("value");$(event.target).addClass("onclick");$("ul[id^=hotCityId_]").hide();$("ul[id="+clickHotCityId+"]").show();});$("#hotCityId .city_list_ul li").click(function(event){$("#"+hotCityInput).val($.trim($(this).text()));$("#popLayer").hide();});function validate(event){var valFlag=true;valFlag=validateCity("city",event);if(valFlag){valFlag=validateDate("start_date",event);if(valFlag){valFlag=validateDate("end_date",event);}}
if(valFlag&&$("#hotel_name").val()==hotelDefaultValue){$("#hotel_name").val("");}
if(valFlag&&$("#destination").val()==keywordDefaultValue){$("#destination").val("");}
return valFlag;}
function validateCity(cityId,event)
{
	var citysClewInfo;
	var valFlag=true;if($("#"+cityId).val().length==0||$("#"+cityId).val()==cityDefaultValue)
{$("#"+cityId).val("");$("#"+cityId).focus();event.target.id=cityId;hotCityOpen(event);valFlag=false;}
else{var cityCode="";$.each(citysClewInfo,function(key1,value1){if(value1[0]==$("#"+cityId).val()){cityCode=value1[2].toUpperCase();return false;}});if(cityCode==""){$("#"+cityId).focus();event.target.id=cityId;$("#"+cityId).keyup();valFlag=false;}
else{$("#"+cityId+"Code").val(cityCode);}}
return valFlag;}
function getFormatDate(oDate,addNum)
{if(!addNum){addNum=0;}
var iYear=oDate.getFullYear();var iMonth=oDate.getMonth()+1;var iDate=oDate.getDate();iDate+=new Number(addNum);iMonth=iMonth<10?"0"+iMonth:iMonth;iDate=iDate<10?"0"+iDate:iDate;var sDateStr=iYear+"-"+iMonth+"-"+iDate;return sDateStr;}
function validateDate(dateId,event)
{var valFlag=true;var dVal=$("#"+dateId).val();var oDate=new Date(dVal.substr(0,4),dVal.substr(5,2)-1,dVal.substr(8,2));var nowDate=new Date();nowDate=new Date(nowDate.getFullYear(),nowDate.getMonth(),nowDate.getDate());if(getFormatDate(oDate)!=dVal)
{valFlag=false;}
else if(oDate<nowDate)
{valFlag=false;}
if(valFlag&&dateId=="end_date"){if($("#end_date").val()<=$("#start_date").val()){layerControler.showPopLayer("end_dateImg","error_dada");valFlag=false;}
start_date=document.getElementById("start_date").value;end_date=document.getElementById("end_date").value;startTime=start_date.replace(/\-/g,"/");endTime=end_date.replace(/\-/g,"/");sTime=new Date(startTime);eTime=new Date(endTime);divNum=1000*3600*24;var dayCount=parseInt((eTime.getTime()-sTime.getTime())/parseInt(divNum));if(dayCount>21){layerControler.showPopLayer("end_dateImg","max_book_dada");valFlag=false;}}
return valFlag;}
var hotCityInput="";function hotCityOpen(event)
{layerControler.handle(event);hotCityInput=event.target.id;if(hotCityInput.substr(hotCityInput.length-3)=="Img")
{hotCityInput=hotCityInput.substr(0,hotCityInput.length-3);}
layerControler.showPopLayer(hotCityInput,"hotCityId");}
var hotKeywordInput="";function hotKeywordOpen(event)
{layerControler.handle(event);hotKeywordInput=event.target.id;city=$("#city").val();if(!city||city==cityDefaultValue){try{$("#city")[0].click();$("#city")[0].focus();}
catch(e){$("#city").click();$("#city").focus();}
finally{}}else{http_url=$("#httpurl").val();$.getJSON(http_url+"/service/hotel/hotel_city_position.php?jsoncallback=?",{city_name:city},function(data){hotKeywordData=data;getHotKeywordList(hotKeywordData,"hotKeywordId");$("#desdet div a").click(function(event){$("#"+hotKeywordInput).val($(this).text());$("#tag").val($(this).attr('type'));$("#popLayer").hide();});layerControler.showPopLayer(hotKeywordInput,"hotKeywordId");},"html");}}
function getHotKeywordList(hotKeywordData,contentId){var keyword_U='';inputkeywordCategory={a:"交通枢纽",b:"热门区域",c:"景点地标",d:"会展中心",e:"教育机构",f:"医疗机构",g:"演出及体育场馆"};for(var keywordCategory in hotKeywordData)
{$("#city_search_list").find("li").each(function(){if($(this).attr("tagname")==keywordCategory){if($(this).attr("showtag")=="t"){$(this).attr("class","onclick");}
$(this).find("a").html(inputkeywordCategory[keywordCategory]);$("#desdet").find("div").each(function(){if($(this).attr("showtag")=="t"){$(this).show();}
var keyword_UI='';if($(this).attr("tagname")==keywordCategory){for(var keyword in hotKeywordData[keywordCategory]){keyword_UI+="<a style= \"cursor:pointer;color:#06549e;\">"+hotKeywordData[keywordCategory][keyword]+"</a><span class=\"mold_bar_line\">|</span>";}
$(this).html(keyword_UI);}});}});}
searchdes();}
function searchdes(){$("#city_search_list").find("li").each(function(){$(this).find("a").click(function(){resetclass2des();$(this).parent().removeClass("des").addClass("onclick");resetclass2desdet($(this).parent().attr("tagname"));});});}
function resetclass2des(){$("#city_search_list").find("li").each(function(){$(this).removeClass().addClass("des");});}
function resetclass2desdet(tagname){$("#desdet").find("div").each(function(){if($(this).attr("tagname")==tagname){$(this).show();}else{$(this).hide();}});}
function delsearch(){$("#city_search_list").find("li").each(function(){$(this).find("a").html("");$(this).attr("class","des");});$("#desdet").find("div").each(function(){$(this).html("");$(this).hide();});}}}
function LayerControler(aLayerIds)
{var aLayer=aLayerIds;this.stopPropagation=function()
{for(var i in aLayer)
{$("#"+aLayer[i]).click(function(event){event.stopPropagation();});}}
this.showPopLayer=function(inputId,contentId){var position=countPosition(inputId);var addLeft=0;var addTop=0;$("#popLayer")[0].style.left=position.left+addLeft+"px";$("#popLayer")[0].style.top=(position.top+20)+addTop+"px";$("#popLayer>div").hide();$("#"+contentId).show();$("#popLayer").show();}
this.closePopLayer=function(contentId)
{$("#"+contentId).hide();$("#popLayer").hide();}
function countPosition(inputId)
{var obj=document.getElementById(inputId);var left=obj.offsetLeft;var top=obj.offsetTop;var a1=$("#"+inputId)[0];var n=1;while((a1=a1.offsetParent)!=null)
{n++;if(n>10)break;left+=a1.offsetLeft;top+=a1.offsetTop;}
return{left:left,top:top};}
this.closeOtherLayer=function(layerId)
{for(var i in aLayer)
{if(layerId!=aLayer[i])
{$("#"+aLayer[i]).hide();}}}
document.body.onclick=this.closeOtherLayer;this.handle=function(event)
{this.closeOtherLayer(event.target.id);event.stopPropagation();}}
;jQuery.cookie=function(d,e,b){if(arguments.length>1&&(e===null||typeof e!=="object")){b=jQuery.extend({},b);if(e===null){b.expires=-1}if(typeof b.expires==="number"){var g=b.expires,c=b.expires=new Date();c.setDate(c.getDate()+g)}return(document.cookie=[encodeURIComponent(d),"=",b.raw?String(e):encodeURIComponent(String(e)),b.expires?"; expires="+b.expires.toUTCString():"",b.path?"; path="+b.path:"",b.domain?"; domain="+b.domain:"",b.secure?"; secure":""].join(""))}b=e||{};var a,f=b.raw?function(h){return h}:decodeURIComponent;return(a=new RegExp("(?:^|; )"+encodeURIComponent(d)+"=([^;]*)").exec(document.cookie))?f(a[1]):null};
;$(document).ready(function(){$('.balanceTable #hotel_ip .name_show1 .fr').click(function(event){event.stopPropagation();op_room($(this).attr('info_hid'),$(this).attr('room_count'));});$('.balanceTable tr td .close_btn').click(function(event){deleteOne($(this).attr('delect'));});});function op_room(hotel_id,room_num){if($('#op_or_cl'+hotel_id+' span.fr').text().indexOf("收起")!=-1)
{$("#room_list"+hotel_id+" .dis_none").hide();$('#op_or_cl'+hotel_id+' span.fr').html('所有房型(<span class="orange">'+room_num+'</span>)');}
else
{$("#room_list"+hotel_id+" tr.dis_none").show();$('#op_or_cl'+hotel_id+' span.fr').html('收起(<span class="orange">'+room_num+'</span>)');}
return false;}
function deleteOne(id){var hotelidCookie=hotelnameCookie='';$('.'+'cmp_'+id).remove();var hotelid=$.cookie('hotelid').split(",");var hotelname=$.cookie('hotelname').split(",");$.cookie('hotelid',null,{path:'/',domain:'etpass.com'});$.cookie('hotelname',null,{path:'/',domain:'etpass.com'});for(var i=0;i<hotelid.length-1;i++)
{if(hotelid[i]!=id)
{hotelidCookie+=hotelid[i]+",";hotelnameCookie+=decodeURI(hotelname[i])+",";}}
$.cookie('hotelid',hotelidCookie,{path:'/',domain:'etpass.com'});$.cookie('hotelname',hotelnameCookie,{path:'/',domain:'etpass.com'});location.reload();}
function sub()
{document.charset='utf-8';if($.cookie('cityname')=='')
{$.cookie('cityname',$('#city').val(),{path:'/',domain:'etpass.com'});}
else
{if($('#city').val()!=$.cookie('cityname'))
{$.cookie('cityname',$('#city').val(),{path:'/',domain:'etpass.com'});$.cookie('hotelid',null,{path:'/',domain:'etpass.com'});$.cookie('hotelname',null,{path:'/',domain:'etpass.com'});}}};(function($){$.fn.hoverDelay=function(options){var defaults={hoverDuring:600,outDuring:600,hoverEvent:function(){$.noop();},outEvent:function(){$.noop();}};var sets=$.extend(defaults,options||{});var hoverTimer,outTimer,that=this;return $(this).each(function(){$(this).hover(function(){clearTimeout(outTimer);hoverTimer=setTimeout(function(){sets.hoverEvent.apply(that)},sets.hoverDuring);},function(){clearTimeout(hoverTimer);outTimer=setTimeout(function(){sets.outEvent.apply(that)},sets.outDuring);});});}})(jQuery);function opRoom_price_html(data){var str_week_name='';var str=[];var k=0;for(var key in data){if(k<7){if(data[key]['week_name']=='星期六'||data[key]['week_name']=='星期日')
str_week_name+='<li style="width:60px;" class="orange">'+data[key]['week_name']+'</li>';else
str_week_name+='<li style="width:60px;">'+data[key]['week_name']+'</li>';}
k++;}
if(k==1){var offset_=20;}else{var offset_=60;}
str.push('<div style="margin-left:'+offset_+'px;" ><img src="'+http_file_url+'/image/common/date_jiao.gif" width="36" height="8" class="absolute_img" /></div>');if(k<=7){str.push('<div class="hotel_start_time" style="width:'+((k*62)+4)+'px">');str.push('<ul class="start_time_date" style="padding-left:4px;">');}else{str.push('<div class="hotel_start_time" style="width:'+((8*62)+4)+'px">');str.push('<ul class="start_time_date" style="width:'+((8*62)+4)+'px;padding-left:60px;">');}
str.push(str_week_name);str.push('</ul>');var week=new Array;week[0]='第一周';week[1]='第二周';week[2]='第三周';for(var key in data){if(data[key]['key']==0||data[key]['key']==7||data[key]['key']==14){str.push('<ul class="start_time_content"  style="width:'+((k*62)+4)+'px">');var weeks=Math.ceil(data[key]['key']/7);if(k>7){str.push('<li class="start_time_week" style="width:60px;">'+week[weeks]+'</li>');}else{}}
if(data[key]['room_status']==-1){str.push('<li><div>X</div></li>');}else{str.push('<li  style="width:59px;">');if(data[key]['member_price']!=''){str.push('<div>'+data[key]['money_type']+data[key]['member_price']+'</div>'+data[key]['breakfast']);}else{str.push('--');}
str.push('</li>');}
if(data[key]['key']==6||data[key]['key']==13||data[key]['key']==20){str.push('</ul>');}}
str.push('</div>');return str.join('');}
function getRoomOrderDetailHtml(data){var str=[];if(data['breakfast_detail']===undefined)
data['breakfast_detail']='';str.push('<table width="100%" border="0" cellspacing="0" cellpadding="0">');str.push('<tr>');str.push('<td width="50%">网络：');if(data['room_net'][0]=='')str+='无';else{for(var net in data['room_net'])str.push(data['room_net'][net]+'&nbsp;');}
str.push('</td>');str.push('<td width="50%">早餐：'+data['breakfast_detail']+'</td>');str.push('</tr>');str.push('<tr>');str.push('<td>面积：'+data['area_mj']+'</td>');str.push('<td>楼层：'+data['area_lc']+'</td>');str.push('</tr>');str.push('<tr>');str.push('<td colspan="2">房型描述：'+data['bed_desc']+'&nbsp;'+data['room_desc']+'</td>');str.push('</tr>');str.push('</table>');return str.join('');};var cache=[];function op_room_detail(room_id,img_url)
{var obj=$("#room_detail_"+room_id);if(obj.css('display')=='none')
{if(img_url)
{$("#room_img_"+room_id).attr("src",img_url);}
obj.show();$("#room_icon_"+room_id).removeClass("room_icon_close");$("#room_icon_"+room_id).addClass("room_icon_open");}
else{obj.hide();$("#room_icon_"+room_id).removeClass("room_icon_open");$("#room_icon_"+room_id).addClass("room_icon_close");}}
$('#hotel_detail_tab li').click(function(){var li_num=$(this).attr("alt");removesel(li_num);$(this).addClass('select');if(li_num==1){show_hotel_activity(hotel_id,start_date);}else if(li_num==2){if($("#google_map").length==0){show_hotel_gmap(hotel_id,city_id);}else{$("#map").show();$("#tah").show();}}else if(li_num==3){show_hotel_comment(hotel_id,1);}else{$('#hotel_detail_tab0').show();}});function removesel(num){$('#hotel_detail_tab li').each(function(key,val){$(this).removeClass('select');if(key==2){if($("#google_map").length>0){$("#map").hide();$("#tah").hide();}}
$('#hotel_detail_tab'+key).hide();});$('#hotel_detail_tab'+num).show();}
function show_hotel_activity(hotel_id,start_date){var show_hotel_activity_key="show_hotel_activity"+hotel_id+"_"+start_date;var show_hotel_activity_data=checkCache(show_hotel_activity_key);if(show_hotel_activity_data){$('#hotel_info').html(show_hotel_activity_data);}else{$.get("/detail_activity.php",{'hotel_id':hotel_id,'start_date':start_date},function(data){addCache(show_hotel_activity_key,data);$('#hotel_info').html(data);});}}
function show_hotel_comment(hotel_id,page)
{var show_hotel_comment_key="show_hotel_comment_"+hotel_id+"_"+page;var show_hotel_comment_data=checkCache(show_hotel_comment_key);if(show_hotel_comment_data){$('#hotel_info').html(show_hotel_comment_data);comment_page(hotel_id);}else{$.ajax({url:'/detail_comment.php',type:"GET",data:{'hotel_id':hotel_id,'page':page},dataType:"html",success:function(data){$("#hotel_info").html(data);comment_page(hotel_id);addCache(show_hotel_comment_key,data);}});}}
function comment_page(hotel_id){if($("#nowpage").attr("value")==1){$("#pageback_button").removeClass("pageback_button_select");$("#pageback_button").addClass("pageback_button");}
if($("#nowpage").attr("value")==$("#pagetotal").attr("value")){$("#nextpage_select").remove();$("#nextpage").removeClass("nextpage_select");$("#nextpage").addClass("nextpage");}
if($("#pagetotal").attr("value")==0){$("#page_list").remove();}else if(($("#pagetotal").attr("value")>0)&&($("#pagetotal").attr("value")<=4)){$("#pageback_button_select").remove();$("#nextpage_select").remove();}else if($("#pagetotal").attr("value")>4){if(($("#nowpage").attr("value")>0)&&($("#nowpage").attr("value")<=3)){$("#pageback_button_select").remove();if($("#nowpage").attr("value")>=($("#pagetotal").attr("value")-1)){$("#nextpage_select").remove();}}else if($("#nowpage").attr("value")>=($("#pagetotal").attr("value")-1)){$("#nextpage_select").remove();}}
$("#pageup").click(function(){if($(this).parent().attr("class")=="pageback_button_select"){page_back=$("#pageback").attr("value");show_hotel_comment(hotel_id,page_back);}});$("#pagedown").click(function(){if($(this).parent().attr("class")=="nextpage_select"){page_next=$("#pagenext").attr("value");show_hotel_comment(hotel_id,page_next);}});$("#firstpage").click(function(){show_hotel_comment(hotel_id,1);});$("#lastpage").click(function(){page_last=$("#pagetotal").attr("value");show_hotel_comment(hotel_id,page_last);});$("#page_list").find(".pagenumlist").each(function(){$(this).click(function(){linkpage=$(this).text();show_hotel_comment(hotel_id,linkpage);});});}
function detail_rooms(hotel_id,start_date,end_date){$.ajax({url:'/detail_rooms.php',type:"GET",data:{'hotel_id':hotel_id,'start_date':start_date,'end_date':end_date},beforeSend:Request(),success:function(data){$("#start_date_detailImg").unbind("click");$("#end_date_detailImg").unbind("click");$("#start_date_detail").removeAttr("disabled");$("#end_date_detail").removeAttr("disabled");$('#loading').remove();$('#hotelroom').html(data);}});function Request(){$("#start_date_detail").attr("disabled","disabled");$("#end_date_detail").attr("disabled","disabled");$("#start_date_detailImg").click(function(){$("#simpleDatePicker").hide();});$("#end_date_detailImg").click(function(){$("#simpleDatePicker").hide();});$("#hotelroomlist").remove();$('#loading_img').html('<img id="loading" src="'+http_file_url+'/image/common/wait.gif"/>');}}
$("#hotel_show_pics").colorbox({innerWidth:"710",innerHeight:"640",scrolling:false,iframe:true});function op_room_price(room_id){var data=hotelData[room_id]['pricearray'];str=opRoom_price_html(data);$('#price_list_result').html(str);var ps=$('#room_price'+room_id).position();$('#price_list_result').css('position','absolute');$('#price_list_result').css('left',ps.left-50);$('#price_list_result').css('top',ps.top+20);$('#price_list_result').show();}
function close_room_price(){$('#price_list_result').hide();}
function show_hotel_gmap(hotel_id,city_id){$.get("/detail_gmap.php",{hotel_id:hotel_id,city_id:city_id},function(data){$('#hotel_detail_tab2').html(data);traffic();});}
function resethref(){var start_date=$("#start_date_detail").val();var end_date=$("#end_date_detail").val();var p_href=$("#detailprint").attr("print_href");rehref=p_href+"print_details/"+hotel_id+"_"+start_date+"_"+end_date+".html";$("#detailprint").attr("href",rehref);}
function refreshSpecialFlight(){var city_cn_nane=$("#city").val();var start_date=$("#start_date_detail").val();var end_date=$("#end_date_detail").val();var special_flight_key=city_cn_nane+"_"+start_date+"_"+end_date;var special_flight_data=checkCache(special_flight_key);if(special_flight_data){$("#spe_tickets").remove();$("#hotelroom").after(special_flight_data);}else{var httpurl=$("#httpurl").val();$.getJSON(httpurl+"/service/hotel/detail_ajax_special_flight.php?city_cn_nane="+city_cn_nane+"&start_date="+start_date+"&end_date="+end_date+"&jsoncallback=?",function(data){var return_html="";var flight_special_one=[];var flight_special_two=[];if(data['flight_special']['flight']!=""){return_html='<div id="spe_tickets" class="spe_tickets mt10 clearfix">';return_html+='<h3 class="f14b">'
return_html+=data.flight_special.flight_special_title;return_html+='特价机票</h3>';return_html+='<ul class="fli_low_price mt10 ml20 clearfix">';$.each(data['flight_special']['flight'],function(key,val){var str='';str+='<li><span class="Airlines_';str+=val.airCompanyCode;str+='"></span><a href="';str+=val.url
str+='" target="_blank" rel="nofollow">';str+=val.airCompanyName;str+='</a><span class="orange fb fontArial ml5">¥';str+=val.price;str+='</span>起</li>';flight_special_one.push(str);});return_html+=flight_special_one.join('');return_html+='</ul><ul class="fli_com_sales mt10 ml20">';$.each(data['flight_special_return'],function(key,val){var str='';str+='<li><span class="Airlines_';str+=key;str+='"></span><a href="';str+=val.url;str+='" target="_blank" rel="nofollow">';str+=val.airCompanyName;str+='：';str+=val.txt;str+='</a></li>';flight_special_two.push(str);});return_html+=flight_special_two.join('');return_html+='</ul></div>';$("#spe_tickets").remove();$("#hotelroom").after(return_html);addCache(special_flight_key,return_html);}else{$("#spe_tickets").remove();}});}}

