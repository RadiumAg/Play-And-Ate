<%@ Page Title="" Language="C#" MasterPageFile="~/Shared/Main.Master" AutoEventWireup="true" CodeBehind="Generated.aspx.cs" Inherits="Play_And_Ate.Products.Generated" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Style" runat="server">  <link rel="Shortcut Icon" href="http://sh.01nz.com.cn/app/Tpl/fanwe/images/logo.ico" /><!--地址栏和标签上显示图标-->
    <link rel="Bookmark" href="http://sh.01nz.com.cn/app/Tpl/fanwe/images/logo.ico" /><!--收藏夹显示图标-->
    <link rel="stylesheet" type="text/css" href="../Content/Products/cf62177493ce4db40c22962f60d846f8.css" />
    <script type="text/javascript" src="../Scripts/Products/908ca0ab9e4d27144b60bc878b237327.js" charset="utf-8"></script>
    <script type="text/javascript" src="../Scripts/Products/baidumap.js"></script>
    <link href="../Content/Products/base.v606141511.css" rel="stylesheet" type="text/css" media="all" />
    <script type="text/javascript" src="../Scripts/Products/header.js" charset="utf-8"></script>
    <script type="text/javascript" src="../Scripts/Products/mt3.v1014201036.js" charset="utf-8"></script>
    <script type="text/javascript" src="../Scripts/Products/fgcomm.v620152248.js" charset="utf-8"></script>
    <script type="text/javascript" src="../Scripts/Products/sousuo.js" charset="utf-8"></script> 
    <script type="text/javascript" src="../Scripts/Products/index_header.js" charset="utf-8"></script>
</asp:Content>
<%--  
</head>
<body>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">

<%--<div class="header" id="header">
	<div class="top_nav">
		<div class="wrap">
			<div>
				<span id="user_head_tip" class="f_l">
					你好，欢迎光临第一农庄网！
	<a href="javascript:void(0);" onclick="ajax_login();">登录</a>&nbsp;&nbsp;|&nbsp;&nbsp;
	<a href="http://sh.01nz.com.cn/user-register">注册</a>
				</span>
				<span class="cart_ico"><a href="http://sh.01nz.com.cn/cart" targer="_blank">购物车<span class="cart_count" id="cart_count">0</span> 件</a></span>
								<span class="v_line">&nbsp;|&nbsp;</span>
				<a href="javascript:void(0)" onclick="submit_sms();">短信订阅</a><span class="v_line">&nbsp;|&nbsp;</span>
				<a href="javascript:void(0)" onclick="unsubmit_sms();">短信退订</a><span class="v_line">&nbsp;|&nbsp;</span>
												<a href="http://sh.01nz.com.cn/tuan/subscribe-mail">邮件订阅</a><span class="v_line">&nbsp;|&nbsp;</span>					
							</div>
		</div>
	</div><!--end top_nav-->
		<div class="header_box">
				<div class="headers">
				<div class="LOGE">
				<a href="http://www.01nz.com.cn/">
					<img alt="第一农庄网" class="f_l" src="./上海农家乐_上海农庄_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农家乐_农庄_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/loge.gif" />
				</a>
				</div>
				<div id="city">
				<dl id="warpper"><dt><font><b class="chengshi">上海</b></font><font color="#C80063"><b><img src="./上海农家乐_上海农庄_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农家乐_农庄_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/cs_dw.png" alt="城市" /></b></font></dt></dl>
				</div>
					<div class="search_box_main search_boxs f_l">					
						<div class="search_input_main f_l">													
							<input type="text" class="search_txt_main" name="keyword" id="header_kw" value="请输入您要搜索的关键词" x-webkit-speech="" x-webkit-grammar="builtin:translate" style="color: rgb(187, 187, 187);" />
							<a id="sousuo_btn" class="search_btn_ss">搜索</a>
						</div>
						<div class="blank1"></div>
					</div>
					<div class="f_r busy_yh">
			  			<img src="./上海农家乐_上海农庄_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农家乐_农庄_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/35.gif" />
			  		</div>
				</div>
		</div>
	</div>
	
<div class="blank1"></div>
  <div class="dh_fd">
  <ul class="scrollnews">
	</ul>
	<div class="menu_box">
		<div class="menu">
			<div class="menu white">
				<ul>
				<li><span class="LOGE_text">去农庄,就上第一农庄网</span></li>
												<li onclick="nav(0)" id="n0" class="soso ">
					<a href="http://www.01nz.com.cn/" target="">首页</a>
				</li>
												<li onclick="nav(1)" id="n1" class="soso ">
					<a href="http://www.01nz.com.cn/targeting" target="">农家推荐</a>
				</li>
												<li onclick="nav(2)" id="n2" class="soso ">
					<a href="http://xianlu.01nz.com.cn/" target="">农家行</a>
				</li>
												<li onclick="nav(3)" id="n3" class="soso ">
					<a href="http://www.01nz.com.cn/farm" target="">农庄</a>
				</li>
												<li onclick="nav(4)" id="n4" class="soso ">
					<a href="http://www.01nz.com.cn/farmhouse" target="">农家乐</a>
				</li>
												<li onclick="nav(5)" id="n5" class="soso ">
					<a href="http://www.01nz.com.cn/biotope" target="">生态园</a>
				</li>
												<li onclick="nav(6)" id="n6" class="soso ">
					<a href="http://www.01nz.com.cn/fishing" target="">垂钓场</a>
				</li>
								 
				 <li class="zhuanti_dh" style="float:right;"><a href="http://www.01nz.com.cn/discover" target="_blank">专题</a></li>
				</ul>
			</div>
		</div>
	</div><!--end 导航-->
  </div>--%>
	
	<div class="wraps">
		
<script type="text/javascript" src="../Scripts/Products/lang.js"></script>
	<script type="text/javascript">
var APP_ROOT = '';
var CART_URL = '/cart';
var CART_CHECK_URL = '/cart-check';
var LOADER_IMG = 'http://sh.01nz.com.cn/app/Tpl/fanwe/images/lazy_loading.gif';
var ERROR_IMG = 'http://sh.01nz.com.cn/app/Tpl/fanwe/images/image_err.gif';
</script>


 
<script type="text/javascript">
	var is_order_show = false;
</script>
<script type="text/javascript" src="../Scripts/Products/ca3e4166f3f1cd8619807edc574f075c.js"></script>
<link rel="stylesheet" type="text/css" href="../Content/Products/6405f1b57f28bc36716e3be90105a5cb.css">
	<div class="wrap">
	  <ul class="main_nav">
		 <li class="all_class nz_jsfudong ">
		   <div class="class_con" style="height:45px; width:219px;">
			 <dl class="index_fenlei nz_city" style="border: none;">
				<dt class="csqh" id="sc_1"><span class="spa">您现在 </span>上海&nbsp;&nbsp;&nbsp;<span class="spa2">更换城市</span></dt>
				<dd class="sub_fenlei nz_city_lb" style="display: none;">
			    <div class="chshqh">
								<dl class="chengshi">
				 <dt class="quyu f_l">华北</dt>
				   <dd class="cs_dd f_l">
					  				   	    <a href="http://bj.01nz.com.cn/">北京</a>
					  				   	    <a href="http://tj.01nz.com.cn/">天津</a>
					  				   </dd>
				</dl>
				<div class="blank1"></div>
				<div class="blank1"></div>
				<div class="blank1"></div>
		        								<dl class="chengshi both">
		         <dt class=" quyu f_l">东北</dt>
		           <dd class=" cs_dd f_l">
		               				   	     <a href="http://sy.01nz.com.cn/">沈阳</a>
					   				   	     <a href="http://dl.01nz.com.cn/">大连</a>
					   				    </dd>
		         </dl>
		         <div class="blank1"></div>
				 <div class="blank1"></div>
				 <div class="blank1"></div>
		        		        		        <dl class="chengshi both">
		          <dt class="quyu f_l">华东</dt>
		            <dd class=" cs_dd f_l">
		               				    	  <a href="http://sh.01nz.com.cn/">上海</a>
					   				    	  <a href="http://nj.01nz.com.cn/">南京</a>
					   				    	  <a href="http://hz.01nz.com.cn/">杭州</a>
					   				    	  <a href="http://qingdao.01nz.com.cn/">青岛</a>
					   				    	  <a href="http://nb.01nz.com.cn/">宁波</a>
					   				    	  <a href="http://jn.01nz.com.cn/">济南</a>
					   				    	  <a href="http://suzhou.01nz.com.cn/">苏州</a>
					   				    	  <a href="http://wx.01nz.com.cn/">无锡</a>
					   				    	  <a href="http://hf.01nz.com.cn/">合肥</a>
					   				    	  <a href="http://wf.01nz.com.cn/">潍坊</a>
					   				    	  <a href="http://shaoxing.01nz.com.cn/">绍兴</a>
					   				    	  <a href="http://huzhou.01nz.com.cn/">湖州</a>
					   				    	  <a href="http://jx.01nz.com.cn/">嘉兴</a>
					   				    	  <a href="http://jh.01nz.com.cn/">金华</a>
					   				    	  <a href="http://zhenjiang.01nz.com.cn/">镇江</a>
					   				    	  <a href="http://yangzhou.01nz.com.cn/">扬州</a>
					   				    	  <a href="http://rz.01nz.com.cn/">日照</a>
					   				    	  <a href="http://lishui.01nz.com.cn/">丽水</a>
					   				    	  <a href="http://quzhou.01nz.com.cn/">衢州</a>
					   				    	  <a href="http://xuancheng.01nz.com.cn/">宣城</a>
					   				    	  <a href="http://hs.01nz.com.cn/">黄山</a>
					   				    	  <a href="http://sr.01nz.com.cn/">上饶</a>
					   				    	  <a href="http://zhoushan.01nz.com.cn/">舟山</a>
					   					</dd>
		         </dl>
		         <div class="blank1"></div>
				 <div class="blank1"></div>
				 <div class="blank1"></div>
		        		        		        <dl class="chengshi both">
		          <dt class="quyu f_l">中南</dt>
		            <dd class=" cs_dd f_l">
		              				    	 <a href="http://gz.01nz.com.cn/">广州</a>
					  				    	 <a href="http://sz.01nz.com.cn/">深圳</a>
					  				    	 <a href="http://wh.01nz.com.cn/">武汉</a>
					  				    	 <a href="http://cs.01nz.com.cn/">长沙</a>
					  				    	 <a href="http://nn.01nz.com.cn/">南宁</a>
					  				    	 <a href="http://sanya.01nz.com.cn/">三亚</a>
					  					</dd>
		         </dl>
		         <div class="blank1"></div>
				 <div class="blank1"></div>
				 <div class="blank1"></div>
		         		         		         <dl class="chengshi both">
		           <dt class="quyu f_l">西南</dt>
		             <dd class="cs_dd f_l">
		               					      <a href="http://cd.01nz.com.cn/">成都</a>
					   					      <a href="http://cq.01nz.com.cn/">重庆</a>
					   					      <a href="http://km.01nz.com.cn/">昆明</a>
					   					      <a href="http://zy.01nz.com.cn/">遵义</a>
					   					 </dd>
		          </dl>
		          <div class="blank1"></div>
				  <div class="blank1"></div>
				  <div class="blank1"></div>
		          		          		          <dl class="chengshi both">
		            <dt class="quyu f_l">西北</dt>
		              <dd class="cs_dd f_l">
		               					   	   <a href="http://xa.01nz.com.cn/">西安</a>
					   		              </dd>
		           </dl>
		           <div class="blank1"></div>
				   <div class="blank1"></div>
				   <div class="blank1"></div>
		           		           <div class="city_gd"><a href="http://sh.01nz.com.cn/city">更多</a></div>
		          </div>
			     </dd>
		       </dl>
				</div>
			</li>
		</ul>	
	</div>
	<div class="in_center">
		<div class="index_left f_l">	
			<div class="store_quxian1">
				<div class="blank"></div>
				<div align="center" class="quxi_nk">
				<div class="quxi_title f_l"> 区/县</div>
				<div class="blank1"></div>
				<ul>
												<li class=" f_l quxian_zht">
					<a href="http://sh.01nz.com.cn/houselb/aid-97" title="崇明" target="_blank">
					崇明县</a>
				</li>
																<li class=" f_l quxian_zht">
					<a href="http://sh.01nz.com.cn/houselb/aid-98" title="奉贤" target="_blank">
					奉贤区</a>
				</li>
																<li class=" f_l quxian_zht">
					<a href="http://sh.01nz.com.cn/houselb/aid-99" title="南汇" target="_blank">
					南汇区</a>
				</li>
																<li class=" f_l quxian_zht">
					<a href="http://sh.01nz.com.cn/houselb/aid-100" title="青浦" target="_blank">
					青浦区</a>
				</li>
																<li class=" f_l quxian_zht">
					<a href="http://sh.01nz.com.cn/houselb/aid-101" title="松江" target="_blank">
					松江区</a>
				</li>
																<li class=" f_l quxian_zht">
					<a href="http://sh.01nz.com.cn/houselb/aid-102" title="金山" target="_blank">
					金山区</a>
				</li>
																<li class=" f_l quxian_zht">
					<a href="http://sh.01nz.com.cn/houselb/aid-103" title="浦东" target="_blank">
					浦东新区</a>
				</li>
																<li class=" f_l quxian_zht">
					<a href="http://sh.01nz.com.cn/houselb/aid-104" title="嘉定" target="_blank">
					嘉定区</a>
				</li>
																<li class=" f_l quxian_zht">
					<a href="http://sh.01nz.com.cn/houselb/aid-105" title="宝山" target="_blank">
					宝山区</a>
				</li>
																<li class=" f_l quxian_zht">
					<a href="http://sh.01nz.com.cn/houselb/aid-106" title="闵行" target="_blank">
					闵行区</a>
				</li>
																																																																																				</ul>
				<div class="clear"></div>
				<div class="blank"></div>
				</div>
			</div>
			<div class="blank"></div>
			<div class="blank"></div>
			<div class="store_xiangmu">
				<div class="title_nz"><span class="cx f_l"></span>全国农家乐</div>
				<div class="neirong_city">
											<a href="http://bj.01nz.com.cn/houselb" class="rmhong" target="_blank">北京</a>
					 						<a href="http://sh.01nz.com.cn/houselb" class="rmhong" target="_blank">上海</a>
					 						<a href="http://gz.01nz.com.cn/houselb" target="_blank">广州</a>
					 						<a href="http://sz.01nz.com.cn/houselb" target="_blank">深圳</a>
					 						<a href="http://tj.01nz.com.cn/houselb" class="rmhong" target="_blank">天津</a>
					 						<a href="http://nj.01nz.com.cn/houselb" class="rmhong" target="_blank">南京</a>
					 						<a href="http://wh.01nz.com.cn/houselb" target="_blank">武汉</a>
					 						<a href="http://sy.01nz.com.cn/houselb" target="_blank">沈阳</a>
					 						<a href="http://xa.01nz.com.cn/houselb" target="_blank">西安</a>
					 						<a href="http://cd.01nz.com.cn/houselb" target="_blank">成都</a>
					 						<a href="http://cq.01nz.com.cn/houselb" target="_blank">重庆</a>
					 						<a href="http://hz.01nz.com.cn/houselb" class="rmhong" target="_blank">杭州</a>
					 						<a href="http://qingdao.01nz.com.cn/houselb" target="_blank">青岛</a>
					 						<a href="http://dl.01nz.com.cn/houselb" target="_blank">大连</a>
					 						<a href="http://nb.01nz.com.cn/houselb" target="_blank">宁波</a>
					 						<a href="http://jn.01nz.com.cn/houselb" class="rmhong" target="_blank">济南</a>
					 						<a href="http://cs.01nz.com.cn/houselb" target="_blank">长沙</a>
					 						<a href="http://km.01nz.com.cn/houselb" target="_blank">昆明</a>
					 						<a href="http://suzhou.01nz.com.cn/houselb" class="rmhong" target="_blank">苏州</a>
					 						<a href="http://wx.01nz.com.cn/houselb" target="_blank">无锡</a>
					 						<a href="http://nn.01nz.com.cn/houselb" target="_blank">南宁</a>
					 						<a href="http://hf.01nz.com.cn/houselb" target="_blank">合肥</a>
					 						<a href="http://wf.01nz.com.cn/houselb" target="_blank">潍坊</a>
					 						<a href="http://shaoxing.01nz.com.cn/houselb" target="_blank">绍兴</a>
					 						<a href="http://huzhou.01nz.com.cn/houselb" target="_blank">湖州</a>
					 						<a href="http://jx.01nz.com.cn/houselb" target="_blank">嘉兴</a>
					 						<a href="http://jh.01nz.com.cn/houselb" target="_blank">金华</a>
					 						<a href="http://zhenjiang.01nz.com.cn/houselb" target="_blank">镇江</a>
					 						<a href="http://yangzhou.01nz.com.cn/houselb" target="_blank">扬州</a>
					 						<a href="http://rz.01nz.com.cn/houselb" target="_blank">日照</a>
					 						<a href="http://lishui.01nz.com.cn/houselb" target="_blank">丽水</a>
					 						<a href="http://quzhou.01nz.com.cn/houselb" target="_blank">衢州</a>
					 						<a href="http://zy.01nz.com.cn/houselb" target="_blank">遵义</a>
					 						<a href="http://sanya.01nz.com.cn/houselb" target="_blank">三亚</a>
					 						<a href="http://xuancheng.01nz.com.cn/houselb" target="_blank">宣城</a>
					 						<a href="http://hs.01nz.com.cn/houselb" target="_blank">黄山</a>
					 						<a href="http://sr.01nz.com.cn/houselb" target="_blank">上饶</a>
					 						<a href="http://zhoushan.01nz.com.cn/houselb" target="_blank">舟山</a>
					 				</div>
				<div class="blank"></div>
			</div>
			<div class="blank"></div>
			<div class="store_quxian">
				<div class="blank"></div>
				<div class="chuxing_title f_l"> 月度出行指南</div>
				 					<div class="blank"></div>
					<div class="yuejituc"><span class="yuejizn">04</span>
					<span class="xiangmu_nr f_r">
											<a href="http://sh.01nz.com.cn/houselb/tid-116" class="f_l" target="_blank">垂钓</a>
										</span></div>
					
				 					<div class="blank"></div>
					<div class="yuejituc"><span class="yuejizn">05</span>
					<span class="xiangmu_nr f_r">
											<a href="http://sh.01nz.com.cn/houselb/tid-90" class="f_l" target="_blank">攀岩</a>
											<a href="http://sh.01nz.com.cn/houselb/tid-115" class="f_l" target="_blank">采摘</a>
											<a href="http://sh.01nz.com.cn/houselb/tid-116" class="f_l" target="_blank">垂钓</a>
											<a href="http://sh.01nz.com.cn/houselb/tid-100" class="f_l" target="_blank">游泳</a>
											<a href="http://sh.01nz.com.cn/houselb/tid-109" class="f_l" target="_blank">篝火</a>
											<a href="http://sh.01nz.com.cn/houselb/tid-89" class="f_l" target="_blank">漂流</a>
										</span></div>
					
				 					<div class="blank"></div>
					<div class="yuejituc"><span class="yuejizn">06</span>
					<span class="xiangmu_nr f_r">
											<a href="http://sh.01nz.com.cn/houselb/tid-114" class="f_l" target="_blank">烧烤</a>
											<a href="http://sh.01nz.com.cn/houselb/tid-101" class="f_l" target="_blank">健身房</a>
											<a href="http://sh.01nz.com.cn/houselb/tid-116" class="f_l" target="_blank">垂钓</a>
											<a href="http://sh.01nz.com.cn/houselb/tid-112" class="f_l" target="_blank">棋牌</a>
											<a href="http://sh.01nz.com.cn/houselb/tid-91" class="f_l" target="_blank">真人CS</a>
											<a href="http://sh.01nz.com.cn/houselb/tid-87" class="f_l" target="_blank">骑马</a>
										</span></div>
					
				 				<div class="blank"></div>
			</div>
			<div class="blank"></div>
			<div class="xfzbaozhang">
				<div class="blank"></div>
				<div class="jinbei f_l"></div>
					<div class="baozhang_tit f_l">消费保障</div>
					<div class="hgh_4 clear"></div>
					<div class="baozhang_jsh">第一农庄网在线预定的商家均签署诚信协议，如果商家未能履行预定服务，我们将先行赔付，以保障消费者协议权益。</div>
					<div class="blank"></div>
					<div class="blank"></div>
				
				<div class="jiage f_l"></div>
					<div class="baozhang_tit f_l">价格保障</div>
					<div class="hgh_4 clear"></div>
					<div class="baozhang_jsh">如果您通过 www.01nz.com.cn 在线完成预订后，于 24 小时内发现其他网站同一内容的相同产品提供更低价格，您可在这一更低产品的基础上享受额外九折优惠。</div>
					<div class="blank"></div>
					<div class="blank"></div>
				
</div>			<div class="blank"></div>
			<div class="xfzbaozhang">
			<div class="dianhua">
					<div class="dianhua_xq">400-021-3158</div>
					<div class="hgh_4"></div>
					<div class="fuwushijian">周一到周日：9:00-18:00</div>
					<div class="blank"></div>
				</div>
				<div class="copyright">
				<div class="blank"></div>				
								</div>
				<script type="text/javascript">
					$(document).ready(function(){
						$("#QQkf a:eq(0)").html('<img alt="QQ客服咨询预订" src="http://sh.01nz.com.cn/app/Tpl/fanwe/images/ydzx.png">');
						$("#QQkf a:eq(1)").html('<img alt="QQ客服团队业务" src="http://sh.01nz.com.cn/app/Tpl/fanwe/images/ttyw.png">');
						$("#QQkf a:eq(2)").html('<img alt="QQ客服售后服务" src="http://sh.01nz.com.cn/app/Tpl/fanwe/images/shfw.png">');
						$("#QQkf a:eq(3)").html('<img alt="QQ客服商家入驻" src="http://sh.01nz.com.cn/app/Tpl/fanwe/images/sjrz.png">');
					});
				</script>
				<div align="center" class="fengehuix"></div>
				<div class="fankui">
					<div class="yjfankui">意见反馈</div>
					<div class="hgh_4"></div>
					<div class="yjfankui_nr">欢迎您提出宝贵的建议和意见，我们会仔细阅读，您的支持是对我们最大鼓励和帮助！</div>
					<div class="blank"></div>
					<div class="blank"></div>
				</div>
</div>			<div class="blank"></div>
			<div class="blank"></div>
		</div>
		<div class="store_middle f_r">
		   <div id="main_adv_box" class="main_adv_box f_l">
			  <div id="main_adv_img" class="main_adv_img">
				<img src="../Images/Products/53882e60e81a8.jpg" title="人从众农家乐" alt="人从众农家乐" border="0" height="306" width="758" />
			    <img src="../Images/Products/538830f9e3dfd.jpg" title="浙西大峡谷老鲁农庄" alt="浙西大峡谷老鲁农庄" border="0" height="306" width="758" />
				<img src="../Images/Products/5388375bd90ed.jpg" title="前卫村叔季嘉苑" alt="前卫村叔季嘉苑" border="0" height="306" width="758" />
				<img src="../Images/Products/538836ab70c0f.jpg" title="日照永春农家乐" alt="日照永春农家乐" border="0" height="306" width="758" />				
			  </div>
			  <div id="content">
				 <div id="main f_l" class="mains">
					<div id="container">
						<div class="flexslider">
			    			<ul class="slides" id="stodes">
							   							   	<li style="width: 100%; float: left; margin-right: -100%; display: none;">
							   		<a href="http://jh.01nz.com.cn/farm/916.html" target="_blank"><img src="../Images/Products/53882e60e81a8.jpg" title="人从众农家乐" alt="人从众农家乐" border="0" height="306" width="758" /></a>
							   	</li>
							   							   	<li style="width: 100%; float: left; margin-right: -100%; display: list-item;">
							   		<a href="http://hz.01nz.com.cn/farm/715.html" target="_blank"><img src="../Images/Products/538830f9e3dfd.jpg" title="浙西大峡谷老鲁农庄" alt="浙西大峡谷老鲁农庄" border="0" height="306" width="758" /></a>
							   	</li>
							   							   	<li style="width: 100%; float: left; margin-right: -100%;">
							   		<a href="http://sh.01nz.com.cn/farm/131.html" target="_blank"><img src="../Images/Products/5388375bd90ed.jpg" title="前卫村叔季嘉苑" alt="前卫村叔季嘉苑" border="0" height="306" width="758" /></a>
							   	</li>
							   							   	<li style="width: 100%; float: left; margin-right: -100%;">
							   		<a href="http://rz.01nz.com.cn/farm/1108.html" target="_blank"><img src="../Images/Products/538836ab70c0f.jpg" title="日照永春农家乐" alt="日照永春农家乐" border="0" height="306" width="758" /></a>
							   	</li>
							   							</ul>
		        			<ol class="flex-control-nav">
		        					        			<li class="p9">人从众农家乐</li>
		        					        			<li class="p9 active">浙西大峡谷老鲁农庄</li>
		        					        			<li class="p9">前卫村叔季嘉苑</li>
		        					        			<li class="p9">日照永春农家乐</li>
		        										</ol>
			  			</div>
					</div>
				 </div>
	  			</div>
		   </div>
		   <div class="hg_25 clear"></div>
	    <div class="store_xianjin">
		<div class="xjtore_top">
			<div class="title">农家住宿</div>
			<ul class="down_store" id="index_purpose">
									<li class="p_1 mr_tj"><a href="javascript:void(0);" onclick="load_farmhouselx_store(1)">客房</a></li>
									<li class="p_2 "><a href="javascript:void(0);" onclick="load_farmhouselx_store(2)">农家</a></li>
									<li class="p_3 "><a href="javascript:void(0);" onclick="load_farmhouselx_store(3)">木屋</a></li>
									<li class="p_6 "><a href="javascript:void(0);" onclick="load_farmhouselx_store(6)">无</a></li>
									<li class="p_7 "><a href="javascript:void(0);" onclick="load_farmhouselx_store(7)">别墅</a></li>
							</ul>
		</div>
		<div class="xjtore_con" id="ajax_farmhouse_store">
						<div class="s_info">
				<a href="http://sh.01nz.com.cn/farm/131.html" target="_blank"><img src="./上海农家乐_上海农庄_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农家乐_农庄_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/52807b105cb1b_367x254.jpg" alt="前卫村叔季嘉苑" /></a>
				<p class="store_name"><span class="people f_r">￥&nbsp;<span class="peoda">150</span>&nbsp;<span class="peohui">起</span></span><a href="http://sh.01nz.com.cn/farm/131.html" class="f_l" target="_blank">前卫村叔季嘉…</a></p>
			</div>
						<div class="s_info">
				<a href="http://sh.01nz.com.cn/farm/631.html" target="_blank"><img src="./上海农家乐_上海农庄_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农家乐_农庄_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/532f8c883ccb9_367x254.jpg" alt="小平农家乐" /></a>
				<p class="store_name"><span class="people f_r">￥&nbsp;<span class="peoda">70</span>&nbsp;<span class="peohui">起</span></span><a href="http://sh.01nz.com.cn/farm/631.html" class="f_l" target="_blank">小平农家乐</a></p>
			</div>
						<div class="s_info">
				<a href="http://sh.01nz.com.cn/farm/1013.html" target="_blank"><img src="./上海农家乐_上海农庄_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农家乐_农庄_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/5360a3a69bfd1_367x254.jpg" alt="裕晨农家乐" /></a>
				<p class="store_name"><span class="people f_r">￥&nbsp;<span class="peoda">100</span>&nbsp;<span class="peohui">起</span></span><a href="http://sh.01nz.com.cn/farm/1013.html" class="f_l" target="_blank">裕晨农家乐</a></p>
			</div>
						<div class="s_info">
				<a href="http://sh.01nz.com.cn/farm/93.html" target="_blank"><img src="./上海农家乐_上海农庄_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农家乐_农庄_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/527a049a434ac_367x254.jpg" alt="金平农家乐" /></a>
				<p class="store_name"><span class="people f_r">￥&nbsp;<span class="peoda">128</span>&nbsp;<span class="peohui">起</span></span><a href="http://sh.01nz.com.cn/farm/93.html" class="f_l" target="_blank">金平农家乐</a></p>
			</div>
						<div class="s_info">
				<a href="http://sh.01nz.com.cn/farm/106.html" target="_blank"><img src="./上海农家乐_上海农庄_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农家乐_农庄_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/527b5e69d7a65_367x254.jpg" alt="晶麦子饭庄" /></a>
				<p class="store_name"><span class="people f_r">￥&nbsp;<span class="peoda">128</span>&nbsp;<span class="peohui">起</span></span><a href="http://sh.01nz.com.cn/farm/106.html" class="f_l" target="_blank">晶麦子饭庄</a></p>
			</div>
						<div class="s_info">
				<a href="http://sh.01nz.com.cn/farm/163.html" target="_blank"><img src="./上海农家乐_上海农庄_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农家乐_农庄_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/5283442de3c46_367x254.jpg" alt="老范农家乐" /></a>
				<p class="store_name"><span class="people f_r">￥&nbsp;<span class="peoda">100</span>&nbsp;<span class="peohui">起</span></span><a href="http://sh.01nz.com.cn/farm/163.html" class="f_l" target="_blank">老范农家乐</a></p>
			</div>
						<div class="s_info">
				<a href="http://sh.01nz.com.cn/farm/136.html" target="_blank"><img src="./上海农家乐_上海农庄_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农家乐_农庄_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/52808f7530691_367x254.jpg" alt="黄家花园饭庄" /></a>
				<p class="store_name"><span class="people f_r">￥&nbsp;<span class="peoda">90</span>&nbsp;<span class="peohui">起</span></span><a href="http://sh.01nz.com.cn/farm/136.html" class="f_l" target="_blank">黄家花园饭庄</a></p>
			</div>
						<div class="s_info">
				<a href="http://sh.01nz.com.cn/farm/173.html" target="_blank"><img src="./上海农家乐_上海农庄_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农家乐_农庄_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/528479d9a2d1e_367x254.jpg" alt="多平饭庄" /></a>
				<p class="store_name"><span class="people f_r">￥&nbsp;<span class="peoda">100</span>&nbsp;<span class="peohui">起</span></span><a href="http://sh.01nz.com.cn/farm/173.html" class="f_l" target="_blank">多平饭庄</a></p>
			</div>
						<div class="clear"></div>
		</div>
	</div>
	<div class="hg_25 both"></div>
	 <div class="store_xianjin">
		<div class="xjtore_top">
			<div class="title">农家小炒</div>
		</div>
		<div class="xjtore_con">
						<div class="s_info">
				<a href="http://wx.01nz.com.cn/farm/594.html" target="_blank"><img src="./上海农家乐_上海农庄_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农家乐_农庄_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/53884425cea9a_180x110.jpg" alt="新素湖鲜馆7~10人套餐" /></a><br />
				<p class="store_name"><a href="http://sh.01nz.com.cn/farm/594.html" target="_blank">【新素湖鲜馆】清蒸白鱼</a></p>
				<span class="people f_r">￥&nbsp;<span class="peoda">1050</span>&nbsp;<span class="peohui">起/桌</span></span>
			</div>
						<div class="s_info">
				<a href="http://sh.01nz.com.cn/farm/141.html" target="_blank"><img src="./上海农家乐_上海农庄_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农家乐_农庄_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/5388418a5541c_180x110.jpg" alt="笙平农家乐7~10套餐" /></a><br />
				<p class="store_name"><a href="http://sh.01nz.com.cn/farm/141.html" target="_blank">【上海崇明笙平农家乐】崇明大闸蟹</a></p>
				<span class="people f_r">￥&nbsp;<span class="peoda">419</span>&nbsp;<span class="peohui">起/桌</span></span>
			</div>
						<div class="s_info">
				<a href="http://xuancheng.01nz.com.cn/farm/609.html" target="_blank"><img src="./上海农家乐_上海农庄_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农家乐_农庄_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/53883d1073fd3_180x110.jpg" alt="窑山农家乐7~10人套餐" /></a><br />
				<p class="store_name"><a href="http://sh.01nz.com.cn/farm/609.html" target="_blank">【宁国窑山农家乐】特色锅仔</a></p>
				<span class="people f_r">￥&nbsp;<span class="peoda">400</span>&nbsp;<span class="peohui">起/桌</span></span>
			</div>
						<div class="s_info">
				<a href="http://sh.01nz.com.cn/farm/131.html" target="_blank"><img src="./上海农家乐_上海农庄_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农家乐_农庄_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/53883ab38a6d7_180x110.jpg" alt="前卫村叔季嘉苑10人餐（B）" /></a><br />
				<p class="store_name"><a href="http://sh.01nz.com.cn/farm/131.html" target="_blank">【前卫村叔季嘉苑】爆炒螺蛳</a></p>
				<span class="people f_r">￥&nbsp;<span class="peoda">760</span>&nbsp;<span class="peohui">起/桌</span></span>
			</div>
						<div class="taocan clear">
									<p><a href="http://wx.01nz.com.cn/farm/594.html" class="f_l" target="_blank">【新素湖鲜馆2~3人套餐】</a><span class="people f_r">￥&nbsp;<span class="peoda">220</span>&nbsp;<span class="peohui">起/桌</span></span></p>
									<p><a href="http://wx.01nz.com.cn/farm/594.html" class="f_l" target="_blank">【新素湖鲜馆4~6人套餐】</a><span class="people f_r">￥&nbsp;<span class="peoda">420</span>&nbsp;<span class="peohui">起/桌</span></span></p>
									<p><a href="http://wx.01nz.com.cn/farm/594.html" class="f_l" target="_blank">【新素湖鲜馆7~10人套餐】清蒸白鱼</a><span class="people f_r">￥&nbsp;<span class="peoda">1050</span>&nbsp;<span class="peohui">起/桌</span></span></p>
									<p><a href="http://sh.01nz.com.cn/farm/141.html" class="f_l" target="_blank">【笙平农家乐2~3人套餐】</a><span class="people f_r">￥&nbsp;<span class="peoda">129</span>&nbsp;<span class="peohui">起/桌</span></span></p>
									<p><a href="http://sh.01nz.com.cn/farm/141.html" class="f_l" target="_blank">【笙平农家乐4~6人套餐】</a><span class="people f_r">￥&nbsp;<span class="peoda">259</span>&nbsp;<span class="peohui">起/桌</span></span></p>
									<p><a href="http://sh.01nz.com.cn/farm/141.html" class="f_l" target="_blank">【笙平农家乐7~10套餐】崇明大闸蟹</a><span class="people f_r">￥&nbsp;<span class="peoda">419</span>&nbsp;<span class="peohui">起/桌</span></span></p>
									<p><a href="http://xuancheng.01nz.com.cn/farm/609.html" class="f_l" target="_blank">【窑山农家乐2~3人套餐】</a><span class="people f_r">￥&nbsp;<span class="peoda">180</span>&nbsp;<span class="peohui">起/桌</span></span></p>
									<p><a href="http://hz.01nz.com.cn/farm/641.html" class="f_l" target="_blank">【兰坪农家套餐A（7~10）人】</a><span class="people f_r">￥&nbsp;<span class="peoda">270</span>&nbsp;<span class="peohui">起/桌</span></span></p>
									<p><a href="http://xuancheng.01nz.com.cn/farm/609.html" class="f_l" target="_blank">【窑山农家乐4~6人套餐】</a><span class="people f_r">￥&nbsp;<span class="peoda">260</span>&nbsp;<span class="peohui">起/桌</span></span></p>
									<p><a href="http://xuancheng.01nz.com.cn/farm/609.html" class="f_l" target="_blank">【窑山农家乐7~10人套餐】特色锅仔</a><span class="people f_r">￥&nbsp;<span class="peoda">400</span>&nbsp;<span class="peohui">起/桌</span></span></p>
									<p><a href="http://hz.01nz.com.cn/farm/641.html" class="f_l" target="_blank">【兰坪农家套餐B（7~10）人】</a><span class="people f_r">￥&nbsp;<span class="peoda">432</span>&nbsp;<span class="peohui">起/桌</span></span></p>
									<p><a href="http://sh.01nz.com.cn/farm/131.html" class="f_l" target="_blank">【前卫村叔季嘉苑10人餐（A）】</a><span class="people f_r">￥&nbsp;<span class="peoda">480</span>&nbsp;<span class="peohui">起/桌</span></span></p>
									<p><a href="http://sh.01nz.com.cn/farm/131.html" class="f_l" target="_blank">【前卫村叔季嘉苑10人餐（B）】爆炒螺蛳</a><span class="people f_r">￥&nbsp;<span class="peoda">760</span>&nbsp;<span class="peohui">起/桌</span></span></p>
									<p><a href="http://zhoushan.01nz.com.cn/farm/738.html" class="f_l" target="_blank">【东荷嘉园7~10人套餐】</a><span class="people f_r">￥&nbsp;<span class="peoda">700</span>&nbsp;<span class="peohui">起/桌</span></span></p>
							</div>
			<div class="clear"></div>
		</div>
	</div>
	<div class="hg_25 both"></div>
	<script type="text/javascript">
	var Speed_1 = 10; //速度(毫秒)
	var Space_1 = 20; //每次移动(px)
	var PageWidth_1 = 176 * 4; //翻页宽度
	var interval_1 = 5000; //翻页间隔时间
	var fill_1 = 0; //整体移位
	var MoveLock_1 = false;
	var MoveTimeObj_1;
	var MoveWay_1="right";
	var Comp_1 = 0;
	var AutoPlayObj_1=null;
	function GetObj(objName)
	{if(document.getElementById){return eval('document.getElementById("'+objName+'")')}else{return eval('document.all.'+objName)}}
	function AutoPlay_1()
	{clearInterval(AutoPlayObj_1);AutoPlayObj_1=setInterval('ISL_GoDown_1();ISL_StopDown_1();',interval_1)}
	function ISL_GoUp_1()
	{if(MoveLock_1)return;clearInterval(AutoPlayObj_1);MoveLock_1=true;MoveWay_1="left";MoveTimeObj_1=setInterval('ISL_ScrUp_1();',Speed_1);}
	function ISL_StopUp_1()
	{if(MoveWay_1 == "right"){return};clearInterval(MoveTimeObj_1);if((GetObj('ISL_Cont_1').scrollLeft-fill_1)%PageWidth_1!=0){Comp_1=fill_1-(GetObj('ISL_Cont_1').scrollLeft%PageWidth_1);CompScr_1()}else{MoveLock_1=false}
	AutoPlay_1()}
	function ISL_ScrUp_1()
	{if(GetObj('ISL_Cont_1').scrollLeft<=0){GetObj('ISL_Cont_1').scrollLeft=GetObj('ISL_Cont_1').scrollLeft+GetObj('List1_1').offsetWidth}
	GetObj('ISL_Cont_1').scrollLeft-=Space_1}
	function ISL_GoDown_1()
	{clearInterval(MoveTimeObj_1);if(MoveLock_1)return;clearInterval(AutoPlayObj_1);MoveLock_1=true;MoveWay_1="right";ISL_ScrDown_1();MoveTimeObj_1=setInterval('ISL_ScrDown_1()',Speed_1)}
	function ISL_StopDown_1()
	{if(MoveWay_1 == "left"){return};clearInterval(MoveTimeObj_1);if(GetObj('ISL_Cont_1').scrollLeft%PageWidth_1-(fill_1>=0?fill_1:fill_1+1)!=0){Comp_1=PageWidth_1-GetObj('ISL_Cont_1').scrollLeft%PageWidth_1+fill_1;CompScr_1()}else{MoveLock_1=false}
	AutoPlay_1()}
	function ISL_ScrDown_1()
	{if(GetObj('ISL_Cont_1').scrollLeft>=GetObj('List1_1').scrollWidth){GetObj('ISL_Cont_1').scrollLeft=GetObj('ISL_Cont_1').scrollLeft-GetObj('List1_1').scrollWidth}
	GetObj('ISL_Cont_1').scrollLeft+=Space_1}
	function CompScr_1()
	{if(Comp_1==0){MoveLock_1=false;return}
	var num,TempSpeed=Speed_1,TempSpace=Space_1;if(Math.abs(Comp_1)<PageWidth_1/2){TempSpace=Math.round(Math.abs(Comp_1/Space_1));if(TempSpace<1){TempSpace=1}}
	if(Comp_1<0){if(Comp_1<-TempSpace){Comp_1+=TempSpace;num=TempSpace}else{num=-Comp_1;Comp_1=0}
	GetObj('ISL_Cont_1').scrollLeft-=num;setTimeout('CompScr_1()',TempSpeed)}else{if(Comp_1>TempSpace){Comp_1-=TempSpace;num=TempSpace}else{num=Comp_1;Comp_1=0}
	GetObj('ISL_Cont_1').scrollLeft+=num;setTimeout('CompScr_1()',TempSpeed)}}
	function picrun_ini(){
	GetObj("List2_1").innerHTML=GetObj("List1_1").innerHTML;
	GetObj('ISL_Cont_1').scrollLeft=fill_1>=0?fill_1:GetObj('List1_1').scrollWidth-Math.abs(fill_1);
	GetObj("ISL_Cont_1").onmouseover=function(){clearInterval(AutoPlayObj_1)}
	GetObj("ISL_Cont_1").onmouseout=function(){AutoPlay_1()}
	AutoPlay_1();
	}
	</script>
	 <div class="store_xianjin">
		<div class="xjtore_top">
			<div class="title">热门农家乐</div>
		</div>
		<div class="xjtore_con">
			<!-- picrotate_left start  -->
			<div class="blk_18 f_l"> <a class="LeftBotton" onmousedown="ISL_GoUp_1()" onmouseup="ISL_StopUp_1()" onmouseout="ISL_StopUp_1()" href="javascript:void(0);" target="_self"></a>
			  <div class="pcont" id="ISL_Cont_1">
			    <div class="ScrCont">
			      <div id="List1_1">
			        <!-- piclist begin -->
													<a href="http://sh.01nz.com.cn/farm/93.html" target="_blank" class="pl"><img src="./上海农家乐_上海农庄_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农家乐_农庄_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/527a049a434ac_154x110.jpg" alt="金平农家乐" />
							<div class="njl_nr_name">
								<div align="center" class="nr_text">金平农家乐</div>
							</div>
							</a>
													<a href="http://sh.01nz.com.cn/farm/106.html" target="_blank" class="pl"><img src="./上海农家乐_上海农庄_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农家乐_农庄_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/527b5e69d7a65_154x110.jpg" alt="晶麦子饭庄" />
							<div class="njl_nr_name">
								<div align="center" class="nr_text">晶麦子饭庄</div>
							</div>
							</a>
													<a href="http://sh.01nz.com.cn/farm/131.html" target="_blank" class="pl"><img src="./上海农家乐_上海农庄_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农家乐_农庄_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/52807b105cb1b_154x110.jpg" alt="前卫村叔季嘉苑" />
							<div class="njl_nr_name">
								<div align="center" class="nr_text">前卫村叔季嘉苑</div>
							</div>
							</a>
													<a href="http://sh.01nz.com.cn/farm/163.html" target="_blank" class="pl"><img src="./上海农家乐_上海农庄_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农家乐_农庄_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/5283442de3c46_154x110.jpg" alt="老范农家乐" />
							<div class="njl_nr_name">
								<div align="center" class="nr_text">老范农家乐</div>
							</div>
							</a>
													<a href="http://sh.01nz.com.cn/farm/133.html" target="_blank" class="pl"><img src="./上海农家乐_上海农庄_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农家乐_农庄_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/528081565ab4c_154x110.jpg" alt="瀛欣农家乐" />
							<div class="njl_nr_name">
								<div align="center" class="nr_text">瀛欣农家乐</div>
							</div>
							</a>
													<a href="http://sh.01nz.com.cn/farm/135.html" target="_blank" class="pl"><img src="./上海农家乐_上海农庄_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农家乐_农庄_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/53339727b2398_154x110.jpg" alt="古瀛饭庄" />
							<div class="njl_nr_name">
								<div align="center" class="nr_text">古瀛饭庄</div>
							</div>
							</a>
													<a href="http://sh.01nz.com.cn/farm/136.html" target="_blank" class="pl"><img src="./上海农家乐_上海农庄_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农家乐_农庄_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/52808f7530691_154x110.jpg" alt="黄家花园饭庄" />
							<div class="njl_nr_name">
								<div align="center" class="nr_text">黄家花园饭庄</div>
							</div>
							</a>
													<a href="http://sh.01nz.com.cn/farm/141.html" target="_blank" class="pl"><img src="./上海农家乐_上海农庄_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农家乐_农庄_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/553e30da866a7_154x110.jpg" alt="上海崇明笙平农家乐" />
							<div class="njl_nr_name">
								<div align="center" class="nr_text">上海崇明笙平农家乐</div>
							</div>
							</a>
													<a href="http://sh.01nz.com.cn/farm/631.html" target="_blank" class="pl"><img src="./上海农家乐_上海农庄_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农家乐_农庄_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/532f8c883ccb9_154x110.jpg" alt="小平农家乐" />
							<div class="njl_nr_name">
								<div align="center" class="nr_text">小平农家乐</div>
							</div>
							</a>
													<a href="http://sh.01nz.com.cn/farm/1013.html" target="_blank" class="pl"><img src="./上海农家乐_上海农庄_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农家乐_农庄_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/5360a3a69bfd1_154x110.jpg" alt="裕晨农家乐" />
							<div class="njl_nr_name">
								<div align="center" class="nr_text">裕晨农家乐</div>
							</div>
							</a>
													<a href="http://sh.01nz.com.cn/farm/1037.html" target="_blank" class="pl"><img src="./上海农家乐_上海农庄_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农家乐_农庄_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/5369ca29c8f4a_154x110.jpg" alt="顾伯伯农家乐" />
							<div class="njl_nr_name">
								<div align="center" class="nr_text">顾伯伯农家乐</div>
							</div>
							</a>
													<a href="http://sh.01nz.com.cn/farm/1127.html" target="_blank" class="pl"><img src="./上海农家乐_上海农庄_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农家乐_农庄_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/538801c210753_154x110.jpg" alt="先晨农家乐" />
							<div class="njl_nr_name">
								<div align="center" class="nr_text">先晨农家乐</div>
							</div>
							</a>
									        <!-- piclist end -->
			      </div>
			      <div id="List2_1">
			        <!-- piclist begin -->
													<a href="http://sh.01nz.com.cn/farm/93.html" target="_blank" class="pl"><img src="./上海农家乐_上海农庄_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农家乐_农庄_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/527a049a434ac_154x110.jpg" alt="金平农家乐" />
							<div class="njl_nr_name">
								<div align="center" class="nr_text">金平农家乐</div>
							</div>
							</a>
													<a href="http://sh.01nz.com.cn/farm/106.html" target="_blank" class="pl"><img src="./上海农家乐_上海农庄_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农家乐_农庄_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/527b5e69d7a65_154x110.jpg" alt="晶麦子饭庄" />
							<div class="njl_nr_name">
								<div align="center" class="nr_text">晶麦子饭庄</div>
							</div>
							</a>
													<a href="http://sh.01nz.com.cn/farm/131.html" target="_blank" class="pl"><img src="./上海农家乐_上海农庄_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农家乐_农庄_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/52807b105cb1b_154x110.jpg" alt="前卫村叔季嘉苑" />
							<div class="njl_nr_name">
								<div align="center" class="nr_text">前卫村叔季嘉苑</div>
							</div>
							</a>
													<a href="http://sh.01nz.com.cn/farm/163.html" target="_blank" class="pl"><img src="./上海农家乐_上海农庄_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农家乐_农庄_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/5283442de3c46_154x110.jpg" alt="老范农家乐" />
							<div class="njl_nr_name">
								<div align="center" class="nr_text">老范农家乐</div>
							</div>
							</a>
													<a href="http://sh.01nz.com.cn/farm/133.html" target="_blank" class="pl"><img src="./上海农家乐_上海农庄_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农家乐_农庄_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/528081565ab4c_154x110.jpg" alt="瀛欣农家乐" />
							<div class="njl_nr_name">
								<div align="center" class="nr_text">瀛欣农家乐</div>
							</div>
							</a>
													<a href="http://sh.01nz.com.cn/farm/135.html" target="_blank" class="pl"><img src="./上海农家乐_上海农庄_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农家乐_农庄_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/53339727b2398_154x110.jpg" alt="古瀛饭庄" />
							<div class="njl_nr_name">
								<div align="center" class="nr_text">古瀛饭庄</div>
							</div>
							</a>
													<a href="http://sh.01nz.com.cn/farm/136.html" target="_blank" class="pl"><img src="./上海农家乐_上海农庄_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农家乐_农庄_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/52808f7530691_154x110.jpg" alt="黄家花园饭庄" />
							<div class="njl_nr_name">
								<div align="center" class="nr_text">黄家花园饭庄</div>
							</div>
							</a>
													<a href="http://sh.01nz.com.cn/farm/141.html" target="_blank" class="pl"><img src="./上海农家乐_上海农庄_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农家乐_农庄_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/553e30da866a7_154x110.jpg" alt="上海崇明笙平农家乐" />
							<div class="njl_nr_name">
								<div align="center" class="nr_text">上海崇明笙平农家乐</div>
							</div>
							</a>
													<a href="http://sh.01nz.com.cn/farm/631.html" target="_blank" class="pl"><img src="./上海农家乐_上海农庄_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农家乐_农庄_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/532f8c883ccb9_154x110.jpg" alt="小平农家乐" />
							<div class="njl_nr_name">
								<div align="center" class="nr_text">小平农家乐</div>
							</div>
							</a>
													<a href="http://sh.01nz.com.cn/farm/1013.html" target="_blank" class="pl"><img src="./上海农家乐_上海农庄_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农家乐_农庄_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/5360a3a69bfd1_154x110.jpg" alt="裕晨农家乐" />
							<div class="njl_nr_name">
								<div align="center" class="nr_text">裕晨农家乐</div>
							</div>
							</a>
													<a href="http://sh.01nz.com.cn/farm/1037.html" target="_blank" class="pl"><img src="./上海农家乐_上海农庄_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农家乐_农庄_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/5369ca29c8f4a_154x110.jpg" alt="顾伯伯农家乐" />
							<div class="njl_nr_name">
								<div align="center" class="nr_text">顾伯伯农家乐</div>
							</div>
							</a>
													<a href="http://sh.01nz.com.cn/farm/1127.html" target="_blank" class="pl"><img src="./上海农家乐_上海农庄_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农家乐_农庄_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/538801c210753_154x110.jpg" alt="先晨农家乐" />
							<div class="njl_nr_name">
								<div align="center" class="nr_text">先晨农家乐</div>
							</div>
							</a>
									        <!-- piclist end -->
			      </div>
			    </div>
			  </div>
			  <a class="RightBotton" onmousedown="ISL_GoDown_1()" onmouseup="ISL_StopDown_1()" onmouseout="ISL_StopDown_1()" href="javascript:void(0);" target="_self"></a> </div>
			<script type="text/javascript">
			        picrun_ini()
			 </script>
			<!-- picrotate_left end -->
		</div>
	</div>
</div>
	</div>
</div>
<!-- 改版 -->

<div class="blank"></div>
<div id="ftw">
	<div id="ft">
	<!-- 热门城市 -->
				<!-- 区县分类 -->
								<!-- 热门农庄 -->
				<!-- 友情链接 -->
				<!-- 专题友情链接 -->
				<div class="blank"></div>
        <div class="foot_xian"></div>
		<div class="blank"></div>
		<div class="tc">
						<a href="http://sh.01nz.com.cn/sys/id-20" target="_blank">关于我们</a>
						&nbsp;&nbsp;-&nbsp;&nbsp;<a href="http://sh.01nz.com.cn/sys/id-6" target="_blank">加入我们</a>
						&nbsp;&nbsp;-&nbsp;&nbsp;<a href="http://sh.01nz.com.cn/sys/id-30" target="_blank">联系我们</a>
						&nbsp;&nbsp;-&nbsp;&nbsp;<a href="http://sh.01nz.com.cn/sys/id-28" target="_blank">隐私保护</a>
						&nbsp;&nbsp;-&nbsp;&nbsp;<a href="http://sh.01nz.com.cn/sys/id-45" target="_blank">网站地图</a>
						&nbsp;&nbsp;-&nbsp;&nbsp;<a href="http://sh.01nz.com.cn/sys/id-9" target="_blank">商家登录</a>
					</div>
		<div class="blank"></div>
		<div class="beian" align="center">版权所有：上海威和信息科技有限公司  <a href="http://www.miitbeian.gov.cn/" target="_blank">沪ICP备 13043989号-1</a>  电话：400-021-3158 邮箱：mc_01nz@163.com </div>
		<div align="center" class="beian_eng">
             Copyright 2013 www.01nz.com.cn All Rights Reserved.</div>

		<div align="center"><img src="./上海农家乐_上海农庄_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农家乐_农庄_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/xian.jpg" alt="灰线" /></div>
		<div align="center">
			<img src="./上海农家乐_上海农庄_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农家乐_农庄_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/jubao.gif" alt="举报中心" class="img" />
			<img src="./上海农家乐_上海农庄_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农家乐_农庄_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/end_2.gif" alt="官方认证" class="img" />
			<a href="https://www.sgs.gov.cn/lz/licenseLink.do?method=licenceView&amp;entyId=dov73ne2cve0r70m02lemast61960airrs" target="_blank"><img src="./上海农家乐_上海农庄_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农家乐_农庄_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/icon.gif" border="0" /></a>
		    <img src="./上海农家乐_上海农庄_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农家乐_农庄_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/end_3.gif" alt="网络110" class="img" />
			<img border="0" src="./上海农家乐_上海农庄_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农家乐_农庄_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/image_err.gif" />
			<a href="http://shwg.dianping.com/index.html?tp=1.1.20.0.27.LKAvY0C-00-8v9E9&amp;ti=AY74lO" target="_blank"><img border="0" src="./上海农家乐_上海农庄_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农家乐_农庄_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/wg.png" /></a>
		</div>
			<div class="blank"></div>
			<div class="blank"></div>
			<div class="blank"></div>
      </div>
   </div>


	<div id="gotop" style="display: none;"></div>
	<a href="http://sh.01nz.com.cn/cart" target="_blank"><div id="gowu"></div></a>

<!--<script>-->
<!--var _hmt = _hmt || [];-->
<!--(function() {-->
  <!--var hm = document.createElement("script");-->
  <!--hm.src = "//hm.baidu.com/hm.js?1318dc1c344853eb801972de684dc612";-->
  <!--var s = document.getElementsByTagName("script")[0];-->
  <!--s.parentNode.insertBefore(hm, s);-->
<!--})();-->
<!--</script>-->

<script src="./上海农家乐_上海农庄_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农家乐_农庄_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/z_stat.php" language="JavaScript"></script><script src="./上海农家乐_上海农庄_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农家乐_农庄_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/core.php" charset="utf-8" type="text/javascript"></script><a href="https://www.cnzz.com/stat/website.php?web_id=1254939469" target="_blank" title="站长统计">站长统计</a>

<script src="./上海农家乐_上海农庄_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农家乐_农庄_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/c.js" language="JavaScript"></script><script src="./上海农家乐_上海农庄_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农家乐_农庄_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/tongji_360.php" language="JavaScript" charset="gb2312"></script><script src="./上海农家乐_上海农庄_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农家乐_农庄_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/core(1).php" charset="utf-8" type="text/javascript"></script><a href="https://quanjing.cnzz.com/" target="_blank" title="全景统计"><img border="0" hspace="0" vspace="0" src="./上海农家乐_上海农庄_上海生态园_上海垂钓场_农家度假哪里好，全国最大的农家乐_农庄_垂钓场_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/2.gif" /></a>
<!--<script type="text/javascript">-->
		<!--var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://" : " http://"); document.write(unescape("%3Cscript src='" + _bdhmProtocol + "hm.baidu.com/h.js%3F8e539f2c9b5ea1c23be29aec34355f06' type='text/javascript'%3E%3C/script%3E"));-->
		<!--var _hmt = _hmt || [];-->
		<!--(function() {-->
		  <!--var hm = document.createElement("script");-->
		  <!--hm.src = "//hm.baidu.com/hm.js?f35b7bb370ac69983395e05eadad0079";-->
		  <!--var s = document.getElementsByTagName("script")[0];-->
		  <!--s.parentNode.insertBefore(hm, s);-->
		<!--})();-->
<!--</script>-->


<%--</body>
</html>--%>
    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
