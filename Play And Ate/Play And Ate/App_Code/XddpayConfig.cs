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
    // 功能：设置帐户有关信息及返回路径（基础配置页面）
    // 版本：3.1
    // 日期：2010-10-29
    // 说明：
    // 以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
    // 该代码仅供学习和研究支付宝接口使用，只是提供一个参考。

    // 如何获取安全校验码和合作身份者ID
    // 1.访问支付宝商户服务中心(b.alipay.com)，然后用您的签约支付宝账号登陆.
    // 2.访问“技术服务”→“下载技术集成文档”（https://b.alipay.com/support/helperApply.htm?action=selfIntegration）
    // 3.在“自助集成帮助”中，点击“合作者身份(Partner ID)查询”、“安全校验码(Key)查询”

    // 安全校验码查看时，输入支付密码后，页面呈灰色的现象，怎么办？
    // 解决方法：
    // 1、检查浏览器配置，不让浏览器做弹框屏蔽设置
    // 2、更换浏览器或电脑，重新登录查询。
    /// </summary>
    public class XddpayConfig
    {
        //定义变量（无需改动）
        private static string app_id;
        private static string app_secret;
        private static string sign_type;
        private static string input_charset;

        /// <summary>
        /// 接口ID
        /// </summary>
        public static string App_id
        {
            get { return app_id; }
            set { app_id = value; }
        }

        /// <summary>
        /// 接口密钥
        /// </summary>
        public static string App_secret
        {
            get { return app_secret; }
            set { app_secret = value; }
        }

        /// <summary>
        /// 获取或设置签名方式
        /// </summary>
        public static string Sign_type
        {
            get { return "MD5"; }
        }

        /// <summary>
        /// 获取或设置网站商品的展示地址
        /// </summary>
        public static string Input_charset
        {
            get { return input_charset; }
            set { input_charset = value; }
        }

        static XddpayConfig()
        {
            //↓↓↓↓↓↓↓↓↓↓请在这里配置接口信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓
            //接口ID
            app_id = "10804";

            //接口密钥
            app_secret = "fbe4452feb194830aec5edd2ae6c6a3e";

            //字符编码格式 目前支持 utf-8 gb2312 gbk
            input_charset = "utf-8";//asp.net一般都是utf-8的，无需要修改
        }
    }
}