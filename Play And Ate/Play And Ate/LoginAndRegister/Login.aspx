<%@ Page Title="" Language="C#" MasterPageFile="~/Shared/Main.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Play_And_Ate.LoginAndRegister.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Style" runat="server">
     <link href="../Content/LoginAndRegister/Login/base.v606141511.css" rel="stylesheet" />
    <link href="../Content/LoginAndRegister/Login/cf62177493ce4db40c22962f60d846f8.css" rel="stylesheet" />
    <script src="../Scripts/LoginAndRegister/Login/908ca0ab9e4d27144b60bc878b237327.js"></script>
    <script src="../Scripts/LoginAndRegister/Login/baidumap.js"></script>
    <script src="../Scripts/LoginAndRegister/Login/c.js"></script>
    <script src="../Scripts/LoginAndRegister/Login/fgcomm.v620152248.js"></script>
    <script src="../Scripts/LoginAndRegister/Login/header.js"></script>
    <script src="../Scripts/LoginAndRegister/Login/index_header.js"></script>
    <script src="../Scripts/LoginAndRegister/Login/lang.js"></script>
    <script src="../Scripts/LoginAndRegister/Login/mt3.v1014201036.js"></script>
    <script src="../Scripts/LoginAndRegister/Login/sousuo.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="wraps">
		
<script type="text/javascript" src="./第一农庄网_会员登录_files/lang.js.下载"></script>
	<script type="text/javascript">
var APP_ROOT = '';
var CART_URL = '/cart';
var CART_CHECK_URL = '/cart-check';
var LOADER_IMG = 'http://www.01nz.com.cn/app/Tpl/fanwe/images/lazy_loading.gif';
var ERROR_IMG = 'http://www.01nz.com.cn/app/Tpl/fanwe/images/image_err.gif';
</script>
 
<div class="blank"></div>
	<div class="inc wb">
		<div class="user_inc_top">第一农庄网会员登陆 <span>&nbsp;或者 <a href="http://sh.01nz.com.cn/user-register">注册</a></span>	</div>
		<div class="inc_main clearfix">
			<div class="user-lr-box-left f_l">
					<div style="margin:10px;">
	<!--登录表单-->
	
								<form method="post" action="http://sh.01nz.com.cn/user-dologin" name="page_login_form" id="page_login_form">
								<div class="field email">
									<label for="login-email-address">Email/手机</label>
									<input type="text" value="" class="f-input ipttxt" id="login-email-address" name="email" size="30" tabindex="1">
								</div>
								<div class="field password">
									<label for="login-password">密码</label>
									<input type="password" value="" class="f-input ipttxt" id="login-password" name="user_pwd" size="30" tabindex="2">
									<span class="lostpassword">&nbsp;&nbsp;<a href="http://sh.01nz.com.cn/user-getpassword">忘记密码?</a></span> </div>
																<div class="field autologin">
									<div class="verify_row">								
									<input type="text" value="" class="f-input ipttxt" name="verify" tabindex="3">	
									<img src="./第一农庄网_会员登录_files/verify.php" onclick="this.src=&#39;/verify.php?rand=&#39;+ Math.random();" title="看不清楚？换一张">			
									</div>
								</div>
																<div class="field autologin">
									<input type="checkbox" id="autologin" name="auto_login" value="1" tabindex="4">下次自动登录？									
								</div>
								<div class="clear"></div>
								
								<div class="act">
									<input type="hidden" name="ajax" value="1">
									<input type="submit" class="login-submit-btn" id="user-login-submit" name="commit" value="登录">
									<span class="to_regsiter">还没有账户？<a href="http://sh.01nz.com.cn/user-register">立即注册</a></span>
								</div>
							</form>
		<!--登录表单-->	
		<script type="text/javascript">		
		$(document).ready(function(){
				$("#user-login-submit").click(function(){
				
				if($.trim($("#login-email-address").val()).length == 0)
				{
					$.showErr("Email格式错误，请重新输入或者昵称格式错误，请重新输入",function(){
						$("#login-email-address").focus();
					});				
					return false;
				}
		
				if(!$.minLength($("#login-password").val(),4,false))
				{
					$.showErr("密码格式错误，请重新输入",function(){
						$("#login-password").focus();
					});					
					return false;
				}
				
				var ajaxurl = $("form[name='page_login_form']").attr("action");
				var query = $("form[name='page_login_form']").serialize() ;

				$.ajax({ 
					url: ajaxurl,
					dataType: "json",
					data:query,
					type: "POST",
					success: function(ajaxobj){
						if(ajaxobj.status==1)
						{	//alert(123);
							var integrate = $("<span id='integrate'>"+ajaxobj.data+"</span>");
							$("body").append(integrate);
							window.history.back(-1); 
							update_page_user_tip();
							$("#integrate").remove();				
									
							$.showSuccess(ajaxobj.info,function(){
								if(ajaxobj.jump!='')
								location.href = ajaxobj.jump;
								else
								location.reload();
							});							
						}
						else
						{
							$.showErr(ajaxobj.info);							
						}
					},
					error:function(ajaxobj)
					{
//						if(ajaxobj.responseText!='')
//						alert(ajaxobj.responseText);
					}
				});	
				
				return false;
				
			});	
		});

		function update_page_user_tip()
		{
			var ajaxurl = APP_ROOT+"/shop.php?ctl=ajax&act=update_user_tip";
			$.ajax({ 
			url: ajaxurl,
			type: "POST",
			success: function(ajaxobj){
				$("#user_head_tip").html(ajaxobj);
			},
			error:function(ajaxobj)
			{
//				if(ajaxobj.responseText!='')
//				alert(ajaxobj.responseText);
			}
		});	
		}
		
		</script>
		</div>			</div>
			<div class="user-lr-box-right f_r">
				<div class="app_login_box">
				<div class="blank10"></div>
				<h3>合作网站账号登录</h3><div class="blank10"></div><div class="blank10"></div><span id="api_Sina_1"><a href="https://api.weibo.com/oauth2/authorize?client_id=1124953983&amp;redirect_uri=http%3A%2F%2Fsh.01nz.com.cn%2Fapi_callback.php%3Fc%3DSina&amp;response_type=code" title="用微博登陆"><img src="./第一农庄网_会员登录_files/52a1881254edd.png" alt="用微博登陆"></a>&nbsp;</span><div class="blank10"></div><span id="api_Qqv2_1"><a href="http://www.01nz.com.cn/system/api_login/qqv2/qq_login.php" title="用QQ账号登陆"><img src="./第一农庄网_会员登录_files/52d0f08581839.png" alt="用QQ账号登陆"></a>&nbsp;</span><div class="blank10"></div><span id="api_Wechat_0"><a title="用微信登陆" href="https://open.weixin.qq.com/connect/qrconnect?appid=wx6431ca26112607a7&amp;redirect_uri=http%3A%2F%2F01nz.com.cn%2Fuser-welogin%2F&amp;response_type=code&amp;scope=snsapi_login&amp;state=STATE#wechat_redirect"><img alt="用微信登陆" src="./第一农庄网_会员登录_files/wechat.png"></a>&nbsp;</span>				</div>
			</div>
		</div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">
    	<div class="inc_foot"></div>
	</div>
</div>
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
		<div align="center"><img src="./第一农庄网_会员登录_files/xian.jpg" alt="灰线"></div>
		<div align="center">
			<img src="./第一农庄网_会员登录_files/jubao.gif" alt="举报中心" class="img">
			<img src="./第一农庄网_会员登录_files/end_2.gif" alt="官方认证" class="img">
			<a href="https://www.sgs.gov.cn/lz/licenseLink.do?method=licenceView&amp;entyId=dov73ne2cve0r70m02lemast61960airrs" target="_blank"><img src="./第一农庄网_会员登录_files/icon.gif" border="0"></a>
		    <img src="./第一农庄网_会员登录_files/end_3.gif" alt="网络110" class="img">
			<img border="0" src="./第一农庄网_会员登录_files/image_err.gif">
			<a href="http://shwg.dianping.com/index.html?tp=1.1.20.0.27.LKAvY0C-00-8v9E9&amp;ti=AY74lO" target="_blank"><img border="0" src="./第一农庄网_会员登录_files/wg.png"></a>
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
<script src="./第一农庄网_会员登录_files/z_stat.php" language="JavaScript"></script><script src="./第一农庄网_会员登录_files/core.php" charset="utf-8" type="text/javascript"></script><a href="https://www.cnzz.com/stat/website.php?web_id=1254939469" target="_blank" title="站长统计">站长统计</a>

<script src="./第一农庄网_会员登录_files/c.js.下载" language="JavaScript"></script><script src="./第一农庄网_会员登录_files/tongji_360.php" language="JavaScript" charset="gb2312"></script><script src="./第一农庄网_会员登录_files/core(1).php" charset="utf-8" type="text/javascript"></script><a href="https://quanjing.cnzz.com/" target="_blank" title="全景统计"><img border="0" hspace="0" vspace="0" src="./第一农庄网_会员登录_files/2.gif"></a>
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

</asp:Content>
