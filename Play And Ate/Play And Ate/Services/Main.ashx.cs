using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FTZ.PlayAndAte.Models;
using FTZ.PlayAndAte.BLL;
using Newtonsoft.Json;
using System.Web.Security;

namespace Play_And_Ate.Services
{
    /// <summary>
    /// Main 的摘要说明
    /// </summary>
    public class Main : IHttpHandler
    {
        HttpContext context = HttpContext.Current;
        public void ProcessRequest(HttpContext context)
        {
            string id = context.Request["id"].ToString();
            switch (id)
            {
                case "1":
                    ChekLogin();
                    break;
                case "2":
                    ShowBusiness();
                    break;
            }
        }

        /// <summary>
        /// 登陆
        /// </summary>
        /// <returns>是否登陆成功</returns>
        public void ChekLogin()
        {
            UserInfo_Role user = new UserInfo_Role
            {
                Email = context.Request["email"].ToString(),
                Phone = context.Request["email"].ToString(),
                Pwd = context.Request["user_pwd"].ToString(),

            };

            UserInfo_Role userData = UserInfo_RoleManager.CheckUserInfo(user);
            if (userData == null)
            {
                var msg = new
                {
                    Role = "",
                    isLogin = false,
                };
                context.Response.Write(JsonConvert.SerializeObject(msg));
            }
            else
            {
                var msg = new
                {
                    Role = userData.Role_UserInfo.RoleName,
                    isLogin = true
                };
                Helper.Authentication.SetCookie(userData.UserName, userData.Pwd, userData.Role_UserInfo.RoleName);
                this.context.Response.Cookies["UserName"].Value = userData.UserName;
                context.Response.Write(JsonConvert.SerializeObject(msg));
            }
        }

        /// <summary>
        /// 获取所有商户
        /// </summary>
        public void ShowBusiness()
        {
            context.Response.Write(JsonConvert.SerializeObject(UserInfo_RoleManager.ShowBusiness().Select(x =>new {
                x.Address,
                x.Email,
                x.Phone,
                x.UserName,
                x.Pwd,
                x.QQ,
                Product= x.Product.Select(n=>new {n.ProductName,n.ProductPrice }),
            })));
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