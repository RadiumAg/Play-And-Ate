<%@ Page Title="" Language="C#" MasterPageFile="~/Shared/Main.Master" AutoEventWireup="true" CodeBehind="Promotion.aspx.cs" Inherits="Play_And_Ate.Promotion.Promotion" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Style" runat="server">
    <link href="../Content/Promotion/cityquery.css" rel="stylesheet" />
    <link href="../Content/Promotion/datepicker(1).css" rel="stylesheet" />
    <link href="../Content/Promotion/datepicker.css" rel="stylesheet" />
    <link href="../Content/Promotion/font-awesome.min.css" rel="stylesheet" />
    <link href="../Content/Promotion/main_huandeng.css" rel="stylesheet" />
    <link href="../Content/Promotion/new_main.css" rel="stylesheet" />
    <link href="../Content/Promotion/style.css" rel="stylesheet" />
    <link href="../Content/Promotion/WdatePicker.css" rel="stylesheet" />
    <link href="../Content/Promotion/weebox.css" rel="stylesheet" />
    <script src="../Scripts/Promotion/jquery-1.8.3.min.js"></script>
    <script src="../Scripts/Promotion/config.js"></script>
    <script src="../Scripts/Promotion/jquery.dotdotdot.js"></script>
    <script src="../Scripts/Promotion/lanrenzhijia.js"></script>
    <script src="../Scripts/Promotion/main_store.js"></script>
    <script src="../Scripts/Promotion/querycity.js"></script>
    <script src="../Scripts/Promotion/script.js"></script>
    <script src="../Scripts/Promotion/WdatePicker.js"></script>
    <script src="../Scripts/Promotion/zh-cn.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <img width="100%" height="400px" src="../Images/Home/2.jpg" alt="">
    <div class="warps">
	<div class="mtext"> 
	
		<div class="tr_yz">
			
			<div class="opyimicent">
			<div class="opyimictitle">首创农庄农家乐推荐模式，<label class="og">省时、省力、省心</label></div>
			<div class="opyiminot w-100 f_l">
			<img alt="" width="100%" height="255px" src="./第一农庄网：农家推荐_files/tr_tjfb.png">
			</div>
			</div>
		</div>
		
		</div>
		
		<div class="tr_bz">
			<div class="tr_bz_top ">
				<div class="tr_bztop">农家欺诈怎么办？农家消费损失怎么办？</div>
				<div class="tr_bztitle">没关系，第一农庄网为您做好一切，您负责选好农家，我负责服务保障</div>
				<div class="tr_bzbot">
					<div class="tr_bzleft">
						<div class="tr_bzlefttop">
							四大保障
						</div>
						<div class="tr_bzleftbot">
							无忧去农家
						</div>
					</div>
					<div class="tr_bzcent">
						<ul>
							<li>专业客服</li>
							<li>出行安全</li>
							<li>全称监督</li>
							<li>先行赔付</li>
						</ul>
					</div>
					<div class="tr_bzright">
						<ul>
							<li>专业客服为您的出行前后服务！</li>
							<li>预付订金就送价值10万元的出行保险！</li>
							<li>第一农庄网 为您监督服务！</li>
							<li>出行受损失，我们将先行赔付！</li>
						</ul>
					</div>	
				</div>	
			</div>
		</div>
		<div class="w-100 f_l">
			<div class="tar_mrt">
					<div class="tr_mrtop w-100 f_l">
						<img alt="" class="f_l tr_mrtopimg" src="./第一农庄网：农家推荐_files/tar_toux.jpg" width="92px" height="83px">
						<div class="tr_mrtoptitle">农家故事</div>
						<div class="tr_mrtoptext">因为有你，我们才有价值！</div>
						<div class="tr_mrtopright" onclick="destine();">我要发布</div>
					</div>
				</div>
				<div class="tar_mr">
				<ul>
													<li>
						<img alt="" class="f_l" src="./第一农庄网：农家推荐_files/562dca1267d5b.jpg" width="108px" height="120px">
						<div class="f-22  kuan">我是<label class="blue">社团</label></div>
						<div class="f-22 ">要组织团体农家游</div>
						<div class="f-16 ">庆幸选择第一农庄网</div>
						<a href="http://www.01nz.com.cn/notice/273.html" target="_blank"><div id="asdf" class="mt_gs_bb f-14 f_l  mt_gs_jsa">查看他的农家故事 &gt;</div></a>					
					</li>
														<li>
						<img alt="" class="f_l" src="./第一农庄网：农家推荐_files/562dcabf78880.jpg" width="108px" height="120px">
						<div class="f-22  kuan">我是<label class="huang">辣妈</label></div>
						<div class="f-22 ">要带儿子采摘</div>
						<div class="f-16 ">庆幸选择第一农庄网</div>
						<a href="http://www.01nz.com.cn/notice/264.html" target="_blank"><div id="asdf" class="mt_gs_bb f-14 f_l  mt_gs_jhh">查看他的农家故事 &gt;</div></a>					
					</li>
														<li>
						<img alt="" class="f_l" src="./第一农庄网：农家推荐_files/562dde71399bd.jpg" width="108px" height="120px">
						<div class="f-22  kuan">我是<label class="hong">班长</label></div>
						<div class="f-22 ">要组织同学出游</div>
						<div class="f-16 ">庆幸选择第一农庄网</div>
						<a href="http://www.01nz.com.cn/notice/258.html" target="_blank"><div id="asdf" class="mt_gs_bb f-14 f_l  mt_gs_joo">查看他的农家故事 &gt;</div></a>					
					</li>
														<li>
						<img alt="" class="f_l" src="./第一农庄网：农家推荐_files/562ddb849bd55.jpg" width="108px" height="120px">
						<div class="f-22  kuan">我是<label class="aqua">公司行政</label></div>
						<div class="f-22 ">要开展有意思的年会</div>
						<div class="f-16 ">庆幸选择第一农庄网</div>
						<a href="http://www.01nz.com.cn/notice/255.html" target="_blank"><div id="asdf" class="mt_gs_bb f-14 f_l  mt_gs_jsb">查看他的农家故事 &gt;</div></a>					
					</li>
														<li>
						<img alt="" class="f_l" src="./第一农庄网：农家推荐_files/562456080cfa8.jpg" width="108px" height="120px">
						<div class="f-22  kuan">我是<label class="lilac">上班族</label></div>
						<div class="f-22 ">要和朋友一起玩农家</div>
						<div class="f-16 ">庆幸选择第一农庄网</div>
						<a href="http://www.01nz.com.cn/notice/229.html" target="_blank"><div id="asdf" class="mt_gs_bb f-14 f_l  mt_gs_jsc">查看他的农家故事 &gt;</div></a>					
					</li>
														<li>
						<img alt="" class="f_l" src="./第一农庄网：农家推荐_files/562dd8fa8615e.jpg" width="108px" height="120px">
						<div class="f-22  kuan">我是<label class="light">IT男</label></div>
						<div class="f-22 ">要和女朋友游农家</div>
						<div class="f-16 ">庆幸选择第一农庄网</div>
						<a href="http://www.01nz.com.cn/notice/179.html" target="_blank"><div id="asdf" class="mt_gs_bb f-14 f_l  mt_gs_jsd">查看他的农家故事 &gt;</div></a>					
					</li>
													</ul>
			</div>
		</div>
		<div class="mt_xq f-30">轻松玩转农家</div>
		<div class="mt_xq_title">
			<div class="mt_xqmr">
				<ul>
					<li id="mt_xqcolor"><div class="mt_xqleft ">1</div> <label class="f_l">快速注册账号</label></li>
					<li><div class="mt_xqleft ">2</div> <label class="f_l">发布出行需求</label></li>
					<li><div class="mt_xqleft ">3</div> <label class="f_l">确定农家，快乐出行</label></li>
				</ul>
			</div>
		</div>
		<div class="mt_xq_t">
			<div class="mt_xqmr">
				<div class="mt_xq_l mtxql1">
					<div class="mt_xqltext">
						<ul>
													<a href="http://www.01nz.com.cn/" target="_blank"><li>我能在你们这买到土鸡蛋吗？</li></a>
													<a href="http://www.01nz.com.cn/" target="_blank"><li>怎么找适合年会的农庄？</li></a>
													<a href="http://www.01nz.com.cn/" target="_blank"><li>团体定制怎么办？</li></a>
													<a href="http://www.01nz.com.cn/" target="_blank"><li>和农家老板有分歧怎么办？</li></a>
													<a href="http://www.01nz.com.cn/" target="_blank"><li>什么是农家优选？</li></a>
													<a href="http://www.01nz.com.cn/" target="_blank"><li>怎么发布需求？</li></a>
													<a href="http://www.01nz.com.cn/" target="_blank"><li>怎么保证我们低价服务好</li></a>
													<a href="http://www.01nz.com.cn/" target="_blank"><li>定金的收取和定额规则</li></a>
													<a href="http://www.01nz.com.cn/" target="_blank"><li>订金是否太高？</li></a>
												</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="mt_xq_t w-100 f_l">	
			<div class="mt_ks f-30" onclick="destine();"><div class="f_l">快速发布</div><div class="mt_ks_r f-30">&gt;</div></div></div>
		</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
</asp:Content>
