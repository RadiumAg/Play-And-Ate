<%@ Page Title="" Language="C#" MasterPageFile="~/Shared/Main.Master" AutoEventWireup="true" CodeBehind="Fishing.aspx.cs" Inherits="Play_And_Ate.Products.Fishing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Style" runat="server"> <link rel="Shortcut Icon" href="http://sh.01nz.com.cn/app/Tpl/fanwe/images/logo.ico" /><!--地址栏和标签上显示图标-->
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
	var is_order_show = false;
</script>
<script type="text/javascript" src="../Scripts/Products/ca3e4166f3f1cd8619807edc574f075c.js"></script>
<link rel="stylesheet" type="text/css" href="../Content/Products/6405f1b57f28bc36716e3be90105a5cb.css">
<div class="wrap">
	  <ul class="main_nav">
		 <li class="all_class nz_jsfudong ">
		   <div class="class_con" style="height:45px; width:219px; background-color:#0bcaca">
				</div>
			</li>
		</ul>	
	</div>
	<div class="in_center">
		<div class="index_left f_l">
			<div class="store_zhti">
				<div class="shuimian">
					<div class="blank"></div>
					<div class="title">钓场</div>
					<div class="shm_dx">
										<span><a href="#" target="_blank">池塘</a></span>
										<span><a href="#" target="_blank">农家</a></span>
										<span><a href="#" target="_blank">湖库</a></span>
										<span><a href="#" target="_blank">野生</a></span>
										<span><a href="#" target="_blank">放养</a></span>
										</div>
				</div>
				<div class="blank"></div>
				<div class="zhuanti">
					<div class="blank"></div>
					<div class="title">专题</div>
					<div class="shm_dx">
					<span><a href="#" target="_blank">垂钓赛事</a></span>
					<span><a href="#" target="_blank">钓鱼日记</a></span>
					<span><a href="#" target="_blank">技巧学习</a></span>
					<span><a href="#" target="_blank">钓饵配方</a></span>
					</div>
				</div>
				<div class="blank"></div>
			</div>
			<div class="blank"></div>
			<div class="store_xiangmu">
				<div class="title_nz"><span class="cx f_l"></span>全国钓场</div>
				<div class="neirong_city">
                    <asp:Repeater ID="RPcity" runat="server">
                        <ItemTemplate>
                            <a href="#" class="rmhong" target="_blank"><%# Eval("AreaName") %></a>
                        </ItemTemplate>
                    </asp:Repeater>	
				</div>
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
				<script type="text/javascript">
					$(document).ready(function(){
						$("#QQkf a:eq(0)").html('<img alt="QQ客服咨询预订" src="http://sh.01nz.com.cn/app/Tpl/fanwe/images/ydzx.png">');
						$("#QQkf a:eq(1)").html('<img alt="QQ客服团队业务" src="http://sh.01nz.com.cn/app/Tpl/fanwe/images/ttyw.png">');
						$("#QQkf a:eq(2)").html('<img alt="QQ客服售后服务" src="http://sh.01nz.com.cn/app/Tpl/fanwe/images/shfw.png">');
						$("#QQkf a:eq(3)").html('<img alt="QQ客服商家入驻" src="http://sh.01nz.com.cn/app/Tpl/fanwe/images/sjrz.png">');
					});
				</script>
				<div class="fengehuix"></div>
				<div class="fankui">
					<div class="yjfankui">意见反馈</div>
					<div class="hgh_4"></div>
					<div class="yjfankui_nr">欢迎您提出宝贵的建议和意见，我们会仔细阅读，您的支持是对我们最大鼓励和帮助！</div>
					<div class="blank"></div>
					<div class="blank"></div>
				</div>
</div>			<div class="blank"></div>
		</div>
		<div class="store_middle f_r">
		   <div id="main_adv_box" class="main_adv_box f_l">
			  <div id="main_adv_img" class="main_adv_img">
				<img src="./上海垂钓场_上海农庄_上海生态园_上海农家乐_农家度假哪里好，全国最大的垂钓场_农庄_农家乐_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/53a78a1a3bb97.jpg" alt="" border="0" height="306" width="758">
			    <img src="./上海垂钓场_上海农庄_上海生态园_上海农家乐_农家度假哪里好，全国最大的垂钓场_农庄_农家乐_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/53a78b0d7abed.jpg" alt="" border="0" height="306" width="758">
				<img src="./上海垂钓场_上海农庄_上海生态园_上海农家乐_农家度假哪里好，全国最大的垂钓场_农庄_农家乐_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/53a78c2c08c46.jpg" alt="" border="0" height="306" width="758">
				<img src="./上海垂钓场_上海农庄_上海生态园_上海农家乐_农家度假哪里好，全国最大的垂钓场_农庄_农家乐_生态园_农家乐旅游在线预订平台-上海第一农庄网_files/53a78c76ce2de.jpg" alt="" border="0" height="306" width="758">				
			  </div>
			  <div id="content">
				 <div id="main f_l" class="mains">
					<div id="container">
						<div class="flexslider">
			    			<ul class="slides" id="stodes">
							   							   	<li style="width: 100%; float: left; margin-right: -100%; display: none;">
							   		<a href="#" target="_blank"><img src="../Images/Products/53a78a1a3bb97.jpg" alt="" border="0" height="306" width="758"></a>
							   	</li>
							   							   	<li style="width: 100%; float: left; margin-right: -100%; display: list-item;">
							   		<a href="#" target="_blank"><img src="../Images/Products/53a78b0d7abed.jpg" alt="" border="0" height="306" width="758"></a>
							   	</li>
							   							   	<li style="width: 100%; float: left; margin-right: -100%;">
							   		<a href="#" target="_blank"><img src="../Images/Products/53a78c2c08c46.jpg" alt="" border="0" height="306" width="758"></a>
							   	</li>
							   							   	<li style="width: 100%; float: left; margin-right: -100%;">
							   		<a href="#" target="_blank"><img src="../Images/Products/53a78c76ce2de.jpg" alt="" border="0" height="306" width="758"></a>
							   	</li>
							   							</ul>
		        			<ol class="flex-control-nav">
		        					        			<li class="p9">怎样看待台钓与传统钓</li>
		        					        			<li class="p9 ">说起钓鱼常有三大错误说法敝病</li>
		        					        			<li class="p9">小钓豫北陈桥湿地</li>
		        					        			<li class="p9">气温初变好垂钓</li>
		        										</ol>
			  			</div>
					</div>
				 </div>
	  			</div>
		   </div>
		   <div class="clear"></div>
	<div class="store_chuidiao">
		<div class="xjtore_top">
			<div class="title">热门钓场</div>
			<ul class="down_store" id="index_purnj">
			<li class="city_2 mr_nj"><a href="javascript:void(0);" onclick="load_rmcdc_store(2)">上海</a></li> 
													<li class="city_3"><a href="javascript:void(0);" onclick="load_rmcdc_store(3)">北京</a></li>
																	<li class="city_22"><a href="javascript:void(0);" onclick="load_rmcdc_store(22)">天津</a></li>
																	<li class="city_23"><a href="javascript:void(0);" onclick="load_rmcdc_store(23)">南京</a></li>
																	<li class="city_29"><a href="javascript:void(0);" onclick="load_rmcdc_store(29)">杭州</a></li>
																	<li class="city_33"><a href="javascript:void(0);" onclick="load_rmcdc_store(33)">济南</a></li>
																	<li class="city_42"><a href="javascript:void(0);" onclick="load_rmcdc_store(42)">苏州</a></li>
											</ul>
			<div class="clear"></div>
		</div>
		<div class="xjtore_con f_r" id="ajax_rmcdc_store">
						
						<asp:Repeater runat="server" ID="RPHotfishing">
                            <ItemTemplate>
                                <div class="s_info">
				                    <a href="../Show/FarmDetails.aspx?productId=<%# Eval("ProductID") %>" target="_blank"><img src="../Images/Home/<%#Eval("Image") %>" alt=""></a>
				                    <p class="store_name"><a href="../Show/FarmDetails.aspx?productId=<%# Eval("ProductID") %>" class="f_l" target="_blank"><%# Eval("ProductName") %></a><span class="people_dc f_r">收费钓场</span></p>
			                    </div>
                            </ItemTemplate>
						</asp:Repeater>
						<div class="clear"></div>
		</div>
	</div>
	 <div class=" both"></div>
    <div class="store_wenquan">
		<div class="wqtore_top">
			<div class="title">农家钓场</div>
		</div>
		<div class="wqtore_vip f_l">
						<div class="s_info">
				<a href="#" target="_blank"><img src="../Images/Home/553e30da866a7.jpg" alt="辰山山庄"></a>
				<p class="store_name"><a href="#" class="f_l" target="_blank">辰山山庄</a><span class="people_dc f_r">收费钓场</span></p>
			</div>
						<div class="clear"></div>
		</div>
		<div class="wqtore_con f_r">
            <asp:Repeater runat="server" ID="RPdiaoChang">
                <ItemTemplate>
                    <div class="s_info">
				        <a href="../Show/FarmDetails.aspx?productId=<%# Eval("ProductID") %>" target="_blank"><img src="../Images/Home/<%#Eval("Image") %>" alt="涵轩农庄"></a>
				        <p class="store_name"><a href="../Show/FarmDetails.aspx?productId=<%# Eval("ProductID") %>" class="f_l" target="_blank"><%# Eval("ProductName") %></a><span class="people_dc f_r">收费钓场</span></p>
			        </div>
                </ItemTemplate>
            </asp:Repeater>
				<div class="clear"></div>
		
            </div>

    </div>
	
	<div class="hg_25 both"></div>
	<div class="quanguo_dc">
		<div class="qg_dc f_l">全国<br>钓场</div>
		<div class="qg_xq f_r">
			<div class="chengshi">
						<span>
			<a href="#" target="_blank">上海(190)</a>
			</span>
						<span>
			<a href="#" target="_blank">北京(839)</a>
			</span>
						<span>
			<a href="#" target="_blank">广州(217)</a>
			</span>
						<span>
			<a href="#" target="_blank">深圳(89)</a>
			</span>
						<span>
			<a href="#" target="_blank">天津(258)</a>
			</span>
						<span>
			<a href="#" target="_blank">南京(183)</a>
			</span>
						<span>
			<a href="#" target="_blank">武汉(116)</a>
			</span>
						<span>
			<a href="#" target="_blank">沈阳(45)</a>
			</span>
						<span>
			<a href="#" target="_blank">西安(111)</a>
			</span>
						<span>
			<a href="#" target="_blank">成都(335)</a>
			</span>
						<span>
			<a href="#" target="_blank">重庆(603)</a>
			</span>
						<span>
			<a href="#" target="_blank">杭州(406)</a>
			</span>
						<span>
			<a href="#" target="_blank">青岛(137)</a>
			</span>
						<span>
			<a href="#" target="_blank">大连(119)</a>
			</span>
						<span>
			<a href="#" target="_blank">宁波(123)</a>
			</span>
						<span>
			<a href="#" target="_blank">济南(43)</a>
			</span>
						<span>
			<a href="#" target="_blank">长沙(143)</a>
			</span>
						<span>
			<a href="#" target="_blank">昆明(74)</a>
			</span>
						<span>
			<a href="#" target="_blank">苏州(216)</a>
			</span>
						<span>
			<a href="#" target="_blank">无锡(123)</a>
			</span>
						<span>
			<a href="#" target="_blank">南宁(15)</a>
			</span>
						<span>
			<a href="#" target="_blank">合肥(71)</a>
			</span>
						<span>
			<a href="#" target="_blank">潍坊(1)</a>
			</span>
						<span>
			<a href="#" target="_blank">绍兴(65)</a>
			</span>
						<span>
			<a href="#" target="_blank">湖州(236)</a>
			</span>
						<span>
			<a href="#" target="_blank">嘉兴(79)</a>
			</span>
						<span>
			<a href="#" target="_blank">金华(128)</a>
			</span>
						<span>
			<a href="#" target="_blank">镇江(45)</a>
			</span>
						<span>
			<a href="#" target="_blank">扬州(2)</a>
			</span>
						<span>
			<a href="#" target="_blank">日照(439)</a>
			</span>
						<span>
			<a href="#" target="_blank">丽水(150)</a>
			</span>
						<span>
			<a href="#" target="_blank">衢州(55)</a>
			</span>
						<span>
			<a href="#" target="_blank">遵义(23)</a>
			</span>
						<span>
			<a href="#" target="_blank">宣城(48)</a>
			</span>
						<span>
			<a href="#" target="_blank">黄山(43)</a>
			</span>
						<span>
			<a href="#" target="_blank">三亚(19)</a>
			</span>
						</div>
		</div>
	</div>
	<div class="hg_25 both"></div>
   <div class="down_store">
      <div class="shoufei_dc f_l">
		<div class="sfdctore_top">
			<div class="title">收费钓场</div>
		</div>
		<div class="shoufei_con f_l">
			<div class="tab_txt clear">
                <asp:Repeater runat="server" ID="RPCharge">
                    <ItemTemplate>
                        <div class="dc_liebiao"><span class="sp f_l"><a href="../Show/FarmDetails.aspx?productId=<%# Eval("ProductID") %>" target="_blank"><%# Eval("ProductName") %></a></span><span class="sp2 f_l"><%# Eval("TypeName") %></span><span class="sp3 f_r"><%# Eval("AreaName") %></span></div>									
                    </ItemTemplate>
                </asp:Repeater>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<div class="mianfei_dc f_r">
		<div class="mftore_top">
			<div class="title">免费钓场</div>
		</div>
		<div class="shoufei_con f_l">
			<div class="tab_txt clear">
                 <asp:Repeater runat="server" ID="RPFree">
                    <ItemTemplate>
                        <div class="dc_liebiao"><span class="sp f_l"><a href="../Show/FarmDetails.aspx?productId=<%# Eval("ProductID") %>" target="_blank"><%# Eval("ProductName") %></a></span><span class="sp2 f_l"><%# Eval("TypeName") %></span><span class="sp3 f_r"><%# Eval("AreaName") %></span></div>									
                    </ItemTemplate>
                </asp:Repeater>
		</div>
			<div class="clear"></div>
		</div>
	</div>
	</div>
            </div>
 </div>
 </div>

<!-- 改版 -->


<div class="blank"></div>
<div id="gotop" style="display: none;"></div>
<script src="../Scripts/z_stat.php" ></script><script src="../Scripts/core.php" charset="utf-8" type="text/javascript"></script>

<script src="../Scripts/c.js" ></script><script src="../Scripts/tongji_360.php"charset="gb2312"></script><script src="../Scripts/core(1).php" charset="utf-8" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>