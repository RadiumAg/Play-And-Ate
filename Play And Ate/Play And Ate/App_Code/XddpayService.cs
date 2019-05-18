using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.IO;
using System.Net;

namespace Play_And_Ate.Order.App_Code
{
    /// <summary>
    /// 类名：xddpay_service
    /// 功能：支付宝外部服务接口控制
    /// 详细：该页面是请求参数核心处理文件，不需要修改
    /// 版本：3.1
    /// 修改日期：2010-10-29
    /// 说明：
    /// 以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
    /// 该代码仅供学习和研究支付宝接口使用，只是提供一个参考
    /// </summary>
    public class XddpayService
    {
        private string gateway = "https://api.6688pay.com:8080";                //网关地址
        private string mysign = "";                 //签名结果
        private Dictionary<string, string> sPara = new Dictionary<string, string>();//要签名的字符串

        /// <summary>
        /// 构造函数
        /// </summary>
        public XddpayService(string order_no, string subject, string pay_type, string total_money) : this(order_no, subject, pay_type, total_money, "")
        {
        }

        /// <summary>
        /// 构造函数
        /// </summary>
        public XddpayService(string order_no, string subject, string pay_type, string total_money, string extra)
        {
            //构造签名参数数组
            sPara.Add("order_no", order_no);
            sPara.Add("subject", subject);
            sPara.Add("pay_type", pay_type);
            sPara.Add("money", total_money);
            sPara.Add("app_id", XddpayConfig.App_id);
            sPara.Add("extra", extra);

            //获得签名结果
            mysign = XddpayFunction.Build_mysign(sPara);
            sPara.Add("sign", mysign);
        }

        /// <summary>
        /// 构造函数
        /// 当一个网站有多个接口时，使用本构造函数传app_id和app_secret
        /// </summary>
        public XddpayService(string app_id, string app_secret, string order_no, string subject, string pay_type, string total_money, string extra)
        {
            //构造签名参数数组
            sPara.Add("order_no", order_no);
            sPara.Add("subject", subject);
            sPara.Add("pay_type", pay_type);
            sPara.Add("money", total_money);
            sPara.Add("app_id", app_id);
            sPara.Add("extra", extra);

            //获得签名结果
            mysign = XddpayFunction.Build_mysign(sPara, app_id, app_secret);
            sPara.Add("sign", mysign);
        }

        /// <summary>
        /// 构造表单提交HTML
        /// </summary>
        /// <returns>输出 表单提交HTML文本</returns>
        public string Build_Form()
        {
            StringBuilder sbHtml = new StringBuilder();

            ////GET方式传递
            //sbHtml.Append("<form id=\"xddpaysubmit\" name=\"xddpaysubmit\" action=\"" + gateway + "_input_charset=" + XddpayConfig.Input_charset + "\" method=\"get\">");

            //POST方式传递（GET与POST二必选一）
            sbHtml.Append("<form id=\"xddpaysubmit\" name=\"xddpaysubmit\" action=\"" + gateway + "?input_charset=" + XddpayConfig.Input_charset + "\" method=\"post\">");
            foreach (KeyValuePair<string, string> temp in sPara)
            {
                sbHtml.Append("<input type=\"hidden\" name=\"" + temp.Key + "\" value=\"" + temp.Value + "\"/>");
            }

            //submit按钮控件请不要含有name属性
            sbHtml.Append("<input type=\"submit\" value=\"确认付款\"></form>");

            sbHtml.Append("<script>document.forms['xddpaysubmit'].submit();</script>");

            return sbHtml.ToString();
        }
    }
}