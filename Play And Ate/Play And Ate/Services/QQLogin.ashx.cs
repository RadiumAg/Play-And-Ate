using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FTZ.PlayAndAte.BLL;
using FTZ.PlayAndAte.Models;
using Newtonsoft.Json;

namespace Play_And_Ate.Services
{
    /// <summary>
    /// QQLogin 的摘要说明
    /// </summary>
    public class QQLogin : IHttpHandler
    {

        HttpContext context = HttpContext.Current;
        public void ProcessRequest(HttpContext context)
        {
            string id = this.context.Request["Id"];
            switch (id)
            {
                case "1":
                    Login();
                    break;

            }
        }

        /// <summary>
        /// QQ登录验证
        /// </summary>
        public void Login()
        {
            try
            {
                //如果QQ已经登录
                string AccessToken = this.context.Request.Cookies["AccessToken"] == null ? "" : this.context.Request.Cookies["AccessToken"].Value;
                /*
                1.如果是打开第一次使用QQ登录，则AccessToken=""
                2.如果是登录过后退出，则AccessToken=null
                 */
                if (!string.IsNullOrEmpty(AccessToken))
                {
                    this.context.Response.Write(JsonConvert.SerializeObject(false));
                    return;
                }
                string openid = this.context.Request["OpenId"].ToString();
                string accessToken = this.context.Request["AccessToken"].ToString();
                //读取用户数据 
                UserInfo_Role userData = UserInfo_RoleManager.CheckUserInfo(new UserInfo_Role { OpenId = openid });
                if (userData != null)
                {
                    Helper.Authentication.SetCookie(userData.UserName, userData.Pwd, userData.Role_UserInfo.RoleName);
                    this.context.Response.Cookies["UserName"].Value = HttpUtility.UrlEncode(userData.UserName.ToString());
                    this.context.Response.Cookies["UserId"].Value = userData.UserId.ToString();
                    //写入QQ登录标识
                    this.context.Response.Cookies["AccessToken"].Value = accessToken;
                    this.context.Response.Write(JsonConvert.SerializeObject(true));
                }
                else
                {
                    //假如QQ是第一次登录本网站
                    string Address = this.context.Request["Province"].ToString() + this.context.Request["City"].ToString();
                    string NickName = this.context.Request["NickName"].ToString();
                    UserInfo_Role user = new UserInfo_Role() { OpenId = openid, UserName = NickName, RoleId = 3, Pwd = "", Address = Address, Phone = "" };
                    UserInfo_RoleManager.Register(user);
                    UserInfo_Role userinfo = UserInfo_RoleManager.CheckUserInfo(new UserInfo_Role { OpenId = openid });
                    this.context.Response.Cookies["UserName"].Value = HttpUtility.UrlEncode(UserInfo_RoleManager.CheckUserInfo(new UserInfo_Role { OpenId = openid }).UserName.ToString());
                    this.context.Response.Cookies["UserId"].Value = UserInfo_RoleManager.CheckUserInfo(new UserInfo_Role { OpenId = openid }).UserId.ToString();
                    //写入QQ登录标识
                    this.context.Response.Cookies["AccessToken"].Value = accessToken;
                    Helper.Authentication.SetCookie(userinfo.UserName, userinfo.Pwd, userinfo.Role_UserInfo.RoleName);
                    this.context.Response.Write(JsonConvert.SerializeObject(true));
                }
            }
            catch (Exception ex)
            {
                this.context.Response.Write(JsonConvert.SerializeObject(false));
            }
        }


        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}