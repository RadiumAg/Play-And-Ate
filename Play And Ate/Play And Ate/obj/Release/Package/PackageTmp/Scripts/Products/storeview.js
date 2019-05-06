jQuery(function(){

$(document).ready(function(e) {
	
	//餐型房型 特效
	$("#lodg_img1,#lodg_imgs1").mouseover(function(){
		$("#lodg_imgs1").css({"display":"block"});
	});
	$("#lodg_img1,#lodg_imgs1").mouseout(function(){
		$("#lodg_imgs1").css({"display":"none"});
	});
	$("#lodg_img2,#lodg_imgs2").mouseover(function(){
		$("#lodg_imgs2").css({"display":"block"});
	});
	$("#lodg_img2,#lodg_imgs2").mouseout(function(){
		$("#lodg_imgs2").css({"display":"none"});
	});
	$("#lodg_img3,#lodg_imgs3").mouseover(function(){
		$("#lodg_imgs3").css({"display":"block"});
	});
	$("#lodg_img3,#lodg_imgs3").mouseout(function(){
		$("#lodg_imgs3").css({"display":"none"});
	});
	$("#lodg_img4,#lodg_imgs4").mouseover(function(){
		$("#lodg_imgs4").css({"display":"block"});
	});
	$("#lodg_img4,#lodg_imgs4").mouseout(function(){
		$("#lodg_imgs4").css({"display":"none"});
	});
	$("#lodg_img5,#lodg_imgs5").mouseover(function(){
		$("#lodg_imgs5").css({"display":"block"});
	});
	$("#lodg_img5,#lodg_imgs5").mouseout(function(){
		$("#lodg_imgs5").css({"display":"none"});
	});
	$("#lodg_img6,#lodg_imgs6").mouseover(function(){
		$("#lodg_imgs6").css({"display":"block"});
	});
	$("#lodg_img6,#lodg_imgs6").mouseout(function(){
		$("#lodg_imgs6").css({"display":"none"});
	});
	$("#lodg_img7,#lodg_imgs7").mouseover(function(){
		$("#lodg_imgs7").css({"display":"block"});
	});
	$("#lodg_img7,#lodg_imgs7").mouseout(function(){
		$("#lodg_imgs7").css({"display":"none"});
	});
	$("#lodg_img8,#lodg_imgs8").mouseover(function(){
		$("#lodg_imgs8").css({"display":"block"});
	});
	$("#lodg_img8,#lodg_imgs8").mouseout(function(){
		$("#lodg_imgs8").css({"display":"none"});
	});
	$("#table tr").eq(1).css({"background":"#ffecd6"});
	$("#table tr").eq(3).css({"background":"#ffecd6"});
	$("#table tr").eq(5).css({"background":"#ffecd6"});
	$("#table tr").eq(7).css({"background":"#ffecd6"});
	$("#table tr").eq(9).css({"background":"#ffecd6"});
	$("#table tr").eq(11).css({"background":"#ffecd6"});
	$("#table_1 tr").eq(1).css({"background":"#ffecd6"});
	$("#table_1 tr").eq(3).css({"background":"#ffecd6"});
	$("#table_1 tr").eq(5).css({"background":"#ffecd6"});
	$("#table_1 tr").eq(7).css({"background":"#ffecd6"});
	$("#table_1 tr").eq(9).css({"background":"#ffecd6"});
	$("#table_1 tr").eq(11).css({"background":"#ffecd6"});
});
	
window.onload=function(){
	//大图
	var datu_img = document.getElementById("datu_img"),
		datu_img_div = document.getElementById("datu_img_div");
		datu_img.onmousemove = function (event){
		datu_img_div.style.display = "block";
		datu_img_div.style.position = "fixed";
		var event = event || window.event;
		var x =event.clientX +10+ "px",
			y = event.clientY +10+ "px";
			datu_img_div.style.top = y;
			datu_img_div.style.left = x;
		}
		datu_img.onmouseout = function (){
			datu_img_div.style.display = "none";
			datu_img_div.style.position = "static";
		}
	//小图 1
	var xiaotu_img_0 = document.getElementById("xiaotu_img_0"),
		xiaotu_img_div0 = document.getElementById("xiaotu_img_div0");
		xiaotu_img_0.onmousemove = function (event_0){
			xiaotu_img_div0.style.display = "block";
			xiaotu_img_div0.style.position = "fixed";
			var event_0 = event_0 || window.event;
			var a = event_0.clientX +10+ "px",
				b = event_0.clientY +10+ "px";
				xiaotu_img_div0.style.top = b;
				xiaotu_img_div0.style.left = a;
	}
	xiaotu_img_0.onmouseout = function (){
			xiaotu_img_div0.style.display = "none";
			xiaotu_img_div0.style.position = "static";
	}
	//小图2
	var xiaotu_img_1 = document.getElementById("xiaotu_img_1"),
	xiaotu_img_div1 = document.getElementById("xiaotu_img_div1");
	xiaotu_img_1.onmousemove = function (event_1){
			xiaotu_img_div1.style.display = "block";
			xiaotu_img_div1.style.position = "fixed";
			var event_1 = event_1 || window.event;
			var c = event_1.clientX +10+ "px",
				d = event_1.clientY +10+ "px";
				xiaotu_img_div1.style.top = d;
				xiaotu_img_div1.style.left = c;
	}
	xiaotu_img_1.onmouseout = function (){
			xiaotu_img_div1.style.display = "none";
			xiaotu_img_div1.style.position = "static";
	}
	//小图 3
	var xiaotu_img_2 = document.getElementById("xiaotu_img_2"),
	xiaotu_img_div2 = document.getElementById("xiaotu_img_div2");
	xiaotu_img_2.onmousemove = function (event_2){
		xiaotu_img_div2.style.display = "block";
		xiaotu_img_div2.style.position = "fixed";
		var event_2 = event_2 || window.event;
		var e = event_2.clientX +10+ "px",
			f = event_2.clientY +10+ "px";
			xiaotu_img_div2.style.top = f;
			xiaotu_img_div2.style.left = e;
	}
	xiaotu_img_2.onmouseout = function (){
		xiaotu_img_div2.style.display = "none";
		xiaotu_img_div2.style.position = "static";
	}
	//小图4
	var xiaotu_img_3 = document.getElementById("xiaotu_img_3"),
	xiaotu_img_div3 = document.getElementById("xiaotu_img_div3");
	xiaotu_img_3.onmousemove = function (event_3){
		xiaotu_img_div3.style.display = "block";
		xiaotu_img_div3.style.position = "fixed";
		var event_3 = event_3 || window.event;
		var z = event_3.clientX +10+ "px",
			x = event_3.clientY +10+ "px";
			xiaotu_img_div3.style.top = x;
			xiaotu_img_div3.style.left = z;
	}
	xiaotu_img_3.onmouseout = function (){
		xiaotu_img_div3.style.display = "none";
		xiaotu_img_div3.style.position = "static";
	}
};

})
