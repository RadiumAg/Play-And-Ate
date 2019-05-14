using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Play_And_Ate.Order
{
    public partial class Order_4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void ClickPay_Click(object sender, ImageClickEventArgs e)
        {
            if (this.third_party_radio_WX.Checked)
            {
                Response.Redirect(string.Format("PayTo.aspx?subject={0}&money={1}&pay_type={2}&extra={3}", HttpUtility.UrlEncode("产品名称"), 0.01, 44, HttpUtility.UrlEncode("")));//extra为用户自定义数据
            }
        }
    }
}