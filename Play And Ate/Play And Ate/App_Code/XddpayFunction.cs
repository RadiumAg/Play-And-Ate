using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Security.Cryptography;
using System.IO;
using System.Net;
using System.Xml;

namespace Play_And_Ate.Order.App_Code
{
    /// <summary>
    /// 功能：支付宝接口公用函数类
    /// 详细：该类是请求、通知返回两个文件所调用的公用函数核心处理文件，不需要修改
    /// 版本：3.1
    /// 修改日期：2010-10-29
    /// 说明：
    /// 以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
    /// 该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
    /// </summary>
    public class XddpayFunction
    {
        public XddpayFunction()
        {
        }

        /// <summary>
        /// 生成签名结果
        /// </summary>
        /// <param name="sArray">要签名的数组</param>
        /// <param name="key">安全校验码</param>
        /// <param name="sign_type">签名类型</param>
        /// <param name="_input_charset">编码格式</param>
        /// <returns>签名结果字符串</returns>
        public static string Build_mysign(Dictionary<string, string> dic)
        {
            string prestr = string.Format("order_no={0}&subject={1}&pay_type={2}&money={3}&app_id={4}&extra={5}&{6}", dic["order_no"], dic["subject"], dic["pay_type"], dic["money"], XddpayConfig.App_id, dic["extra"], XddpayConfig.App_secret);

            string mysign = Sign(prestr, XddpayConfig.Sign_type, XddpayConfig.Input_charset);	//把最终的字符串签名，获得签名结果
            return mysign;
        }

        /// <summary>
        /// 生成签名结果
        /// </summary>
        /// <param name="sArray">要签名的数组</param>
        /// <param name="key">安全校验码</param>
        /// <param name="sign_type">签名类型</param>
        /// <param name="_input_charset">编码格式</param>
        /// <returns>签名结果字符串</returns>
        public static string Build_mysign(Dictionary<string, string> dic, string app_id, string app_secret)
        {
            string prestr = string.Format("order_no={0}&subject={1}&pay_type={2}&money={3}&app_id={4}&extra={5}&{6}", dic["order_no"], dic["subject"], dic["pay_type"], dic["money"], app_id, dic["extra"], app_secret);

            string mysign = Sign(prestr, XddpayConfig.Sign_type, XddpayConfig.Input_charset);	//把最终的字符串签名，获得签名结果
            return mysign;
        }

        /// <summary>
        /// 签名字符串
        /// </summary>
        /// <param name="prestr">需要签名的字符串</param>
        /// <param name="sign_type">签名类型</param>
        /// <param name="_input_charset">编码格式</param>
        /// <returns>签名结果</returns>
        public static string Sign(string prestr, string sign_type, string _input_charset)
        {
            StringBuilder sb = new StringBuilder(32);
            if (sign_type.ToUpper() == "MD5")
            {
                MD5 md5 = new MD5CryptoServiceProvider();
                byte[] t = md5.ComputeHash(Encoding.GetEncoding(_input_charset).GetBytes(prestr));
                for (int i = 0; i < t.Length; i++)
                {
                    sb.Append(t[i].ToString("x").PadLeft(2, '0'));
                }
            }
            return sb.ToString().ToUpper();
        }

        /// <summary>
        /// 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
        /// </summary>
        /// <param name="sPath">日志的本地绝对路径</param>
        /// <param name="sWord">要写入日志里的文本内容</param>
        public static void log_result(string sPath, string sWord)
        {
            StreamWriter fs = new StreamWriter(sPath, false, System.Text.Encoding.Default);
            fs.Write(sWord);
            fs.Close();
        }
    }
}