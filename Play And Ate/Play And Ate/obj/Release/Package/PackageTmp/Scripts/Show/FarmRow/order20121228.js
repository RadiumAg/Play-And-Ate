
function Order(obj,tid) {
	
    var godate =document.getElementById('pTime').value;
	 //var godate = $("#" + obj + " input.pTime").val();
    
    if (godate != null && godate != "点击选择出发日期") {
        if ($("#_hidPersonNum").val() > 0) {
            var pid = $("div#page").attr("pid"); //产品Id
		
		    if(typeof(pid)=='undefined')
			{
				pid=tid;
			}
			
            var U7188Date = $("#_hidDate").val(); //出发日期
            var person = $("#_hidPersonNum").val(); //成人数
            var son = $("#_hidChildNum").val(); //儿童数
            var _hidChenRen = $("#_hidChenRen").val(); //成人单价
			var yuding = $("#yuding20121228").val(); //类型
            var _hidErTong = $("#_hidErTong").val(); //儿童单价
			var phpurl=  $("#phpurl").attr("pid"); //URL
			var product_number=$("#product_number").val();
		
            //editWidget("/order_login/" + UzaiStartDate + "/" + person + "/" + son + "/" + _hidChenRen + "/" + _hidErTong + "/" + pid + ".html");
             editWidget(phpurl+"/order/order_login.php?pid="+pid+"&id="+obj+"&U7188Date="+U7188Date+"&person="+person+"&product_number="+product_number+"&son="+son+"&_hidChenRen="+_hidChenRen+"&_hidErTong="+_hidErTong+"&yuding="+yuding);
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



