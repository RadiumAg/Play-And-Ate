<%@ Page Title="" Language="C#" MasterPageFile="~/Shared/Main.Master" AutoEventWireup="true" CodeBehind="LineDetail1.aspx.cs" Inherits="Play_And_Ate.Line.LineDetail1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Style" runat="server">
    <link href="../Content/Line/LineDetial/list_line.css" rel="stylesheet" />
    <link href="../Content/Line/LineDetial/search.css" rel="stylesheet" />
    <link href="../Content/Line/LineDetial/style.css" rel="stylesheet" />
    <link href="../Content/Line/LineDetial/a_rili.css" rel="stylesheet" />
    <script src="../Scripts/Line/global.js" type="text/javascript"></script>
    <script src="../Scripts/Line/LineDetail/a_list.js" type="text/javascript"></script>
    <script src="../Scripts/Line/LineDetail/jquery-1.7.js" type="text/javascript"></script>
    <script src="../Scripts/Line/LineDetail/city_dcdr.js" type="text/javascript"></script>
    <link href="../Content/Line/LineDetial/index.css" rel="stylesheet" />
    <style>
        div{
            margin:0 0;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
<div class="head1">
    <script type="text/javascript" src="../Scripts/Line/LineDetail/index_header.js"></script>
<div class="clear"></div>
   <%-- //完成部分--%>
   <!-- //站点地图-->
<div id="position">
    <div id="breadcrumb">
        <div class="dee"><a href="../Line/Line1.aspx">农家行</a><a href="#">-</a><a href="#"><asp:Label ID="lblNavType" runat="server" Text=""></asp:Label></a><a href="#">-</a>
            <a href="#"><asp:Label ID="lblNavCity" runat="server" Text=""></asp:Label></a>
        </div>
    </div>
</div>
<div style="width:1000px; float:left"/>
    
<div class="list_top">
    <div class="city_l">
	    <span class="city">
            <asp:Label ID="lblType" runat="server" Text=""></asp:Label>
	    </span>
	    <span class="gengduo_ch"><a id="S_switch">更改</a></span>
	    <div class="city_yc l_menu" id="testTable">
		    <div class="guanbi f_r"><p id="guanbi"></p></div>
		    <div class=" city_txt f_l">
			    <h3>PAA行</h3>
			    <ul>
				    <li><a href="../Line/LineDetail1.aspx?PPointType=跟团行" title="跟团行">跟团行</a></li><li><a href="../Line/LineDetail1.aspx?PPointType=自驾行" title="自驾行">自驾行</a></li><li><a href="../Line/LineDetail1.aspx?PPointType=自助行" title="自助行">自助行</a></li>
  			    </ul>
  		    </div>
	    </div>
    </div>
    <div class="top_r"></div>
</div>
<div class="list_zhong">
<div id="l_list" class="f_l">


<!-- 搜索JS -->


<script type="text/javascript" src="../Content/Line/LineDetial/TN_hotel-min.js"></script>
<script type="text/javascript" src="../Content/Line/LineDetial/TN_city_suggest2-min.js"></script>
<script type="text/javascript" src="../Content/Line/LineDetial/TN_date-min.js"></script>
<script type="text/javascript" src="../Content/Line/LineDetial/TN_city_pos.js"></script>
<script type="text/javascript">
function label_click(aid)
{	
	//$('#line_xl:checkbox')
	var ck_num=0;
	var checked_num = $("#line_xl input:checkbox:checked").length;
	var one_id;
	var to_id;
	var sa_id;
	if(checked_num == 0)
 	{
		if($("#db_"+aid).is(":checked"))
		{
			//alert(aid+'1');
			$("#db_"+aid).parent("#duibi").addClass("xuanzhong").removeClass("tubiao");
		}
		else
		{	//alert(aid+'0');
			$("#db_"+aid).parent("#duibi").addClass("tubiao").removeClass("xuanzhong");
		}
 		$('#duibik').css("display","none");
 	}
	else if(checked_num==1)
	{
		if($("#db_"+aid).is(":checked"))
		{
			//alert(aid+'1');
			$("#db_"+aid).parent("#duibi").addClass("xuanzhong").removeClass("tubiao");
		}
		else
		{	//alert(aid+'0');
			$("#db_"+aid).parent("#duibi").addClass("tubiao").removeClass("xuanzhong");
		}
		$('#duibik').css("display","block");
		one_id=aid;
	}
	else if (checked_num==2)
	{
		if($("#db_"+aid).is(":checked"))
		{
			//alert(aid+'1');
			$("#db_"+aid).parent("#duibi").addClass("xuanzhong").removeClass("tubiao");
		}
		else
		{	//alert(aid+'0');
			$("#db_"+aid).parent("#duibi").addClass("tubiao").removeClass("xuanzhong");
		}
		to_id=aid;
	}
	else if(checked_num==3)
	{
		if($("#db_"+aid).is(":checked"))
		{
			//alert(aid+'1');
			$("#db_"+aid).parent("#duibi").addClass("xuanzhong").removeClass("tubiao");
		}
		else
		{	//alert(aid+'0');
			$("#db_"+aid).parent("#duibi").addClass("tubiao").removeClass("xuanzhong");
		}
		sa_id=aid;
	}
	else
	{
		$("#db_"+aid).attr('checked',false);
		if($("#db_"+aid).is(":checked"))
		{
			//alert(aid+'1');
			$("#db_"+aid).parent("#duibi").addClass("xuanzhong").removeClass("tubiao");
		}
		else
		{	//alert(aid+'0');
			$("#db_"+aid).parent("#duibi").addClass("tubiao").removeClass("xuanzhong");
		}
	}
	//$('#line_xl input').is(":checked").length;
 	//alert(checked_num);
	//alert(one_id+" "+to_id+" "+sa_id);
	
}
</script>
<script  type="text/javascript">
$(document).ready(function(){
$('#s-tab li').each(function(i) {
		$(this).bind('click', function() {
			$(this).siblings('li').removeClass('scur');
			$(this).addClass('scur');
			$('.s-content'+i).siblings('.s-content').hide();
			$('.s-content'+i).show();
		})
	});

	$('#city').TN_CitySuggest({'hotcityArr':TN_hotcitys,'cmcityArr':TN_cmcitys,'usecityArr':TN_usecitys});
	$('#cityhotel').TN_CitySuggest({'hotcityArr':TN_hotcitys,'cmcityArr':TN_cmcitys,'usecityArr':TN_usecitys});
	$('#s_begin_date,#s_end_date').TN_date();
	$('#business_park').TN_CityPos({'ldObj':$('#city'),'ldObjInitTxt':'中文/拼音'});
});
</script>
	<div class="nr_special">
	       <div class="satisf">
	            <dl>
	              <dt>广告位</dt>
	              <dd>效果</dd>
	            </dl>
	          </div>
	          <div class="tour_stat_infor">
	       		图片
	          </div>
	      <a class="infor" href="http://xianlu.01nz.com.cn/add/dingzhi.php" target="_blank"></a>
        <div class="fromto"> </div>
	 </div>
	<div class="blank" style="margin-top:10px; clear:both"></div>

<div class="side">
<script type="text/javascript" >_Check_index_Login();</script>
<div class="col_side_o"><div class="col_side_head">热门农庄</div> 
<script type="text/javascript">
window.onload = function(){  
	$("#show-hide").find('li').eq(0).addClass('show_over');
}
</script>
    <!--热门农庄-->
    <ul class="show-hide" id="show-hide">
        <asp:Repeater ID="remenfarm" runat="server">
            <ItemTemplate>
                 <li style="width:222px;" class="show_over"><a target="_blank" href="../Show/FarmDetails.aspx?productId=<%# Eval("ProductID") %>" class="pic_links" rel="nofollow"><img src="../Images/Home/<%# Eval("Image") %>" width="70" height="50"></a><div class="s_h_w9"><a target="_blank" href="../Show/FarmDetails.aspx?productId=<%# Eval("ProductID") %>"><%# Eval("ProductName") %></a><br><span class="ymargin"><span class="cgrey2"><div class="line_price" id="line_price" style="width:143px;">地址：<strong><%# Eval("areaName") %></strong></div></span></span></div><div class="clr"></div></li>
            </ItemTemplate>
        </asp:Repeater>
   </ul>
    <div class="clr"></div></div>
</div>
<div class="col_side_o news top10">
 </div>
<script type="text/javascript">
	$('.show-hide').each(function(){
	    $(this).find('li').each(function(){
		    $(this).mouseover(function(){
			    $(this).addClass('show_over');
				$(this).siblings('li').removeClass('show_over');
			});
		});
	});

</script>
</div>


<div id="r_mains">
    <%--//客户条件选择框--%>
	<div class="top_tour mb_20 clearfix">
		<div class="claer_both"></div>
		<div class="chooseCon">
    <div class="city" id="_search_option_item">
        <div class="del_float"></div>
    </div>
      <ul>
	    <li class="content0">
	      <b>目的地：</b>
	      <div>
              <asp:Repeater ID="RPdestination" runat="server">
                  <HeaderTemplate>
                      <a href="#">不限</a>
                  </HeaderTemplate>
                  <ItemTemplate>
                      <a href="../Line/LineDetail1.aspx?PPointType=<%# Eval("PPointType") %>&areaName=<%# Eval("areaName") %>"> <%# Eval("areaName") %></a>
                  </ItemTemplate>
              </asp:Repeater>
		  </div>
	    </li>
	    
    </ul>
</div>


</div>
<div class="claer_both"></div>
<div class="cate_other_box" id="line_xl">
<div id="tageeebc3d11bf4ddc5fd519112e7b96379">
    <asp:Repeater ID="RPProduct" runat="server">
        <ItemTemplate>
            <div class="cate_route_tables">
	    <div class="cate_route_img f_l">
		    <a href="../Show/FarmDetails.aspx?productId=<%# Eval("ProductID") %>" target="_blank"><img src="../Images/Home/<%# Eval("Image") %>" width="150" height="100" }"="" /></a>
		    <div class="xuanxiang">
		    </div>
	    </div>
	    <div class="cate_route_zhong f_l">
		    <div class="cate_route_name">
			    <div class="line_hang">
				    <a href="../Show/FarmDetails.aspx?productId=<%# Eval("ProductID") %>" target="_blank">
					    <strong>&lt;<%# Eval("AreaName") %>&gt;</strong>
					    <font color="#000099"><%# Eval("ProductName") %></font>
				    </a> 
			    </div>
			    <div class="line_hang ">
				    <a href="../Show/FarmDetails.aspx?productId=<%# Eval("ProductID") %>" target="_blank">
					    <img src="../Content/Line/LineDetial/remai.gif">
				    </a>
			    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
			    <div class="cate_route_des">
				    地区：<%# Eval("AreaName") %><a href="javascript:void(0)" onclick="javascript:popup_show2(&#39;1246&#39;);aid(&#39;1246&#39;)">更多...</a><br>
				    特色：...<br/>
				    行程天数：天<br/>
				    <div class="cate_route_price">
			    <div class="tour-sale cf">
				    <span class="dy-s">
					    <span></span>
				    </span>
				    <span class="dy-s2">
					    <span></span>
				    </span>
			    </div>
		    </div>
			    </div>
		    </div>
	    </div>
	    <div class="cate_route_yuding f_l">
		    <div class="line_jiageqi">¥ <span><%# Eval("ProductPrice").ToString().Split('.')[0] %></span> 起</div>
		    <div class="chakan_line">
			    <div class="anniu"><a href="../Show/FarmDetails.aspx?productId=<%# Eval("ProductID") %>">查看</a></div>
		    </div>
	    </div>
	    <div class="clear"></div>
    </div>
    <div class="hg_20"></div>
        </ItemTemplate>
    </asp:Repeater>
</div>
<div class="pagea"></div>
</div>
<script src="../Content/Line/LineDetial/GetCNDate-12.15.js" type="text/javascript"></script>
<script src="../Content/Line/LineDetial/188date.js" type="text/javascript"></script>

<script type="text/javascript">
function init(a) 
{
$.extend({      
includePath: '',  
include: function(file)  
{  
   var files = typeof file == "string" ? [file] : file;  
   for (var i = 0; i < files.length; i++)  
   {  
      var name = files[i].replace(/^\s|\s$/g, "");  
      var att = name.split('.');  
      var ext = att[att.length - 1].toLowerCase();  
      var isCSS = ext == "css";  
      var tag = isCSS ? "link" : "script";  
      var attr = isCSS ? " type='text/css' rel='stylesheet' " : " type='text/javascript' ";  
      var link = (isCSS ? "href" : "src") + "='" + $.includePath + name + "'";  
      if ($(tag + "[" + link + "]").length == 0) $("head").prepend("<" + tag + attr + link + "></" + tag + ">");  
    }  
}  
});  
$.include('/ORG7188_DATA/rili/a_rili_list.js'); 
$.ajax({
      type: "get",
      url: "/order/order_login.php?type=lineajax&aid="+a+"&rad=" + Math.random(),
      success: function(msg) {
if (msg.indexOf("星期")>=0)
{
	var week = msg.split(",");
	scheduler1.config.xml_date="%Y-%m-%d";
	scheduler1.config.prevent_cache = true;
	scheduler1.templates.month_date_class=function(date,today)
	{
	var dayT = "";
	var year = date.getFullYear();
    var month = date.getMonth() + 1;
    var day = date.getDate();
	var tdate = new Date(date.getFullYear(), date.getMonth(), day);
		dayT = T[showCal(tdate, true)]; dayT = dayT ? dayT : ""; //GetCNDate.js showCal(date, lockNum)//以阴历节日为主
		if (!dayT) 
		{
            var dayV = V[(month < 10 ? "0" + month : month.toString()) + (day < 10 ? "0" + day : day.toString())]; //阳历节日
            dayT = dayV ? dayV : "";
            if (!dayT) 
			{
                var dayJ = $this.jieqi(tdate); //24节气 如果当前天没有公历与农历节日则判断性取节气
                if (dayJ) dayT = dayJ ? dayJ : "";
            }
		}
							
		dayT=dayT.replace(regzhongwen, '');
		for(var i=0;i<week.length;i++)
		{
			if(week[i].indexOf(scheduler1.locale.date.day_full[date.getDay()])>=0)
			{
				var s=week[i].split(":");
				s=s[1].replace(/[,'"]/g,"");
			 	s=s.split(" ");
				dayT+='<i>￥'+s[0]+'</i>';
			}
							 
		 }
			return dayT;
	}
	scheduler1.config.first_hour=4;
	scheduler1.locale.labels.section_location="Location";
	scheduler1.init('scheduler_here',new Date(2019,3,21),"month");
        
}
else 
{
	
	scheduler1.config.xml_date="%Y-%m-%d";
	scheduler1.config.prevent_cache = true;
	scheduler1.templates.month_date_class=function(date,today)
	{
		  var dayT = "";
		
    var year = date.getFullYear();
    var month = date.getMonth() + 1;
    var day = date.getDate();
	var tdate = new Date(date.getFullYear(), date.getMonth(), day);
	dayT = T[showCal(tdate, true)]; dayT = dayT ? dayT : ""; //GetCNDate.js showCal(date, lockNum)//以阴历节日为主
		if (!dayT) 
		{
            var dayV = V[(month < 10 ? "0" + month : month.toString()) + (day < 10 ? "0" + day : day.toString())]; //阳历节日
            dayT = dayV ? dayV : "";
            if (!dayT) 
	   	    {
                var dayJ = $this.jieqi(tdate); //24节气 如果当前天没有公历与农历节日则判断性取节气
                if (dayJ) dayT = dayJ ? dayJ : "";
            }
		}
						 dayT=dayT.replace(regzhongwen, '');
						 return dayT;
	}
	scheduler1.config.first_hour=4;
	scheduler1.locale.labels.section_location="Location";
	
	scheduler1.init('scheduler_here',new Date(2019,3,21),"month");
	scheduler1.load("http://xianlu.01nz.com.cn/include/events.php?aid="+a+"&time="+ new Date().getTime());
}
}
});
}
</script>
</div>
</div>
</div>
<div class="blank"></div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
