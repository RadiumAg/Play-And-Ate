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
            if (!IsPostBack)
            {
                //城市
                this.RPcity.DataSource = ProductManager.GetAreasByTotal(5).Select(s => new { AreaName = s.AreaName }).Distinct();
                this.RPcity.DataBind();
                //热门钓场

                //农家钓场
                this.RPdiaoChang.DataSource = ProductManager.GetProductsBytotal(5).Where(s => s.PPointsType.PPointsType1 == "农家").Take(3).Select(s => new { Image = s.Image.FirstOrDefault().ImageName, ProductName = s.ProductName, ProductID = s.ProductId, AreaName = s.Area.AreaName });
                this.RPdiaoChang.DataBind();

                //所有钓场
                this.RPFree.DataSource = ProductManager.GetProductsBytotal(5).OrderBy(s => s.ProductPrice).Take(10).Select(s => new { Image = s.Image.FirstOrDefault().ImageName, ProductName = s.ProductName, ProductID = s.ProductId, AreaName = s.Area.AreaName, TypeName = s.PPointsType.PPointsType1 });
                this.RPFree.DataBind();
                this.RPCharge.DataSource = ProductManager.GetProductsBytotal(5).Take(8).Select(s => new { Image = s.Image.FirstOrDefault().ImageName, ProductName = s.ProductName, ProductID = s.ProductId, AreaName = s.Area.AreaName, TypeName = s.PPointsType.PPointsType1 });
                this.RPCharge.DataBind();
            }
          
        }
    }
}