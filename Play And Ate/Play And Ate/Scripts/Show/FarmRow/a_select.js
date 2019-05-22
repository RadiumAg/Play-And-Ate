var pid =  $("#page").attr("pid");

var ul = $(".a_info_right .p10 ul");

var phpurl=  $("#phpurl").attr("pid");

//ajax的日期价格
$.ajax({
    type: "Get",
    url: phpurl+"/add/ajax_select.php?aid=" + pid + "&time=/" + Math.random(),
    data: "json",
    success: function(msg) {
    	
        var jason = eval("(" + msg + ")");
		
        var sonprice = "";
		
        for (var i = 0; i < jason.length; i++) {
			
            if (jason[i].PersonPrice == "-1") {
                $(".p10 ul").append("<li id='" + jason[i].Month + "' v='" + jason[i].Date + "' son='" + jason[i].ChildPrice + "' title='" + jason[i].PersonPrice + "' onclick='changeGoDate(this)' > " + jason[i].Month + "" + jason[i].Week + "出发,<b>请电询</b></li>");
            }
            else {
                if (jason[i].ChildPrice == "0") {
                    sonprice = "儿童价格请电询";
                }
                else {
                    sonprice = "<b>" + jason[i].ChildPrice + "</b>元/儿童";
                }
                $(".p10 ul").append("<li id='" + jason[i].Month + "' v='" + jason[i].Date + "' son='" + jason[i].ChildPrice + "' title='" + jason[i].PersonPrice + "' onclick='changeGoDate(this)' > " + jason[i].Month + "" + jason[i].Week + "出发,<b>" + jason[i].PersonPrice + "</b>元/成人, " + sonprice + "</li>");
            }

        }
		
		 
		  
        $("#_hidChenRen").val(ul.find("li").eq(0).attr("title"));
        $("#_hidErTong").val(ul.find("li").eq(0).attr("son"));
        $("#_hidDate").val(ul.find("li").eq(0).attr("v"));
    }

});



