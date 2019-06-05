using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Play_And_Ate.LoginAndRegister
{
    public partial class Login : System.Web.UI.Page
    {
        /// <summary>
        /// 回调地址
        /// </summary>
        protected string returnUrl { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            string url = this.Request.RawUrl;
            int questionIndex = url.IndexOf("?");
            //假如请求地址中没有包含ReturnUrl或者没有请求，那么就赋值为"",否则为ReturnUrl
            this.Response.Cookies["ReturnUrl"].Value = !url.Contains("ReturnUrl") ? "" : HttpUtility.UrlDecode(url.Substring(questionIndex + 11));
            returnUrl = this.Request.Cookies["ReturnUrl"].Value;
        }

    }
}