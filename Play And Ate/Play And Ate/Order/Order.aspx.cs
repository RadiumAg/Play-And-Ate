﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Play_And_Ate.Order
{
    public partial class Order : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            //获取商品编号
           Helper.OrderMessage.ProductID = Convert.ToInt32(this.Request["productId"].First().ToString());
        }

    }
}