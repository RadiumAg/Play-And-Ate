<%@ Page Title="" Language="C#" MasterPageFile="~/Shared/Main.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Play_And_Ate.LoginAndRegister.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Style" runat="server">
    <script src="../Scripts/LoginAndRegister/Register/Index.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Content" runat="server">
    <div class="wraps">

        <script type="text/javascript" src="./第一农庄网_会员注册_files/lang.js.下载"></script>
        <script type="text/javascript">
            var APP_ROOT = '';
            var CART_URL = '/cart';
            var CART_CHECK_URL = '/cart-check';
            var LOADER_IMG = 'http://sh.01nz.com.cn/app/Tpl/fanwe/images/lazy_loading.gif';
            var ERROR_IMG = 'http://sh.01nz.com.cn/app/Tpl/fanwe/images/image_err.gif';
        </script>

        <div class="blank"></div>
        <style type="text/css">
            .p9 {
                cursor: pointer;
            }
        </style>
        <div class="inc wb">
            <div class="inc_main pd10 clearfix">
                <div class="user_inc_top" style="width: 300px; margin: 0px 117px; color: #ff5c0f">第一农庄网会员注册</div>
                <div class="user-lr-box-left f_l" style="width: 650px">
                    <!--注册 start-->
                    <div class=" p20 f14">

                        <div class="field mobile" id="mobile-div">
                            <label for="signup-mobile-address">手机</label>
                            <input type="text" value="" class="f-input ipttxt" id="signup-mobile-address" name="phoneNumber" size="30">
                            <span class="f-input-tip"></span>
                            <span class="hint">登录及找回密码用，不会公开</span>
                            <input type="hidden" value="0" id="mobile_hid">
                        </div>

                        <div class="field email" id="email-div">
                            <label for="signup-email-address">邮箱</label>
                            <input type="text" value="" class="f-input ipttxt" id="signup-email-address" name="email" size="30">
                            <span class="f-input-tip"></span>
                            <span class="hint">登录及找回密码用，不会公开</span>
                            <input type="hidden" value="0" id="email_hid">
                        </div>
                        <div class="blank1"></div>
                        <div class="field username">
                            <label for="signup-username">昵称</label>
                            <input type="text" value="" class="f-input ipttxt" id="signup-username" name="user_name" size="30">
                            <span class="f-input-tip"></span>
                            <span class="hint">3-15个字符，一个汉字为两个字符</span>
                            <input type="hidden" value="0" id="user_name_hid">
                        </div>
                        <div class="blank1"></div>
                        <div class="field username">
                            <label for="signup-username">地址</label>
                            <input type="text" value="" class="f-input ipttxt" id="signup-address" name="user_address" size="50">
                            <span class="f-input-tip"></span>
                            <span class="hint">请填写您的详细地址</span>
                            <input type="hidden" value="0" id="address_hid">
                        </div>
                        <div class="blank1"></div>
                        <div class="field password">
                            <label for="signup-password">密码</label>
                            <input type="password" class="f-input ipttxt" id="signup-password" name="user_pwd" size="30">
                            <span class="f-input-tip"></span>
                            <span class="hint">最少 4 个字符 </span>
                            <input type="hidden" value="0" id="user_pwd_hid">
                        </div>
                        <div class="blank1"></div>
                        <div class="field password">
                            <label for="signup-password-confirm">确认密码</label>
                            <input type="password" class="f-input ipttxt" id="signup-password-confirm" name="user_pwd_confirm" size="30">
                            <span class="f-input-tip"></span>
                            <span class="hint">与密码保持一致</span>
                            <input type="hidden" value="0" id="user_pwd_confirm_hid">
                        </div>
                        <div class="blank1"></div>
                        <div class="field username">
                            <label for="signup-username">QQ</label>
                            <input type="text" value="" class="f-input ipttxt" id="signup-qq" name="user_qq" size="30">
                            <span class="f-input-tip"></span>
                            <span class="hint">填写QQ账号</span>
                            <input type="hidden" value="0" id="qq_hid">
                        </div>
                        <div class="blank"></div>
                        <div class="field username" id="reg_mobile">
                            <label for="signup-verify-address">验证码</label>
                            <div class="verify_row">
                                <input type="text" value="" id="Code" name="vcode" class="f-input" style="height: 20px; padding: 5px;">
                                <div class="blank1"></div>
                            </div>
                            <div style="float: left; margin-left: 15em; margin-top: -37px;">
                                <input id="get-code" type="button" style="height: 30px;" value="获取验证码">
                            </div>
                        </div>
                        <div class="blank"></div>
                        <div class="act">
                            <input type="button" class="reg-submit-btn" id="signup-submit" name="commit" value="注册">
                        </div>

                    </div>
                    <!--注册 end-->
                </div>
                <div class="user-lr-box-right f_r" style="margin-top: -50px">
                    <div style="width: 227px;">
                        <a href="#">
                            <img src="/Images/LoginAndRegister/denglu.png" alt="登陆" width="227" height="30"></a>
                    </div>
                    <div class="app_login_box">
                        <div class="blank10"></div>
                        <h3>合作网站账号登录</h3>
                        <div class="blank10"></div>
                        <div class="blank10"></div>
                        <span id="api_Sina_1"><a href="https://api.weibo.com/oauth2/authorize?client_id=1124953983&amp;redirect_uri=http%3A%2F%2Fsh.01nz.com.cn%2Fapi_callback.php%3Fc%3DSina&amp;response_type=code" title="用微博登陆">
                            <img src="/Images/LoginAndRegister/52a1881254edd.png" alt="用微博登陆"></a>&nbsp;</span><div class="blank10"></div>
                        <span id="api_Qqv2_1"><a href="http://www.01nz.com.cn/system/api_login/qqv2/qq_login.php" title="用QQ账号登陆">
                            <img src="/Images/LoginAndRegister/52d0f08581839.png" alt="用QQ账号登陆"></a>&nbsp;</span><div class="blank10"></div>
                        <span id="api_Wechat_0"><a title="用微信登陆" href="https://open.weixin.qq.com/connect/qrconnect?appid=wx6431ca26112607a7&amp;redirect_uri=http%3A%2F%2F01nz.com.cn%2Fuser-welogin%2F&amp;response_type=code&amp;scope=snsapi_login&amp;state=STATE#wechat_redirect">
                            <img alt="用微信登陆" src="/Images/LoginAndRegister/wechat.png"></a>&nbsp;</span>
                    </div>
                    <div style="width: 270px;">
                        <adv adv_id="微信展示"></adv>
                    </div>
                </div>
            </div>
            <div class="inc_foot"></div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Footer" runat="server"></asp:Content>
