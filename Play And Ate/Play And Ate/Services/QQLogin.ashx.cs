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
                string openid = this.context.Request["OpenId"].ToString();
                string accessToken = this.context.Request["AccessToken"].ToString();
                //读取用户数据
                UserInfo_Role userData = UserInfo_RoleManager.CheckUserInfo(new UserInfo_Role { OpenId = openid });
                if (userData != null)
                {
                    Helper.Authentication.SetCookie(userData.UserName, userData.Pwd, userData.Role_UserInfo.RoleName);
                    this.context.Response.Cookies["UserName"].Value = userData.UserName;
                    this.context.Response.Cookies["UserId"].Value = userData.UserId.ToString();
                    //写入QQ登录标识
                    this.context.Response.Cookies["AccessToken"].Value = accessToken;
                    this.context.Response.Write(JsonConvert.SerializeObject(true));
                }
                else
                {
                    //假如QQ是第一次登录本网站
                    UserInfo_Role user = new UserInfo_Role() { OpenId = openid };
                    UserInfo_RoleManager.Register(user);
                    this.context.Response.Cookies["UserName"].Value = "你好！新用户,请完善个人信息";
                    this.context.Response.Cookies["UserId"].Value = UserInfo_RoleManager.CheckUserInfo(new UserInfo_Role { OpenId = openid }).UserId.ToString();
                    //写入QQ登录标识
                    this.context.Response.Cookies["AccessToken"].Value = accessToken;
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