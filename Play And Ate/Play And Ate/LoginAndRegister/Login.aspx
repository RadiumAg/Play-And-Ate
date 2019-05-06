<%@ Page Title="" Language="C#" MasterPageFile="~/Shared/Main.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Play_And_Ate.LoginAndRegister.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Style" runat="server">
    <link href="../Content/LoginAndRegister/Login/base.v606141511.css" rel="stylesheet" />
    <link href="../Content/LoginAndRegister/Login/Login.css" rel="stylesheet" />
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

        <script type="text/javascript">
            var APP_ROOT = '';
            var CART_URL = '/cart';
            var CART_CHECK_URL = '/cart-check';
            var LOADER_IMG = 'http://www.01nz.com.cn/app/Tpl/fanwe/images/lazy_loading.gif';
            var ERROR_IMG = 'http://www.01nz.com.cn/app/Tpl/fanwe/images/image_err.gif';
        </script>

        <div class="blank"></div>
        <div class="inc wb">
            <div class="user_inc_top">第一农庄网会员登陆 <span>&nbsp;或者 <a href="Register.aspx">注册</a></span>	</div>
            <div class="inc_main clearfix">
                <div class="user-lr-box-left f_l">
                    <div style="margin: 10px;">
                        <!--登录表单-->

                        <div class="field email">
                            <label for="login-email-address">Email/手机</label>
                            <input type="text" value="" class="f-input ipttxt" id="login-email-address" name="email" size="30" tabindex="1">
                        </div>
                        <div class="field password">
                            <label for="login-password">密码</label>
                            <input type="password" value="" class="f-input ipttxt" id="login-password" name="user_pwd" size="30" tabindex="2">
                            <span class="lostpassword">&nbsp;&nbsp;<a href="http://sh.01nz.com.cn/user-getpassword">忘记密码?</a></span>
                        </div>
                        <div class="field autologin">
                            <div class="input">
                                <input id="t1" class="f-input ipttxt" style="width: 100px;" type="text" name="u" placeholder="验证码" />
                                <span id="discode"></span>
                                <input type="button" value="换一换" class="c" style="height: 50px; line-height: 50px; vertical-align: baseline;" onclick="createCode()">
                            </div>
                        </div>
                        <div class="field autologin">
                            <input type="checkbox" id="autologin" name="auto_login">下次自动登录？									
                        </div>
                        <div class="clear"></div>

                        <div class="act">
                            <input type="hidden" name="ajax" value="1">
                            <input type="submit" class="login-submit-btn" id="user-login-submit" name="commit" value="登录">
                            <script>
                                createCode();
                                var code; //在全局 定义验证码
                                function createCode() { //创建验证码函数
                                    code = "";
                                    var codeLength = 4;//验证码的长度
                                    var selectChar = new Array(0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k',
                                        'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z');//所有候选组成验证码的字符，当然也可以用中文的
                                    for (var i = 0; i < codeLength; i++) {
                                        var charIndex = Math.floor(Math.random() * 36);
                                        code += selectChar[charIndex];
                                    }
                                    // 设置验证码的显示样式，并显示
                                    document.getElementById("discode").style.fontFamily = "Fixedsys"; //设置字体
                                    document.getElementById("discode").style.letterSpacing = "5px"; //字体间距
                                    document.getElementById("discode").style.color = "#0ab000"; //字体颜色
                                    document.getElementById("discode").innerHTML = code; // 显示
                                }
                                function but() {//验证验证码输入是否正确
                                    var val1 = document.getElementById("t1").value;
                                    var val2 = code;
                                    if (val1 != val2) {
                                        alert("验证码错误!");
                                        document.getElementById('t1').value = "";
                                        return false;
                                    }
                                    return true;
                                }

                                $("#user-login-submit").click(function () {
                                    //取消自动提交表单
                                    $("#form1").submit(function () {
                                        return false;
                                    });
                                    let isSubmit = but();
                                    if (isSubmit) {
                                        $.ajax({
                                            type: 'POST',
                                            dataType: "JSON",
                                            data: $("#form1").serialize(),
                                            url: "../Services/Main.ashx?id=1",
                                            success: function (data) {
                                                let msg = data;
                                                if (msg.isLogin) {
                                                    alert("登陆成功！");
                                                    window.open(data.Role + ".html","_self");
                                                }
                                                else {
                                                    alert("登陆失败！");
                                                }
                                            }
                                        });
                                    }
                                });
                            </script>
                            <span class="to_regsiter">还没有账户？<a href="http://sh.01nz.com.cn/user-register">立即注册</a></span>
                        </div>

                        <!--登录表单-->
                    </div>
                </div>
                <div class="user-lr-box-right f_r">
                    <div class="app_login_box">
                        <div class="blank10"></div>
                        <h3>合作网站账号登录</h3>
                        <div class="blank10"></div>
                        <div class="blank10"></div>
                        <span id="api_Sina_1"><a href="#" title="用微博登陆">
                            <img src="../Images/LoginAndRegister/52a1881254edd.png" alt="用微博登陆"></a>&nbsp;</span><div class="blank10"></div>
                        <span id="api_Qqv2_1"><a href="#" title="用QQ账号登陆">
                            <img src="../Images/LoginAndRegister/52d0f08581839.png" alt="用QQ账号登陆"></a>&nbsp;</span><div class="blank10"></div>
                        <span id="api_Wechat_0"><a title="用微信登陆" href="#">
                            <img alt="用微信登陆" src="../Images/LoginAndRegister/wechat.png"></a>&nbsp;</span>
                    </div>
                </div>
                <div class="inc_foot"></div>
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
                    </div>
                </div>
                <div id="gotop" style="display: none;"></div>
                <a href="http://sh.01nz.com.cn/cart" target="_blank">
                    <div id="gowu"></div>
                </a>

            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server">

    <script src="../Scripts/LoginAndRegister/Login/z_stat.js"></script>
    <script src="../Scripts/LoginAndRegister/Login/core.js"></script>
    <script src="../Scripts/LoginAndRegister/Login/c.js"></script>
    <script src="../Scripts/LoginAndRegister/Login/tongji_360.js"></script>
    <script src="../Scripts/LoginAndRegister/Login/core(1).js"></script>
</asp:Content>
