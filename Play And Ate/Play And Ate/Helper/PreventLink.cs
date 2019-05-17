using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Play_And_Ate.Helper
{
    public class PreventLink : IHttpHandler
    {
        public bool IsReusable()
        {
            return false;
        }
        public void ProcessRequest(HttpContext context)
        {
            //盗链的判断依据：上次请求的主机和端口与本次请求的主机和端口是否一致，不一致则为盗链
            //获取上次请求的URL
            Uri lastUrl = context.Request.UrlReferrer;
            //获取本次请求的URL
            Uri currentUrl = context.Request.Url;
            //判断是否为盗链
            if (lastUrl.Host!=currentUrl.Host||lastUrl.Port!=currentUrl.Port)
            {
                //获取“切勿盗链”警告图示图片路径
                string errorImagePath = context.Request.PhysicalApplicationPath + "../Images/error/捏脸.gif";
                //发送给客户端
                context.Response.WriteFile(errorImagePath);
            }
            else
            {
                context.Response.WriteFile(context.Request.PhysicalPath);
            }
        }

        bool IHttpHandler.IsReusable
        {
            get { throw new NotImplementedException(); }
        }
    }
}