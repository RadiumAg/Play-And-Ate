using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FTZ.PlayAndAte.Models;
using FTZ.PlayAndAte.BLL;

namespace Play_And_Ate.Show
{
    public partial class FarmDetails : System.Web.UI.Page
    {

        protected Product product;
        protected void Page_Load(object sender, EventArgs e)
        {
            string ProductId = this.Request["productId"].ToString();
            product = ProductManager.ShowProducts(ProductId);
        }


    }
}