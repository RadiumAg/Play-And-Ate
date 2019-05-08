/**
 * 
 */
$(function() {


var slowObj;
var objWidth;
var objHeight;
var iter;
var operator;
var flag = true;
function SlowDiv2(tableId,operator2){
 slowObj = $("#"+tableId);
 if(flag){
  objWidth = slowObj.width();
  objHeight = slowObj.height();
  flag = false;
 }

 slowObj.css({"overflow":"hidden"});
 operator = operator2;
 if(operator=="show"){
  slowObj.width(0);
  slowObj.height(0);
 }
 iter = setInterval(operateTable,14);
}

function operateTable(){
 var tmpWidth = slowObj.width();
 var tmpHeight = slowObj.height();
 if(operator=="hide"){
  //隐藏table  
  if( (tmpWidth<=18 || tmpWidth-20<=0 ) & (tmpHeight<=18 || tmpHeight<=0)){    
   var d = clearInterval(iter);
   slowObj.hide();
   return;
  }else{     
   slowObj.width(tmpWidth-20);
   slowObj.height(tmpHeight-15);
   $("#ttest").val("-"+slowObj.width());
  }

 }else{
  //显示table
  slowObj.show();
  if(tmpWidth+10>objWidth || tmpHeight+5>objHeight){    
   var d = clearInterval(iter);
   slowObj.width(objWidth);
   slowObj.height(objHeight);
   return;
  }else{    
   slowObj.width(tmpWidth+20);
   slowObj.height(tmpHeight+15);
   $("#ttest").val("+"+slowObj.width());
  }
 }
}

$(document).ready(function(){
 $("#S_switch").click(function(){
   SlowDiv2("testTable","show");
   $("#S_switch").focus(function(){   
    $("#ttest").val("#S_switch");
  });
   
 }).mouseout(function(){
  //SlowDiv2("testTable","hide");
 });

$("#guanbi").click(function(){
  
   SlowDiv2("testTable","hide");
 }).mouseover(function(){
	 //SlowDiv2("testTable","show");
 });
});
});