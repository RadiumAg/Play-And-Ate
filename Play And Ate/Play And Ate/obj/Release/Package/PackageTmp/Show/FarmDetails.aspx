﻿<%@ Page Title="农庄详情" Language="C#" MasterPageFile="~/Shared/Main.Master" AutoEventWireup="true" CodeBehind="FarmDetails.aspx.cs" Inherits="Play_And_Ate.Show.FarmDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Style" runat="server">
    <link href="../Content/Show/FarmDetails/style.css" rel="stylesheet" />
    	<style type="text/css">
.BMap_mask {
background: transparent url(about:blank);
}

.BMap_noscreen {
display: none;
}

.BMap_button {
cursor: pointer;
}

.BMap_zoomer {
background-image: url(http://api.map.baidu.com/images/mapctrls1d3.gif);
background-repeat: no-repeat;
overflow: hidden;
font-size: 1px;
position: absolute;
width: 7px;
height: 7px;
}

.BMap_stdMpCtrl div {
position: absolute;
}

.BMap_stdMpPan {
width: 44px;
height: 44px;
overflow: hidden;
background: url(http://api.map.baidu.com/images/mapctrls2d0.png) no-repeat;
}

.BMap_ie6 .BMap_stdMpPan {
background: none;
}

.BMap_ie6 .BMap_smcbg {
left: 0;
width: 44px;
height: 464px;
filter: progid:DXImageTransform.Microsoft.AlphaImageLoader(src='http://api.map.baidu.com/images/mapctrls2d0.png');
}

.BMap_ie6 .BMap_stdMpPanBg {
z-index: -1;
}

.BMap_stdMpPan .BMap_button {
height: 15px;
width: 15px;
}

.BMap_panN,
.BMap_panW,
.BMap_panE,
.BMap_panS {
overflow: hidden;
}

.BMap_panN {
left: 14px;
top: 0;
}

.BMap_panW {
left: 1px;
top: 12px;
}

.BMap_panE {
left: 27px;
top: 12px;
}

.BMap_panS {
left: 14px;
top: 25px;
}

.BMap_stdMpZoom {
top: 45px;
overflow: hidden;
}

.BMap_stdMpZoom .BMap_button {
width: 22px;
height: 21px;
left: 12px;
overflow: hidden;
background-image: url(http://api.map.baidu.com/images/mapctrls2d0.png);
background-repeat: no-repeat;
z-index: 10;
}

.BMap_ie6 .BMap_stdMpZoom .BMap_button {
background: none;
}

.BMap_stdMpZoomIn {
background-position: 0 -221px;
}

.BMap_stdMpZoomOut {
background-position: 0 -265px;
}

.BMap_ie6 .BMap_stdMpZoomIn div {
left: 0;
top: -221px;
}

.BMap_ie6 .BMap_stdMpZoomOut div {
left: 0;
top: -265px;
}

.BMap_stdMpType4 .BMap_stdMpZoom .BMap_button {
left: 0;
overflow: hidden;
background: -webkit-gradient(linear, 50% 0, 50% 100%, from(rgba(255, 255, 255, 0.85)), to(rgba(217, 217, 217, 0.85)));
z-index: 10;
-webkit-border-radius: 22px;
width: 34px;
height: 34px;
border: 1px solid rgba(255, 255, 255, 0.5);
-webkit-box-shadow: 0 2px 3.6px #CCC;
display: -webkit-box;
-webkit-box-align: center;
-webkit-box-pack: center;
-webkit-box-sizing: border-box;
}

.BMap_stdMpType4 .BMap_smcbg {
position: static;
background: url(http://api.map.baidu.com/images/mapctrls2d0_mb.png) 0 0 no-repeat;
-webkit-background-size: 24px 32px;
}

.BMap_stdMpType4 .BMap_stdMpZoomIn {
background-position: 0 0;
}

.BMap_stdMpType4 .BMap_stdMpZoomIn .BMap_smcbg {
width: 24px;
height: 24px;
background-position: 0 0;
}

.BMap_stdMpType4 .BMap_stdMpZoomOut {
background-position: 0 0;
}

.BMap_stdMpType4 .BMap_stdMpZoomOut .BMap_smcbg {
width: 24px;
height: 6px;
background-position: 0 -25px;
}

.BMap_stdMpSlider {
width: 37px;
top: 18px;
}

.BMap_stdMpSliderBgTop {
left: 18px;
width: 10px;
overflow: hidden;
background: url(http://api.map.baidu.com/images/mapctrls2d0.png) no-repeat -23px -226px;
}

.BMap_stdMpSliderBgBot {
left: 19px;
height: 8px;
width: 10px;
top: 124px;
overflow: hidden;
background: url(http://api.map.baidu.com/images/mapctrls2d0.png) no-repeat -33px bottom;
}

.BMap_ie6 .BMap_stdMpSliderBgTop,
.BMap_ie6 .BMap_stdMpSliderBgBot {
background: none;
}

.BMap_ie6 .BMap_stdMpSliderBgTop div {
left: -23px;
top: -226px;
}

.BMap_ie6 .BMap_stdMpSliderBgBot div {
left: -33px;
bottom: 0;
}

.BMap_stdMpSliderMask {
height: 100%;
width: 24px;
left: 10px;
cursor: pointer;
}

.BMap_stdMpSliderBar {
height: 11px;
width: 19px;
left: 13px;
top: 80px;
overflow: hidden;
background: url(http://api.map.baidu.com/images/mapctrls2d0.png) no-repeat 0 -309px;
}

.BMap_stdMpSliderBar.h {
background: url(http://api.map.baidu.com/images/mapctrls2d0.png) no-repeat 0 -320px;
}

.BMap_ie6 .BMap_stdMpSliderBar,
.BMap_ie6 .BMap_stdMpSliderBar.h {
background: none;
}

.BMap_ie6 .BMap_stdMpSliderBar div {
top: -309px;
}

.BMap_ie6 .BMap_stdMpSliderBar.h div {
top: -320px;
}

.BMap_zlSt,
.BMap_zlCity,
.BMap_zlProv,
.BMap_zlCountry {
position: absolute;
left: 34px;
height: 21px;
width: 28px;
background-image: url(http://api.map.baidu.com/images/mapctrls2d0.png);
background-repeat: no-repeat;
font-size: 0;
cursor: pointer;
}

.BMap_ie6 .BMap_zlSt,
.BMap_ie6 .BMap_zlCity,
.BMap_ie6 .BMap_zlProv,
.BMap_ie6 .BMap_zlCountry {
background: none;
overflow: hidden;
}

.BMap_zlHolder {
display: none;
position: absolute;
top: 0;
}

.BMap_zlHolder.hvr {
display: block;
}

.BMap_zlSt {
background-position: 0 -380px;
top: 21px;
}

.BMap_zlCity {
background-position: 0 -401px;
top: 57px;
}

.BMap_zlProv {
background-position: 0 -422px;
top: 81px;
}

.BMap_zlCountry {
background-position: 0 -443px;
top: 105px;
}

.BMap_ie6 .BMap_zlSt div {
top: -380px;
}

.BMap_ie6 .BMap_zlCity div {
top: -401px;
}

.BMap_ie6 .BMap_zlProv div {
top: -422px;
}

.BMap_ie6 .BMap_zlCountry div {
top: -443px;
}

.BMap_stdMpType1 .BMap_stdMpSlider,
.BMap_stdMpType2 .BMap_stdMpSlider,
.BMap_stdMpType3 .BMap_stdMpSlider,
.BMap_stdMpType4 .BMap_stdMpSlider,
.BMap_stdMpType2 .BMap_stdMpZoom,
.BMap_stdMpType3 .BMap_stdMpPan,
.BMap_stdMpType4 .BMap_stdMpPan {
display: none;
}

.BMap_stdMpType3 .BMap_stdMpZoom {
top: 0;
}

.BMap_stdMpType4 .BMap_stdMpZoom {
top: 0;
}

.BMap_cpyCtrl a {
font-size: 11px;
color: #7979CC;
}

.BMap_scaleCtrl {
height: 23px;
overflow: hidden;
}

.BMap_scaleCtrl div.BMap_scaleTxt {
font-size: 11px;
font-family: Arial, sans-serif;
}

.BMap_scaleCtrl div {
position: absolute;
overflow: hidden;
}

.BMap_scaleHBar img,
.BMap_scaleLBar img,
.BMap_scaleRBar img {
position: absolute;
width: 37px;
height: 442px;
left: 0;
}

.BMap_scaleHBar {
width: 100%;
height: 5px;
font-size: 0;
bottom: 0;
}

.BMap_scaleHBar img {
top: -437px;
width: 100%;
}

.BMap_scaleLBar,
.BMap_scaleRBar {
width: 3px;
height: 9px;
bottom: 0;
font-size: 0;
z-index: 1;
}

.BMap_scaleLBar img {
top: -427px;
left: 0;
}

.BMap_scaleRBar img {
top: -427px;
left: -5px;
}

.BMap_scaleLBar {
left: 0;
}

.BMap_scaleRBar {
right: 0;
}

.BMap_scaleTxt {
text-align: center;
width: 100%;
cursor: default;
line-height: 18px;
}

.BMap_omCtrl {
background-color: #fff;
overflow: hidden;
}

.BMap_omOutFrame {
position: absolute;
width: 100%;
height: 100%;
left: 0;
top: 0;
}

.BMap_omInnFrame {
position: absolute;
border: 1px solid #999;
background-color: #ccc;
overflow: hidden;
}

.BMap_omMapContainer {
position: absolute;
overflow: hidden;
width: 100%;
height: 100%;
left: 0;
top: 0;
}

.BMap_omViewMv {
border-width: 1px;
border-style: solid;
border-left-color: #84b0df;
border-top-color: #adcff4;
border-right-color: #274b8b;
border-bottom-color: #274b8b;
position: absolute;
z-index: 600;
}

.BMap_omViewInnFrame {
border: 1px solid #3e6bb8;
}

.BMap_omViewMask {
width: 1000px;
height: 1000px;
position: absolute;
left: 0;
top: 0;
background-color: #68c;
opacity: .2;
filter: progid:DXImageTransform.Microsoft.Alpha(opacity=20);
}

.BMap_omBtn {
height: 13px;
width: 13px;
position: absolute;
cursor: pointer;
overflow: hidden;
background: url(http://api.map.baidu.com/images/mapctrls1d3.gif) no-repeat;
z-index: 1210;
}

.anchorBR .BMap_omOutFrame {
border-top: 1px solid #999;
border-left: 1px solid #999;
}

.quad4 .BMap_omBtn {
background-position: -26px -27px;
}

.quad4 .BMap_omBtn.hover {
background-position: 0 -27px;
}

.quad4 .BMap_omBtn.BMap_omBtnClosed {
background-position: -39px -27px;
}

.quad4 .BMap_omBtn.BMap_omBtnClosed.hover {
background-position: -13px -27px;
}

.anchorTR .BMap_omOutFrame {
border-bottom: 1px solid #999;
border-left: 1px solid #999;
}

.quad1 .BMap_omBtn {
background-position: -39px -41px;
}

.quad1 .BMap_omBtn.hover {
background-position: -13px -41px;
}

.quad1 .BMap_omBtn.BMap_omBtnClosed {
background-position: -26px -41px;
}

.quad1 .BMap_omBtn.BMap_omBtnClosed.hover {
background-position: 0 -41px;
}

.anchorBL .BMap_omOutFrame {
border-top: 1px solid #999;
border-right: 1px solid #999;
}

.quad3 .BMap_omBtn {
background-position: -27px -40px;
}

.quad3 .BMap_omBtn.hover {
background-position: -1px -40px;
}

.quad3 .BMap_omBtn.BMap_omBtnClosed {
background-position: -40px -40px;
}

.quad3 .BMap_omBtn.BMap_omBtnClosed.hover {
background-position: -14px -40px;
}

.anchorTL .BMap_omOutFrame {
border-bottom: 1px solid #999;
border-right: 1px solid #999;
}

.quad2 .BMap_omBtn {
background-position: -40px -28px;
}

.quad2 .BMap_omBtn.hover {
background-position: -14px -28px;
}

.quad2 .BMap_omBtn.BMap_omBtnClosed {
background-position: -27px -28px;
}

.quad2 .BMap_omBtn.BMap_omBtnClosed.hover {
background-position: -1px -28px;
}

.anchorR .BMap_omOutFrame {
border-bottom: 1px solid #999;
border-left: 1px solid #999;
border-top: 1px solid #999;
}

.anchorL .BMap_omOutFrame {
border-bottom: 1px solid #999;
border-right: 1px solid #999;
border-top: 1px solid #999;
}

.anchorB .BMap_omOutFrame {
border-top: 1px solid #999;
border-left: 1px solid #999;
border-right: 1px solid #999;
}

.anchorT .BMap_omOutFrame {
border-bottom: 1px solid #999;
border-right: 1px solid #999;
border-left: 1px solid #999;
}

.anchorNon .BMap_omOutFrame,
.withOffset .BMap_omOutFrame {
border: 1px solid #999;
}

.BMap_zoomMask0,
.BMap_zoomMask1 {
position: absolute;
left: 0;
top: 0;
width: 100%;
height: 100%;
background: transparent url(http://api.map.baidu.com/images/blank.gif);
z-index: 1000;
}

.BMap_contextMenu {
position: absolute;
border-top: 1px solid #adbfe4;
border-left: 1px solid #adbfe4;
border-right: 1px solid #8ba4d8;
border-bottom: 1px solid #8ba4d8;
padding: 0;
margin: 0;
width: auto;
visibility: hidden;
background: #fff;
z-index: 10000000;
}

.BMap_cmShadow {
position: absolute;
background: #000;
opacity: .3;
filter: alpha(opacity=30);
visibility: hidden;
z-index: 9000000;
}

div.BMap_cmDivider {
border-bottom: 1px solid #adbfe4;
font-size: 0;
padding: 1px;
margin: 0 6px;
}

div.BMap_cmFstItem {
margin-top: 2px;
}

div.BMap_cmLstItem {
margin-bottom: 2px;
}

.BMap_shadow img {
border: 0 none;
margin: 0;
padding: 0;
position: absolute;
height: 370px;
width: 1144px;
}

.BMap_pop .BMap_top {
border-top: 1px solid #ababab;
background-color: #fff;
}

.BMap_pop .BMap_center {
border-left: 1px solid #ababab;
border-right: 1px solid #ababab;
background-color: #fff;
}

.BMap_pop .BMap_bottom {
border-bottom: 1px solid #ababab;
background-color: #fff;
}

.BMap_shadow,
.BMap_shadow img,
.BMap_shadow div {
-moz-user-select: none;
-webkit-user-select: none;
}

.BMap_checkbox {
background: url(http://api.map.baidu.com/images/mapctrls1d3.gif);
vertical-align: middle;
display: inline-block;
width: 11px;
height: 11px;
margin-right: 4px;
background-position: -14px 90px;
}

.BMap_checkbox.checked {
background-position: -2px 90px;
}

.BMap_pop .BMap_top img,
.BMap_pop .BMap_center img,
.BMap_pop .BMap_bottom img {
display: none;
}

@media print {
.BMap_noprint {
display: none;
}

.BMap_noscreen {
display: block;
}

.BMap_mask {
background: none;
}

.BMap_pop .BMap_top img,
.BMap_pop .BMap_center img,
.BMap_pop .BMap_bottom img {
display: block;
}
}

.BMap_vectex {
cursor: pointer;
width: 11px;
height: 11px;
position: absolute;
background-repeat: no-repeat;
background-position: 0 0;
}

.BMap_vectex_nodeT {
background-image: url(http://api.map.baidu.com/images/nodeT.gif);
}

.BMap_vectex_node {
background-image: url(http://api.map.baidu.com/images/node.gif);
}
    	</style>
    <link href="../Content/Show/FarmDetails/baidu_map.css" rel="stylesheet" />
            <link href="../Content/Show/FarmDetails/list.css" rel="stylesheet" />
            <link href="../Content/Show/FarmDetails/review.css" rel="stylesheet" />
            <script src="../Scripts/Show/FarmDetails/seller.js"></script>
            <script src="../Scripts/Show/FarmDetails/api.js"></script>
            <script src="../Scripts/Show/FarmDetails/getscript.js"></script>
          <link href="../Content/Show/FarmDetails/cityquery.css" rel="stylesheet" />
    <link href="../Content/Show/FarmDetails/main_huandeng.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
		<div class="warps">
			<div class="blank"></div>
			<div class="site_nav clearfix">
				<div class="f_l">
					您所在的位置：
					<a href="#">首页</a>
					- <a href="#">农庄</a>
					- <a href="#"><%=product.Area.AreaName %></a>
					- <a href="#"><%= product.ProductName %></a>
				</div>
				<div class="f_r r_range">
					&nbsp;|&nbsp;&nbsp;<a href="javascript:void(0);" class="fav-store FW-FAV-STORE" dataid="40">关注</a>
				</div>
			</div>
			<script type="text/javascript">
                var APP_ROOT = '';
                var CART_URL = '/cart';
                var CART_CHECK_URL = '/cart-check';
                var LOADER_IMG = '#';
                var ERROR_IMG = '#';
			</script>

            
			<dl id="idBox" class="lightbox" style="z-index: 10000; display: none;">
				<dt id="idBoxHead"><b><%= product.ProductName %></b> </dt>
				<dd>
					<div class="scrolltab">
						<span id="sLeftBtnA" class="sLeftBtnABan"></span>
						<span id="sRightBtnA" class="sRightBtnA"></span>
						<ul class="ulBigPic">
							<li class="liSelected">
								<span class="sPic">
									<i class="iBigPic"><a
											href="../Images/Tailorism/<%=product.Image.ToList()[0].ImageName %>""
											target="_blank" title=""><img alt="" height="420"
											src="../Images/Tailorism/<%=product.Image.ToList().FirstOrDefault().ImageName %>"></a></i>
								</span>
								<span class="sSideBox">
									<span class="sTitle"><a
											href="../Images/Tailorism/<%=product.Image.ToList()[0].ImageName %>""
											target="_blank" title=""></a></span>
								</span>
							</li>
							<li class="">
								<span class="sPic">
									<i class="iBigPic"><a
											href="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/526f19997eb34.jpg"
											target="_blank" title=""><img alt="" height="420"
												src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/526f19997eb34_860x420.jpg"></a></i>
								</span>
								<span class="sSideBox">
									<span class="sTitle"><a
											href="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/526f19997eb34.jpg"
											target="_blank" title=""></a></span>
								</span>
							</li>
							<li class="">
								<span class="sPic">
									<i class="iBigPic"><a
											href="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/526f1992d9ea9.jpg"
											target="_blank" title=""><img alt="" height="420"
												src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/526f1992d9ea9_860x420.jpg"></a></i>
								</span>
								<span class="sSideBox">
									<span class="sTitle"><a
											href="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/526f1992d9ea9.jpg"
											target="_blank" title=""></a></span>
								</span>
							</li>
							<li class="">
								<span class="sPic">
									<i class="iBigPic"><a
											href="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/526f198cf183f.jpg"
											target="_blank" title=""><img alt="" height="420"
												src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/526f198cf183f_860x420.jpg"></a></i>
								</span>
								<span class="sSideBox">
									<span class="sTitle"><a
											href="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/526f198cf183f.jpg"
											target="_blank" title=""></a></span>
								</span>
							</li>
							<li class="">
								<span class="sPic">
									<i class="iBigPic"><a
											href="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/526f1986dee04.jpg"
											target="_blank" title=""><img alt="" height="420"
												src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/526f1986dee04_860x420.jpg"></a></i>
								</span>
								<span class="sSideBox">
									<span class="sTitle"><a
											href="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/526f1986dee04.jpg"
											target="_blank" title=""></a></span>
								</span>
							</li>
							<li class="">
								<span class="sPic">
									<i class="iBigPic"><a
											href="#"
											target="_blank" title=""><img alt="" height="420"
												src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/526f197edc141_860x420.jpg"></a></i>
								</span>
								<span class="sSideBox">
									<span class="sTitle"><a
											href="#"
											target="_blank" title=""></a></span>
								</span>
							</li>
							<li class="">
								<span class="sPic">
									<i class="iBigPic"><a
											href="#"
											target="_blank" title=""><img alt="" height="420"
												src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/526f197875732_860x420.jpg"></a></i>
								</span>
								<span class="sSideBox">
									<span class="sTitle"><a
											href="http://sh.01nz.com.cn/public/attachment/201310/29/10/526f197875732.jpg"
											target="_blank" title=""></a></span>
								</span>
							</li>
						</ul>
						<!--ulBigPic end-->
						<div class="dSmallPicBox">
							<div class="dSmallPic">
								<ul class="ulSmallPic" style="width:2646px;left:0px" rel="stop">
									<li class="liSelected">
										<span class="sPic"><img alt=""
												src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/526f19a08f280_135x100.jpg"
												width="135" height="100"></span>
										<span class="sTitle"></span>
									</li>
									<li class="">
										<span class="sPic"><img alt=""
												src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/526f19997eb34_135x100.jpg"
												width="135" height="100"></span>
										<span class="sTitle"></span>
									</li>
									<li class="">
										<span class="sPic"><img alt=""
												src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/526f1992d9ea9_135x100.jpg"
												width="135" height="100"></span>
										<span class="sTitle"></span>
									</li>
									<li class="">
										<span class="sPic"><img alt=""
												src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/526f198cf183f_135x100.jpg"
												width="135" height="100"></span>
										<span class="sTitle"></span>
									</li>
									<li class="">
										<span class="sPic"><img alt=""
												src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/526f1986dee04_135x100.jpg"
												width="135" height="100"></span>
										<span class="sTitle"></span>
									</li>
									<li class="">
										<span class="sPic"><img alt=""
												src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/526f197edc141_135x100.jpg"
												width="135" height="100"></span>
										<span class="sTitle"></span>
									</li>
									<li class="">
										<span class="sPic"><img alt=""
												src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/526f197875732_135x100.jpg"
												width="135" height="100"></span>
										<span class="sTitle"></span>
									</li>
								</ul>
							</div>
							<span id="sLeftBtnB" class="sLeftBtnBBan"></span>
							<span id="sRightBtnB" class="sRightBtnB"></span>
						</div>
						<!--dSmallPicBox end-->
					</div>
					<div id="idBoxCancel"></div>
					<br><br>
				</dd>
			</dl>
			<div class="mtext">
				<div class="sd_sname">
					<div class="sd_snames f-24 f_l"><%= product.ProductName %></div>
					<div class="f_r sd_rl"><span class="hrdl f_l">6589次浏览</span>&nbsp;&nbsp;
						<!-- <a>我要认领</a> -->
					</div>
				</div>
                <div class="l-40 sd_zdss f-16 f_l">
                    <label class="f_l ">地址：上海奉贤海湾旅游区金海公路8号</label>
                    <a
                        href="../Map/Map.aspx?productId=<%=product.ProductId %>" class="f_l ditu_bz"><span
                            class="ditu_biao"></span>查看地图</a>
                    <div class="f_r sd_rl"></div>
                </div>
				<div class="sd_hp f_l"><a href="#">已推荐<label
							class="blue">258</label>人</a><a href="#"
						class="blue">2个点评</a>&nbsp;&nbsp; <a>好评度<span class="spa_pa">100%</span></a> </div>
				<div class="sd_img">
					<div class="sd_imgl zxx_test_list">
						<div class="mt_77">
							<a class="sd_imgone preview" title=""
								href="../Images/Tailorism/<%=product.Image.ToList()[0].ImageName %>">
								<img alt="" src="../Images/Tailorism/<%=product.Image.ToList()[0].ImageName %>"
									class="f_l" width="100%" height="100%">
							</a>
							<a class="sd_gd " id="idBoxOpen">查看更多图片（7）</a>
						</div>
						<a class="sd_imgl_img preview" title=""
							href="../Images/Tailorism/<%=product.Image.ToList()[1].ImageName%>">
							<img alt="" src="../Images/Show/FarmDetails/<%=product.Image.ToList()[1].ImageName %>"
								width="100%" height="100%">
						</a>
						<a class="sd_imgl_img preview" title=""
							href="../Images/Tailorism/<%=product.Image.ToList()[2].ImageName%>">
							<img alt="" src="../Images/Show/FarmDetails/<%=product.Image.ToList()[2].ImageName%>"
								width="100%" height="100%">
						</a>
						<a class="sd_imgl_img preview" title=""
							href="../Images/Tailorism/<%=product.Image.ToList()[3].ImageName%>">
							<img alt="" src="../Images/Show/FarmDetails/<%=product.Image.ToList()[3].ImageName%>"
								width="100%" height="100%">
						</a>
                        <a class="sd_imgl_img preview" title=""
                            href="../Images/Tailorism/<%=product.Image.ToList()[4].ImageName%>">
                            <img alt="" src="../Images/Show/FarmDetails/<%=product.Image.ToList()[4].ImageName%>"
                                width="100%" height="100%">
                        </a>
					</div>
					<div class="sd_imgr">
						<div class="sd_imgr_top">
							<ul>
								<li><label class="gray">适合类型：</label>
									<a class="azure sd_info">企业会务</a>
									<a class="azure sd_info">朋友圈活动</a>
									<a class="azure sd_info">老年养生</a>
									<a class="azure sd_info">亲子游玩</a>
									<a class="azure sd_info">家庭聚会</a>
								</li>

								<li><label class="gray">包含项目：</label>
									<a class="azure sd_info ">真人CS</a>
									<a class="azure sd_info ">卡拉OK</a>
									<a class="azure sd_info ">棋牌</a>
									<a class="azure sd_info ">烧烤</a>
								</li>
								<li><label class="gray">人均消费：</label><a class="orange">51-100</a></li>
								<li><label class="gray">提供设施：</label>
									<a class="azure sd_info ">垂钓 <span>
											<div class="sd_yc">
												面 积：0 亩 <br>
												费 用： 免费 <br>
											</div>
										</span>
									</a>
									<a class="azure sd_info ">卡拉OK <span>
											<div class="sd_yc">
												名 称： <br>
												可容纳：0 人 <br>
											</div>
										</span>
									</a>
									<a class="azure sd_info ">会议室 <span>
											<div class="sd_yc">
												名 称： <br>
												可容纳：0 人 <br>
											</div>
										</span>
									</a>
									<a class="azure sd_info ">住宿 <span>
											<div class="sd_yc">
												可容纳：80 人 <br>
												住 房：40 间
											</div>
										</span>
									</a>
									<a class="azure sd_info ">餐饮 <span>
											<div class="sd_yc">
												可容纳：200 人 <br>
												大 厅：0 桌<br>
												包 房：0 间
											</div>
										</span>
									</a>
									<a class="azure sd_info hide">烧烤 <span>
											<div class="sd_yc">
												可容纳：0 人<br>
												费 用： 免费 <br>
											</div>
										</span>
									</a>
									<a class="azure sd_info hide">棋牌 <span>
											<div class="sd_yc">
												一 共：0 桌<br>
												费 用： 免费 <br>
											</div>
										</span>
									</a>
								</li>
								<li><label class="gray">咨询电话：</label><label class="orange f-20">400-021-3158</label>
								</li>
							</ul>
						</div>
						<div class="sd_imgr_bottom">
							<div class="sd_dpname f_l f-18">liulei:</div>
							<div class="sd_dptext f_l">
								哈哈哈 一天钓了好多鱼，开心啦啦啦啦啦啊 </div>
						</div>
					</div>
				</div>
				<div class="sd_cx">
					<div class="sd_cxx f_l">出行圈子：
						<select name="group_id">
							<option value="1">企业会务</option>
							<option value="2">朋友圈活动</option>
							<option value="3">老年养生</option>
							<option value="4">亲子游玩</option>
							<option value="5">家庭聚会</option>
							<option value="8">学生活动</option>
						</select>
					</div>
					<div class="sd_cxx f_l">出行人数：<input type="text" name="number">人</div>
					<div class="sd_cxx f_l">联系人：<input type="text" name="contacts"></div>
					<div class="sd_cxx f_l">联系方式：<input type="text" name="contact"></div>
					<a href="#">
						<div class="sd_tj f_l">加入推荐</div>
					</a>
					<a href="#">
						<div class="sd_tj f_l">立即预定</div>
					</a>
				</div>

				<div class="sd_xql">
					<div class="sd_mages">
						<div class="sd_xql_top">
							<ul>
								<li class="sd_xql_bb">预定须知</li>
								<li class="sd_xql_cc"><a
										href="#">预定项目</a></li>
								<li class="sd_xql_cc"><a
										href="#">商户详情</a></li>
								<li class="sd_xql_cc"><a href="#">客户点评</a>
								</li>
							</ul>
						</div>
						<div class="sd_xz">预定须知<div class="sd_poa"></div>
						</div>
						<div class="sd_ydxz">
							<ul>
								<li>1、预定填写好需求信息，联系方式，将由农家负责人直接与您联系。</li>
								<li>2、商量好事宜通过第一农庄网预付定金（预付定金可获由第一农庄网提供的10万元出行保险）</li>
								<li>3、预付定金将直接在农家抵现</li>
								<li>4、如在商家消费时遇到欺诈或不合理的情况，可拨打投诉电话400-021-3158</li>
							</ul>
						</div>
						<div class="sd_zxyd">
							<ul>
								<li><img class="f_l" alt="" src="../Images/Show/FarmDetails/sd_news.png"></li>
								<li><label class="red">最新预定:</label> 赖***</li>
								<li>预定成功：<label class="red">以法莲度假村</label></li>
								<li>骑马 垂钓 烧烤 11人 </li>
								<li> 预定时间：2016-11-12 </li>
								<!--<li class="sd_wyyd" onclick="destine(40)"> 我要预定</li>-->
							</ul>

						</div>
						<div class="sd_xz" id="ul-store-info">预定项目<div class="sd_poa"></div>
						</div>
						<div class="sd_re w-100 f_l">
							<div class="sd_rel">
								<img alt="标准间"
									src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/53abb59815ac6_170x130.jpg"
									width="170px" height="130px">
							</div>
							<div class="sd_rer">
								<div class="sd_rename">标准间</div>
								<div class="sd_th">
									<ul>
										<li class="th_a">房间设施 </li>
										<li class="th_b">早餐</li>
										<li class="th_c">服务费</li>
										<li class="th_d">原价</li>
										<li class="th_e">现价</li>
									</ul>
								</div>
								<div class="sd_mess">
									<ul>
										<li class="th_a" onmouseover="fang_hover(660);" id="store_fang_hover_660">
											空调、电视、独立卫浴、宽带、洗漱用品 </li>
										<li class="th_b">有</li>
										<li class="th_c">含</li>
										<li class="th_d">¥288&nbsp;/&nbsp;间 </li>
										<li class="th_e">¥<span class="vip_price">200</span>&nbsp;/&nbsp;间</li>
										<li class="th_f"><a href="#"
												target="_blank">
												<div class="sd_messin">预订</div>
											</a></li>
									</ul>
									<div class="sd_messpa h" id="store_fang_660">
										<div class="sd_messpatitle  f_l">
											标准间 </div>
										<div class="sd_messpatext  f_l">
											空调、电视、独立卫浴、宽带、洗漱用品 </div>
									</div>
								</div>
							</div>
						</div>
						<div class="sd_xz" id="ul-store-review">商户详情<div class="sd_poa"></div>
						</div>
						<input type="hidden" id="biaoshi" value="0">
						<div class="sd_ydxz min_imh1" id="sh_brief">
							<p class="p0" style="margin-bottom:0pt;margin-top:0pt;"><span
									style="font-size:12px;font-family:&#39;times new roman&#39;;">&nbsp; &nbsp; &nbsp;
									&nbsp; 香豪小镇位于上海市奉贤区金海公路<font face="Times New Roman"><span
											style="font-size:12px;">8</span></font>
									<font face="宋体"><span
											style="font-size:12px;">号，（海湾旅游区和奉贤大学城金海公路东侧，奉柘公里北侧），占地面积</span></font>
									<font face="Times New Roman"><span style="font-size:12px;">120</span></font>
									<font face="宋体"><span style="font-size:12px;">亩。香豪小镇农家乐集餐饮、住宿、垂钓、<a
												href="#" target="_blank">果蔬采摘</a>、会务、<a
												href="#" target="_blank">棋牌</a>、</span></font>
									<font face="Times New Roman"><span style="font-size:12px;">KTV</span></font>
									<font face="宋体"><span
											style="font-size:12px;">、白领拓展、农产品超市于一体的农家乐式休闲度假农庄，香豪小镇是上海市市级三星级农家乐，也是最有特色、设施设备齐全、最受市民喜爱的农家乐。</span>
									</font>
								</span><span
									style="mso-spacerun:&#39;yes&#39;;font-size:10.5000pt;font-family:&#39;times new roman&#39;;">
									<o :p=""></o>
								</span></p>
						</div>
						<a href="javascript:void(0)" id="zhankai" onclick="zhankai()">[查看更多]</a>
						<div class="sd_xqss">
							<ul>
								<li>
									<div class="sd_xqss_title">设施提供</div>
									<div class="sd_xqss_text sd_info">
										<div class="sd_shes sd_she8"></div>
										垂钓
										<span>
											<div class="sd_yc">
												面 积：0 亩 <br>
												费 用： 免费 <br>

											</div>
										</span>
									</div>
									<div class="sd_xqss_text sd_info">
										<div class="sd_shes sd_she7"></div>
										卡拉OK
										<span>
											<div class="sd_yc">
												名 称： <br>
												可容纳：0 人 <br>

											</div>
										</span>
									</div>
									<div class="sd_xqss_text sd_info">
										<div class="sd_shes sd_she3"></div>
										会议室
										<span>
											<div class="sd_yc">
												名 称： <br>
												可容纳：0 人 <br>

											</div>
										</span>
									</div>
									<div class="sd_xqss_text sd_info">
										<div class="sd_shes sd_she2"></div>
										住宿
										<span>
											<div class="sd_yc">
												可容纳：80 人 <br>
												住 房：40 间

											</div>
										</span>
									</div>
									<div class="sd_xqss_text sd_info">
										<div class="sd_shes sd_she1"></div>
										餐饮
										<span>
											<div class="sd_yc">
												可容纳：200 人 <br>
												大 厅：0 桌<br>
												包 房：0 间

											</div>
										</span>
									</div>
									<div class="sd_xqss_text sd_info">
										<div class="sd_shes sd_she9"></div>
										烧烤
										<span>
											<div class="sd_yc">
												可容纳：0 人<br>
												费 用： 免费 <br>

											</div>
										</span>
									</div>
									<div class="sd_xqss_text sd_info">
										<div class="sd_shes sd_she10"></div>
										棋牌
										<span>
											<div class="sd_yc">
												一 共：0 桌<br>
												费 用： 免费 <br>

											</div>
										</span>
									</div>
								</li>
								<li>
									<div class="sd_xqss_title">游玩项目 </div>
									<a class="sd_xqss_text sd_info">
										真人CS </a>
									<a class="sd_xqss_text sd_info">
										卡拉OK </a>
									<a class="sd_xqss_text sd_info">
										棋牌 </a>
									<a class="sd_xqss_text sd_info">
										烧烤 </a>

								</li>
								<li>
									<div class="sd_xqss_title">公交线路 </div>
									1、石化汽车站、金山汽车站（朱泾）、南汇汽车站均有公交到南桥汽车站，同站换乘南桥9路至香豪小镇农家乐下
									2、浦东新区乘浦卫专线或浦卫线，或奉川线（原603）到南桥汽车站，同站换乘南桥9路至香豪小镇农家乐下
								</li>
								<li>
									<div class="sd_xqss_title">自驾线路 </div>
									1、 南北高架--卢浦大桥--济阳路--浦星路--奉柘公路（右转弯）--金海公路（右转弯）--香豪小镇农家乐（右侧100米）
									2、 沪闵高架或A20--莘庄立交--S4（原A4）--海湾路出口--奉柘公路（左转弯）--金海公路（左转弯）--香豪小镇农家乐（右侧100米）
								</li>
							</ul>
						</div>
					</div>
					<div class="sd_comment">
						<div class="sd_comment_t">
							<div class="sd_xz" id="ul-store-dp">客户点评</div>
							<div class="sd_satisficing">
								<div class="sd_percentum">
									100%
								</div>
								<div class="sd_satisfaction">
									<div class="sd_satisfaction_ft">客户满意度</div>
									<div class="f-14">（来自2个客户点评）</div>
								</div>
								<div class="sd_manner">

								</div>
								<div class="sd_publish" onclick="review_forms(40);">我也发表</div>
							</div>
							<div id="store_dp" class="store_dp" name="store_dp">
								<div class="sd_comment_text">
									<ul>
										<li class="current"><a href="javascript:void(0);"
												onclick="load_store_dp(40,0,&#39;&#39;,&#39;&#39;);">全部点评<em>(2)</em></a>
										</li>
									</ul>
								</div>
								<div class="blank"></div>
								<div class="clearfix">
									<div class="blank"></div>
									<div class="review_item" style="margin-left:15px;margin-right:15px;">
										<div class="hd">
											<img alt="亲子游玩" src="../Images/Show/FarmDetails/55b09aae67069.png"	width="100%" height="100px"/>
											<div class="sd_cname f_l"><a href="#"
													class="user_name" onmouseover="userCard.load(this,341);">liule…</a>
											</div>
											<div class="sd_cname f_l">2015-09-02</div>
										</div>
										<div class="review_content">
											<div class="review_point">
												<span class="point_title">总评：</span> <span
													class="point_result">非常好</span>
												<span class="point_title">卫生：</span> <span class="point_result">5</span>
												<span class="point_title">服务：</span> <span class="point_result">5</span>
												<span class="point_title">环境：</span> <span class="point_result">5</span>
											</div>

											<div class="review_title">
												<a href="#"
													title="钓鱼还不错">钓鱼还不错</a>
											</div>
											哈哈哈 一天钓了好多鱼，开心啦啦啦啦啦啊 <a class="viewall"
												href="#"
												title="查看全文">[查看全文 ]</a>
											<div class="blank"></div>
											<div class="store_tag_info">
											</div>


											<div class="blank"></div>
											<div class="review_date">
												liulei 在 2015-09-02 发表了点评
											</div>
											<div class="blank0"></div>
											<div class="response">
												<span>这篇点评怎么样？</span>
												<p class="response-good"><a
														onclick="$.Vote_Flower(this,&#39;good_count&#39;,124,&#39;有用&#39;,&#39;dp&#39;,DpVoteUpdate);"
														href="javascript:void(0);">有用</a><b>(0)</b></p>
												<p class="response-bad"><a
														onclick="$.Vote_Flower(this,&#39;bad_count&#39;,124,&#39;没用&#39;,&#39;dp&#39;,DpVoteUpdate);"
														href="javascript:void(0);">没用</a><b>(0)</b></p>

												<div class="funcbox">
													<a href="#">详情</a> |
													<a
														href="#">回应</a>
													<!--<a href="javascript:void(0);" onclick="$.User_Report('dp',124);">举报</a>-->
												</div>
											</div>
										</div>

										<div class="blank"></div>

									</div>
									<div class="review_item" style="margin-left:15px;margin-right:15px;">

										<div class="hd">
											
											<img alt="朋友圈活动" src="../Images/Show/FarmDetails/55b09a924aac5.png"" width="100%" height="100px"/>
											<div class="sd_cname f_l"><a href="#"
													class="user_name" onmouseover="userCard.load(this,);"></a> </div>
											<div class="sd_cname f_l">2015-07-23</div>
										</div>
										<div class="review_content">
											<div class="review_point">
												<span class="point_title">总评：</span> <span
													class="point_result">非常好</span>
												<span class="point_title">环境：</span> <span class="point_result">5</span>
												<span class="point_title">服务：</span> <span class="point_result">5</span>
												<span class="point_title">卫生：</span> <span class="point_result">5</span>
											</div>

											<div class="review_title">
												<a href="#"
													title="和朋友去的">和朋友去的</a>
											</div>


											农庄不错，和朋友一起去过的，环境 卫生都很好。很开心 <a class="viewall"
												href="#SS"
												title="查看全文">[查看全文 ]</a>
											<div class="blank"></div>
											<div class="store_tag_info">
											</div>


											<div class="blank"></div>
											<div class="review_date">
												在 2015-07-23 发表了点评
											</div>
											<div class="blank0"></div>
											<div class="response">
												<span>这篇点评怎么样？</span>
												<p class="response-good"><a
														onclick="$.Vote_Flower(this,&#39;good_count&#39;,112,&#39;有用&#39;,&#39;dp&#39;,DpVoteUpdate);"
														href="javascript:void(0);">有用</a><b>(0)</b></p>
												<p class="response-bad"><a
														onclick="$.Vote_Flower(this,&#39;bad_count&#39;,112,&#39;没用&#39;,&#39;dp&#39;,DpVoteUpdate);"
														href="javascript:void(0);">没用</a><b>(0)</b></p>

												<div class="funcbox">
													<a href="#">详情</a> |
													<a
														href="#">回应</a>
													<!--<a href="javascript:void(0);" onclick="$.User_Report('dp',112);">举报</a>-->
												</div>
											</div>
										</div>

										<div class="blank"></div>

									</div>
									<div class="blank"></div>
									<div class="pages" id="review_pages">
										2 条记录 1/1 页 </div>
									<div class="blank"></div>
								</div>

							</div>
							<div class="blank"></div>
							<div class="sd_tjs">
								<div class="sd_fj ">
									<div class="f_l f-24">附近农庄</div>
									<div class="f_r"><a class="f-16" href="javascript:void(0)"
											onclick="nearby_huan(40)">换一批</a></div>
								</div>
								<div id="nearby">
									<input type="hidden" id="limet" value="4">
								</div>
							</div>
							<div class="sd_tjs">
								<div class="sd_fj ">
									<div class="f_l f-24">最近浏览</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="sd_xqr ">
					<div class="sd_bz">
						<div class="sd_bzx">
							<div class="sd_bz_title f_l f-22">
								第一农庄网四大保障
							</div>
							<ul>
								<li>
									<div class="sd_bzs sd_bzsa"></div>
									<div class="sd_bzs_title">海量农家</div>
									<div class="sd_bzs_top">2万多家农家随意挑选</div>
									<div class="sd_bzs_top">发布需求获推荐3家优质农家</div>
								</li>

								<li>
									<div class="sd_bzs sd_bzsb"></div>
									<div class="sd_bzs_title">安全出行</div>
									<div class="sd_bzs_top">预付订金</div>
									<div class="sd_bzs_top">即赠送价值10万元安全出行险</div>
								</li>

								<li>
									<div class="sd_bzs sd_bzsc"></div>
									<div class="sd_bzs_title">先行赔付</div>
									<div class="sd_bzs_top">消费受损失</div>
									<div class="sd_bzs_top">我们将先行赔付</div>
								</li>

								<li>
									<div class="sd_bzs sd_bzsd"></div>
									<div class="sd_bzs_title">点评惊喜</div>
									<div class="sd_bzs_top">点评就返现金还送精品礼包</div>
								</li>
							</ul>
						</div>
					</div>
					<div class="sd_dt">
						<div class="s_map" style="background:#FFF">
							<div id="s_containers"
								style="overflow: hidden; position: relative; z-index: 0; background-color: rgb(243, 241, 236); color: rgb(0, 0, 0); text-align: left;">
								<div
									style="overflow: visible; position: absolute; z-index: 0; left: 0px; top: 0px; cursor: url(&quot;http://api.map.baidu.com/images/openhand.cur&quot;) 8 8, default;">
									<div class="BMap_mask"
										style="position: absolute; left: 0px; top: 0px; z-index: 9; overflow: hidden; user-select: none; width: 356px; height: 258px;">
									</div>
									<div
										style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 200;">
										<div
											style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 800;">
										</div>
										<div
											style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 700;">
											<span class="BMap_Marker BMap_noprint" unselectable="on" "="" style="
												position: absolute; padding: 0px; margin: 0px; border: 0px; cursor:
												pointer; background:
												url(&quot;http://api.map.baidu.com/images/blank.gif&quot;); width: 23px;
												height: 25px; left: 168px; top: 104px; z-index: -6171114;"
												title=""></span></div>
										<div
											style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 600;">
										</div>
										<div
											style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 500;">
											<label class="BMapLabel" unselectable="on"
												style="position: absolute; display: none; cursor: inherit; background-color: rgb(190, 190, 190); border: 1px solid rgb(190, 190, 190); padding: 1px; white-space: nowrap; font: 12px arial, sans-serif; z-index: -20000; color: rgb(190, 190, 190);">shadow</label>
										</div>
										<div
											style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 400;">
											<span class="BMap_Marker" unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: 168px; top: 104px; z-index: -6171114;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 23px; height: 25px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/marker_red_hd.png"
														style="border:none;left:0px; top:0px; position:absolute;; width:23px; height:25px;">
												</div>
											</span></div>
										<div
											style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 300;">
											<span unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 20px; height: 11px; left: 172px; top: 118px;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 20px; height: 11px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/marker_red_sprite.png"
														style="border:none;left:-19px; top:-13px; position:absolute;">
												</div>
											</span></div>
										<div
											style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 201;">
										</div>
										<div
											style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 200;">
										</div>
									</div>
									<div
										style="position: absolute; overflow: visible; top: 0px; left: 0px; z-index: 1;">
										<div
											style="position: absolute; overflow: visible; z-index: -100; left: 178px; top: 129px;">
											<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/saved_resource"
												style="position: absolute; border: none; width: 128px; height: 128px; left: -210px; top: -37px; max-width: none; opacity: 1;"><img
												src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/saved_resource(1)"
												style="position: absolute; border: none; width: 128px; height: 128px; left: 46px; top: 91px; max-width: none; opacity: 1;"><img
												src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/saved_resource(2)"
												style="position: absolute; border: none; width: 128px; height: 128px; left: -82px; top: -37px; max-width: none; opacity: 1;"><img
												src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/saved_resource(3)"
												style="position: absolute; border: none; width: 128px; height: 128px; left: -210px; top: -165px; max-width: none; opacity: 1;"><img
												src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/saved_resource(4)"
												style="position: absolute; border: none; width: 128px; height: 128px; left: -82px; top: 91px; max-width: none; opacity: 1;"><img
												src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/saved_resource(5)"
												style="position: absolute; border: none; width: 128px; height: 128px; left: 46px; top: -37px; max-width: none; opacity: 1;"><img
												src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/saved_resource(6)"
												style="position: absolute; border: none; width: 128px; height: 128px; left: -82px; top: -165px; max-width: none; opacity: 1;"><img
												src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/saved_resource(7)"
												style="position: absolute; border: none; width: 128px; height: 128px; left: 46px; top: -165px; max-width: none; opacity: 1;"><img
												src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/saved_resource(8)"
												style="position: absolute; border: none; width: 128px; height: 128px; left: -210px; top: 91px; max-width: none; opacity: 1;"><img
												src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/saved_resource(9)"
												style="position: absolute; border: none; width: 128px; height: 128px; left: 174px; top: -37px; max-width: none; opacity: 1;"><img
												src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/saved_resource(10)"
												style="position: absolute; border: none; width: 128px; height: 128px; left: 174px; top: 91px; max-width: none; opacity: 1;"><img
												src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/saved_resource(11)"
												style="position: absolute; border: none; width: 128px; height: 128px; left: 174px; top: -165px; max-width: none; opacity: 1;">
										</div>
									</div>
									<div
										style="position: absolute; overflow: visible; top: 0px; left: 0px; z-index: 2;">
									</div>
								</div>
								<div class=" anchorBL"
									style="height: 32px; position: absolute; z-index: 10; text-size-adjust: none; bottom: 2px; right: auto; top: auto; left: 3px;">
									<a title="到百度地图查看此区域" target="_blank" href="http://map.baidu.com/?sr=1"
										style="outline: none;"><img style="border:none;width:77px;height:32px"
											src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/copyright_logo.png"></a>
								</div>
								<div id="zoomer"
									style="position:absolute;z-index:0;top:0px;left:0px;overflow:hidden;visibility:hidden;cursor:url(http://api.map.baidu.com/images/openhand.cur) 8 8,default">
									<div class="BMap_zoomer" style="top:0;left:0;"></div>
									<div class="BMap_zoomer" style="top:0;right:0;"></div>
									<div class="BMap_zoomer" style="bottom:0;left:0;"></div>
									<div class="BMap_zoomer" style="bottom:0;right:0;"></div>
								</div>
								<div unselectable="on" class=" BMap_stdMpCtrl BMap_stdMpType0 BMap_noprint anchorTL"
									style="width: 62px; height: 186px; bottom: auto; right: auto; top: 10px; left: 10px; position: absolute; z-index: 1100; text-size-adjust: none;">
									<div class="BMap_stdMpPan">
										<div class="BMap_button BMap_panN" title="向上平移"></div>
										<div class="BMap_button BMap_panW" title="向左平移"></div>
										<div class="BMap_button BMap_panE" title="向右平移"></div>
										<div class="BMap_button BMap_panS" title="向下平移"></div>
										<div class="BMap_stdMpPanBg BMap_smcbg"></div>
									</div>
									<div class="BMap_stdMpZoom" style="height: 141px; width: 62px;">
										<div class="BMap_button BMap_stdMpZoomIn" title="放大一级">
											<div class="BMap_smcbg"></div>
										</div>
										<div class="BMap_button BMap_stdMpZoomOut" title="缩小一级" style="top: 120px;">
											<div class="BMap_smcbg"></div>
										</div>
										<div class="BMap_stdMpSlider" style="height: 102px;">
											<div class="BMap_stdMpSliderBgTop" style="height: 102px;">
												<div class="BMap_smcbg"></div>
											</div>
											<div class="BMap_stdMpSliderBgBot" style="top: 13px; height: 93px;"></div>
											<div class="BMap_stdMpSliderMask" title="放置到此级别"></div>
											<div class="BMap_stdMpSliderBar" title="拖动缩放"
												style="cursor: url(&quot;http://api.map.baidu.com/images/openhand.cur&quot;) 8 8, default; top: 13px;">
												<div class="BMap_smcbg"></div>
											</div>
										</div>
										<div class="BMap_zlHolder">
											<div class="BMap_zlSt">
												<div class="BMap_smcbg"></div>
											</div>
											<div class="BMap_zlCity">
												<div class="BMap_smcbg"></div>
											</div>
											<div class="BMap_zlProv">
												<div class="BMap_smcbg"></div>
											</div>
											<div class="BMap_zlCountry">
												<div class="BMap_smcbg"></div>
											</div>
										</div>
									</div>
								</div>
								<div unselectable="on" class=" BMap_cpyCtrl BMap_noprint anchorBL"
									style="cursor: default; white-space: nowrap; color: black; background: none; font: 11px/15px arial, sans-serif; bottom: 2px; right: auto; top: auto; left: 81px; position: absolute; z-index: 10; text-size-adjust: none;">
									<span _cid="1"><span
											style="background: rgba(255, 255, 255, 0.701961);padding: 0px 1px;line-height: 16px;display: inline;height: 16px;">©&nbsp;2018
											Baidu - GS(2018)5572号 - 甲测资字1100930 - 京ICP证030173号 - Data ©
											长地万方</span></span></div>
							</div>
							<script type="text/javascript">
                                var xpoint = '121.520071';
                                var ypoint = '30.855576';
                                var map = new BMap.Map("s_containers"); //可以修改容器ID
                                var opts = {
                                    type: BMAP_NAVIGATION_CONTROL_ZOOM
                                }
                                map.addControl(new BMap.NavigationControl());
                                // map.centerAndZoom(new BMap.Point(116.404, 39.915), 11);  
                                // 创建地理编码服务实例  
                                var point = new BMap.Point(xpoint, ypoint);

                                // 将结果显示在地图上，并调整地图视野  
                                map.centerAndZoom(point, 16);
                                map.addOverlay(new BMap.Marker(point));
							</script>
						</div>
					</div>
					<div class="sd_dts">
						<link rel="Stylesheet" type="text/css"
							href="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/baidu_map.css" media="screen">
						<div class="map_wraps">
							<div id="map_area_ids" class="map_area"
								style="width: 353px; float: left; overflow: hidden; position: relative; z-index: 0; background-color: rgb(243, 241, 236); color: rgb(0, 0, 0); text-align: left;">
								<div
									style="overflow: visible; position: absolute; z-index: 0; left: 0px; top: 0px; cursor: url(&quot;http://api.map.baidu.com/images/openhand.cur&quot;) 8 8, default;">
									<div class="BMap_mask"
										style="position: absolute; left: 0px; top: 0px; z-index: 9; overflow: hidden; user-select: none; width: 353px; height: 575px;">
									</div>
									<div
										style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 200;">
										<div
											style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 800;">
										</div>
										<div
											style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 700;">
											<span class="BMap_Marker BMap_noprint" unselectable="on" "="" style="
												position: absolute; padding: 0px; margin: 0px; border: 0px; cursor:
												pointer; background:
												url(&quot;http://api.map.baidu.com/images/blank.gif&quot;); width: 40px;
												height: 40px; left: 157px; top: 268px; z-index: -6171114;"
												title=""></span><span class="BMap_Marker BMap_noprint"
												unselectable="on" "="" style=" position: absolute; padding: 0px; margin:
												0px; border: 0px; cursor: pointer; background:
												url(&quot;http://api.map.baidu.com/images/blank.gif&quot;); width: 23px;
												height: 25px; left: -122px; top: -178px; z-index: -6258316; user-select:
												none;" title="上海汽车城"></span><span class="BMap_Marker BMap_noprint"
												unselectable="on" "="" style=" position: absolute; padding: 0px; margin:
												0px; border: 0px; cursor: pointer; background:
												url(&quot;http://api.map.baidu.com/images/blank.gif&quot;); width: 23px;
												height: 25px; left: 154px; top: -142px; z-index: -6251166; user-select:
												none;" title="国际客运中心"></span><span class="BMap_Marker BMap_noprint"
												unselectable="on" "="" style=" position: absolute; padding: 0px; margin:
												0px; border: 0px; cursor: pointer; background:
												url(&quot;http://api.map.baidu.com/images/blank.gif&quot;); width: 23px;
												height: 25px; left: 207px; top: -95px; z-index: -6241948; user-select:
												none;" title="龙阳路地铁站"></span><span class="BMap_Marker BMap_noprint"
												unselectable="on" "="" style=" position: absolute; padding: 0px; margin:
												0px; border: 0px; cursor: pointer; background:
												url(&quot;http://api.map.baidu.com/images/blank.gif&quot;); width: 23px;
												height: 25px; left: -136px; top: -180px; z-index: -6258806; user-select:
												none;" title="星程酒店(上海安亭地铁站店)(原汽车城店)"></span><span
												class="BMap_Marker BMap_noprint" unselectable="on" "="" style="
												position: absolute; padding: 0px; margin: 0px; border: 0px; cursor:
												pointer; background:
												url(&quot;http://api.map.baidu.com/images/blank.gif&quot;); width: 23px;
												height: 25px; left: 154px; top: -141px; z-index: -6251074; user-select:
												none;" title="国际客运中心地铁站-3口"></span><span
												class="BMap_Marker BMap_noprint" unselectable="on" "="" style="
												position: absolute; padding: 0px; margin: 0px; border: 0px; cursor:
												pointer; background:
												url(&quot;http://api.map.baidu.com/images/blank.gif&quot;); width: 23px;
												height: 25px; left: -82px; top: -271px; z-index: -6276672; user-select:
												none;" title="如家酒店(上海嘉定客运中心地铁西站店)"></span><span
												class="BMap_Marker BMap_noprint" unselectable="on" "="" style="
												position: absolute; padding: 0px; margin: 0px; border: 0px; cursor:
												pointer; background:
												url(&quot;http://api.map.baidu.com/images/blank.gif&quot;); width: 23px;
												height: 25px; left: 84px; top: -129px; z-index: -6248646; user-select:
												none;" title="上海汽车公寓青年旅舍(曹杨路地铁站店)"></span><span
												class="BMap_Marker BMap_noprint" unselectable="on" "="" style="
												position: absolute; padding: 0px; margin: 0px; border: 0px; cursor:
												pointer; background:
												url(&quot;http://api.map.baidu.com/images/blank.gif&quot;); width: 23px;
												height: 25px; left: -122px; top: -178px; z-index: -6258316; user-select:
												none;" title="上海汽车城"></span><span class="BMap_Marker BMap_noprint"
												unselectable="on" "="" style=" position: absolute; padding: 0px; margin:
												0px; border: 0px; cursor: pointer; background:
												url(&quot;http://api.map.baidu.com/images/blank.gif&quot;); width: 23px;
												height: 25px; left: 63px; top: -104px; z-index: -6243774; user-select:
												none;" title="上海交运云峰龙威汽车销售服务有限公司"></span><span
												class="BMap_Marker BMap_noprint" unselectable="on" "="" style="
												position: absolute; padding: 0px; margin: 0px; border: 0px; cursor:
												pointer; background:
												url(&quot;http://api.map.baidu.com/images/blank.gif&quot;); width: 23px;
												height: 25px; left: -122px; top: -178px; z-index: -6258332; user-select:
												none;" title="上海汽车城地铁站-1口"></span><span class="BMap_Marker BMap_noprint"
												unselectable="on" "="" style=" position: absolute; padding: 0px; margin:
												0px; border: 0px; cursor: pointer; background:
												url(&quot;http://api.map.baidu.com/images/blank.gif&quot;); width: 23px;
												height: 25px; left: 385px; top: 64px; z-index: -6210500; user-select:
												none;" title="南汇汽车站"></span><span class="BMap_Marker BMap_noprint"
												unselectable="on" "="" style=" position: absolute; padding: 0px; margin:
												0px; border: 0px; cursor: pointer; background:
												url(&quot;http://api.map.baidu.com/images/blank.gif&quot;); width: 23px;
												height: 25px; left: 0px; top: -85px; z-index: -6239962; user-select:
												none;" title="上海虹桥站-出发"></span><span class="BMap_Marker BMap_noprint"
												unselectable="on" "="" style=" position: absolute; padding: 0px; margin:
												0px; border: 0px; cursor: pointer; background:
												url(&quot;http://api.map.baidu.com/images/blank.gif&quot;); width: 23px;
												height: 25px; left: 421px; top: -41px; z-index: -6231270; user-select:
												none;" title="上海浦东国际机场-长途客运站"></span><span
												class="BMap_Marker BMap_noprint" unselectable="on" "="" style="
												position: absolute; padding: 0px; margin: 0px; border: 0px; cursor:
												pointer; background:
												url(&quot;http://api.map.baidu.com/images/blank.gif&quot;); width: 23px;
												height: 25px; left: 58px; top: 1px; z-index: -6222878; user-select:
												none;" title="莘庄地铁站(南广场)"></span><span class="BMap_Marker BMap_noprint"
												unselectable="on" "="" style=" position: absolute; padding: 0px; margin:
												0px; border: 0px; cursor: pointer; background:
												url(&quot;http://api.map.baidu.com/images/blank.gif&quot;); width: 23px;
												height: 25px; left: 22px; top: -68px; z-index: -6236530; user-select:
												none;" title="汉庭酒店(上海虹桥枢纽火车站新店)(原机场新店)"></span><span
												class="BMap_Marker BMap_noprint" unselectable="on" "="" style="
												position: absolute; padding: 0px; margin: 0px; border: 0px; cursor:
												pointer; background:
												url(&quot;http://api.map.baidu.com/images/blank.gif&quot;); width: 23px;
												height: 25px; left: 420px; top: -42px; z-index: -6231460; user-select:
												none;" title="浦东机场"></span><span class="BMap_Marker BMap_noprint"
												unselectable="on" "="" style=" position: absolute; padding: 0px; margin:
												0px; border: 0px; cursor: pointer; background:
												url(&quot;http://api.map.baidu.com/images/blank.gif&quot;); width: 23px;
												height: 25px; left: 116px; top: -140px; z-index: -6250754; user-select:
												none;" title="上海火车站(南广场)"></span><span class="BMap_Marker BMap_noprint"
												unselectable="on" "="" style=" position: absolute; padding: 0px; margin:
												0px; border: 0px; cursor: pointer; background:
												url(&quot;http://api.map.baidu.com/images/blank.gif&quot;); width: 23px;
												height: 25px; left: 1px; top: -114px; z-index: -6245708; user-select:
												none;" title="汉庭酒店(上海虹桥火车站北翟路店)"></span><span
												class="BMap_Marker BMap_noprint" unselectable="on" "="" style="
												position: absolute; padding: 0px; margin: 0px; border: 0px; cursor:
												pointer; background:
												url(&quot;http://api.map.baidu.com/images/blank.gif&quot;); width: 23px;
												height: 25px; left: 2px; top: -85px; z-index: -6239896; user-select:
												none;" title="虹桥火车站(下客站)"></span><span class="BMap_Marker BMap_noprint"
												unselectable="on" "="" style=" position: absolute; padding: 0px; margin:
												0px; border: 0px; cursor: pointer; background:
												url(&quot;http://api.map.baidu.com/images/blank.gif&quot;); width: 23px;
												height: 25px; left: 379px; top: -43px; z-index: -6231714; user-select:
												none;" title="施湾"></span><span class="BMap_Marker BMap_noprint"
												unselectable="on" "="" style=" position: absolute; padding: 0px; margin:
												0px; border: 0px; cursor: pointer; background:
												url(&quot;http://api.map.baidu.com/images/blank.gif&quot;); width: 23px;
												height: 25px; left: 166px; top: -153px; z-index: -6253434; user-select:
												none;" title="小南国(宝地广场店)"></span><span class="BMap_Marker BMap_noprint"
												unselectable="on" "="" style=" position: absolute; padding: 0px; margin:
												0px; border: 0px; cursor: pointer; background:
												url(&quot;http://api.map.baidu.com/images/blank.gif&quot;); width: 23px;
												height: 25px; left: 153px; top: -138px; z-index: -6250456; user-select:
												none;" title="尚9一滴水"></span><span class="BMap_Marker BMap_noprint"
												unselectable="on" "="" style=" position: absolute; padding: 0px; margin:
												0px; border: 0px; cursor: pointer; background:
												url(&quot;http://api.map.baidu.com/images/blank.gif&quot;); width: 23px;
												height: 25px; left: 134px; top: -128px; z-index: -6248336; user-select:
												none;" title="新白鹿餐厅(南京东路店)"></span><span
												class="BMap_Marker BMap_noprint" unselectable="on" "="" style="
												position: absolute; padding: 0px; margin: 0px; border: 0px; cursor:
												pointer; background:
												url(&quot;http://api.map.baidu.com/images/blank.gif&quot;); width: 23px;
												height: 25px; left: 137px; top: -121px; z-index: -6247146; user-select:
												none;" title="上海人家(黄浦店)"></span><span class="BMap_Marker BMap_noprint"
												unselectable="on" "="" style=" position: absolute; padding: 0px; margin:
												0px; border: 0px; cursor: pointer; background:
												url(&quot;http://api.map.baidu.com/images/blank.gif&quot;); width: 23px;
												height: 25px; left: 159px; top: -121px; z-index: -6247042; user-select:
												none;" title="浦之舟餐厅"></span><span class="BMap_Marker BMap_noprint"
												unselectable="on" "="" style=" position: absolute; padding: 0px; margin:
												0px; border: 0px; cursor: pointer; background:
												url(&quot;http://api.map.baidu.com/images/blank.gif&quot;); width: 23px;
												height: 25px; left: 202px; top: -74px; z-index: -6237810; user-select:
												none;" title="阅香美地"></span><span class="BMap_Marker BMap_noprint"
												unselectable="on" "="" style=" position: absolute; padding: 0px; margin:
												0px; border: 0px; cursor: pointer; background:
												url(&quot;http://api.map.baidu.com/images/blank.gif&quot;); width: 23px;
												height: 25px; left: -36px; top: -274px; z-index: -6277202; user-select:
												none;" title="小灶王(嘉定澄浏中路店)"></span><span
												class="BMap_Marker BMap_noprint" unselectable="on" "="" style="
												position: absolute; padding: 0px; margin: 0px; border: 0px; cursor:
												pointer; background:
												url(&quot;http://api.map.baidu.com/images/blank.gif&quot;); width: 23px;
												height: 25px; left: 122px; top: -100px; z-index: -6242816; user-select:
												none;" title="云味大可堂(陕西南路店)"></span><span
												class="BMap_Marker BMap_noprint" unselectable="on" "="" style="
												position: absolute; padding: 0px; margin: 0px; border: 0px; cursor:
												pointer; background:
												url(&quot;http://api.map.baidu.com/images/blank.gif&quot;); width: 23px;
												height: 25px; left: 137px; top: -126px; z-index: -6248104; user-select:
												none;" title="鲜墙房(永安大饭店)"></span><span class="BMap_Marker BMap_noprint"
												unselectable="on" "="" style=" position: absolute; padding: 0px; margin:
												0px; border: 0px; cursor: pointer; background:
												url(&quot;http://api.map.baidu.com/images/blank.gif&quot;); width: 23px;
												height: 25px; left: 173px; top: -119px; z-index: -6246740; user-select:
												none;" title="海底捞火锅(张杨路店)"></span><span class="BMap_Marker BMap_noprint"
												unselectable="on" "="" style=" position: absolute; padding: 0px; margin:
												0px; border: 0px; cursor: pointer; background:
												url(&quot;http://api.map.baidu.com/images/blank.gif&quot;); width: 23px;
												height: 25px; left: 148px; top: -129px; z-index: -6248690; user-select:
												none;" title="外滩"></span><span class="BMap_Marker BMap_noprint"
												unselectable="on" "="" style=" position: absolute; padding: 0px; margin:
												0px; border: 0px; cursor: pointer; background:
												url(&quot;http://api.map.baidu.com/images/blank.gif&quot;); width: 23px;
												height: 25px; left: 148px; top: -118px; z-index: -6246398; user-select:
												none;" title="上海城隍庙"></span><span class="BMap_Marker BMap_noprint"
												unselectable="on" "="" style=" position: absolute; padding: 0px; margin:
												0px; border: 0px; cursor: pointer; background:
												url(&quot;http://api.map.baidu.com/images/blank.gif&quot;); width: 23px;
												height: 25px; left: -232px; top: -1px; z-index: -6223328; user-select:
												none;" title="上海朱家角古镇旅游区"></span><span class="BMap_Marker BMap_noprint"
												unselectable="on" "="" style=" position: absolute; padding: 0px; margin:
												0px; border: 0px; cursor: pointer; background:
												url(&quot;http://api.map.baidu.com/images/blank.gif&quot;); width: 23px;
												height: 25px; left: 348px; top: 55px; z-index: -6212276; user-select:
												none;" title="上海野生动物园"></span><span class="BMap_Marker BMap_noprint"
												unselectable="on" "="" style=" position: absolute; padding: 0px; margin:
												0px; border: 0px; cursor: pointer; background:
												url(&quot;http://api.map.baidu.com/images/blank.gif&quot;); width: 23px;
												height: 25px; left: 507px; top: 196px; z-index: -6184262; user-select:
												none;" title="上海海昌海洋公园"></span><span class="BMap_Marker BMap_noprint"
												unselectable="on" "="" style=" position: absolute; padding: 0px; margin:
												0px; border: 0px; cursor: pointer; background:
												url(&quot;http://api.map.baidu.com/images/blank.gif&quot;); width: 23px;
												height: 25px; left: 128px; top: -100px; z-index: -6242874; user-select:
												none;" title="田子坊"></span><span class="BMap_Marker BMap_noprint"
												unselectable="on" "="" style=" position: absolute; padding: 0px; margin:
												0px; border: 0px; cursor: pointer; background:
												url(&quot;http://api.map.baidu.com/images/blank.gif&quot;); width: 23px;
												height: 25px; left: 300px; top: -33px; z-index: -6229652; user-select:
												none;" title="上海迪士尼度假区"></span><span class="BMap_Marker BMap_noprint"
												unselectable="on" "="" style=" position: absolute; padding: 0px; margin:
												0px; border: 0px; cursor: pointer; background:
												url(&quot;http://api.map.baidu.com/images/blank.gif&quot;); width: 23px;
												height: 25px; left: -11px; top: -183px; z-index: -6259388; user-select:
												none;" title="南翔老街"></span><span class="BMap_Marker BMap_noprint"
												unselectable="on" "="" style=" position: absolute; padding: 0px; margin:
												0px; border: 0px; cursor: pointer; background:
												url(&quot;http://api.map.baidu.com/images/blank.gif&quot;); width: 23px;
												height: 25px; left: 149px; top: -118px; z-index: -6246534; user-select:
												none;" title="豫园"></span><span class="BMap_Marker BMap_noprint"
												unselectable="on" "="" style=" position: absolute; padding: 0px; margin:
												0px; border: 0px; cursor: pointer; background:
												url(&quot;http://api.map.baidu.com/images/blank.gif&quot;); width: 23px;
												height: 25px; left: -266px; top: 225px; z-index: -6178642; user-select:
												none;" title="枫泾古镇"></span></div>
										<div
											style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 600;">
										</div>
										<div
											style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 500;">
											<label class="BMapLabel" unselectable="on"
												style="position: absolute; display: none; cursor: inherit; background-color: rgb(190, 190, 190); border: 1px solid rgb(190, 190, 190); padding: 1px; white-space: nowrap; font: 12px arial, sans-serif; z-index: -20000; color: rgb(190, 190, 190);">shadow</label>
										</div>
										<div
											style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 400;">
											<span class="BMap_Marker" unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: 157px; top: 268px; z-index: -6171114;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 40px; height: 40px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/map-location.png"
														style="border:none;left:0px; top:0px; position:absolute;"></div>
											</span><span class="BMap_Marker" unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: -122px; top: -178px; z-index: -6258316;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 23px; height: 25px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/markers.png"
														style="border:none;left:0px; top:0px; position:absolute;"></div>
											</span><span class="BMap_Marker" unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: 154px; top: -142px; z-index: -6251166;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 23px; height: 25px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/markers.png"
														style="border:none;left:0px; top:-25px; position:absolute;">
												</div>
											</span><span class="BMap_Marker" unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: 207px; top: -95px; z-index: -6241948;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 23px; height: 25px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/markers.png"
														style="border:none;left:0px; top:-50px; position:absolute;">
												</div>
											</span><span class="BMap_Marker" unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: -136px; top: -180px; z-index: -6258806;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 23px; height: 25px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/markers.png"
														style="border:none;left:0px; top:-75px; position:absolute;">
												</div>
											</span><span class="BMap_Marker" unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: 154px; top: -141px; z-index: -6251074;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 23px; height: 25px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/markers.png"
														style="border:none;left:0px; top:-100px; position:absolute;">
												</div>
											</span><span class="BMap_Marker" unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: -82px; top: -271px; z-index: -6276672;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 23px; height: 25px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/markers.png"
														style="border:none;left:0px; top:-125px; position:absolute;">
												</div>
											</span><span class="BMap_Marker" unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: 84px; top: -129px; z-index: -6248646;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 23px; height: 25px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/markers.png"
														style="border:none;left:0px; top:-150px; position:absolute;">
												</div>
											</span><span class="BMap_Marker" unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: -122px; top: -178px; z-index: -6258316;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 23px; height: 25px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/markers.png"
														style="border:none;left:0px; top:-175px; position:absolute;">
												</div>
											</span><span class="BMap_Marker" unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: 63px; top: -104px; z-index: -6243774;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 23px; height: 25px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/markers.png"
														style="border:none;left:0px; top:-200px; position:absolute;">
												</div>
											</span><span class="BMap_Marker" unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: -122px; top: -178px; z-index: -6258332;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 23px; height: 25px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/markers.png"
														style="border:none;left:0px; top:-225px; position:absolute;">
												</div>
											</span><span class="BMap_Marker" unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: 385px; top: 64px; z-index: -6210500;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 23px; height: 25px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/markers.png"
														style="border:none;left:0px; top:0px; position:absolute;"></div>
											</span><span class="BMap_Marker" unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: 0px; top: -85px; z-index: -6239962;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 23px; height: 25px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/markers.png"
														style="border:none;left:0px; top:-25px; position:absolute;">
												</div>
											</span><span class="BMap_Marker" unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: 421px; top: -41px; z-index: -6231270;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 23px; height: 25px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/markers.png"
														style="border:none;left:0px; top:-50px; position:absolute;">
												</div>
											</span><span class="BMap_Marker" unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: 58px; top: 1px; z-index: -6222878;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 23px; height: 25px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/markers.png"
														style="border:none;left:0px; top:-75px; position:absolute;">
												</div>
											</span><span class="BMap_Marker" unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: 22px; top: -68px; z-index: -6236530;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 23px; height: 25px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/markers.png"
														style="border:none;left:0px; top:-100px; position:absolute;">
												</div>
											</span><span class="BMap_Marker" unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: 420px; top: -42px; z-index: -6231460;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 23px; height: 25px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/markers.png"
														style="border:none;left:0px; top:-125px; position:absolute;">
												</div>
											</span><span class="BMap_Marker" unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: 116px; top: -140px; z-index: -6250754;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 23px; height: 25px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/markers.png"
														style="border:none;left:0px; top:-150px; position:absolute;">
												</div>
											</span><span class="BMap_Marker" unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: 1px; top: -114px; z-index: -6245708;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 23px; height: 25px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/markers.png"
														style="border:none;left:0px; top:-175px; position:absolute;">
												</div>
											</span><span class="BMap_Marker" unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: 2px; top: -85px; z-index: -6239896;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 23px; height: 25px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/markers.png"
														style="border:none;left:0px; top:-200px; position:absolute;">
												</div>
											</span><span class="BMap_Marker" unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: 379px; top: -43px; z-index: -6231714;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 23px; height: 25px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/markers.png"
														style="border:none;left:0px; top:-225px; position:absolute;">
												</div>
											</span><span class="BMap_Marker" unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: 166px; top: -153px; z-index: -6253434;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 23px; height: 25px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/markers.png"
														style="border:none;left:0px; top:0px; position:absolute;"></div>
											</span><span class="BMap_Marker" unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: 153px; top: -138px; z-index: -6250456;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 23px; height: 25px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/markers.png"
														style="border:none;left:0px; top:-25px; position:absolute;">
												</div>
											</span><span class="BMap_Marker" unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: 134px; top: -128px; z-index: -6248336;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 23px; height: 25px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/markers.png"
														style="border:none;left:0px; top:-50px; position:absolute;">
												</div>
											</span><span class="BMap_Marker" unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: 137px; top: -121px; z-index: -6247146;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 23px; height: 25px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/markers.png"
														style="border:none;left:0px; top:-75px; position:absolute;">
												</div>
											</span><span class="BMap_Marker" unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: 159px; top: -121px; z-index: -6247042;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 23px; height: 25px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/markers.png"
														style="border:none;left:0px; top:-100px; position:absolute;">
												</div>
											</span><span class="BMap_Marker" unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: 202px; top: -74px; z-index: -6237810;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 23px; height: 25px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/markers.png"
														style="border:none;left:0px; top:-125px; position:absolute;">
												</div>
											</span><span class="BMap_Marker" unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: -36px; top: -274px; z-index: -6277202;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 23px; height: 25px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/markers.png"
														style="border:none;left:0px; top:-150px; position:absolute;">
												</div>
											</span><span class="BMap_Marker" unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: 122px; top: -100px; z-index: -6242816;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 23px; height: 25px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/markers.png"
														style="border:none;left:0px; top:-175px; position:absolute;">
												</div>
											</span><span class="BMap_Marker" unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: 137px; top: -126px; z-index: -6248104;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 23px; height: 25px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/markers.png"
														style="border:none;left:0px; top:-200px; position:absolute;">
												</div>
											</span><span class="BMap_Marker" unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: 173px; top: -119px; z-index: -6246740;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 23px; height: 25px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/markers.png"
														style="border:none;left:0px; top:-225px; position:absolute;">
												</div>
											</span><span class="BMap_Marker" unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: 148px; top: -129px; z-index: -6248690;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 23px; height: 25px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/markers.png"
														style="border:none;left:0px; top:0px; position:absolute;"></div>
											</span><span class="BMap_Marker" unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: 148px; top: -118px; z-index: -6246398;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 23px; height: 25px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/markers.png"
														style="border:none;left:0px; top:-25px; position:absolute;">
												</div>
											</span><span class="BMap_Marker" unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: -232px; top: -1px; z-index: -6223328;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 23px; height: 25px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/markers.png"
														style="border:none;left:0px; top:-50px; position:absolute;">
												</div>
											</span><span class="BMap_Marker" unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: 348px; top: 55px; z-index: -6212276;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 23px; height: 25px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/markers.png"
														style="border:none;left:0px; top:-75px; position:absolute;">
												</div>
											</span><span class="BMap_Marker" unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: 507px; top: 196px; z-index: -6184262;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 23px; height: 25px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/markers.png"
														style="border:none;left:0px; top:-100px; position:absolute;">
												</div>
											</span><span class="BMap_Marker" unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: 128px; top: -100px; z-index: -6242874;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 23px; height: 25px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/markers.png"
														style="border:none;left:0px; top:-125px; position:absolute;">
												</div>
											</span><span class="BMap_Marker" unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: 300px; top: -33px; z-index: -6229652;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 23px; height: 25px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/markers.png"
														style="border:none;left:0px; top:-150px; position:absolute;">
												</div>
											</span><span class="BMap_Marker" unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: -11px; top: -183px; z-index: -6259388;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 23px; height: 25px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/markers.png"
														style="border:none;left:0px; top:-175px; position:absolute;">
												</div>
											</span><span class="BMap_Marker" unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: 149px; top: -118px; z-index: -6246534;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 23px; height: 25px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/markers.png"
														style="border:none;left:0px; top:-200px; position:absolute;">
												</div>
											</span><span class="BMap_Marker" unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 0px; height: 0px; left: -266px; top: 225px; z-index: -6178642;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 23px; height: 25px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/markers.png"
														style="border:none;left:0px; top:-225px; position:absolute;">
												</div>
											</span></div>
										<div
											style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 300;">
											<span unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 20px; height: 11px; left: -119px; top: -164px;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 20px; height: 11px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/marker_red_sprite.png"
														style="border:none;left:-19px; top:-13px; position:absolute;">
												</div>
											</span><span unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 20px; height: 11px; left: 157px; top: -128px;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 20px; height: 11px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/marker_red_sprite.png"
														style="border:none;left:-19px; top:-13px; position:absolute;">
												</div>
											</span><span unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 20px; height: 11px; left: 210px; top: -81px;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 20px; height: 11px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/marker_red_sprite.png"
														style="border:none;left:-19px; top:-13px; position:absolute;">
												</div>
											</span><span unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 20px; height: 11px; left: -133px; top: -166px;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 20px; height: 11px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/marker_red_sprite.png"
														style="border:none;left:-19px; top:-13px; position:absolute;">
												</div>
											</span><span unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 20px; height: 11px; left: 157px; top: -127px;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 20px; height: 11px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/marker_red_sprite.png"
														style="border:none;left:-19px; top:-13px; position:absolute;">
												</div>
											</span><span unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 20px; height: 11px; left: -79px; top: -257px;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 20px; height: 11px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/marker_red_sprite.png"
														style="border:none;left:-19px; top:-13px; position:absolute;">
												</div>
											</span><span unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 20px; height: 11px; left: 87px; top: -115px;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 20px; height: 11px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/marker_red_sprite.png"
														style="border:none;left:-19px; top:-13px; position:absolute;">
												</div>
											</span><span unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 20px; height: 11px; left: -119px; top: -164px;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 20px; height: 11px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/marker_red_sprite.png"
														style="border:none;left:-19px; top:-13px; position:absolute;">
												</div>
											</span><span unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 20px; height: 11px; left: 66px; top: -90px;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 20px; height: 11px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/marker_red_sprite.png"
														style="border:none;left:-19px; top:-13px; position:absolute;">
												</div>
											</span><span unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 20px; height: 11px; left: -119px; top: -164px;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 20px; height: 11px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/marker_red_sprite.png"
														style="border:none;left:-19px; top:-13px; position:absolute;">
												</div>
											</span><span unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 20px; height: 11px; left: 388px; top: 78px;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 20px; height: 11px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/marker_red_sprite.png"
														style="border:none;left:-19px; top:-13px; position:absolute;">
												</div>
											</span><span unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 20px; height: 11px; left: 3px; top: -71px;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 20px; height: 11px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/marker_red_sprite.png"
														style="border:none;left:-19px; top:-13px; position:absolute;">
												</div>
											</span><span unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 20px; height: 11px; left: 424px; top: -27px;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 20px; height: 11px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/marker_red_sprite.png"
														style="border:none;left:-19px; top:-13px; position:absolute;">
												</div>
											</span><span unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 20px; height: 11px; left: 61px; top: 15px;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 20px; height: 11px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/marker_red_sprite.png"
														style="border:none;left:-19px; top:-13px; position:absolute;">
												</div>
											</span><span unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 20px; height: 11px; left: 25px; top: -54px;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 20px; height: 11px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/marker_red_sprite.png"
														style="border:none;left:-19px; top:-13px; position:absolute;">
												</div>
											</span><span unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 20px; height: 11px; left: 423px; top: -28px;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 20px; height: 11px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/marker_red_sprite.png"
														style="border:none;left:-19px; top:-13px; position:absolute;">
												</div>
											</span><span unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 20px; height: 11px; left: 119px; top: -126px;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 20px; height: 11px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/marker_red_sprite.png"
														style="border:none;left:-19px; top:-13px; position:absolute;">
												</div>
											</span><span unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 20px; height: 11px; left: 4px; top: -100px;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 20px; height: 11px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/marker_red_sprite.png"
														style="border:none;left:-19px; top:-13px; position:absolute;">
												</div>
											</span><span unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 20px; height: 11px; left: 5px; top: -71px;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 20px; height: 11px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/marker_red_sprite.png"
														style="border:none;left:-19px; top:-13px; position:absolute;">
												</div>
											</span><span unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 20px; height: 11px; left: 382px; top: -29px;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 20px; height: 11px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/marker_red_sprite.png"
														style="border:none;left:-19px; top:-13px; position:absolute;">
												</div>
											</span><span unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 20px; height: 11px; left: 169px; top: -139px;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 20px; height: 11px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/marker_red_sprite.png"
														style="border:none;left:-19px; top:-13px; position:absolute;">
												</div>
											</span><span unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 20px; height: 11px; left: 156px; top: -124px;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 20px; height: 11px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/marker_red_sprite.png"
														style="border:none;left:-19px; top:-13px; position:absolute;">
												</div>
											</span><span unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 20px; height: 11px; left: 137px; top: -114px;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 20px; height: 11px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/marker_red_sprite.png"
														style="border:none;left:-19px; top:-13px; position:absolute;">
												</div>
											</span><span unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 20px; height: 11px; left: 140px; top: -107px;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 20px; height: 11px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/marker_red_sprite.png"
														style="border:none;left:-19px; top:-13px; position:absolute;">
												</div>
											</span><span unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 20px; height: 11px; left: 162px; top: -107px;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 20px; height: 11px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/marker_red_sprite.png"
														style="border:none;left:-19px; top:-13px; position:absolute;">
												</div>
											</span><span unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 20px; height: 11px; left: 205px; top: -60px;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 20px; height: 11px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/marker_red_sprite.png"
														style="border:none;left:-19px; top:-13px; position:absolute;">
												</div>
											</span><span unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 20px; height: 11px; left: -33px; top: -260px;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 20px; height: 11px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/marker_red_sprite.png"
														style="border:none;left:-19px; top:-13px; position:absolute;">
												</div>
											</span><span unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 20px; height: 11px; left: 125px; top: -86px;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 20px; height: 11px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/marker_red_sprite.png"
														style="border:none;left:-19px; top:-13px; position:absolute;">
												</div>
											</span><span unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 20px; height: 11px; left: 140px; top: -112px;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 20px; height: 11px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/marker_red_sprite.png"
														style="border:none;left:-19px; top:-13px; position:absolute;">
												</div>
											</span><span unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 20px; height: 11px; left: 176px; top: -105px;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 20px; height: 11px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/marker_red_sprite.png"
														style="border:none;left:-19px; top:-13px; position:absolute;">
												</div>
											</span><span unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 20px; height: 11px; left: 151px; top: -115px;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 20px; height: 11px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/marker_red_sprite.png"
														style="border:none;left:-19px; top:-13px; position:absolute;">
												</div>
											</span><span unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 20px; height: 11px; left: 151px; top: -104px;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 20px; height: 11px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/marker_red_sprite.png"
														style="border:none;left:-19px; top:-13px; position:absolute;">
												</div>
											</span><span unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 20px; height: 11px; left: -229px; top: 13px;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 20px; height: 11px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/marker_red_sprite.png"
														style="border:none;left:-19px; top:-13px; position:absolute;">
												</div>
											</span><span unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 20px; height: 11px; left: 351px; top: 69px;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 20px; height: 11px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/marker_red_sprite.png"
														style="border:none;left:-19px; top:-13px; position:absolute;">
												</div>
											</span><span unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 20px; height: 11px; left: 510px; top: 210px;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 20px; height: 11px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/marker_red_sprite.png"
														style="border:none;left:-19px; top:-13px; position:absolute;">
												</div>
											</span><span unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 20px; height: 11px; left: 131px; top: -86px;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 20px; height: 11px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/marker_red_sprite.png"
														style="border:none;left:-19px; top:-13px; position:absolute;">
												</div>
											</span><span unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 20px; height: 11px; left: 303px; top: -19px;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 20px; height: 11px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/marker_red_sprite.png"
														style="border:none;left:-19px; top:-13px; position:absolute;">
												</div>
											</span><span unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 20px; height: 11px; left: -8px; top: -169px;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 20px; height: 11px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/marker_red_sprite.png"
														style="border:none;left:-19px; top:-13px; position:absolute;">
												</div>
											</span><span unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 20px; height: 11px; left: 152px; top: -104px;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 20px; height: 11px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/marker_red_sprite.png"
														style="border:none;left:-19px; top:-13px; position:absolute;">
												</div>
											</span><span unselectable="on"
												style="position: absolute; padding: 0px; margin: 0px; border: 0px; width: 20px; height: 11px; left: -263px; top: 239px;">
												<div
													style="position: absolute; margin: 0px; padding: 0px; width: 20px; height: 11px; overflow: hidden;">
													<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/marker_red_sprite.png"
														style="border:none;left:-19px; top:-13px; position:absolute;">
												</div>
											</span></div>
										<div
											style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 201;">
										</div>
										<div
											style="position: absolute; height: 0px; width: 0px; left: 0px; top: 0px; z-index: 200;">
										</div>
									</div>
									<div
										style="position: absolute; overflow: visible; top: 0px; left: 0px; z-index: 1;">
										<div
											style="position: absolute; overflow: visible; z-index: -100; left: 177px; top: 288px;">
											<img src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/saved_resource(12)"
												style="position: absolute; border: none; width: 128px; height: 128px; left: -213px; top: -98px; max-width: none; opacity: 1;"><img
												src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/saved_resource(13)"
												style="position: absolute; border: none; width: 128px; height: 128px; left: -85px; top: -98px; max-width: none; opacity: 1;"><img
												src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/saved_resource(14)"
												style="position: absolute; border: none; width: 128px; height: 128px; left: 43px; top: -98px; max-width: none; opacity: 1;"><img
												src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/saved_resource(15)"
												style="position: absolute; border: none; width: 128px; height: 128px; left: 171px; top: -98px; max-width: none; opacity: 1;"><img
												src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/saved_resource(16)"
												style="position: absolute; border: none; width: 128px; height: 128px; left: -85px; top: 30px; max-width: none; opacity: 1;"><img
												src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/saved_resource(17)"
												style="position: absolute; border: none; width: 128px; height: 128px; left: -85px; top: -226px; max-width: none; opacity: 1;"><img
												src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/saved_resource(18)"
												style="position: absolute; border: none; width: 128px; height: 128px; left: -213px; top: 30px; max-width: none; opacity: 1;"><img
												src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/saved_resource(19)"
												style="position: absolute; border: none; width: 128px; height: 128px; left: -213px; top: -226px; max-width: none; opacity: 1;"><img
												src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/saved_resource(20)"
												style="position: absolute; border: none; width: 128px; height: 128px; left: 43px; top: 30px; max-width: none; opacity: 1;"><img
												src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/saved_resource(21)"
												style="position: absolute; border: none; width: 128px; height: 128px; left: 43px; top: -226px; max-width: none; opacity: 1;"><img
												src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/saved_resource(22)"
												style="position: absolute; border: none; width: 128px; height: 128px; left: -85px; top: 158px; max-width: none; opacity: 1;"><img
												src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/saved_resource(23)"
												style="position: absolute; border: none; width: 128px; height: 128px; left: 171px; top: 30px; max-width: none; opacity: 1;"><img
												src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/saved_resource(24)"
												style="position: absolute; border: none; width: 128px; height: 128px; left: 43px; top: 158px; max-width: none; opacity: 1;"><img
												src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/saved_resource(25)"
												style="position: absolute; border: none; width: 128px; height: 128px; left: 171px; top: -226px; max-width: none; opacity: 1;"><img
												src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/saved_resource(26)"
												style="position: absolute; border: none; width: 128px; height: 128px; left: -213px; top: 158px; max-width: none; opacity: 1;"><img
												src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/saved_resource(27)"
												style="position: absolute; border: none; width: 128px; height: 128px; left: -85px; top: -354px; max-width: none; opacity: 1;"><img
												src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/saved_resource(28)"
												style="position: absolute; border: none; width: 128px; height: 128px; left: -85px; top: 286px; max-width: none; opacity: 1;"><img
												src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/saved_resource(29)"
												style="position: absolute; border: none; width: 128px; height: 128px; left: -213px; top: -354px; max-width: none; opacity: 1;"><img
												src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/saved_resource(30)"
												style="position: absolute; border: none; width: 128px; height: 128px; left: 171px; top: 158px; max-width: none; opacity: 1;"><img
												src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/saved_resource(31)"
												style="position: absolute; border: none; width: 128px; height: 128px; left: 43px; top: -354px; max-width: none; opacity: 1;"><img
												src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/saved_resource(32)"
												style="position: absolute; border: none; width: 128px; height: 128px; left: 43px; top: 286px; max-width: none; opacity: 1;"><img
												src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/saved_resource(33)"
												style="position: absolute; border: none; width: 128px; height: 128px; left: 171px; top: 286px; max-width: none; opacity: 1;"><img
												src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/saved_resource(34)"
												style="position: absolute; border: none; width: 128px; height: 128px; left: -213px; top: 286px; max-width: none; opacity: 1;"><img
												src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/saved_resource(35)"
												style="position: absolute; border: none; width: 128px; height: 128px; left: 171px; top: -354px; max-width: none; opacity: 1;">
										</div>
									</div>
									<div
										style="position: absolute; overflow: visible; top: 0px; left: 0px; z-index: 2;">
									</div>
								</div>
								<div class=" anchorBL"
									style="height: 32px; position: absolute; z-index: 10; text-size-adjust: none; bottom: 2px; right: auto; top: auto; left: 3px;">
									<a title="到百度地图查看此区域" target="_blank" href="http://map.baidu.com/?sr=1"
										style="outline: none;"><img style="border:none;width:77px;height:32px"
											src="./香豪小镇农家乐_地址_电话_怎么样_上海附近_周边企业农庄采摘推荐-第一农庄网_files/copyright_logo.png"></a>
								</div>
								<div id="zoomer"
									style="position:absolute;z-index:0;top:0px;left:0px;overflow:hidden;visibility:hidden;cursor:url(http://api.map.baidu.com/images/openhand.cur) 8 8,default">
									<div class="BMap_zoomer" style="top:0;left:0;"></div>
									<div class="BMap_zoomer" style="top:0;right:0;"></div>
									<div class="BMap_zoomer" style="bottom:0;left:0;"></div>
									<div class="BMap_zoomer" style="bottom:0;right:0;"></div>
								</div>
								<div unselectable="on" class=" BMap_stdMpCtrl BMap_stdMpType0 BMap_noprint anchorTL"
									style="width: 62px; height: 186px; bottom: auto; right: auto; top: 10px; left: 10px; position: absolute; z-index: 1100; text-size-adjust: none;">
									<div class="BMap_stdMpPan">
										<div class="BMap_button BMap_panN" title="向上平移"></div>
										<div class="BMap_button BMap_panW" title="向左平移"></div>
										<div class="BMap_button BMap_panE" title="向右平移"></div>
										<div class="BMap_button BMap_panS" title="向下平移"></div>
										<div class="BMap_stdMpPanBg BMap_smcbg"></div>
									</div>
									<div class="BMap_stdMpZoom" style="height: 141px; width: 62px;">
										<div class="BMap_button BMap_stdMpZoomIn" title="放大一级">
											<div class="BMap_smcbg"></div>
										</div>
										<div class="BMap_button BMap_stdMpZoomOut" title="缩小一级" style="top: 120px;">
											<div class="BMap_smcbg"></div>
										</div>
										<div class="BMap_stdMpSlider" style="height: 102px;">
											<div class="BMap_stdMpSliderBgTop" style="height: 102px;">
												<div class="BMap_smcbg"></div>
											</div>
											<div class="BMap_stdMpSliderBgBot" style="top: 37px; height: 69px;"></div>
											<div class="BMap_stdMpSliderMask" title="放置到此级别"></div>
											<div class="BMap_stdMpSliderBar" title="拖动缩放"
												style="cursor: url(&quot;http://api.map.baidu.com/images/openhand.cur&quot;) 8 8, default; top: 37px;">
												<div class="BMap_smcbg"></div>
											</div>
										</div>
										<div class="BMap_zlHolder">
											<div class="BMap_zlSt">
												<div class="BMap_smcbg"></div>
											</div>
											<div class="BMap_zlCity">
												<div class="BMap_smcbg"></div>
											</div>
											<div class="BMap_zlProv">
												<div class="BMap_smcbg"></div>
											</div>
											<div class="BMap_zlCountry">
												<div class="BMap_smcbg"></div>
											</div>
										</div>
									</div>
								</div>
								<div unselectable="on" class=" BMap_cpyCtrl BMap_noprint anchorBL"
									style="cursor: default; white-space: nowrap; color: black; background: none; font: 11px/15px arial, sans-serif; bottom: 2px; right: auto; top: auto; left: 81px; position: absolute; z-index: 10; text-size-adjust: none;">
									<span _cid="1"><span
											style="background: rgba(255, 255, 255, 0.701961);padding: 0px 1px;line-height: 16px;display: inline;height: 16px;">©&nbsp;2018
											Baidu - GS(2018)5572号 - 甲测资字1100930 - 京ICP证030173号 - Data ©
											长地万方</span></span></div>
							</div>
							<div id="map_trays" class="map_tray">
								<div id="map_tray_bar_wraps" class="map_tray_bar_wraps">
									<div id="map_tray_bars" class="map_tray_bars">
										<div id="id_map_tray_lists">
											<!--机场火车站 start-->
											<div
												class="map_tray_item map_airport_station map_tray_item_highlight map_tray_item_active">
												<div id="map_airports" class="map_tray_item_hd clearfix"
													style="height:39px;">
													<div class="map_tray_item_hd_icon"></div>
													<div class="map_tray_item_hd_txt">机场火车站</div>
													<div class="map_tray_item_hd_arrow"></div>
												</div>
												<div id="airports_point" class="map_tray_item_cnt"
													style="height:415px;overflow:auto;">

													<div id="place_310525010_1217698070" class="map_tray_item_cnt_item">
														<div style="height:45px;"
															onclick="getRouteHtml(&quot;310525010_1217698070&quot;,&quot;31.052501&quot;,&quot;121.769807&quot;);"
															class="map_tray_item_cnt_item_hd clearfix">
															<div
																class="map_tray_item_cnt_item_icon map_tray_item_cnt_item_icon_0">
															</div>
															<div class="map_tray_item_cnt_item_txt">
																<p class="map_tray_item_cnt_hd_title">南汇汽车站</p>
																<p class="map_tray_item_cnt_hd_des">距离约32.4公里</p>
															</div>
															<div class="map_traffic_info_loading none"></div>
														</div>
														<div id="traffic_310525010_1217698070"
															class="map_tray_item_cnt_item_cnt traffic"></div>
													</div>
													<div id="place_311998100_1213271390" class="map_tray_item_cnt_item">
														<div style="height:45px;"
															onclick="getRouteHtml(&quot;311998100_1213271390&quot;,&quot;31.19981&quot;,&quot;121.327139&quot;);"
															class="map_tray_item_cnt_item_hd clearfix">
															<div
																class="map_tray_item_cnt_item_icon map_tray_item_cnt_item_icon_1">
															</div>
															<div class="map_tray_item_cnt_item_txt">
																<p class="map_tray_item_cnt_hd_title">上海虹桥站-出发</p>
																<p class="map_tray_item_cnt_hd_des">距离约42.5公里</p>
															</div>
															<div class="map_traffic_info_loading none"></div>
														</div>
														<div id="traffic_311998100_1213271390"
															class="map_tray_item_cnt_item_cnt traffic"></div>
													</div>
													<div id="place_311563510_1218112510" class="map_tray_item_cnt_item">
														<div style="height:45px;"
															onclick="getRouteHtml(&quot;311563510_1218112510&quot;,&quot;31.156351&quot;,&quot;121.811251&quot;);"
															class="map_tray_item_cnt_item_hd clearfix">
															<div
																class="map_tray_item_cnt_item_icon map_tray_item_cnt_item_icon_2">
															</div>
															<div class="map_tray_item_cnt_item_txt">
																<p class="map_tray_item_cnt_hd_title">上海浦东国际机场-长途客运站</p>
																<p class="map_tray_item_cnt_hd_des">距离约43.5公里</p>
															</div>
															<div class="map_traffic_info_loading none"></div>
														</div>
														<div id="traffic_311563510_1218112510"
															class="map_tray_item_cnt_item_cnt traffic"></div>
													</div>
													<div id="place_311143920_1213939020" class="map_tray_item_cnt_item">
														<div style="height:45px;"
															onclick="getRouteHtml(&quot;311143920_1213939020&quot;,&quot;31.114392&quot;,&quot;121.393902&quot;);"
															class="map_tray_item_cnt_item_hd clearfix">
															<div
																class="map_tray_item_cnt_item_icon map_tray_item_cnt_item_icon_3">
															</div>
															<div class="map_tray_item_cnt_item_txt">
																<p class="map_tray_item_cnt_hd_title">莘庄地铁站(南广场)</p>
																<p class="map_tray_item_cnt_hd_des">距离约31.2公里</p>
															</div>
															<div class="map_traffic_info_loading none"></div>
														</div>
														<div id="traffic_311143920_1213939020"
															class="map_tray_item_cnt_item_cnt traffic"></div>
													</div>
													<div id="place_311826520_1213526210" class="map_tray_item_cnt_item">
														<div style="height:45px;"
															onclick="getRouteHtml(&quot;311826520_1213526210&quot;,&quot;31.182652&quot;,&quot;121.352621&quot;);"
															class="map_tray_item_cnt_item_hd clearfix">
															<div
																class="map_tray_item_cnt_item_icon map_tray_item_cnt_item_icon_4">
															</div>
															<div class="map_tray_item_cnt_item_txt">
																<p class="map_tray_item_cnt_hd_title">
																	汉庭酒店(上海虹桥枢纽火车站新店)(原机场新店)</p>
																<p class="map_tray_item_cnt_hd_des">距离约39.7公里</p>
															</div>
															<div class="map_traffic_info_loading none"></div>
														</div>
														<div id="traffic_311826520_1213526210"
															class="map_tray_item_cnt_item_cnt traffic"></div>
													</div>
													<div id="place_311573000_1218100180" class="map_tray_item_cnt_item">
														<div style="height:45px;"
															onclick="getRouteHtml(&quot;311573000_1218100180&quot;,&quot;31.1573&quot;,&quot;121.810018&quot;);"
															class="map_tray_item_cnt_item_hd clearfix">
															<div
																class="map_tray_item_cnt_item_icon map_tray_item_cnt_item_icon_5">
															</div>
															<div class="map_tray_item_cnt_item_txt">
																<p class="map_tray_item_cnt_hd_title">浦东机场</p>
																<p class="map_tray_item_cnt_hd_des">距离约43.5公里</p>
															</div>
															<div class="map_traffic_info_loading none"></div>
														</div>
														<div id="traffic_311573000_1218100180"
															class="map_tray_item_cnt_item_cnt traffic"></div>
													</div>
													<div id="place_312537700_1214608840" class="map_tray_item_cnt_item">
														<div style="height:45px;"
															onclick="getRouteHtml(&quot;312537700_1214608840&quot;,&quot;31.25377&quot;,&quot;121.460884&quot;);"
															class="map_tray_item_cnt_item_hd clearfix">
															<div
																class="map_tray_item_cnt_item_icon map_tray_item_cnt_item_icon_6">
															</div>
															<div class="map_tray_item_cnt_item_txt">
																<p class="map_tray_item_cnt_hd_title">上海火车站(南广场)</p>
																<p class="map_tray_item_cnt_hd_des">距离约44.6公里</p>
															</div>
															<div class="map_traffic_info_loading none"></div>
														</div>
														<div id="traffic_312537700_1214608840"
															class="map_tray_item_cnt_item_cnt traffic"></div>
													</div>
													<div id="place_312285490_1213291580" class="map_tray_item_cnt_item">
														<div style="height:45px;"
															onclick="getRouteHtml(&quot;312285490_1213291580&quot;,&quot;31.228549&quot;,&quot;121.329158&quot;);"
															class="map_tray_item_cnt_item_hd clearfix">
															<div
																class="map_tray_item_cnt_item_icon map_tray_item_cnt_item_icon_7">
															</div>
															<div class="map_tray_item_cnt_item_txt">
																<p class="map_tray_item_cnt_hd_title">汉庭酒店(上海虹桥火车站北翟路店)
																</p>
																<p class="map_tray_item_cnt_hd_des">距离约45.3公里</p>
															</div>
															<div class="map_traffic_info_loading none"></div>
														</div>
														<div id="traffic_312285490_1213291580"
															class="map_tray_item_cnt_item_cnt traffic"></div>
													</div>
													<div id="place_311994800_1213294950" class="map_tray_item_cnt_item">
														<div style="height:45px;"
															onclick="getRouteHtml(&quot;311994800_1213294950&quot;,&quot;31.19948&quot;,&quot;121.329495&quot;);"
															class="map_tray_item_cnt_item_hd clearfix">
															<div
																class="map_tray_item_cnt_item_icon map_tray_item_cnt_item_icon_8">
															</div>
															<div class="map_tray_item_cnt_item_txt">
																<p class="map_tray_item_cnt_hd_title">虹桥火车站(下客站)</p>
																<p class="map_tray_item_cnt_hd_des">距离约42.3公里</p>
															</div>
															<div class="map_traffic_info_loading none"></div>
														</div>
														<div id="traffic_311994800_1213294950"
															class="map_tray_item_cnt_item_cnt traffic"></div>
													</div>
													<div id="place_311585760_1217635970" class="map_tray_item_cnt_item">
														<div style="height:45px;"
															onclick="getRouteHtml(&quot;311585760_1217635970&quot;,&quot;31.158576&quot;,&quot;121.763597&quot;);"
															class="map_tray_item_cnt_item_hd clearfix">
															<div
																class="map_tray_item_cnt_item_icon map_tray_item_cnt_item_icon_9">
															</div>
															<div class="map_tray_item_cnt_item_txt">
																<p class="map_tray_item_cnt_hd_title">施湾</p>
																<p class="map_tray_item_cnt_hd_des">距离约40.9公里</p>
															</div>
															<div class="map_traffic_info_loading none"></div>
														</div>
														<div id="traffic_311585760_1217635970"
															class="map_tray_item_cnt_item_cnt traffic"></div>
													</div>
												</div>
											</div>
											<!--机场火车站 end-->

											<!-- 地铁汽车站 start -->
											<div
												class="map_tray_item map_metro map_tray_item_highlight map_tray_item_active">
												<div id="map_metros" class="map_tray_item_hd clearfix"
													style="height:39px;">
													<div class="map_tray_item_hd_icon"></div>
													<div class="map_tray_item_hd_txt">地铁汽车站</div>
													<div class="map_tray_item_hd_arrow"></div>
												</div>
												<div id="metros_point" class="map_tray_item_cnt" style="display: none;">

													<div id="place_312915810_1211872500" class="map_tray_item_cnt_item">
														<div style="height:45px;"
															onclick="getRouteHtml(&quot;312915810_1211872500&quot;,&quot;31.291581&quot;,&quot;121.18725&quot;);"
															class="map_tray_item_cnt_item_hd clearfix">
															<div
																class="map_tray_item_cnt_item_icon map_tray_item_cnt_item_icon_0">
															</div>
															<div class="map_tray_item_cnt_item_txt">
																<p class="map_tray_item_cnt_hd_title">上海汽车城</p>
																<p class="map_tray_item_cnt_hd_des">距离约57.9公里</p>
															</div>
															<div class="map_traffic_info_loading none"></div>
														</div>
														<div id="traffic_312915810_1211872500"
															class="map_tray_item_cnt_item_cnt traffic"></div>
													</div>
													<div id="place_312558350_1215048560" class="map_tray_item_cnt_item">
														<div style="height:45px;"
															onclick="getRouteHtml(&quot;312558350_1215048560&quot;,&quot;31.255835&quot;,&quot;121.504856&quot;);"
															class="map_tray_item_cnt_item_hd clearfix">
															<div
																class="map_tray_item_cnt_item_icon map_tray_item_cnt_item_icon_1">
															</div>
															<div class="map_tray_item_cnt_item_txt">
																<p class="map_tray_item_cnt_hd_title">国际客运中心</p>
																<p class="map_tray_item_cnt_hd_des">距离约44.5公里</p>
															</div>
															<div class="map_traffic_info_loading none"></div>
														</div>
														<div id="traffic_312558350_1215048560"
															class="map_tray_item_cnt_item_cnt traffic"></div>
													</div>
													<div id="place_312097450_1215658500" class="map_tray_item_cnt_item">
														<div style="height:45px;"
															onclick="getRouteHtml(&quot;312097450_1215658500&quot;,&quot;31.209745&quot;,&quot;121.56585&quot;);"
															class="map_tray_item_cnt_item_hd clearfix">
															<div
																class="map_tray_item_cnt_item_icon map_tray_item_cnt_item_icon_2">
															</div>
															<div class="map_tray_item_cnt_item_txt">
																<p class="map_tray_item_cnt_hd_title">龙阳路地铁站</p>
																<p class="map_tray_item_cnt_hd_des">距离约39.6公里</p>
															</div>
															<div class="map_traffic_info_loading none"></div>
														</div>
														<div id="traffic_312097450_1215658500"
															class="map_tray_item_cnt_item_cnt traffic"></div>
													</div>
													<div id="place_312940310_1211713450" class="map_tray_item_cnt_item">
														<div style="height:45px;"
															onclick="getRouteHtml(&quot;312940310_1211713450&quot;,&quot;31.294031&quot;,&quot;121.171345&quot;);"
															class="map_tray_item_cnt_item_hd clearfix">
															<div
																class="map_tray_item_cnt_item_icon map_tray_item_cnt_item_icon_3">
															</div>
															<div class="map_tray_item_cnt_item_txt">
																<p class="map_tray_item_cnt_hd_title">
																	星程酒店(上海安亭地铁站店)(原汽车城店)</p>
																<p class="map_tray_item_cnt_hd_des">距离约59.0公里</p>
															</div>
															<div class="map_traffic_info_loading none"></div>
														</div>
														<div id="traffic_312940310_1211713450"
															class="map_tray_item_cnt_item_cnt traffic"></div>
													</div>
													<div id="place_312553710_1215043360" class="map_tray_item_cnt_item">
														<div style="height:45px;"
															onclick="getRouteHtml(&quot;312553710_1215043360&quot;,&quot;31.255371&quot;,&quot;121.504336&quot;);"
															class="map_tray_item_cnt_item_hd clearfix">
															<div
																class="map_tray_item_cnt_item_icon map_tray_item_cnt_item_icon_4">
															</div>
															<div class="map_tray_item_cnt_item_txt">
																<p class="map_tray_item_cnt_hd_title">国际客运中心地铁站-3口</p>
																<p class="map_tray_item_cnt_hd_des">距离约44.5公里</p>
															</div>
															<div class="map_traffic_info_loading none"></div>
														</div>
														<div id="traffic_312553710_1215043360"
															class="map_tray_item_cnt_item_cnt traffic"></div>
													</div>
													<div id="place_313833680_1212337310" class="map_tray_item_cnt_item">
														<div style="height:45px;"
															onclick="getRouteHtml(&quot;313833680_1212337310&quot;,&quot;31.383368&quot;,&quot;121.233731&quot;);"
															class="map_tray_item_cnt_item_hd clearfix">
															<div
																class="map_tray_item_cnt_item_icon map_tray_item_cnt_item_icon_5">
															</div>
															<div class="map_tray_item_cnt_item_txt">
																<p class="map_tray_item_cnt_hd_title">
																	如家酒店(上海嘉定客运中心地铁西站店)</p>
																<p class="map_tray_item_cnt_hd_des">距离约64.7公里</p>
															</div>
															<div class="map_traffic_info_loading none"></div>
														</div>
														<div id="traffic_313833680_1212337310"
															class="map_tray_item_cnt_item_cnt traffic"></div>
													</div>
													<div id="place_312432380_1214237500" class="map_tray_item_cnt_item">
														<div style="height:45px;"
															onclick="getRouteHtml(&quot;312432380_1214237500&quot;,&quot;31.243238&quot;,&quot;121.42375&quot;);"
															class="map_tray_item_cnt_item_hd clearfix">
															<div
																class="map_tray_item_cnt_item_icon map_tray_item_cnt_item_icon_6">
															</div>
															<div class="map_tray_item_cnt_item_txt">
																<p class="map_tray_item_cnt_hd_title">
																	上海汽车公寓青年旅舍(曹杨路地铁站店)</p>
																<p class="map_tray_item_cnt_hd_des">距离约44.1公里</p>
															</div>
															<div class="map_traffic_info_loading none"></div>
														</div>
														<div id="traffic_312432380_1214237500"
															class="map_tray_item_cnt_item_cnt traffic"></div>
													</div>
													<div id="place_312915810_1211872500" class="map_tray_item_cnt_item">
														<div style="height:45px;"
															onclick="getRouteHtml(&quot;312915810_1211872500&quot;,&quot;31.291581&quot;,&quot;121.18725&quot;);"
															class="map_tray_item_cnt_item_hd clearfix">
															<div
																class="map_tray_item_cnt_item_icon map_tray_item_cnt_item_icon_7">
															</div>
															<div class="map_tray_item_cnt_item_txt">
																<p class="map_tray_item_cnt_hd_title">上海汽车城</p>
																<p class="map_tray_item_cnt_hd_des">距离约57.9公里</p>
															</div>
															<div class="map_traffic_info_loading none"></div>
														</div>
														<div id="traffic_312915810_1211872500"
															class="map_tray_item_cnt_item_cnt traffic"></div>
													</div>
													<div id="place_312188790_1213996990" class="map_tray_item_cnt_item">
														<div style="height:45px;"
															onclick="getRouteHtml(&quot;312188790_1213996990&quot;,&quot;31.218879&quot;,&quot;121.399699&quot;);"
															class="map_tray_item_cnt_item_hd clearfix">
															<div
																class="map_tray_item_cnt_item_icon map_tray_item_cnt_item_icon_8">
															</div>
															<div class="map_tray_item_cnt_item_txt">
																<p class="map_tray_item_cnt_hd_title">上海交运云峰龙威汽车销售服务有限公司
																</p>
																<p class="map_tray_item_cnt_hd_des">距离约42.0公里</p>
															</div>
															<div class="map_traffic_info_loading none"></div>
														</div>
														<div id="traffic_312188790_1213996990"
															class="map_tray_item_cnt_item_cnt traffic"></div>
													</div>
													<div id="place_312916610_1211875830" class="map_tray_item_cnt_item">
														<div style="height:45px;"
															onclick="getRouteHtml(&quot;312916610_1211875830&quot;,&quot;31.291661&quot;,&quot;121.187583&quot;);"
															class="map_tray_item_cnt_item_hd clearfix">
															<div
																class="map_tray_item_cnt_item_icon map_tray_item_cnt_item_icon_9">
															</div>
															<div class="map_tray_item_cnt_item_txt">
																<p class="map_tray_item_cnt_hd_title">上海汽车城地铁站-1口</p>
																<p class="map_tray_item_cnt_hd_des">距离约57.9公里</p>
															</div>
															<div class="map_traffic_info_loading none"></div>
														</div>
														<div id="traffic_312916610_1211875830"
															class="map_tray_item_cnt_item_cnt traffic"></div>
													</div>
												</div>
											</div>
											<!-- 地铁汽车站 end -->
											<!-- 景点 start -->
											<div
												class="map_tray_item map_scenic map_tray_item_highlight map_tray_item_active">
												<div id="map_scenics" class="map_tray_item_hd clearfix"
													style="height:39px;">
													<div class="map_tray_item_hd_icon"></div>
													<div class="map_tray_item_hd_txt">景点</div>
													<div class="map_tray_item_hd_arrow"></div>
												</div>
												<div id="scenics_point" class="map_tray_item_cnt"
													style="display: none;">

													<div id="place_312434530_1214972040" class="map_tray_item_cnt_item">
														<div style="height:45px;"
															onclick="getRouteHtml(&quot;312434530_1214972040&quot;,&quot;31.243453&quot;,&quot;121.497204&quot;);"
															class="map_tray_item_cnt_item_hd clearfix">
															<div
																class="map_tray_item_cnt_item_icon map_tray_item_cnt_item_icon_0">
															</div>
															<div class="map_tray_item_cnt_item_txt">
																<p class="map_tray_item_cnt_hd_title">外滩</p>
																<p class="map_tray_item_cnt_hd_des">距离约43.2公里</p>
															</div>
															<div class="map_traffic_info_loading none"></div>
														</div>
														<div id="traffic_312434530_1214972040"
															class="map_tray_item_cnt_item_cnt traffic"></div>
													</div>
													<div id="place_312319940_1214981880" class="map_tray_item_cnt_item">
														<div style="height:45px;"
															onclick="getRouteHtml(&quot;312319940_1214981880&quot;,&quot;31.231994&quot;,&quot;121.498188&quot;);"
															class="map_tray_item_cnt_item_hd clearfix">
															<div
																class="map_tray_item_cnt_item_icon map_tray_item_cnt_item_icon_1">
															</div>
															<div class="map_tray_item_cnt_item_txt">
																<p class="map_tray_item_cnt_hd_title">上海城隍庙</p>
																<p class="map_tray_item_cnt_hd_des">距离约41.9公里</p>
															</div>
															<div class="map_traffic_info_loading none"></div>
														</div>
														<div id="traffic_312319940_1214981880"
															class="map_tray_item_cnt_item_cnt traffic"></div>
													</div>
													<div id="place_311166400_1210608380" class="map_tray_item_cnt_item">
														<div style="height:45px;"
															onclick="getRouteHtml(&quot;311166400_1210608380&quot;,&quot;31.11664&quot;,&quot;121.060838&quot;);"
															class="map_tray_item_cnt_item_hd clearfix">
															<div
																class="map_tray_item_cnt_item_icon map_tray_item_cnt_item_icon_2">
															</div>
															<div class="map_tray_item_cnt_item_txt">
																<p class="map_tray_item_cnt_hd_title">上海朱家角古镇旅游区</p>
																<p class="map_tray_item_cnt_hd_des">距离约52.5公里</p>
															</div>
															<div class="map_traffic_info_loading none"></div>
														</div>
														<div id="traffic_311166400_1210608380"
															class="map_tray_item_cnt_item_cnt traffic"></div>
													</div>
													<div id="place_310613800_1217279950" class="map_tray_item_cnt_item">
														<div style="height:45px;"
															onclick="getRouteHtml(&quot;310613800_1217279950&quot;,&quot;31.06138&quot;,&quot;121.727995&quot;);"
															class="map_tray_item_cnt_item_hd clearfix">
															<div
																class="map_tray_item_cnt_item_icon map_tray_item_cnt_item_icon_3">
															</div>
															<div class="map_tray_item_cnt_item_txt">
																<p class="map_tray_item_cnt_hd_title">上海野生动物园</p>
																<p class="map_tray_item_cnt_hd_des">距离约30.3公里</p>
															</div>
															<div class="map_traffic_info_loading none"></div>
														</div>
														<div id="traffic_310613800_1217279950"
															class="map_tray_item_cnt_item_cnt traffic"></div>
													</div>
													<div id="place_309213120_1219102020" class="map_tray_item_cnt_item">
														<div style="height:45px;"
															onclick="getRouteHtml(&quot;309213120_1219102020&quot;,&quot;30.921312&quot;,&quot;121.910202&quot;);"
															class="map_tray_item_cnt_item_hd clearfix">
															<div
																class="map_tray_item_cnt_item_icon map_tray_item_cnt_item_icon_4">
															</div>
															<div class="map_tray_item_cnt_item_txt">
																<p class="map_tray_item_cnt_hd_title">上海海昌海洋公园</p>
																<p class="map_tray_item_cnt_hd_des">距离约37.9公里</p>
															</div>
															<div class="map_traffic_info_loading none"></div>
														</div>
														<div id="traffic_309213120_1219102020"
															class="map_tray_item_cnt_item_cnt traffic"></div>
													</div>
													<div id="place_312143760_1214750000" class="map_tray_item_cnt_item">
														<div style="height:45px;"
															onclick="getRouteHtml(&quot;312143760_1214750000&quot;,&quot;31.214376&quot;,&quot;121.475&quot;);"
															class="map_tray_item_cnt_item_hd clearfix">
															<div
																class="map_tray_item_cnt_item_icon map_tray_item_cnt_item_icon_5">
															</div>
															<div class="map_tray_item_cnt_item_txt">
																<p class="map_tray_item_cnt_hd_title">田子坊</p>
																<p class="map_tray_item_cnt_hd_des">距离约40.1公里</p>
															</div>
															<div class="map_traffic_info_loading none"></div>
														</div>
														<div id="traffic_312143760_1214750000"
															class="map_tray_item_cnt_item_cnt traffic"></div>
													</div>
													<div id="place_311482670_1216719640" class="map_tray_item_cnt_item">
														<div style="height:45px;"
															onclick="getRouteHtml(&quot;311482670_1216719640&quot;,&quot;31.148267&quot;,&quot;121.671964&quot;);"
															class="map_tray_item_cnt_item_hd clearfix">
															<div
																class="map_tray_item_cnt_item_icon map_tray_item_cnt_item_icon_6">
															</div>
															<div class="map_tray_item_cnt_item_txt">
																<p class="map_tray_item_cnt_hd_title">上海迪士尼度假区</p>
																<p class="map_tray_item_cnt_hd_des">距离约35.6公里</p>
															</div>
															<div class="map_traffic_info_loading none"></div>
														</div>
														<div id="traffic_311482670_1216719640"
															class="map_tray_item_cnt_item_cnt traffic"></div>
													</div>
													<div id="place_312969460_1213148680" class="map_tray_item_cnt_item">
														<div style="height:45px;"
															onclick="getRouteHtml(&quot;312969460_1213148680&quot;,&quot;31.296946&quot;,&quot;121.314868&quot;);"
															class="map_tray_item_cnt_item_hd clearfix">
															<div
																class="map_tray_item_cnt_item_icon map_tray_item_cnt_item_icon_7">
															</div>
															<div class="map_tray_item_cnt_item_txt">
																<p class="map_tray_item_cnt_hd_title">南翔老街</p>
																<p class="map_tray_item_cnt_hd_des">距离约52.8公里</p>
															</div>
															<div class="map_traffic_info_loading none"></div>
														</div>
														<div id="traffic_312969460_1213148680"
															class="map_tray_item_cnt_item_cnt traffic"></div>
													</div>
													<div id="place_312326740_1214988410" class="map_tray_item_cnt_item">
														<div style="height:45px;"
															onclick="getRouteHtml(&quot;312326740_1214988410&quot;,&quot;31.232674&quot;,&quot;121.498841&quot;);"
															class="map_tray_item_cnt_item_hd clearfix">
															<div
																class="map_tray_item_cnt_item_icon map_tray_item_cnt_item_icon_8">
															</div>
															<div class="map_tray_item_cnt_item_txt">
																<p class="map_tray_item_cnt_hd_title">豫园</p>
																<p class="map_tray_item_cnt_hd_des">距离约42.0公里</p>
															</div>
															<div class="map_traffic_info_loading none"></div>
														</div>
														<div id="traffic_312326740_1214988410"
															class="map_tray_item_cnt_item_cnt traffic"></div>
													</div>
													<div id="place_308932150_1210220690" class="map_tray_item_cnt_item">
														<div style="height:45px;"
															onclick="getRouteHtml(&quot;308932150_1210220690&quot;,&quot;30.893215&quot;,&quot;121.022069&quot;);"
															class="map_tray_item_cnt_item_hd clearfix">
															<div
																class="map_tray_item_cnt_item_icon map_tray_item_cnt_item_icon_9">
															</div>
															<div class="map_tray_item_cnt_item_txt">
																<p class="map_tray_item_cnt_hd_title">枫泾古镇</p>
																<p class="map_tray_item_cnt_hd_des">距离约47.7公里</p>
															</div>
															<div class="map_traffic_info_loading none"></div>
														</div>
														<div id="traffic_308932150_1210220690"
															class="map_tray_item_cnt_item_cnt traffic"></div>
													</div>
												</div>
											</div>
											<!-- 景点 end -->
											<!-- 美食 start -->
											<div
												class="map_tray_item map_food map_tray_item_highlight map_tray_item_active">
												<div id="map_foods" class="map_tray_item_hd clearfix"
													style="height:39px;">
													<div class="map_tray_item_hd_icon"></div>
													<div class="map_tray_item_hd_txt">美食</div>
													<div class="map_tray_item_hd_arrow"></div>
												</div>
												<div id="foods_point" class="map_tray_item_cnt" style="display: none;">

													<div id="place_312671750_1215187680" class="map_tray_item_cnt_item">
														<div style="height:45px;"
															onclick="getRouteHtml(&quot;312671750_1215187680&quot;,&quot;31.267175&quot;,&quot;121.518768&quot;);"
															class="map_tray_item_cnt_item_hd clearfix">
															<div
																class="map_tray_item_cnt_item_icon map_tray_item_cnt_item_icon_0">
															</div>
															<div class="map_tray_item_cnt_item_txt">
																<p class="map_tray_item_cnt_hd_title">小南国(宝地广场店)</p>
																<p class="map_tray_item_cnt_hd_des">距离约45.8公里</p>
															</div>
															<div class="map_traffic_info_loading none"></div>
														</div>
														<div id="traffic_312671750_1215187680"
															class="map_tray_item_cnt_item_cnt traffic"></div>
													</div>
													<div id="place_312522820_1215034520" class="map_tray_item_cnt_item">
														<div style="height:45px;"
															onclick="getRouteHtml(&quot;312522820_1215034520&quot;,&quot;31.252282&quot;,&quot;121.503452&quot;);"
															class="map_tray_item_cnt_item_hd clearfix">
															<div
																class="map_tray_item_cnt_item_icon map_tray_item_cnt_item_icon_1">
															</div>
															<div class="map_tray_item_cnt_item_txt">
																<p class="map_tray_item_cnt_hd_title">尚9一滴水</p>
																<p class="map_tray_item_cnt_hd_des">距离约44.1公里</p>
															</div>
															<div class="map_traffic_info_loading none"></div>
														</div>
														<div id="traffic_312522820_1215034520"
															class="map_tray_item_cnt_item_cnt traffic"></div>
													</div>
													<div id="place_312416840_1214819200" class="map_tray_item_cnt_item">
														<div style="height:45px;"
															onclick="getRouteHtml(&quot;312416840_1214819200&quot;,&quot;31.241684&quot;,&quot;121.48192&quot;);"
															class="map_tray_item_cnt_item_hd clearfix">
															<div
																class="map_tray_item_cnt_item_icon map_tray_item_cnt_item_icon_2">
															</div>
															<div class="map_tray_item_cnt_item_txt">
																<p class="map_tray_item_cnt_hd_title">新白鹿餐厅(南京东路店)</p>
																<p class="map_tray_item_cnt_hd_des">距离约43.1公里</p>
															</div>
															<div class="map_traffic_info_loading none"></div>
														</div>
														<div id="traffic_312416840_1214819200"
															class="map_tray_item_cnt_item_cnt traffic"></div>
													</div>
													<div id="place_312357340_1214852670" class="map_tray_item_cnt_item">
														<div style="height:45px;"
															onclick="getRouteHtml(&quot;312357340_1214852670&quot;,&quot;31.235734&quot;,&quot;121.485267&quot;);"
															class="map_tray_item_cnt_item_hd clearfix">
															<div
																class="map_tray_item_cnt_item_icon map_tray_item_cnt_item_icon_3">
															</div>
															<div class="map_tray_item_cnt_item_txt">
																<p class="map_tray_item_cnt_hd_title">上海人家(黄浦店)</p>
																<p class="map_tray_item_cnt_hd_des">距离约42.4公里</p>
															</div>
															<div class="map_traffic_info_loading none"></div>
														</div>
														<div id="traffic_312357340_1214852670"
															class="map_tray_item_cnt_item_cnt traffic"></div>
													</div>
													<div id="place_312352100_1215106320" class="map_tray_item_cnt_item">
														<div style="height:45px;"
															onclick="getRouteHtml(&quot;312352100_1215106320&quot;,&quot;31.23521&quot;,&quot;121.510632&quot;);"
															class="map_tray_item_cnt_item_hd clearfix">
															<div
																class="map_tray_item_cnt_item_icon map_tray_item_cnt_item_icon_4">
															</div>
															<div class="map_tray_item_cnt_item_txt">
																<p class="map_tray_item_cnt_hd_title">浦之舟餐厅</p>
																<p class="map_tray_item_cnt_hd_des">距离约42.2公里</p>
															</div>
															<div class="map_traffic_info_loading none"></div>
														</div>
														<div id="traffic_312352100_1215106320"
															class="map_tray_item_cnt_item_cnt traffic"></div>
													</div>
													<div id="place_311890520_1215599020" class="map_tray_item_cnt_item">
														<div style="height:45px;"
															onclick="getRouteHtml(&quot;311890520_1215599020&quot;,&quot;31.189052&quot;,&quot;121.559902&quot;);"
															class="map_tray_item_cnt_item_hd clearfix">
															<div
																class="map_tray_item_cnt_item_icon map_tray_item_cnt_item_icon_5">
															</div>
															<div class="map_tray_item_cnt_item_txt">
																<p class="map_tray_item_cnt_hd_title">阅香美地</p>
																<p class="map_tray_item_cnt_hd_des">距离约37.3公里</p>
															</div>
															<div class="map_traffic_info_loading none"></div>
														</div>
														<div id="traffic_311890520_1215599020"
															class="map_tray_item_cnt_item_cnt traffic"></div>
													</div>
													<div id="place_313860130_1212857990" class="map_tray_item_cnt_item">
														<div style="height:45px;"
															onclick="getRouteHtml(&quot;313860130_1212857990&quot;,&quot;31.386013&quot;,&quot;121.285799&quot;);"
															class="map_tray_item_cnt_item_hd clearfix">
															<div
																class="map_tray_item_cnt_item_icon map_tray_item_cnt_item_icon_6">
															</div>
															<div class="map_tray_item_cnt_item_txt">
																<p class="map_tray_item_cnt_hd_title">小灶王(嘉定澄浏中路店)</p>
																<p class="map_tray_item_cnt_hd_des">距离约63.1公里</p>
															</div>
															<div class="map_traffic_info_loading none"></div>
														</div>
														<div id="traffic_313860130_1212857990"
															class="map_tray_item_cnt_item_cnt traffic"></div>
													</div>
													<div id="place_312140880_1214680330" class="map_tray_item_cnt_item">
														<div style="height:45px;"
															onclick="getRouteHtml(&quot;312140880_1214680330&quot;,&quot;31.214088&quot;,&quot;121.468033&quot;);"
															class="map_tray_item_cnt_item_hd clearfix">
															<div
																class="map_tray_item_cnt_item_icon map_tray_item_cnt_item_icon_7">
															</div>
															<div class="map_tray_item_cnt_item_txt">
																<p class="map_tray_item_cnt_hd_title">云味大可堂(陕西南路店)</p>
																<p class="map_tray_item_cnt_hd_des">距离约40.2公里</p>
															</div>
															<div class="map_traffic_info_loading none"></div>
														</div>
														<div id="traffic_312140880_1214680330"
															class="map_tray_item_cnt_item_cnt traffic"></div>
													</div>
													<div id="place_312405240_1214847130" class="map_tray_item_cnt_item">
														<div style="height:45px;"
															onclick="getRouteHtml(&quot;312405240_1214847130&quot;,&quot;31.240524&quot;,&quot;121.484713&quot;);"
															class="map_tray_item_cnt_item_hd clearfix">
															<div
																class="map_tray_item_cnt_item_icon map_tray_item_cnt_item_icon_8">
															</div>
															<div class="map_tray_item_cnt_item_txt">
																<p class="map_tray_item_cnt_hd_title">鲜墙房(永安大饭店)</p>
																<p class="map_tray_item_cnt_hd_des">距离约42.9公里</p>
															</div>
															<div class="map_traffic_info_loading none"></div>
														</div>
														<div id="traffic_312405240_1214847130"
															class="map_tray_item_cnt_item_cnt traffic"></div>
													</div>
													<div id="place_312337060_1215262160" class="map_tray_item_cnt_item">
														<div style="height:45px;"
															onclick="getRouteHtml(&quot;312337060_1215262160&quot;,&quot;31.233706&quot;,&quot;121.526216&quot;);"
															class="map_tray_item_cnt_item_hd clearfix">
															<div
																class="map_tray_item_cnt_item_icon map_tray_item_cnt_item_icon_9">
															</div>
															<div class="map_tray_item_cnt_item_txt">
																<p class="map_tray_item_cnt_hd_title">海底捞火锅(张杨路店)</p>
																<p class="map_tray_item_cnt_hd_des">距离约42.1公里</p>
															</div>
															<div class="map_traffic_info_loading none"></div>
														</div>
														<div id="traffic_312337060_1215262160"
															class="map_tray_item_cnt_item_cnt traffic"></div>
													</div>
												</div>
											</div>
											<!--美食 end -->

										</div>
									</div>
								</div>
							</div>
						</div>
						<script type="text/javascript">
                            var xpoint = '121.520071';
                            var ypoint = '30.855576';
                            var baidumap = new BMap.Map("map_area_ids");
                            var carHtml = "a";
                            var opts = {
                                type: BMAP_NAVIGATION_CONTROL_ZOOM
                            }
                            baidumap.addControl(new BMap.NavigationControl());
                            // 创建地理编码服务实例  
                            var point = new BMap.Point(xpoint, ypoint);

                            //将结果显示在地图上，并调整地图视野  
                            baidumap.centerAndZoom(point, 12);
                            baidumap.enableScrollWheelZoom(true);

                            var myIcon = new BMap.Icon("/app/Tpl/fanwe/images/map-location.png", new BMap.Size(40, 40));
                            var marker = new BMap.Marker(point, {
                                icon: myIcon
                            });
                            baidumap.addOverlay(marker);

                            showTabPoint('airports', '机场火车站');
                            showTabPoint('metros', '地铁汽车');
                            showTabPoint('scenics', '景点');
                            showTabPoint('foods', '美食');

                            function showTabPoint(tab, words) {
                                var options = {
                                    renderOptions: {
                                        'map': baidumap,
                                        'autoViewport': false,
                                        'selectFirstResult': false
                                    },
                                    onSearchComplete: function (results) {
                                        if (local.getStatus() == BMAP_STATUS_SUCCESS) {
                                            for (var i = 0; i < results.getCurrentNumPois(); i++) {
                                                var lat = results.getPoi(i).point.lat; //纬度
                                                var lng = results.getPoi(i).point.lng; //经度

                                                //距离
                                                var distance = baidumap.getDistance(results.getPoi(i).point, point).toFixed(2);
                                                distance = distance / 1000;

                                                var id = lat * 10000000 + '_' + lng * 10000000;
                                                id = id.replace("/\http://sh.01nz.com.cn/g", "_");

                                                var html = getPointHtml(i, id, results.getPoi(i).title, lat, lng, distance.toFixed(
                                                    1));
                                                $('#' + tab + '_point').append(html);
                                            }
                                        }
                                    }
                                };
                                var local = new BMap.LocalSearch(baidumap, options);
                                local.search(words);
                            }

							/**
							 * @desc 获取热门地点
							 * 序号，标题，距离
							 */
                            function getPointHtml(i, id, title, lat, lng, distance) {
                                i = i + '';
                                var html = '<div id="place_' + id + '" class="map_tray_item_cnt_item">' +
                                    '<div style="height:45px;" onClick=getRouteHtml("' + id + '","' + lat + '","' + lng +
                                    '"); class="map_tray_item_cnt_item_hd clearfix">' +
                                    '<div class="map_tray_item_cnt_item_icon map_tray_item_cnt_item_icon_' + i + '"></div>' +
                                    '<div class="map_tray_item_cnt_item_txt">' +
                                    '<p class="map_tray_item_cnt_hd_title">' + title + '</p>' +
                                    '<p class="map_tray_item_cnt_hd_des">距离约' + distance + '公里</p>' +
                                    '</div>' +
                                    '<div class="map_traffic_info_loading none">' +
                                    '</div>' +
                                    '</div>' +
                                    '<div id="traffic_' + id + '" class="map_tray_item_cnt_item_cnt traffic"></div>' +
                                    '</div>';
                                return html;
                            }

							/**
							 * @desc 获取交通信息
							 */
                            function getRouteHtml(id, lat, lng) {
                                var trainHtml = '';
                                var p1 = new BMap.Point(lng, lat);

                                //自驾
                                var driving = new BMap.DrivingRoute(baidumap, {
                                    onSearchComplete: function (results) {
                                        if (driving.getStatus() == BMAP_STATUS_SUCCESS) {
                                            //获取第一条方案
                                            var plan = results.getPlan(0);
                                            //获取方案的驾车线路
                                            var route = plan.getRoute(0);
                                            //获取每个关键步骤,并输出到页面
                                            var way = '';
                                            for (var i = 0; i < route.getNumSteps(); i++) {
                                                var step = route.getStep(i);
                                                if (way == '') {
                                                    way = way + ((i + 1) + ". " + step.getDescription().replace(/<[^>]+>/g, ""));
                                                } else {
                                                    way = way + "<br>" + ((i + 1) + ". " + step.getDescription().replace(
                                                        /<[^>]+>/g, ""));
                                                }
                                            }
                                            carHtml = getCarHtml(plan.getDuration(true), plan.getDistance(true), way);
                                        }
                                    }
                                });
                                driving.search(p1, point);


                                var transit = new BMap.TransitRoute(baidumap, {
                                    renderOptions: {
                                        map: baidumap
                                    },
                                    onSearchComplete: function (result) {
                                        if (transit.getStatus() == BMAP_STATUS_SUCCESS) {
                                            baidumap.clearOverlays();
                                            var start = result.getStart().title;
                                            var end = result.getEnd().title;

                                            var firstPlan = result.getPlan(0);

                                            //绘制步行线路
                                            for (var i = 0; i < firstPlan.getNumRoutes(); i++) {
                                                var walk = firstPlan.getRoute(i);
                                                if (walk.getDistance(false) > 0) {
                                                    baidumap.addOverlay(new BMap.Polyline(walk.getPath(), {
                                                        lineColor: "green"
                                                    }));
                                                }
                                            }

                                            //绘制公交线路
                                            for (i = 0; i < firstPlan.getNumLines(); i++) {
                                                var line = firstPlan.getLine(i);
                                                baidumap.addOverlay(new BMap.Polyline(line.getPath()));
                                            }

                                            //输出方案信息
                                            for (i = 0; i < result.getNumPlans(); i++) {
                                                var way = (i + 1) + ". " + result.getPlan(i).getDescription().replace(/<[^>]+>/g,
                                                    "");
                                                if (result.getPlan(i).getLine(i)) {
                                                    var line = result.getPlan(i).getLine(i);
                                                    var time = result.getPlan(i).getDuration(true);
                                                    var distance = result.getPlan(i).getDistance(true);
                                                }

                                                trainHtml = trainHtml + getTrainHtml(i, line, start, end, way, time, distance);
                                            }

                                            baidumap.addOverlay(new BMap.Marker(point));

                                            var html = '<div style="height:23px;" class="traffic_bar clearfix">' +
                                                '<p class="traffic_bar_taxi"></p><div class="traffic_bar_choose">' +
                                                '<div id="traffic_bar_choose_transit_' + id +
                                                '" class="traffic_bar_choose_transit traffic_bar_choose_transit_active" onClick=byTrain("' +
                                                id + '"); title="交通"></div>' +
                                                '<div id="traffic_bar_choose_drive_' + id +
                                                '" class="traffic_bar_choose_drive" onClick=byDrive("' + id +
                                                '"); title="驾车"></div></div>' +
                                                '</div>' +
                                                '<!-- 公交 start --><div style="" id="traffic_transit_' + id +
                                                '" class="traffic_transit_cnt">' + trainHtml + '</div><!-- 公交 end -->' +
                                                '<!-- 自驾 start --><div id="traffic_drive_' + id +
                                                '" class="traffic_drive_cnt none">' + carHtml + '<div><!-- 自驾 end -->';

                                            $('#traffic_' + id).html(html);
                                        } else {
                                            //alert('抱歉，地图查找不到相关线路');
                                        }
                                        baidumap.addOverlay(new BMap.Marker(point, {
                                            icon: myIcon
                                        }));
                                        return;
                                    }
                                });
                                transit.search(p1, point);

                                if ($('#place_' + id).hasClass("map_tray_item_cnt_item_active")) {
                                    $('#place_' + id).removeClass("map_tray_item_cnt_item_active");
                                } else {
                                    $('#place_' + id).addClass("map_tray_item_cnt_item_active");
                                }

                                return true;
                            }

                            function byTrain(id) {
                                $("#traffic_bar_choose_transit_" + id).addClass("traffic_bar_choose_transit_active");
                                $("#traffic_bar_choose_drive_" + id).removeClass("traffic_bar_choose_drive_active");
                                $("#traffic_transit_" + id).removeClass("none");
                                $("#traffic_drive_" + id).addClass("none");
                            }

                            function byDrive(id) {
                                $("#traffic_bar_choose_drive_" + id).addClass("traffic_bar_choose_drive_active");
                                $("#traffic_bar_choose_transit_" + id).removeClass("traffic_bar_choose_transit_active");
                                $("#traffic_transit_" + id).addClass("none");
                                $("#traffic_drive_" + id).removeClass("none");
                                $("#traffic_drive_" + id).html(carHtml);
                            }

                            //公交线路html
                            function getTrainHtml(index, line, start, end, way, time, distance) {
                                var name = '';
                                if (line) {
                                    name = line.title;
                                }

                                var html =
                                    '<div index="0" class="traffic_transit_cnt_item traffic_transit_cnt_item_highlight traffic_transit_cnt_item_active">' +
                                    '<div style="height:28px;" class="traffic_transit_cnt_item_hd clearfix">' +
                                    '<div class="traffic_transit_cnt_item_hd_index">' + (index + 1) + '</div>' +
                                    '<div title="' + name + '" class="traffic_transit_cnt_item_hd_title">' + name + '</div>' +
                                    '</div>' +
                                    '<div class="traffic_transit_cnt_item_cnt">' +
                                    '<div style="height:28px;" class="traffic_transit_cnt_item_cnt_begin clearfix">' +
                                    '<div class="traffic_transit_cnt_item_cnt_item_icon_begin"></div>' +
                                    '<div class="traffic_transit_cnt_item_cnt_item_begin_des">' +
                                    '<div title="起点" class="traffic_transit_cnt_item_cnt_item_begin_des_inner">起点</div>' +
                                    '</div>' +
                                    '</div>' +
                                    '<div index="step|0" style="height:auto;" class="traffic_transit_cnt_item_cnt_item clearfix">' +
                                    '<div style="line-height:25px;height:auto;">' + way + '</div>' +
                                    '</div>' +
                                    '<div style="height:28px;" class="traffic_transit_cnt_item_cnt_end clearfix">' +
                                    '<div class="traffic_transit_cnt_item_cnt_item_icon_end"></div>' +
                                    '<div class="traffic_transit_cnt_item_cnt_item_end_des">' +
                                    '<div title="终点" class="traffic_transit_cnt_item_cnt_item_end_des_inner">终点</div>' +
                                    '</div>' +
                                    '</div>' +
                                    '</div>' +
                                    '<div class="traffic_transit_cnt_item_ft">' +
                                    '<div class="traffic_transit_cnt_item_ft_des" style="width:200px;">约' + time + '/' + distance +
                                    '</div>' +
                                    '</div>' +
                                    '</div>';
                                return html;
                            }

                            //自驾html
                            function getCarHtml(time, distance, way) {
                                var html = '<div class="traffic_drive_cnt_tray">' +
                                    '<div style="height:28px;" class="traffic_drive_cnt_begin clearfix">' +
                                    '<div class="traffic_drive_cnt_begin_icon"></div>' +
                                    '<div class="traffic_drive_cnt_begin_tray">' +
                                    '<div class="traffic_drive_cnt_begin_des"><div title="起点" class="traffic_drive_cnt_begin_des_inner">起点</div>' +
                                    '</div><a class="traffic_drive_cnt_all_btn none" href="#">显示全部</a>' +
                                    '</div>' +
                                    '</div>' +
                                    '<div style="line-height:25px;height:auto;">' + way + '</div>' +
                                    '<div style="height:28px;" class="traffic_drive_cnt_end clearfix">' +
                                    '<div class="traffic_drive_cnt_end_icon"></div>' +
                                    '<div class="traffic_drive_cnt_end_des">' +
                                    '<div title="终点" class="traffic_drive_cnt_end_des_inner">终点</div>' +
                                    '</div>' +
                                    '</div>' +
                                    '</div>' +
                                    '<div class="traffic_drive_cnt_ft">' +
                                    '<div style="width:200px;" title="约' + time + '/ ' + distance + '" class="traffic_drive_cnt_ft_des">约' +
                                    time + ' / ' + distance + '</div>' +
                                    '</div>';
                                return html;
                            }

                            $("#map_airports").live('click', function () {
                                if ($("#airports_point").is(":visible")) {
                                    $("#airports_point").hide();
                                } else {
                                    $("#airports_point").show();
                                    $("#metros_point").hide();
                                    $("#scenics_point").hide();
                                    $("#foods_point").hide();
                                }
                            });
                            $("#map_metros").live('click', function () {
                                if ($("#metros_point").is(":visible")) {
                                    $("#metros_point").hide();
                                } else {
                                    $("#airports_point").hide();
                                    $("#metros_point").show();
                                    $("#metros_point").css("overflow", "auto");
                                    $("#metros_point").css("height", "415px");
                                    $("#scenics_point").hide();
                                    $("#foods_point").hide();
                                }
                            });
                            $("#map_scenics").live('click', function () {
                                if ($("#scenics_point").is(":visible")) {
                                    $("#scenics_point").hide();
                                } else {
                                    $("#airports_point").hide();
                                    $("#metros_point").hide();
                                    $("#scenics_point").css("overflow", "auto");
                                    $("#scenics_point").css("height", "415px");
                                    $("#scenics_point").show();
                                    $("#foods_point").hide();
                                }
                            });
                            $("#map_foods").live('click', function () {
                                if ($("#foods_point").is(":visible")) {
                                    $("#foods_point").hide();
                                } else {
                                    $("#airports_point").hide();
                                    $("#metros_point").hide();
                                    $("#scenics_point").hide();
                                    $("#foods_point").show();
                                    $("#foods_point").css("overflow", "auto");
                                    $("#foods_point").css("height", "415px");
                                }
                            });
                            $("#metros_point").hide();
                            $("#scenics_point").hide();
                            $("#foods_point").hide();
						</script>
					</div>
					<div class="sd_bz">
						<div class="sd_bzxs">
							<div class="sd_dy">商家答疑</div>
							<div class="sd_dybt" onclick="wenda_dd(40)">我要咨询</div>
							<ul>
								<li>
									<div class="f-16"><a>Q：你们家钓鱼是在么算啊？</a></div>
									<div class="sd_yh f-14">aoxiang 2015-09-02 该信息来自PC端 </div>
								</li>
								<li>
									<div class="f-16"><a>Q：再去有优惠吗？</a></div>
									<div class="sd_yh f-14"> 2015-07-23 该信息来自PC端 </div>
								</li>
							</ul>
						</div>
					</div>
					<div class="sd_lx">
						<div class="sd_fj ">
							<div class="f_l f-24">线路推荐</div>
							<div class="f_r"></div>
						</div>
						<div class="sd_lx_text"></div>
					</div>
				</div>
			</div>
            </div>
		<!-- 热门农庄 -->
</asp:Content>
<asp:Content runat="server" ID="Footer" ContentPlaceHolderID="Footer">
</asp:Content>

