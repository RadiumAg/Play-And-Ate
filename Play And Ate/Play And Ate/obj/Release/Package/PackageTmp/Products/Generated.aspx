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

<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
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
		   <div class="class_con" style="height:45px; width:219px;background-color:#ea8f4e">
				</div>
			</li>
		</ul>	
	</div>
	<div class="in_center">
		<div class="index_left f_l">
            <div class="blank"></div>
			<div class="blank"></div>
			<div class="blank"></div>
			<div class="blank"></div>
			<div class="store_xiangmu">
				<div class="title_nz"><span class="cx f_l"></span>全国农家乐</div>
				<div class="neirong_city">
                    <asp:Repeater runat="server" ID="RPCity">
                        <ItemTemplate>
                            <a href="#" class="rmhong" target="_blank"><%# Eval("AreaName") %></a>
                        </ItemTemplate>
                    </asp:Repeater>
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
											<a href="../Products/Finshing.aspx" class="f_l" target="_blank">垂钓</a>
										</span></div>
					
				 					<div class="blank"></div>
					<div class="yuejituc"><span class="yuejizn">05</span>
					<span class="xiangmu_nr f_r">
											<a href="#" class="f_l" target="_blank">攀岩</a>
											<a href="#" class="f_l" target="_blank">采摘</a>
											<a href="#" class="f_l" target="_blank">垂钓</a>
											<a href="#" class="f_l" target="_blank">游泳</a>
											<a href="#" class="f_l" target="_blank">篝火</a>
											<a href="#" class="f_l" target="_blank">漂流</a>
										</span></div>
					
				 					<div class="blank"></div>
					<div class="yuejituc"><span class="yuejizn">06</span>
					<span class="xiangmu_nr f_r">
											<a href="#" class="f_l" target="_blank">烧烤</a>
											<a href="#" class="f_l" target="_blank">健身房</a>
											<a href="#" class="f_l" target="_blank">垂钓</a>
											<a href="#" class="f_l" target="_blank">棋牌</a>
											<a href="#" class="f_l" target="_blank">真人CS</a>
											<a href="#" class="f_l" target="_blank">骑马</a>
										</span></div>
					
				 				<div class="blank"></div>
			</div>
			<div class="blank"></div>
			<div class="xfzbaozhang">
				<div class="blank"></div>
				<div class="jinbei f_l"></div>
					<div class="baozhang_tit f_l">消费保障</div>
					<div class="hgh_4 clear"></div>
					<div class="baozhang_jsh">Play And Ate在线预定的商家均签署诚信协议,保障你的消费。</div>
					<div class="blank"></div>
					<div class="blank"></div>
				
				<div class="jiage f_l"></div>
					<div class="baozhang_tit f_l">价格保障</div>
					<div class="hgh_4 clear"></div>
					<div class="baozhang_jsh">我不知道这里价格怎么样，反正都是虚假数据</div>
					<div class="blank"></div>
					<div class="blank"></div>
				</div>			
            <div class="blank"></div>
			<div class="xfzbaozhang">
			<div class="dianhua">
					<div class="dianhua_xq">QQ：2637304079</div>
					<div class="hgh_4"></div>
					<div class="fuwushijian">周一到周日：9:00-18:00</div>
					<div class="blank"></div>
				</div>
				<div class="copyright">
				<div class="blank"></div>				
								</div>
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
							   		<a href="#" target="_blank"><img src="../Images/Products/53882e60e81a8.jpg" title="人从众农家乐" alt="人从众农家乐" border="0" height="306" width="758" /></a>
							   	</li>
							   							   	<li style="width: 100%; float: left; margin-right: -100%; display: list-item;">
							   		<a href="#" target="_blank"><img src="../Images/Products/538830f9e3dfd.jpg" title="浙西大峡谷老鲁农庄" alt="浙西大峡谷老鲁农庄" border="0" height="306" width="758" /></a>
							   	</li>
							   							   	<li style="width: 100%; float: left; margin-right: -100%;">
							   		<a href="#" target="_blank"><img src="../Images/Products/5388375bd90ed.jpg" title="前卫村叔季嘉苑" alt="前卫村叔季嘉苑" border="0" height="306" width="758" /></a>
							   	</li>
							   							   	<li style="width: 100%; float: left; margin-right: -100%;">
							   		<a href="#" target="_blank"><img src="../Images/Products/538836ab70c0f.jpg" title="日照永春农家乐" alt="日照永春农家乐" border="0" height="306" width="758" /></a>
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
            <asp:Repeater runat="server" ID="RPaccordingtion">
                <ItemTemplate>
                    	<div class="s_info">
				            <a href="../Show/FarmDetails.aspx?productId=<%# Eval("ProductID") %>" target="_blank"><img src="../Images/Home/<%#Eval("Image") %>" alt="" /></a>
				            <p class="store_name"><span class="people f_r">￥&nbsp;<span class="peoda"><%# Eval("ProductPrice").ToString().Split('.')[0] %></span>&nbsp;<span class="peohui">起</span></span><a href="http://sh.01nz.com.cn/farm/131.html" class="f_l" target="_blank"><%# Eval("ProductName") %></a></p>
			            </div>
                </ItemTemplate>
            </asp:Repeater>
			<div class="clear"></div>
		</div>
	</div>
	<div class="hg_25 both"></div>
	 <div class="store_xianjin">
		<div class="xjtore_top">
			<div class="title">农家小炒</div>
		</div>
		<div class="xjtore_con">
            <asp:Repeater runat="server"  ID="RPEating">
                <ItemTemplate>
                    <div class="s_info">
				        <a href="../Show/FarmDetails.aspx?productId=<%# Eval("ProductID") %>" target="_blank"><img src="../Images/Home/<%#Eval("Image") %>" alt="" /></a><br />
				        <p class="store_name"><a href="../Show/FarmDetails.aspx?productId=<%# Eval("ProductID") %>" target="_blank">【<%# Eval("ProductName") %>】</a></p>
				        <span class="people f_r">￥&nbsp;<span class="peoda"><%# Eval("ProductPrice").ToString().Split('.')[0] %></span>&nbsp;<span class="peohui">起/桌</span></span>
			        </div>
                </ItemTemplate>
            </asp:Repeater>
			<div class="taocan clear">
                <asp:Repeater runat="server" ID="RPeat">
                    <ItemTemplate>
                        <p><a href="#" class="f_l" target="_blank">【<%# Eval("ProductName") %>】</a><span class="people f_r">￥&nbsp;<span class="peoda">220</span>&nbsp;<span class="peohui">起/桌</span></span></p>
                    </ItemTemplate>
                </asp:Repeater>									
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
                      <asp:Repeater runat="server" ID="RPShow1">
                          <ItemTemplate>
                              <a href="../Show/FarmDetails.aspx?productId=<%# Eval("ProductID") %>" target="_blank" class="pl"><img src="../Images/Home/<%#Eval("Image") %>" height="80" alt="金平农家乐" />
							    <div class="njl_nr_name">
								<div  class="nr_text"><%# Eval("ProductName") %></div>
							</div>
							</a>
                          </ItemTemplate>
                      </asp:Repeater>
				  <!-- piclist end -->
			      </div>
			      <div id="List2_1">
			        <!-- piclist begin -->
							<asp:Repeater runat="server" ID="PRShow2">
                              <ItemTemplate>
                                  <a href="../Show/FarmDetails.aspx?productId=<%# Eval("ProductID") %>" target="_blank" class="pl"><img src="../Images/Home/<%#Eval("Image") %>"  height="80" alt="金平农家乐" />
							        <div class="njl_nr_name">
								    <div  class="nr_text"><%# Eval("ProductName") %></div>
							    </div>
							    </a>
                              </ItemTemplate>
                          </asp:Repeater>
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
<div id="gotop" style="display: none;"></div>
<a href="http://sh.01nz.com.cn/cart" target="_blank"><div id="gowu"></div></a>
<script src="../Scripts/Products/z_stat.php" ></script><script src="../Scripts/Products/core.php" charset="utf-8" type="text/javascript"></script>
<script src="../Scripts/Products/c.js" ></script>
<script src="../Scripts/Products/tongji_360.php" charset="gb2312"></script>
<script src="../Scripts/Products/core(1).php" charset="utf-8" type="text/javascript"></script>

    </asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
