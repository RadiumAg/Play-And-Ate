using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;

namespace Play_And_Ate.Helper
{
    public class UrlRewriteModule : IHttpModule
    {
        public void Dispose()
        {
            //释放资源
        }

        public void Init(HttpApplication context)
        {
            //请求触发之前触发的事件
            context.BeginRequest += Context_BeginRequest;
        }

        private void Context_BeginRequest(object sender, EventArgs e)
        {
           

        }
    }
}