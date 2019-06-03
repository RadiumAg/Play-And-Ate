using Play_And_Ate.Order.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Play_And_Ate.Order
{

    public partial class PayTo : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            //接收参数
            string subject = HttpUtility.UrlDecode(Request.QueryString["subject"]);
            int pay_type = Convert.ToInt32(Request.QueryString["pay_type"]);
            decimal money = Convert.ToDecimal(Request.QueryString["money"]);
            string extra = HttpUtility.UrlDecode(Request.QueryString["extra"]);

            //创建订单
            string order_no = Helper.OrderMessage.OrderName ?? this.Request["OrderName"].ToString();//商户的订单号
            Helper.OrderMessage.OrderName = null;
            //构造请求函数，无需修改
            XddpayService xddservice = new XddpayService(order_no, subject, pay_type.ToString(), money.ToString("f2"), extra);
            string sHtmlText = xddservice.Build_Form();
            //打印页面
            lbOut_trade_no.Text = order_no;
            lbTotal_fee.Text = money.ToString("f2");
            lbButton.Text = sHtmlText;
        }
    }
}