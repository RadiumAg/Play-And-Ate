using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FTZ.PlayAndAte.BLL;
using FTZ.PlayAndAte.Models;

namespace Play_And_Ate.Map
{
    public partial class Map : System.Web.UI.Page
    {
        public Point point = new Point();
        protected void Page_Load(object sender, EventArgs e)
        {
            string productId = this.Request["productId"].ToString();
            point = ProductManager.ShowProducts(productId).Point.FirstOrDefault();
            if (point == null)
            {
                point = new Point();
                point.Longitude = "116.404";
                point.Latitude = "39.915";
                this.Response.Write("<script>alert('抱歉，商家还未上传坐标！去看看别的吧')</script>");
            }
        }

    }
}