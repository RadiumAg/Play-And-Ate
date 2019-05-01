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
                context.Response.Write(JsonConvert.SerializeObject(false));
            }
            else
            {
                string isAutoNum = context.Request["auto_login"].ToString();
                //判断是否自动登陆
                FormsAuthentication.RedirectFromLoginPage(user.UserName, isAutoNum=="1" ?true:false);
                context.Response.Cookies["UserName"].Value = userData.UserName;
                //设定登陆时间
                context.Response.Cookies["UserName"].Expires = DateTime.Now.AddDays(7);
                context.Response.Write(JsonConvert.SerializeObject(true));
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