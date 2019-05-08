using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FTZ.PlayAndAte.BLL;
namespace Play_And_Ate.Line
{
    public partial class LineDetail1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request["PPointType"]!=null)
            {
                this.lblNavType.Text = Request["PPointType"];
                this.lblType.Text= Request["PPointType"];
                //热门农庄数据绑定
                this.remenfarm.DataSource = ProductManager.GetProductsBytotal().Take(6).Select(s => new { Image = s.Image.FirstOrDefault().ImageName, ProductName = s.ProductName, ProductPrice = s.ProductPrice, ProductID = s.ProductId,areaName=s.Area.AreaName });
                this.remenfarm.DataBind();
                //城市绑定
                this.RPdestination.DataSource = ProductManager.GetAreaNameByPPtype(Request["PPointType"]).Select(s => new { AreaName = s.Area.AreaName,PPointType=s.PPointsType.PPointsType1}).Distinct();
                this.RPdestination.DataBind();
                //根据类别绑定产品
                this.RPProduct.DataSource=ProductManager.GetProductsBytotal().Where(m => m.PPointsType.PPointsType1 == Request["PPointType"]).Select(s => new { Image = s.Image.FirstOrDefault().ImageName, ProductName = s.ProductName, ProductPrice = s.ProductPrice, ProductID = s.ProductId,AreaName=s.Area.AreaName, PPointType=s.PPointsType.PPointsType1 });
                this.RPProduct.DataBind();
                if (Request["areaName"]!=null)
                {
                    this.lblNavCity.Text = Request["areaName"];
                    this.RPProduct.DataSource = ProductManager.GetProductsBytotal().Where(m => m.PPointsType.PPointsType1 == Request["PPointType"]&m.Area.AreaName==Request["areaName"]).Select(s => new { Image = s.Image.FirstOrDefault().ImageName, ProductName = s.ProductName, ProductPrice = s.ProductPrice, ProductID = s.ProductId,AreaName=s.Area.AreaName });
                    this.RPProduct.DataBind();
                }
            }
        }
    }
}