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
            if (!IsPostBack)
            {
                //搜索城市
                this.RPCity.DataSource = ProductManager.GetAreasByTotal(3).Select(s=>new { AreaName=s.AreaName}).Distinct();
                this.RPCity.DataBind();
                //农家饭
                this.RPEating.DataSource = ProductManager.GetProductsBytotal(3).Where(s => s.PPointsType.PPointsType1 == "农家土菜").Take(4).Select(s => new { Image = s.Image.FirstOrDefault().ImageName, ProductName = s.ProductName, ProductPrice = s.ProductPrice, ProductID = s.ProductId });
                this.RPEating.DataBind();
                this.RPeat.DataSource = ProductManager.GetProductsBytotal(3).Where(s => s.PPointsType.PPointsType1 == "农家土菜").Take(10).Select(s => new { Image = s.Image.FirstOrDefault().ImageName, ProductName = s.ProductName, ProductPrice = s.ProductPrice, ProductID = s.ProductId });
                this.RPeat.DataBind();
                //农家住宿
                this.RPaccordingtion.DataSource = ProductManager.GetProductsBytotal(3).Take(8).Where(s => s.PPointsType.PPointsType1 == "乡村农家").Select(s => new { Image = s.Image.FirstOrDefault().ImageName, ProductName = s.ProductName, ProductPrice = s.ProductPrice, ProductID = s.ProductId });
                this.RPaccordingtion.DataBind();
                //移动框框
                this.RPShow1.DataSource= ProductManager.GetProductsBytotal(3).Select(s => new { Image = s.Image.FirstOrDefault().ImageName, ProductName = s.ProductName, ProductPrice = s.ProductPrice, ProductID = s.ProductId, AreaName = s.Area.AreaName }).Take(12);
                this.RPShow1.DataBind();
                this.PRShow2.DataSource = ProductManager.GetProductsBytotal(3).Select(s => new { Image = s.Image.FirstOrDefault().ImageName, ProductName = s.ProductName, ProductPrice = s.ProductPrice, ProductID = s.ProductId, AreaName = s.Area.AreaName }).Take(12);
                this.PRShow2.DataBind();
            }
        }
    }
}