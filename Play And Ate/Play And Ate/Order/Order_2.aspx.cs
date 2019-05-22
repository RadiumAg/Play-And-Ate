using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Play_And_Ate.Order
{
    public partial class Order_2 : System.Web.UI.Page
    {

        protected string Getzjg;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request["Length"] != null)
            {
                //判断成人数量
                if (int.Parse(Request["Length"]) > 1)
                {
                    this.GetLength.Text = Request["Length"];
                    this.GetET.Text = Request["etrs"];
                    this.GetZJ.Text = Request["zjg"];
                }
                //在预订清单显示价格
                this.crzjg.InnerText = Request["crzjg"].ToString();
                this.crjg.InnerText = Request["Length"] + "成人×￥" + Request["crjg"];
                this.etzjg.InnerText= Request["etzjg"].ToString();
                this.etjg.InnerText = Request["etrs"] + "儿童×￥" + Request["etjg"];
                this.offerPrice.InnerText = Request["zjg"];
            }
        }

    }
}