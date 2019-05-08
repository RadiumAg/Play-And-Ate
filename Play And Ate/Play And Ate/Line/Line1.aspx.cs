using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FTZ.PlayAndAte.BLL;

namespace Play_And_Ate.Line
{
    public partial class Line1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //加载城市信息
            this.RPGentuanCity.DataSource = ProductManager.GetAreaNameByPPtype("跟团行").Select(s => new { AreaName = s.Area.AreaName }).Distinct();
            this.RPGentuanCity.DataBind();
            this.RPzijiaCity.DataSource = ProductManager.GetAreaNameByPPtype("自驾行").Select(s => new { AreaName = s.Area.AreaName }).Distinct();
            this.RPzijiaCity.DataBind();
            this.RPzizhuCity.DataSource = ProductManager.GetAreaNameByPPtype("自助行").Select(s => new {  AreaName = s.Area.AreaName }).Distinct();
            this.RPzizhuCity.DataBind();
            //加载左侧边信息
            this.RPtejiaLine.DataSource = ProductManager.GetProductsBytotal().OrderBy(m => m.ProductPrice).Take(8).Select(s => new { Image = s.Image.FirstOrDefault().ImageName, ProductName = s.ProductName, ProductPrice = s.ProductPrice, ProductID = s.ProductId });
            this.RPtejiaLine.DataBind();
            this.RPremaiLine.DataSource = ProductManager.GetProductsBytotal().Take(6).Select(s => new { Image = s.Image.FirstOrDefault().ImageName, ProductName = s.ProductName, ProductPrice = s.ProductPrice, ProductID = s.ProductId });
            this.RPremaiLine.DataBind();
            //加载特价推荐
            this.RPtjtj.DataSource = ProductManager.GetProductsBytotal().OrderBy(m => m.ProductPrice).Take(8).Select(s => new { Image = s.Image.FirstOrDefault().ImageName, ProductName = s.ProductName, ProductPrice = s.ProductPrice, ProductID = s.ProductId });
            this.RPtjtj.DataBind();
            this.RPgentuan1.DataSource = ProductManager.GetProductsBytotal().Where(m => m.PPointsType.PPointsType1 == "跟团行").Take(6).Select(s => new { Image = s.Image.FirstOrDefault().ImageName, ProductName = s.ProductName, ProductPrice = s.ProductPrice, ProductID = s.ProductId });
            this.RPgentuan1.DataBind();
            this.RPgentuan2.DataSource = ProductManager.GetProductsBytotal().Where(m => m.PPointsType.PPointsType1 == "跟团行").Select(s => new { Image = s.Image.FirstOrDefault().ImageName, ProductName = s.ProductName, ProductPrice = s.ProductPrice, ProductID = s.ProductId });
            this.RPgentuan2.DataBind();
            this.RPzizhu1.DataSource = ProductManager.GetProductsBytotal().Where(m => m.PPointsType.PPointsType1 == "自助行").Take(4).Select(s => new { Image = s.Image.FirstOrDefault().ImageName, ProductName = s.ProductName, ProductPrice = s.ProductPrice, ProductID = s.ProductId });
            this.RPzizhu1.DataBind();
            this.RPzizhu2.DataSource = ProductManager.GetProductsBytotal().Where(m => m.PPointsType.PPointsType1 == "自助行").Select(s => new { Image = s.Image.FirstOrDefault().ImageName, ProductName = s.ProductName, ProductPrice = s.ProductPrice, ProductID = s.ProductId });
            this.RPzizhu2.DataBind();
            this.RPzijia1.DataSource = ProductManager.GetProductsBytotal().Where(m => m.PPointsType.PPointsType1 == "自驾行").Take(4).Select(s => new { Image = s.Image.FirstOrDefault().ImageName, ProductName = s.ProductName, ProductPrice = s.ProductPrice, ProductID = s.ProductId });
            this.RPzijia1.DataBind();
            this.RPzijia2.DataSource = ProductManager.GetProductsBytotal().Where(m => m.PPointsType.PPointsType1 == "自驾行").Select(s => new { Image = s.Image.FirstOrDefault().ImageName, ProductName = s.ProductName, ProductPrice = s.ProductPrice, ProductID = s.ProductId });
            this.RPzijia2.DataBind();
        }
    }
}