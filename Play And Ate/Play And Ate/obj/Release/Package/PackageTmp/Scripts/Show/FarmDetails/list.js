$(document).ready(function(){
	//图片展示效果
	
$(function(){
	var isIE = (document.all) ? true : false;
	var isIE6 = isIE && ([/MSIE (\d)\.0/i.exec(navigator.userAgent)][0][1] == 6);
	var $ = function (id) {
		return "string" == typeof id ? document.getElementById(id) : id;
	};
	var Class = {
		create: function() {
			return function() { this.initialize.apply(this, arguments); }
		}
	}
	var Extend = function(destination, source) {
		for (var property in source) {
			destination[property] = source[property];
		}
	}

	var Bind = function(object, fun) {
		return function() {
			return fun.apply(object, arguments);
		}
	}

	var Each = function(list, fun){
		for (var i = 0, len = list.length; i < len; i++) { fun(list[i], i); }
	};

	var Contains = function(a, b){
		return a.contains ? a != b && a.contains(b) : !!(a.compareDocumentPosition(b) & 16);
	}


	var OverLay = Class.create();
	OverLay.prototype = {
	  initialize: function(options) {

		this.SetOptions(options);
		
		this.Lay = $(this.options.Lay) || document.body.insertBefore(document.createElement("div"), document.body.childNodes[0]);
		
		this.Color = this.options.Color;
		this.Opacity = parseInt(this.options.Opacity);
		this.zIndex = parseInt(this.options.zIndex);
		
		with(this.Lay.style){ display = "none"; zIndex = this.zIndex; left = top = 0; position = "fixed"; width = height = "100%"; }
		
		if(isIE6){
			this.Lay.style.position = "absolute";
			//ie6设置覆盖层大小程序
			this._resize = Bind(this, function(){
				this.Lay.style.width = Math.max(document.documentElement.scrollWidth, document.documentElement.clientWidth) + "px";
				this.Lay.style.height = Math.max(document.documentElement.scrollHeight, document.documentElement.clientHeight) + "px";
			});
			//遮盖select
			this.Lay.innerHTML = '<iframe style="position:absolute;top:0;left:0;width:100%;height:100%;filter:alpha(opacity=0);"></iframe>'
		}
	  },
	  //设置默认属性
	  SetOptions: function(options) {
	    this.options = {//默认值
			Lay:		null,//覆盖层对象
			Color:		"#000000",//背景色
			Opacity:	50,//透明度(0-100)
			zIndex:		9999//层叠顺序
	    };
	    Extend(this.options, options || {});
	  },
	  //显示
	  Show: function() {
		//兼容ie6
		if(isIE6){ this._resize(); window.attachEvent("onresize", this._resize); }
		//设置样式
		with(this.Lay.style){
			//设置透明度
			isIE ? filter = "alpha(opacity:" + this.Opacity + ")" : opacity = this.Opacity / 100;
			backgroundColor = this.Color; display = "block";
		}
	  },
	  //关闭
	  Close: function() {
		this.Lay.style.display = "none";
		if(isIE6){ window.detachEvent("onresize", this._resize); }
	  }
	};
	var LightBox = Class.create();
	LightBox.prototype = {
	  initialize: function(box, options) {
		
		this.Box = $(box);//显示层
		
		this.OverLay = new OverLay(options);//覆盖层
		
		this.SetOptions(options);
		
		this.Fixed = !!this.options.Fixed;
		this.Over = !!this.options.Over;
		this.Center = !!this.options.Center;
		this.onShow = this.options.onShow;
		
		this.Box.style.zIndex = this.OverLay.zIndex + 1;
		this.Box.style.display = "none";
		
		//兼容ie6用的属性
		if(isIE6){
			this._top = this._left = 0; this._select = [];
			this._fixed = Bind(this, function(){ this.Center ? this.SetCenter() : this.SetFixed(); });
		}
	  },
	  //设置默认属性
	  SetOptions: function(options) {
	    this.options = {//默认值
			Over:	true,//是否显示覆盖层
			Fixed:	true,//是否固定定位
			Center:	true,//是否居中
			onShow:	function(){}//显示时执行
		};
	    Extend(this.options, options || {});
	  },
	  //兼容ie6的固定定位程序
	  SetFixed: function(){
		this.Box.style.top = document.documentElement.scrollTop - this._top + this.Box.offsetTop + "px";
		this.Box.style.left = document.documentElement.scrollLeft - this._left + this.Box.offsetLeft + "px";
		
		this._top = document.documentElement.scrollTop; this._left = document.documentElement.scrollLeft;
	  },
	  //兼容ie6的居中定位程序
	  SetCenter: function(){
		this.Box.style.marginTop = document.documentElement.scrollTop - this.Box.offsetHeight / 2 + "px";
		this.Box.style.marginLeft = document.documentElement.scrollLeft - this.Box.offsetWidth / 2 + "px";
	  },
	  //显示
	  Show: function(options) {
		//固定定位
		this.Box.style.position = this.Fixed && !isIE6 ? "fixed" : "absolute";

		//覆盖层
		this.Over && this.OverLay.Show();
		
		this.Box.style.display = "block";
		
		//居中
		if(this.Center){
			this.Box.style.top = "55%";
			this.Box.style.left = "50%";
			//设置margin
			if(this.Fixed){
				this.Box.style.marginTop = - this.Box.offsetHeight / 2 + "px";
				this.Box.style.marginLeft = - this.Box.offsetWidth / 2 + "px";
			}else{
				this.SetCenter();
			}
		}
		
		//兼容ie6
		if(isIE6){
			if(!this.Over){
				//没有覆盖层ie6需要把不在Box上的select隐藏
				this._select.length = 0;
				Each(document.getElementsByTagName("select"), Bind(this, function(o){
					if(!Contains(this.Box, o)){ o.style.visibility = "hidden"; this._select.push(o); }
				}))
			}
			//设置显示位置
			this.Center ? this.SetCenter() : this.Fixed && this.SetFixed();
			//设置定位
			this.Fixed && window.attachEvent("onscroll", this._fixed);
		}
		
		this.onShow();
	  },
	  //关闭
	  Close: function() {
		this.Box.style.display = "none";
		this.OverLay.Close();
		if(isIE6){
			window.detachEvent("onscroll", this._fixed);
			Each(this._select, function(o){ o.style.visibility = "visible"; });
		}
	  }
	};

	var box = new LightBox("idBox");
	$("idBoxCancel").onclick = function(){ box.Close(); }
	$("idBoxOpen").onclick = function(){ box.Show(); }

});
	//mouseover效果
	function liMouseOn(){
		$(".scrolltab .ulBigPic li").attr("class","");
		for(var i=0; i<$(".scrolltab .ulBigPic li").length;i++) {
			(function(j){
				$(".scrolltab .ulBigPic li:eq("+j+")").mouseover(function(){
					if($(".scrolltab").attr("class") == "dSmallList" || $(".scrolltab").attr("class") == "dMiddleList") {
						if($(this).attr("class") != "liSelected") {
							$(this).attr("class","liSelected");
						}
					}
				});
				$(".scrolltab .ulBigPic li:eq("+j+")").mouseout(function(){
					if($(".scrolltab").attr("class") == "dSmallList" || $(".scrolltab").attr("class") == "dMiddleList") {
						if($(this).attr("class") == "liSelected") {
							$(this).attr("class","");
						}
					}
				});
			}) (i);
		}
	}
	
	//定义当前、之前、之后要显示图片的排位
	var curPic=0,nextPic=-1,prePic=-1;preShowPic=-1;
	var allPic=$(".scrolltab .ulBigPic li").length;
	//初始化当前、之前、之后要显示图片的排位
	
	function numInit(num){
		if(num=="init"){
			if(allPic > 1) {
				nextPic=curPic+1;
				prePic=allPic-1;
			}else if(allPic == 1){
				nextPic=0;
				prePic=0;
			}
			$(".scrolltab .ulBigPic li:eq("+curPic+")").attr("class","liSelected");
		}else if(num == "plus"){
			preShowPic=curPic;
			prePic=curPic;
			curPic=nextPic;
			if(curPic < (allPic-1)) {
				nextPic=curPic+1;
			}else if(curPic == (allPic-1)) {
				nextPic=0;
			}
			$(".scrolltab .ulBigPic li:eq("+curPic+")").attr("class","liSelected");
			if(preShowPic != curPic) {
				$(".scrolltab .ulBigPic li:eq("+preShowPic+")").attr("class","");
			}
		}else if(num == "minus") {
			preShowPic=curPic;
			nextPic=curPic;
			curPic=prePic;
			if(curPic > 0) {
				prePic=curPic-1;
			}else if(curPic == 0 && allPic > 1) {
				prePic=allPic-1;
			}
			$(".scrolltab .ulBigPic li:eq("+curPic+")").attr("class","liSelected");
			if(preShowPic != curPic) {
				$(".scrolltab .ulBigPic li:eq("+preShowPic+")").attr("class","");
			}
		}else{
			preShowPic=curPic;
			curPic=num;
			if(curPic == (allPic-1)) {
				nextPic=0;
				if(allPic > 1) {
					prePic=curPic-1;
				}else if(allPic == 1) {
					prePic=0;
				}
			}else if(curPic == 0) {
				prePic=allPic-1;
				if(allPic > 1) {
					nextPic=1;
				}else if(allPic == 1) {
					nextPic=0;
				}
			}else{
				nextPic=curPic+1;
				prePic=curPic-1;
			}
			$(".scrolltab .ulBigPic li:eq("+curPic+")").attr("class","liSelected");
			if(preShowPic != curPic) {
				$(".scrolltab .ulBigPic li:eq("+preShowPic+")").attr("class","");
			}
		}
		//alert("curPic="+curPic+"/nextPic="+nextPic+"/prePic="+prePic+"/preShowPic="+preShowPic);
	}
	
	//大图左右按钮初始化
	function btnAInit(){
		if(allPic < 2) {
			$("#sLeftBtnA").attr("class","sLeftBtnABan");
			$("#sRightBtnA").attr("class","sRightBtnABan");
		}else{
			if(curPic == 0) {
				$("#sLeftBtnA").attr("class","sLeftBtnABan");
				$("#sRightBtnA").attr("class","sRightBtnA");
			}else if(curPic == (allPic-1)) {
				$("#sLeftBtnA").attr("class","sLeftBtnA");
				$("#sRightBtnA").attr("class","sRightBtnABan");
			}else{
				$("#sLeftBtnA").attr("class","sLeftBtnA");
				$("#sRightBtnA").attr("class","sRightBtnA");
			}
		}
	}
	
	//小图左右按钮初始化
	function btnBInitA(){
		if(allPic > 6) {
			$("#sRightBtnB").attr("class","sRightBtnB");
		}
	}
	
	function btnBInitB(){
		if(curPic > 2 && (allPic-curPic) > 4) {
			if($("#sLeftBtnB").attr("class") != "sLeftBtnB") {$("#sLeftBtnB").attr("class","sLeftBtnB");}
			if($("#sRightBtnB").attr("class") != "sRightBtnB") {$("#sRightBtnB").attr("class","sRightBtnB");}
		}else if(curPic < 3){
			if($("#sLeftBtnB").attr("class") != "sLeftBtnBBan") {$("#sLeftBtnB").attr("class","sLeftBtnBBan");}
			if(allPic > 6) {
				if($("#sRightBtnB").attr("class") != "sRightBtnB") {$("#sRightBtnB").attr("class","sRightBtnB");}
			}else{
				if($("#sRightBtnB").attr("class") != "sRightBtnBBan") {$("#sRightBtnB").attr("class","sRightBtnBBan");}
			}
		}else if(curPic > (allPic-4)) {
			if($("#sRightBtnB").attr("class") != "sRightBtnBBan") {$("#sRightBtnB").attr("class","sRightBtnBBan");}
			if(allPic > 6) {
				if($("#sLeftBtnB").attr("class") != "sLeftBtnB") {$("#sLeftBtnB").attr("class","sLeftBtnB");}
			}else{
				if($("#sLeftBtnB").attr("class") != "sLeftBtnBBan") {$("#sLeftBtnB").attr("class","sleftBtnBBan");}
			}
		}
	}
	
	//小图标签selected函数
	function smallPicSelected(){
		if(!$(".scrolltab .ulSmallPic li:eq("+curPic+")").hasClass("liSelected")) {$(".scrolltab .ulSmallPic li:eq("+curPic+")").addClass("liSelected");}
		if(preShowPic!=(-1)) {
			if($(".scrolltab .ulSmallPic li:eq("+preShowPic+")").hasClass("liSelected")) {
				$(".scrolltab .ulSmallPic li:eq("+preShowPic+")").removeClass("liSelected");
			}
		}
	}
	
	//小图滚动函数
	function smallPicScroll(){
		if(curPic != preShowPic) {
			var leftPosition=0;
			if(curPic>2 && curPic<($(".scrolltab .ulSmallPic li").length-3)) {
				leftPosition=-(curPic-2)*147;
			}else if(curPic > ($(".scrolltab .ulSmallPic li").length-4) && $(".scrolltab .ulSmallPic li").length>6) {
				leftPosition=-($(".scrolltab .ulSmallPic li").length-6)*147;
			}
			leftPosition+="px";
			$(".scrolltab .ulSmallPic").attr("rel","moving");
			$(".scrolltab .ulSmallPic").animate({left:leftPosition},200,function(){$(".scrolltab .ulSmallPic").attr("rel","stop");});
		}
	}
	
	//大图按钮效果
	$("#sLeftBtnA").mouseover(function(){
		if($(this).attr("class")=="sLeftBtnA") {
			$(this).attr("class","sLeftBtnASel");
		}
	});
	
	$("#sLeftBtnA").mouseout(function(){
		if($(this).attr("class")=="sLeftBtnASel") {
			$(this).attr("class","sLeftBtnA");
		}
	});
	
	$("#sLeftBtnA").click(function(){
		if($(this).attr("class")=="sLeftBtnASel") {
			numInit("minus");
			btnBInitB();
			smallPicSelected();
			smallPicScroll();
			if(curPic == 0) {$("#sLeftBtnA").attr("class","sLeftBtnABan");}
			if(curPic < (allPic-1) && $("#sRightBtnA").attr("class")=="sRightBtnABan") {$("#sRightBtnA").attr("class","sRightBtnA");}
		}
	});
	
	$("#sRightBtnA").mouseover(function(){
		if($(this).attr("class")=="sRightBtnA") {
			$(this).attr("class","sRightBtnASel");
		}
	});
	
	$("#sRightBtnA").mouseout(function(){
		if($(this).attr("class")=="sRightBtnASel") {
			$(this).attr("class","sRightBtnA");
		}
	});
	
	$("#sRightBtnA").click(function(){
		if($(this).attr("class")=="sRightBtnASel") {
			numInit("plus");
			btnBInitB();
			smallPicSelected();
			smallPicScroll();
			if(curPic == (allPic-1)) {$("#sRightBtnA").attr("class","sRightBtnABan");}
			if(curPic > 0 && $("#sLeftBtnA").attr("class")=="sLeftBtnABan") {$("#sLeftBtnA").attr("class","sLeftBtnA");}
		}
	});
	
	//小图li按键效果
	for (var i=0;i<$(".scrolltab .ulSmallPic li").length;i++) {
		(function(j) {
			$(".scrolltab .ulSmallPic li:eq("+j+")").click(function() {
				if($(this).attr("class") != "liSelected") {
					numInit(j);
					btnAInit();
					smallPicSelected();
				}
			})
		}) (i);
	}
	
	//小图左右按键效果
	$("#sLeftBtnB").mouseover(function(){
		if($(this).attr("class")=="sLeftBtnB") {
			$(this).attr("class","sLeftBtnBSel");
		}
	});
	
	$("#sLeftBtnB").mouseout(function(){
		if($(this).attr("class")=="sLeftBtnBSel") {
			$(this).attr("class","sLeftBtnB");
		}
	});
	
	$("#sLeftBtnB").click(function(){
		if($(this).attr("class")=="sLeftBtnBSel") {
			var leftPosition=$(".scrolltab .ulSmallPic").css("left");
			var leftPositionNum=Number(leftPosition.substring(0,(leftPosition.length-2)));
			leftPosition=leftPositionNum+147+"px";
			if(leftPosition=="0px") {if($(this).attr("class") != "sLeftBtnBBan") {$(this).attr("class","sLeftBtnBBan");}}
			var bestLeftNum=-($(".scrolltab .ulSmallPic li").length-6)*147;
			if((leftPositionNum+147) > bestLeftNum && $("sRightBtnB").attr("class") != "sRightBtnB") {$("#sRightBtnB").attr("class","sRightBtnB")}
			if($(".scrolltab .ulSmallPic").attr("rel")=="stop"){
				$(".scrolltab .ulSmallPic").attr("rel","moving");
				$(".scrolltab .ulSmallPic").stop();
				$(".scrolltab .ulSmallPic").animate({left:leftPosition},200,function(){$(".scrolltab .ulSmallPic").attr("rel","stop");});
			}
		}
	});
	
	$("#sRightBtnB").mouseover(function(){
		if($(this).attr("class")=="sRightBtnB") {
			$(this).attr("class","sRightBtnBSel");
		}
	});
	
	$("#sRightBtnB").mouseout(function(){
		if($(this).attr("class")=="sRightBtnBSel") {
			$(this).attr("class","sRightBtnB");
		}
	});
	
	$("#sRightBtnB").click(function(){
		if($(this).attr("class")=="sRightBtnBSel"){
			var leftPosition=$(".scrolltab .ulSmallPic").css("left");
			var leftPositionNum=Number(leftPosition.substring(0,(leftPosition.length-2)));
			leftPosition=leftPositionNum-147+"px";
			var bestLeftNum=-($(".scrolltab .ulSmallPic li").length-6)*147;
			if((leftPositionNum-147)==bestLeftNum) {$(this).attr("class","sRightBtnBBan");}
			if(leftPositionNum==0 && $("#sLeftBtnB").attr("class")=="sLeftBtnBBan") {$("#sLeftBtnB").attr("class","sLeftBtnB");}
			if($(".scrolltab .ulSmallPic").attr("rel")=="stop") {
				$(".scrolltab .ulSmallPic").attr("rel","moving");
				$(".scrolltab .ulSmallPic").stop();
				$(".scrolltab .ulSmallPic").animate({left:leftPosition},200,function(){$(".scrolltab .ulSmallPic").attr("rel","stop");});
			}
		}
	});
	
	liMouseOn();
	numInit("init");
	btnAInit();
	btnBInitA();
	smallPicSelected();	

});