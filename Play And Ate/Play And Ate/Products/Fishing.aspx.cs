using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FTZ.PlayAndAte.BLL;

namespace Play_And_Ate.Products
{
    public partial class Fishing : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //绑定热门钓场数据
            this.ReProduct.DataSource = ProductManager.ShowProducts(1).OrderBy(x => x.ProductId).Take(8).Select(s => new { Image = s.Image.FirstOrDefault().ImageName, ProductName = s.ProductName, ProductPrice = s.ProductPrice, ProductID = s.ProductId });
            this.ReProduct.DataBind();

            //绑定农家钓场大图片数据
            this.ReZhu.DataSource = ProductManager.ShowProducts(1).OrderBy(x => x.ProductId).Take(1).Select(s => new { Image = s.Image.FirstOrDefault().ImageName, ProductName = s.ProductName, ProductPrice = s.ProductPrice, ProductID = s.ProductId });
            this.ReZhu.DataBind();

            //绑定农家钓场小图片数据
            this.ReZhuT.DataSource = ProductManager.ShowProducts(1).OrderBy(x => x.ProductId).Take(4).Select(s => new { Image = s.Image.FirstOrDefault().ImageName, ProductName = s.ProductName, ProductPrice = s.ProductPrice, ProductID = s.ProductId });
            this.ReZhuT.DataBind();
        }
    }
}