using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FTZ.PlayAndAte.BLL;

namespace Play_And_Ate.Products
{
    public partial class Generated : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //绑定农家小炒数据
            //this.ReProduct.DataSource = ProductManager.ShowProducts(1).OrderBy(x => x.ProductId).Take(4).Select(s => new { Image = s.Image.FirstOrDefault().ImageName, ProductName = s.ProductName, ProductPrice = s.ProductPrice, ProductID = s.ProductId });
            //this.ReProduct.DataBind();

            //绑定农家住宿数据
            //this.ZhuSu.DataSource = ProductManager.ShowProducts(1).OrderBy(x => x.ProductId).Take(8).Select(s => new { Image = s.Image.FirstOrDefault().ImageName, ProductName = s.ProductName, ProductPrice = s.ProductPrice, ProductID = s.ProductId });
            //this.ZhuSu.DataBind();



        }
    }
}