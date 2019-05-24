using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;

namespace Play_And_Ate.Helper
{
    public class Authentication
    {
        /// <summary>
        /// 设置用户登陆成功凭据（Cookie存储）
        /// </summary>
        /// <param name="UserName">用户名</param>
        /// <param name="PassWord">密码</param>
        /// <param name="Rights">权限</param>
        public static void SetCookie(string UserName, string PassWord, string Rights)
        {
            //
            //String PassWord="test";
            //
            String UserData = UserName + "#" + PassWord + "#" + Rights;
            if (true)
            {
                //数据放入ticket
                FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(1, UserName, DateTime.Now, DateTime.Now.AddMinutes(60), false, UserData);
                //数据加密
                string enyTicket = FormsAuthentication.Encrypt(ticket);
                HttpCookie cookie = new HttpCookie(FormsAuthentication.FormsCookieName, enyTicket);
                HttpContext.Current.Response.Cookies.Add(cookie);
            }
        }
        /// <summary>
        /// 判断用户是否登陆
        /// </summary>
        /// <returns>True,Fales</returns>
        public static bool isLogin()
        {
            return HttpContext.Current.User.Identity.IsAuthenticated;
        }
        /// <summary>
        /// 注销登陆
        /// </summary>
        public static void logOut()
        {
            FormsAuthentication.SignOut();
        }
        /// <summary>
        /// 获取凭据中的用户名
        /// </summary>
        /// <returns>用户名</returns>
        public static string getUserName()
        {
            if (isLogin())
            {
                string strUserData = ((FormsIdentity)(HttpContext.Current.User.Identity)).Ticket.UserData;
                string[] UserData = strUserData.Split('#');
                if (UserData.Length != 0)
                {
                    return UserData[0].ToString();
                }
                else
                {
                    return "";
                }
            }
            else
            {
                return "";
            }
        }
        /// <summary>
        /// 获取凭据中的密码
        /// </summary>
        /// <returns>密码</returns>
        public static string getPassWord()
        {
            if (isLogin())
            {
                string strUserData = ((FormsIdentity)(HttpContext.Current.User.Identity)).Ticket.UserData;
                string[] UserData = strUserData.Split('#');
                if (UserData.Length != 0)
                {
                    return UserData[1].ToString();
                }
                else
                {
                    return "";
                }
            }
            else
            {
                return "";
            }
        }
        /// <summary>
        /// 获取凭据中的用户权限
        /// </summary>
        /// <returns>用户权限</returns>
        public static string getRights()
        {
            if (isLogin())
            {
                string strUserData = ((FormsIdentity)(HttpContext.Current.User.Identity)).Ticket.UserData;
                string[] UserData = strUserData.Split('#');
                if (UserData.Length != 0)
                {
                    return UserData[2].ToString();
                }
                else
                {
                    return "";
                }
            }
            else
            {
                return "";
            }
        }
    }
}