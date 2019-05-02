using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Play_And_Ate.Helper
{
    public class UrlWrite : IHttpModule
    {

        public void Dispose()
        {
        }

        public void Init(HttpApplication context)
        {
            context.BeginRequest += Context_BeginRequest;
        }

        /// <summary>
        /// URL重写
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        private void Context_BeginRequest(object sender, EventArgs e)
        {
            HttpApplication context = sender as HttpApplication;
            string url = context.Request.RawUrl;
            int dot = url.LastIndexOf(".");
            string role = url.Substring(0, dot + 1);
            if (role.Contains("admin"))
            {
                context.Server.Transfer("~/Admin/Backstage.html?id=1",true);
            }
            else if (role.Contains("business"))
            {
                context.Server.Transfer("~/Admin/Backstage.html?id=2",true);
            }
            else if (role.Contains("ordinary"))
            {
                context.Server.Transfer("~/Home/Home.aspx");
            }
        }

    }
}