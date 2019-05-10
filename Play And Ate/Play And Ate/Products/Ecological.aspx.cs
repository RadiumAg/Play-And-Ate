using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FTZ.PlayAndAte.BLL;

namespace Play_And_Ate.Products
{
    public partial class Ecological : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //欢乐周末
                this.ReProduct.DataSource = ProductManager.GetProductsBytotal(4).Take(4).Select(s => new { Image = s.Image.FirstOrDefault().ImageName, ProductName = s.ProductName, ProductPrice = s.ProductPrice, ProductID = s.ProductId, AreaName = s.Area.AreaName});
                this.ReProduct.DataBind();
                //存在生态园的城市
                this.RPcity.DataSource = ProductManager.GetAreasByTotal(4).Distinct();
                this.RPcity.DataBind();
                //查询生态园
                this.RPshengtaiyuan.DataSource = ProductManager.GetProductsBytotal(4).Take(6).Select(s => new { Image = s.Image.FirstOrDefault().ImageName, ProductName = s.ProductName, ProductPrice = s.ProductPrice, ProductID = s.ProductId,AreaName=s.Area.AreaName, DetailIntroduction=s.DetailIntroduction });
                this.RPshengtaiyuan.DataBind();
            }
           
        }
    }
}