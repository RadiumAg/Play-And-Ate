<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LineDetail.aspx.cs" Inherits="Play_And_Ate.Line.LineDetail" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0043)http://xianlu.01nz.com.cn/add/list/490.html -->
<html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>农家行-跟团游</title>
<meta name="keywords" content=""/>
<meta name="description" content=""/>
<link href="../Content/Line/LineDetial/list_line.css" rel="stylesheet" />
<link href="../Content/Line/LineDetial/search.css" rel="stylesheet" />
<link href="../Content/Line/LineDetial/style.css" rel="stylesheet" />
<link href="../Content/Line/LineDetial/a_rili.css" rel="stylesheet" />
    <script src="../Scripts/Line/global.js" type="text/javascript"></script>
    <script src="../Scripts/Line/LineDetail/a_list.js" type="text/javascript"></script>
    <script src="../Scripts/Line/LineDetail/jquery-1.7.js" type="text/javascript"></script>
    <script src="../Scripts/Line/LineDetail/city_dcdr.js" type="text/javascript"></script>
    <link href="../Content/Line/LineDetial/index.css" rel="stylesheet" />
</head>

<body>
<script language="javascript" type="text/javascript" src="../Scripts/Line/ajax188.js"></script>
<script language="javascript" type="text/javascript" src="../Scripts/Line/sousuo.js" charset="utf-8"></script>
<script language="javascript" type="text/javascript" src="../Scripts/Line/script.js" charset="utf-8"></script>

<script language="javascript" type="text/javascript">

function Check_head_Login(){
      
	  var taget_obj = document.getElementById('_Check_head_Login');	  
	  myajax = new ajaxx188(taget_obj,false,false,'','','');
	  myajax.SendGet2("http://xianlu.01nz.com.cn/users/ajax_head.php");
	  A188XHTTP = null;
}

function  myAddPanel(title,url,desc) {
  	if((typeof   window.sidebar   ==   'object')   &&   (typeof   window.sidebar.addPanel   ==   'function')) {
  		window.sidebar.addPanel(title,url,desc);  
	}else  {
  		window.external.AddFavorite(url,title);  
	}  
}


</script>
<div class="head">
<div class="head_mid">

<div class="head_mid_right">

</div>


<div class="head_mid_left">
 <div>
    <span id="_Check_head_Login">
    你好，欢迎光临第一农庄网！<a href="http://www.01nz.com.cn/user-login">登录</a>
    &nbsp;&nbsp;|&nbsp;&nbsp;
    <a href="http://www.01nz.com.cn/user-register" target="_blank">注册</a></span><script type="text/javascript" language="javascript">Check_head_Login();</script>
</div>
</div>

</div>
<!--  head_mid -->
</div>
<!--  head -->
<div class="clear"></div>
<div class="head1">

<!--通告开始-->

<div class="head_ad">
  <div id="adv_forum_home_full"></div>
   <div class="fade_btn"></div>
</div>
<!--通告结束-->

<div class="head1_logo top20"><a href="http://www.01nz.com.cn/"><img src="../Content/Line/LineDetial/logo.gif"/></a></div>
<div style="margin-top:35px; float:left; border-left:1px #666666 solid; width:93px; height:23px; text-align:center;  font-size:25px; line-height:16px; font-family:&#39;微软雅黑&#39;; ">农家行</div>
<div class="fenzhan"></div>
<div class="search_box f_l" style="margin-top:25px;">					
	<div class="search_input f_l">													
		<input type="text" class="search_txt" name="keyword" id="header_kw" value="农庄 农家乐 垂钓场 生态园 农家行" x-webkit-speech="" x-webkit-grammar="builtin:translate"/>
		<a id="sousuo_btn" class="search_btn">搜索</a>
	</div>
	<div class="blank1"></div>
</div>
<div class="hour24 top20"><span>400-021-3158</span><img src="../Content/Line/LineDetial/busy_yh.gif"/></div>

<!-- <div class="headbanner"><a href=#><img src=http://xianlu.01nz.com.cn/uploads/userup/0/1345455395.gif></a></div> -->
</div>
<div class="nv top20">
<div class="wrap">
    <ul>
    <li class="all_class nz_biaoyu">
	    <div class="nz_biaoyu_dv">
		    <ul id="scrollnews" class="scrollnews">
		      <li class="clear"> 去农庄&nbsp;&nbsp;就上第一农庄网</li>
		      <li class="clear"> 热线电话：400-021-31589</li>
		    </ul>
	    </div>	
    </li>
    <li class="daohang"><a href="http://www.01nz.com.cn/">首页</a></li>
    <li class="daohang"><a href="http://www.01nz.com.cn/farm">农庄</a></li>
    <li class="daohang"><a href="http://www.01nz.com.cn/farmhouse">农家乐</a></li>
    <li class="daohang"><a href="http://www.01nz.com.cn/biotope">生态园</a></li>
    <li class="daohang"><a href="http://www.01nz.com.cn/fishing">垂钓场</a></li>
    <li class="cur"><a href="http://xianlu.01nz.com.cn/" title="农家行">农家行</a></li>
    <li class="fl"><a href="http://01nz.com.cn/discover" target="_blank">专题</a></li>
    </ul>
    <div class="clear"></div>
</div>
</div>
<!--  head1 -->
<div class="head1">
    <script type="text/javascript" src="../Scripts/Line/LineDetail/index_header.js"></script>
<div class="clear"></div>
   <%-- //完成部分--%>
   <!-- //站点地图-->
<div id="position">
    <div id="breadcrumb">
        <div class="dee"><a href="http://xianlu.01nz.com.cn/">农家行</a><a href="http://xianlu.01nz.com.cn/add/l.php?tid="></a><a href="http://xianlu.01nz.com.cn/add/list/490.html">跟团行</a></div>
    </div>
</div>
<div style="width:1000px; float:left"/>
    
<div class="list_top">
    <div class="city_l">
	    <span class="city">
	    传入接
	    </span>
	    <span class="gengduo_ch"><a id="S_switch">更改</a></span>
	    <div class="city_yc l_menu" id="testTable">
		    <div class="guanbi f_r"><p id="guanbi"></p></div>
		    <div class=" city_txt f_l">
			    <h3>PAA行</h3>
			    <ul>
				    <li><a href="http://xianlu.01nz.com.cn/add/list/490.html" title="跟团行">跟团行</a></li><li><a href="http://xianlu.01nz.com.cn/add/list/491.html" title="自助行">自助行</a></li><li><a href="http://xianlu.01nz.com.cn/add/list/492.html" title="专线">专线</a></li><li><a href="http://xianlu.01nz.com.cn/add/list/593.html" title="自驾行">自驾行</a></li>
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
<script language="javascript1.2" type="text/javascript">
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
<script type="text/javascript" language="javascript">_Check_index_Login();</script>
<div class="col_side_o"><div class="col_side_head">热门农庄</div> 
<script type="text/javascript">
window.onload = function(){  
	$("#show-hide").find('li').eq(0).addClass('show_over');
}
</script>
<ul class="show-hide" id="show-hide">
<li style="width:222px;" class="show_over"><a target="_blank" href="http://www.01nz.com.cn/farm/1.html" class="pic_links" rel="nofollow"><img src="../Content/Line/LineDetial/539580bb90831.jpg" width="70" height="50"></a><div class="s_h_w9"><a target="_blank" href="http://shanghai.01nz.com.cn/farm/1.html">沈湖生态农庄</a><br><span class="ymargin"><span class="cgrey2"><div class="line_price" id="line_price" style="width:143px;">地址：<strong></strong></div></span></span></div><div class="clr"></div></li><li style="width:222px;"><a target="_blank" href="http://www.01nz.com.cn/farm/3.html" class="pic_links" rel="nofollow"><img src="../Content/Line/LineDetial/5270b12bd8b1d.jpg" width="70" height="50"></a><div class="s_h_w9"><a target="_blank" href="http://shanghai.01nz.com.cn/farm/3.html">梦微草堂</a><br><span class="ymargin"><span class="cgrey2"><div class="line_price" id="line_price" style="width:143px;">地址：<strong></strong></div></span></span></div><div class="clr"></div></li><li style="width:222px;"><a target="_blank" href="http://www.01nz.com.cn/farm/1109.html" class="pic_links" rel="nofollow"><img src="../Content/Line/LineDetial/5382df6e65fe8.jpg" width="70" height="50"></a><div class="s_h_w9"><a target="_blank" href="http://shanghai.01nz.com.cn/farm/1109.html">西山庭山农庄</a><br><span class="ymargin"><span class="cgrey2"><div class="line_price" id="line_price" style="width:143px;">地址：<strong>西山庭山农庄</strong></div></span></span></div><div class="clr"></div></li><li style="width:222px;"><a target="_blank" href="http://www.01nz.com.cn/farm/4.html" class="pic_links" rel="nofollow"><img src="../Content/Line/LineDetial/5270b1a683de7.jpg" width="70" height="50"></a><div class="s_h_w9"><a target="_blank" href="http://shanghai.01nz.com.cn/farm/4.html">喜来春农庄</a><br><span class="ymargin"><span class="cgrey2"><div class="line_price" id="line_price" style="width:143px;">地址：<strong>上海喜来春农业观光旅游专业合作社</strong></div></span></span></div><div class="clr"></div></li><li style="width:222px;"><a target="_blank" href="http://www.01nz.com.cn/farm/6.html" class="pic_links" rel="nofollow"><img src="../Content/Line/LineDetial/526e27ec0f0c2.jpg" width="70" height="50"></a><div class="s_h_w9"><a target="_blank" href="http://shanghai.01nz.com.cn/farm/6.html">长兴岛桔园拓展基地</a><br><span class="ymargin"><span class="cgrey2"><div class="line_price" id="line_price" style="width:143px;">地址：<strong>上海长兴岛桔园拓展基地</strong></div></span></span></div><div class="clr"></div></li>
</ul>
    <div class="clr"></div></div>
</div>
<div class="col_side_o news top10">
<div class="col_side_head">
<a href="http://xianlu.01nz.com.cn/gl" target="_blank">占位</a>
</div>
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
	      <b>出发地：</b>
	      <div>
	        <a href="javascript:void(0)" onclick="ListUrl(this.id);return false;" id="id_0" class="yes">不限</a>
	        <a href="javascript:void(0)" onclick="ListUrl(this.id);return false;" id="id_500">上海</a>
            <a href="javascript:void(0)" onclick="ListUrl(this.id);return false;" id="id_499">温州</a>
		  </div>
	    </li>
	    <li class="content2">
	      <b>行程天数：</b>
	      <div>
	      <a href="javascript:void(0)" id="day_0" onclick="ListUrl(this.id);return false;" class="yes">不限</a> 
          <a href="javascript:void(0)" id="day_1" onclick="ListUrl(this.id);return false;">1天</a> 
          <a href="javascript:void(0)" id="day_2" onclick="ListUrl(this.id);return false;">2天</a> 
          <a href="javascript:void(0)" id="day_3" onclick="ListUrl(this.id);return false;">3天</a> 
          <a href="javascript:void(0)" id="day_4" onclick="ListUrl(this.id);return false;">4天</a> 
          <a href="javascript:void(0)" id="day_5" onclick="ListUrl(this.id);return false;">5天以上</a>
          </div>
	    </li>
    </ul>
</div>


</div>
<div class="claer_both"></div>
<div class="cate_other_box" id="line_xl">
	<div id="tageeebc3d11bf4ddc5fd519112e7b96379">
<div class="cate_route_tables">
	<div class="cate_route_img f_l">
		<a href="http://xianlu.01nz.com.cn/archives/1246.html" target="_blank"><img src="../Content/Line/LineDetial/nopic.jpg" width="150" height="100" }"="" alt="&lt;font color=&#39;#000099&#39;&gt;哇哇哇哇&lt;/font&gt;"/></a>
		<div class="xuanxiang">
		</div>
	</div>
	<div class="cate_route_zhong f_l">
		<div class="cate_route_name">
			<div class="line_hang">
				<a href="http://xianlu.01nz.com.cn/archives/1246.html" target="_blank">
					<strong>&lt;台州&gt;</strong>
					[<font color="#000099">哇哇哇哇</font>
				</a> 
			</div>
			<div class="line_hang ">
				<a href="http://xianlu.01nz.com.cn/archives/1246.html" target="_blank">
					<img src="../Content/Line/LineDetial/remai.gif">
				</a>
			</div>
			<div class="cate_route_des">
				团期：
				<a href="javascript:void(0)" onclick="javascript:popup_show2(&#39;1246&#39;);aid(&#39;1246&#39;)">更多...</a><br>
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
				<div class="npoptip" style="left: -50px; top: 26px; display: none;">
					<ul>
						<li class="li_dy">预订此产品使用金币，每位成人可抵扣
						<strong class="cdyellow"></strong>元现金。
						</li>
						<li class="li_sq">旅游结束后发表点评，赠送【
						<strong class="cdyellow"></strong>元x成人数】金币。
						</li>
						<li>
						<span class="cgrey">说明：以上优惠活动根据线路不同，而优惠幅度不同。</span>
						</li>
						<li>
						<a class="subtext cgreen" href="http://xianlu.01nz.com.cn/add/list/%7B188:global.cfg_phpurl/%7D/v.php?aid=548" target="_blank">什么是金币?</a>
						</li>
					</ul>
					<div class="npoptip_arrow" style="left:60px;"></div>
				</div>
			</div>
		</div>
			</div>
		</div>
	</div>
	<div class="cate_route_yuding f_l">
		<div class="line_jiageqi">¥ <span><%# Eval("Price") %></span> 起</div>
		<div class="chakan_line">
			<div class="anniu"><a href="#">查看</a></div>
		</div>
	</div>
	<div class="clear"></div>
</div>
<div class="hg_20"></div>
<div class="cate_route_tables">
	<div class="cate_route_img f_l">
		<a href="http://xianlu.01nz.com.cn/archives/1232.html" target="_blank"><img src="../Content/Line/LineDetial/15022F54G9.jpg" width="150" height="100" }"="" alt="买一赠一！【青浦】草莓采摘一日游"></a>
		<div class="xuanxiang">
		<a class="comparison_bg select f_r tubiao" id="duibi"> 
			<input class="cc" id="db_" type="checkbox" name="general_route_compare" value="" onclick="label_click()">加入对比
		</a>
		</div>
	</div>
	<div class="cate_route_zhong f_l">
		<div class="cate_route_name">
			<div class="line_hang">
				<a href="http://xianlu.01nz.com.cn/archives/1232.html" target="_blank">
					<strong>&lt;118元一人可免费携带另1成人&gt;</strong>
					[买一赠一！【青浦】草莓采摘一日游
				</a> 
			</div>
			<div class="line_hang ">
				<a href="http://xianlu.01nz.com.cn/archives/1232.html" target="_blank">
					<img src="../Content/Line/LineDetial/tuijian.gif">
				</a>
			</div>
			<div class="cate_route_des">
				团期：3/02,3/04,3/07,3/16,3/18,3/21,3/23,3/25,3/28,3/30
				<a href="javascript:void(0)" onclick="javascript:popup_show2(&#39;1232&#39;);aid(&#39;1232&#39;)">更多...</a><br>
				特色：...<br>
				行程天数：1天<br>
				<div class="cate_route_price">
			<div class="tour-sale cf">
				<span class="dy-s">
					<span></span>
				</span>
				<span class="dy-s2">
					<span></span>
				</span>
				<div class="npoptip" style="left: -50px; top: 26px; display: none;">
					<ul>
						<li class="li_dy">预订此产品使用金币，每位成人可抵扣
						<strong class="cdyellow"></strong>元现金。
						</li>
						<li class="li_sq">旅游结束后发表点评，赠送【
						<strong class="cdyellow"></strong>元x成人数】金币。
						</li>
						<li>
						<span class="cgrey">说明：以上优惠活动根据线路不同，而优惠幅度不同。</span>
						</li>
						<li>
						<a class="subtext cgreen" href="http://xianlu.01nz.com.cn/add/list/%7B188:global.cfg_phpurl/%7D/v.php?aid=548" target="_blank">什么是金币?</a>
						</li>
					</ul>
					<div class="npoptip_arrow" style="left:60px;"></div>
				</div>
			</div>
		</div>
			</div>
		</div>
	</div>
	<div class="cate_route_yuding f_l">
		<div class="line_jiageqi">¥ <span>118</span> 起</div>
		<div class="chakan_line">
			<div class="anniu"><a href="#">查看</a></div>
		</div>
	</div>
	<div class="clear"></div>
</div>
<div class="hg_20"></div>
<div class="cate_route_tables">
	<div class="cate_route_img f_l">
		<a href="http://xianlu.01nz.com.cn/archives/1231.html" target="_blank"><img src="../Content/Line/LineDetial/15022P20R1.jpg" width="150" height="100" }"="" alt="【赏春】 苏州木渎古镇，林屋洞探梅一日"></a>
		<div class="xuanxiang">
		<a class="comparison_bg select f_r tubiao" id="duibi"> 
			<input class="cc" id="db_" type="checkbox" name="general_route_compare" value="" onclick="label_click()">加入对比
		</a>
		</div>
	</div>
	<div class="cate_route_zhong f_l">
		<div class="cate_route_name">
			<div class="line_hang">
				<a href="http://xianlu.01nz.com.cn/archives/1231.html" target="_blank">
					<strong>&lt;已含林屋洞门票，餐费自理&gt;</strong>
					[【赏春】 苏州木渎古镇，林屋洞探梅一日
				</a> 
			</div>
			<div class="line_hang ">
				<a href="http://xianlu.01nz.com.cn/archives/1231.html" target="_blank">
					<img src="../Content/Line/LineDetial/remai.gif"><img src="../Content/Line/LineDetial/tuijian.gif">
				</a>
			</div>
			<div class="cate_route_des">
				团期：3/04,3/07,3/11,3/14,3/18,3/21,3/25,3/28
				<a href="javascript:void(0)" onclick="javascript:popup_show2(&#39;1231&#39;);aid(&#39;1231&#39;)">更多...</a><br>
				特色：...<br>
				行程天数：1天<br>
				<div class="cate_route_price">
			<div class="tour-sale cf">
				<span class="dy-s">
					<span></span>
				</span>
				<span class="dy-s2">
					<span></span>
				</span>
				<div class="npoptip" style="left: -50px; top: 26px; display: none;">
					<ul>
						<li class="li_dy">预订此产品使用金币，每位成人可抵扣
						<strong class="cdyellow"></strong>元现金。
						</li>
						<li class="li_sq">旅游结束后发表点评，赠送【
						<strong class="cdyellow"></strong>元x成人数】金币。
						</li>
						<li>
						<span class="cgrey">说明：以上优惠活动根据线路不同，而优惠幅度不同。</span>
						</li>
						<li>
						<a class="subtext cgreen" href="http://xianlu.01nz.com.cn/add/list/%7B188:global.cfg_phpurl/%7D/v.php?aid=548" target="_blank">什么是金币?</a>
						</li>
					</ul>
					<div class="npoptip_arrow" style="left:60px;"></div>
				</div>
			</div>
		</div>
			</div>
		</div>
	</div>
	<div class="cate_route_yuding f_l">
		<div class="line_jiageqi">¥ <span>99</span> 起</div>
		<div class="chakan_line">
			<div class="anniu"><a href="#">查看</a></div>
		</div>
	</div>
	<div class="clear"></div>
</div>
<div class="hg_20"></div>
<div class="cate_route_tables">
	<div class="cate_route_img f_l">
		<a href="http://xianlu.01nz.com.cn/archives/1229.html" target="_blank"><img src="../Content/Line/LineDetial/150210093504.jpg" width="150" height="100" }"="" alt="上海出发 【普陀山】祈福二日农家行"></a>
		<div class="xuanxiang">
		<a class="comparison_bg select f_r tubiao" id="duibi"> 
			<input class="cc" id="db_" type="checkbox" name="general_route_compare" value="" onclick="label_click()">加入对比
		</a>
		</div>
	</div>
	<div class="cate_route_zhong f_l">
		<div class="cate_route_name">
			<div class="line_hang">
				<a href="http://xianlu.01nz.com.cn/archives/1229.html" target="_blank">
					<strong>&lt;快艇接，普陀山、普济寺、法雨寺、紫竹林景区&gt;</strong>
					[上海出发 【普陀山】祈福二日农家行
				</a> 
			</div>
			<div class="line_hang ">
				<a href="http://xianlu.01nz.com.cn/archives/1229.html" target="_blank">
					<img src="../Content/Line/LineDetial/remai.gif"><img src="../Content/Line/LineDetial/tuijian.gif">
				</a>
			</div>
			<div class="cate_route_des">
				团期：星期二
				<a href="javascript:void(0)" onclick="javascript:popup_show2(&#39;1229&#39;);aid(&#39;1229&#39;)">更多...</a><br>
				特色：...<br>
				行程天数：2天<br>
				<div class="cate_route_price">
			<div class="tour-sale cf">
				<span class="dy-s">
					<span></span>
				</span>
				<span class="dy-s2">
					<span></span>
				</span>
				<div class="npoptip" style="left: -50px; top: 26px; display: none;">
					<ul>
						<li class="li_dy">预订此产品使用金币，每位成人可抵扣
						<strong class="cdyellow"></strong>元现金。
						</li>
						<li class="li_sq">旅游结束后发表点评，赠送【
						<strong class="cdyellow"></strong>元x成人数】金币。
						</li>
						<li>
						<span class="cgrey">说明：以上优惠活动根据线路不同，而优惠幅度不同。</span>
						</li>
						<li>
						<a class="subtext cgreen" href="http://xianlu.01nz.com.cn/add/list/%7B188:global.cfg_phpurl/%7D/v.php?aid=548" target="_blank">什么是金币?</a>
						</li>
					</ul>
					<div class="npoptip_arrow" style="left:60px;"></div>
				</div>
			</div>
		</div>
			</div>
		</div>
	</div>
	<div class="cate_route_yuding f_l">
		<div class="line_jiageqi">¥ <span>610</span> 起</div>
		<div class="chakan_line">
			<div class="anniu"><a href="#">查看</a></div>
		</div>
	</div>
	<div class="clear"></div>
</div>
<div class="hg_20"></div>
<div class="cate_route_tables">
	<div class="cate_route_img f_l">
		<a href="http://xianlu.01nz.com.cn/archives/1228.html" target="_blank"><img src="../Content/Line/LineDetial/150205031I2.jpg" width="150" height="100" }"="" alt="&lt;strong&gt;上海出发 【后岸村】3月7号“老婆节”蛇蟠岛二&lt;/strong&gt;"></a>
		<div class="xuanxiang">
		<a class="comparison_bg select f_r tubiao" id="duibi"> 
			<input class="cc" id="db_" type="checkbox" name="general_route_compare" value="" onclick="label_click()">加入对比
		</a>
		</div>
	</div>
	<div class="cate_route_zhong f_l">
		<div class="cate_route_name">
			<div class="line_hang">
				<a href="http://xianlu.01nz.com.cn/archives/1228.html" target="_blank">
					<strong>&lt;299元2人套餐，爱她就送她&gt;</strong>
					[<strong>上海出发 【后岸村】3月7号“老婆节”蛇蟠岛二</strong>
				</a> 
			</div>
			<div class="line_hang ">
				<a href="http://xianlu.01nz.com.cn/archives/1228.html" target="_blank">
					<img src="../Content/Line/LineDetial/remai.gif"><img src="../Content/Line/LineDetial/tuijian.gif">
				</a>
			</div>
			<div class="cate_route_des">
				团期：3/07
				<a href="javascript:void(0)" onclick="javascript:popup_show2(&#39;1228&#39;);aid(&#39;1228&#39;)">更多...</a><br>
				特色：...<br>
				行程天数：2天<br>
				<div class="cate_route_price">
			<div class="tour-sale cf">
				<span class="dy-s">
					<span></span>
				</span>
				<span class="dy-s2">
					<span></span>
				</span>
				<div class="npoptip" style="left: -50px; top: 26px; display: none;">
					<ul>
						<li class="li_dy">预订此产品使用金币，每位成人可抵扣
						<strong class="cdyellow"></strong>元现金。
						</li>
						<li class="li_sq">旅游结束后发表点评，赠送【
						<strong class="cdyellow"></strong>元x成人数】金币。
						</li>
						<li>
						<span class="cgrey">说明：以上优惠活动根据线路不同，而优惠幅度不同。</span>
						</li>
						<li>
						<a class="subtext cgreen" href="http://xianlu.01nz.com.cn/add/list/%7B188:global.cfg_phpurl/%7D/v.php?aid=548" target="_blank">什么是金币?</a>
						</li>
					</ul>
					<div class="npoptip_arrow" style="left:60px;"></div>
				</div>
			</div>
		</div>
			</div>
		</div>
	</div>
	<div class="cate_route_yuding f_l">
		<div class="line_jiageqi">¥ <span>299</span> 起</div>
		<div class="chakan_line">
			<div class="anniu"><a href="#">查看</a></div>
		</div>
	</div>
	<div class="clear"></div>
</div>
<div class="hg_20"></div>
<div class="cate_route_tables">
	<div class="cate_route_img f_l">
		<a href="http://xianlu.01nz.com.cn/archives/1227.html" target="_blank"><img src="../Content/Line/LineDetial/150123020547.jpg" width="150" height="100" }"="" alt="上海出发 【黄山】醉温泉-水印唐模-宋城老街精"></a>
		<div class="xuanxiang">
		</div>
	</div>
	<div class="cate_route_zhong f_l">
		<div class="cate_route_name">
			<div class="line_hang">
				<a href="http://xianlu.01nz.com.cn/archives/1227.html" target="_blank">
					<strong>&lt;住四星酒店 含温泉票 不含餐&gt;</strong>
					[上海出发 【黄山】醉温泉-水印唐模-宋城老街精
				</a> 
			</div>
			<div class="line_hang ">
				<a href="http://xianlu.01nz.com.cn/archives/1227.html" target="_blank">
					<img src="../Content/Line/LineDetial/tuijian.gif">
				</a>
			</div>
			<div class="cate_route_des">
				团期：星期六
				<a href="javascript:void(0)" onclick="javascript:popup_show2(&#39;1227&#39;);aid(&#39;1227&#39;)">更多...</a><br>
				特色：...<br>
				行程天数：2天<br>
				<div class="cate_route_price">
			<div class="tour-sale cf">
				<span class="dy-s">
					<span></span>
				</span>
				<span class="dy-s2">
					<span></span>
				</span>
				<div class="npoptip" style="left: -50px; top: 26px; display: none;">
					<ul>
						<li class="li_dy">预订此产品使用金币，每位成人可抵扣
						<strong class="cdyellow"></strong>元现金。
						</li>
						<li class="li_sq">旅游结束后发表点评，赠送【
						<strong class="cdyellow"></strong>元x成人数】金币。
						</li>
						<li>
						<span class="cgrey">说明：以上优惠活动根据线路不同，而优惠幅度不同。</span>
						</li>
						<li>
						<a class="subtext cgreen" href="http://xianlu.01nz.com.cn/add/list/%7B188:global.cfg_phpurl/%7D/v.php?aid=548" target="_blank">什么是金币?</a>
						</li>
					</ul>
					<div class="npoptip_arrow" style="left:60px;"></div>
				</div>
			</div>
		</div>
			</div>
		</div>
	</div>
	<div class="cate_route_yuding f_l">
		<div class="line_jiageqi">¥ <span>259</span> 起</div>
		<div class="chakan_line">
			<div class="anniu"><a href="#">查看</a></div>
		</div>
	</div>
	<div class="clear"></div>
</div>
<div class="hg_20"></div>
<div class="cate_route_tables">
	<div class="cate_route_img f_l">
		<a href="http://xianlu.01nz.com.cn/archives/1223.html" target="_blank"><img src="../Content/Line/LineDetial/150122095S8.jpg" width="150" height="100" }"="" alt="【欢喜过大年3】临安大明山农家3日游"></a>
		
	</div>
	<div class="cate_route_zhong f_l">
		<div class="cate_route_name">
			<div class="line_hang">
				<a href="http://xianlu.01nz.com.cn/archives/1223.html" target="_blank">
					<strong>&lt;含大明山、白水涧大门票&gt;</strong>
					[【欢喜过大年3】临安大明山农家3日游
				</a> 
			</div>
			<div class="line_hang ">
				<a href="http://xianlu.01nz.com.cn/archives/1223.html" target="_blank">
					<img src="../Content/Line/LineDetial/tuijian.gif">
				</a>
			</div>
			<div class="cate_route_des">
				团期：2/20,2/22
				<a href="javascript:void(0)" onclick="javascript:popup_show2(&#39;1223&#39;);aid(&#39;1223&#39;)">更多...</a><br>
				特色：...<br>
				行程天数：3天<br>
				<div class="cate_route_price">
			<div class="tour-sale cf">
				<span class="dy-s">
					<span></span>
				</span>
				<span class="dy-s2">
					<span></span>
				</span>
				<div class="npoptip" style="left: -50px; top: 26px; display: none;">
					<ul>
						<li class="li_dy">预订此产品使用金币，每位成人可抵扣
						<strong class="cdyellow"></strong>元现金。
						</li>
						<li class="li_sq">旅游结束后发表点评，赠送【
						<strong class="cdyellow"></strong>元x成人数】金币。
						</li>
						<li>
						<span class="cgrey">说明：以上优惠活动根据线路不同，而优惠幅度不同。</span>
						</li>
						<li>
						<a class="subtext cgreen" href="http://xianlu.01nz.com.cn/add/list/%7B188:global.cfg_phpurl/%7D/v.php?aid=548" target="_blank">什么是金币?</a>
						</li>
					</ul>
					<div class="npoptip_arrow" style="left:60px;"></div>
				</div>
			</div>
		</div>
			</div>
		</div>
	</div>
	<div class="cate_route_yuding f_l">
		<div class="line_jiageqi">¥ <span>459</span> 起</div>
		<div class="chakan_line">
			<div class="anniu"><a href="#">查看</a></div>
		</div>
	</div>
	<div class="clear"></div>
</div>
<div class="hg_20"></div>
<div class="cate_route_tables">
	<div class="cate_route_img f_l">
		<a href="http://xianlu.01nz.com.cn/archives/1222.html" target="_blank"><img src="../Content/Line/LineDetial/150122093116.jpg" width="150" height="100" }"="" alt="上海出发  [欢喜过大年2]天台后岸村农家3日游"></a>
		<div class="xuanxiang">
		<a class="comparison_bg select f_r tubiao" id="duibi"> 
			<input class="cc" id="db_" type="checkbox" name="general_route_compare" value="" onclick="label_click()">加入对比
		</a>
		</div>
	</div>
	<div class="cate_route_zhong f_l">
		<div class="cate_route_name">
			<div class="line_hang">
				<a href="http://xianlu.01nz.com.cn/archives/1222.html" target="_blank">
					<strong>&lt;体验农家民俗、欢喜过大年&gt;</strong>
					[上海出发  [欢喜过大年2]天台后岸村农家3日游
				</a> 
			</div>
			<div class="line_hang ">
				<a href="http://xianlu.01nz.com.cn/archives/1222.html" target="_blank">
					<img src="../Content/Line/LineDetial/tuijian.gif">
				</a>
			</div>
			<div class="cate_route_des">
				团期：,2/20,2/22
				<a href="javascript:void(0)" onclick="javascript:popup_show2(&#39;1222&#39;);aid(&#39;1222&#39;)">更多...</a><br>
				特色：...<br/>
				行程天数：3天<br/>
				<div class="cate_route_price">
			<div class="tour-sale cf">
				<span class="dy-s">
					<span></span>
				</span>
				<span class="dy-s2">
					<span></span>
				</span>
				<div class="npoptip" style="left: -50px; top: 26px; display: none;">
					<ul>
						<li class="li_dy">预订此产品使用金币，每位成人可抵扣
						<strong class="cdyellow"></strong>元现金。
						</li>
						<li class="li_sq">旅游结束后发表点评，赠送【
						<strong class="cdyellow"></strong>元x成人数】金币。
						</li>
						<li>
						<span class="cgrey">说明：以上优惠活动根据线路不同，而优惠幅度不同。</span>
						</li>
						<li>
						<a class="subtext cgreen" href="http://xianlu.01nz.com.cn/add/list/%7B188:global.cfg_phpurl/%7D/v.php?aid=548" target="_blank">什么是金币?</a>
						</li>
					</ul>
					<div class="npoptip_arrow" style="left:60px;"></div>
				</div>
			</div>
		</div>
			</div>
		</div>
	</div>
	<div class="cate_route_yuding f_l">
		<div class="line_jiageqi">¥ <span>459</span> 起</div>
		<div class="chakan_line">
			<div class="anniu"><a href="#">查看</a></div>
		</div>
	</div>
	<div class="clear"></div>
</div>
<div class="hg_20"></div>
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

<script language="javascript1.2" type="text/javascript">
    //传入id和天数
function ListUrl(id)
{
var url=location.href;
var tt=url.split('?');
if(typeof(tt[1])=='undefined')
{
    url='http://xianlu.01nz.com.cn/add/l.php?tid=490';
}
else
{
    url=location.href;
}
var a=id.split('_');
var tmp;
var s=url.indexOf("?");
var Par=s==-1?'&':'&'+url.substring(s+1)+'&';

for(var i=0;i<a.length;i+=2)
{
tmp=Par.match(new RegExp("\&"+a[i]+"\=-?(\\d+)?",'i'));
if(!tmp)
{
Par+=a[i]+'='+a[i+1]+'&'
}
else
{
Par=Par.replace(tmp[0]+'&','&'+a[i]+'='+a[i+1]+'&');
}
}

Par=Par.substring(1,Par.length-1);

if(s==-1)
{
url+='?'+Par;
}
else
{
url=url.substring(0,s+1)+Par;
}

location=url;

}

String.prototype.Trim=function()
{

return this.replace(/^\s+/g,"").replace(/\s+$/g,"");
}

if(getQueryString('id')=='0' || getQueryString('id')==null)
{
$('#id_0').addClass('yes');
}
else
{
$('.content0 a').removeClass('yes');
$('#id_'+getQueryString('id')).addClass('yes');
}
if(getQueryString('mdd')=='0' || getQueryString('mdd')==null)
{
$('#mdd_0').addClass('yes');
}
else
{
$('.content1 a').removeClass('yes');
$('#mdd_'+getQueryString('mdd')).addClass('yes');
}
if(getQueryString('day')=='0' || getQueryString('day')==null)
{
$('#day_0').addClass('yes');
}
else
{
$('.content2 a').removeClass('yes');
$('#day_'+getQueryString('day')).addClass('yes');
}
if( (getQueryString('p1')=='0' && getQueryString('p2')=='0') || (getQueryString('p1')==null && getQueryString('p2')==null))
{
$('#p1_0_p2_0').addClass('yes');
}
else
{
$('.content3 a').removeClass('yes');
$('#p1_'+getQueryString('p1')+'_p2_'+getQueryString('p2')).addClass('yes');
}
function getQueryString(name) {var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");    var r = window.location.search.substr(1).match(reg);    if (r != null) return unescape(r[2]); return null;}
</script>
</div>
</div>
<div class="blank"></div>

</body>
</html>