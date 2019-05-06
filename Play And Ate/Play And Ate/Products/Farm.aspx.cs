using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FTZ.PlayAndAte.BLL;

namespace Play_And_Ate.Products
{
    public partial class Farm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //推荐
            this.ReTuiJ.DataSource = ProductManager.ShowProducts(1).OrderBy(x => x.ProductId).Take(8).Select(s => new { Image = s.Image.FirstOrDefault().ImageName, ProductName = s.ProductName, ProductPrice = s.ProductPrice, ProductID = s.ProductId });
            this.ReTuiJ.DataBind();

            //主题
            this.ReProduct.DataSource = ProductManager.ShowProducts(1).OrderBy(x => x.ProductId).Take(8).Select(s => new { Image = s.Image.FirstOrDefault().ImageName, ProductName = s.ProductName, ProductPrice = s.ProductPrice, ProductID = s.ProductId });
            this.ReProduct.DataBind();

            //采摘大图片
            this.ReZhu.DataSource = ProductManager.ShowProducts(1).OrderBy(x => x.ProductId).Take(1).Select(s => new { Image = s.Image.FirstOrDefault().ImageName, ProductName = s.ProductName, ProductPrice = s.ProductPrice, ProductID = s.ProductId });
            this.ReZhu.DataBind();

            //采摘小图片
            this.ReZhuT.DataSource = ProductManager.ShowProducts(1).OrderBy(x => x.ProductId).Take(4).Select(s => new { Image = s.Image.FirstOrDefault().ImageName, ProductName = s.ProductName, ProductPrice = s.ProductPrice, ProductID = s.ProductId });
            this.ReZhuT.DataBind();
        }
    }
}