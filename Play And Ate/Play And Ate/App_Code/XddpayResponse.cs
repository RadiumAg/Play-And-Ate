using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.IO;
using System.Net;
using System.Collections;
using System.Collections.Specialized;
namespace Play_And_Ate.Order.App_Code
{
    /// <summary>
    /// 类名：alipay_notify
    /// 功能：付款过程中服务器通知类
    /// 详细：该页面是通知返回核心处理文件，不需要修改
    /// 版本：3.1
    /// 修改日期：2010-10-29
    /// '说明：
    /// 以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
    /// 该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
    /// 
    /// //////////////////////注意/////////////////////////////
    /// 调试通知返回时，可查看或改写log日志的写入TXT里的数据，来检查通知返回是否正常 
    /// </summary>
    public class XddpayResponse
    {
        /** 应答的参数 */
        protected Hashtable parameters;
        protected HttpContext httpContext;

        string app_id;
        string app_secret;

        //获取服务器通知数据方式，进行参数获取
        public XddpayResponse(HttpContext httpContext)
        {
            parameters = new Hashtable();

            this.httpContext = httpContext;
            NameValueCollection collection;
            if (this.httpContext.Request.HttpMethod == "POST")
            {
                collection = this.httpContext.Request.Form;
            }
            else
            {
                collection = this.httpContext.Request.QueryString;
            }

            foreach (string k in collection)
            {
                string v = (string)collection[k];
                this.setParameter(k, v);
            }
            this.app_id = XddpayConfig.App_id;
            this.app_secret = XddpayConfig.App_secret;
        }

        //获取服务器通知数据方式，进行参数获取
        /// 当一个网站有多个接口时，使用本构造函数传app_id和app_secret
        /// </summary>
        public XddpayResponse(HttpContext httpContext, string app_id, string app_secret)
        {
            parameters = new Hashtable();

            this.httpContext = httpContext;
            NameValueCollection collection;
            if (this.httpContext.Request.HttpMethod == "POST")
            {
                collection = this.httpContext.Request.Form;
            }
            else
            {
                collection = this.httpContext.Request.QueryString;
            }

            foreach (string k in collection)
            {
                string v = (string)collection[k];
                this.setParameter(k, v);
            }
            this.app_id = app_id;
            this.app_secret = app_secret;
        }

        public Boolean IsXddpaySign()
        {
            //获取参数
            string order_no = getParameter("order_no");
            string subject = getParameter("subject");
            string pay_type = getParameter("pay_type");
            string money = getParameter("money");
            string realmoney = getParameter("realmoney");
            string result = getParameter("result");
            string xddpay_order = getParameter("xddpay_order");
            string app_id = getParameter("app_id");
            string extra = getParameter("extra");
            string sign = getParameter("sign");

            //组织签名串
            StringBuilder sb = new StringBuilder();
            sb.AppendFormat("order_no={0}", order_no);
            sb.AppendFormat("&subject={0}", subject);
            sb.AppendFormat("&pay_type={0}", pay_type);
            sb.AppendFormat("&money={0}", money);
            sb.AppendFormat("&realmoney={0}", realmoney);
            sb.AppendFormat("&result={0}", result);
            sb.AppendFormat("&xddpay_order={0}", xddpay_order);
            sb.AppendFormat("&app_id={0}", app_id);
            sb.AppendFormat("&extra={0}", extra);
            sb.AppendFormat("&{0}", app_secret);

            //算出摘要
            string mySign = XddpayFunction.Sign(sb.ToString(), "MD5", getCharset());
            return sign.Equals(mySign);
        }

        /** 获取参数值 */
        public string getParameter(string parameter)
        {
            string s = (string)parameters[parameter];
            return (null == s) ? "" : s;
        }

        /** 设置参数值 */
        private void setParameter(string parameter, string parameterValue)
        {
            if (parameter != null && parameter != "")
            {
                if (parameters.Contains(parameter))
                {
                    parameters.Remove(parameter);
                }

                parameters.Add(parameter, parameterValue);
            }
        }

        private string getCharset()
        {
            return this.httpContext.Request.ContentEncoding.BodyName;
        }
    }
}