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
            
           

           

            //绑定城市
            this.RPcity.DataSource = ProductManager.GetAreasByTotal(2).Select(s=> new { AreaName = s.AreaName } ).Distinct();
            this.RPcity.DataBind();

            //J今日推荐
            this.Feature.DataSource = ProductManager.GetProductsBytotal(2).Take(5).Select(s => new { Image = s.Image.FirstOrDefault().ImageName, ProductName = s.ProductName, ProductPrice = s.ProductPrice, ProductID = s.ProductId, Feature = s.Feature });
            this.Feature.DataBind();

            if (Request["TAreaID"] !=null)
            {
                this.RPTJ.DataSource= ProductManager.GetProductsBytotal(2).Take(8).Where(s=>s.Area.AreaId==int.Parse(Request["TAreaID"])).Select(s => new { Image = s.Image.FirstOrDefault().ImageName, ProductName = s.ProductName, ProductPrice = s.ProductPrice, ProductID = s.ProductId});
                this.RPTJ.DataBind();
            }
        }
    }
}