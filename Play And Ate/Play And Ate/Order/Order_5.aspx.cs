using Play_And_Ate.Order.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Play_And_Ate.Order
{
    public partial class Order_5 : System.Web.UI.Page
    {

        //是否支付成功
        protected string isSuccess { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            //创建XddpayResponse实例
            XddpayResponse xddpayResponse = new XddpayResponse(Context);
            //判断签名
            if (xddpayResponse.IsXddpaySign())
            {
                string result = xddpayResponse.getParameter("result"); //支付结果
                if ("success".Equals(result))
                {
                    isSuccess = "支付成功";
                }
                else
                {
                    isSuccess = "支付失败";
                }
            }
        }


    }
}