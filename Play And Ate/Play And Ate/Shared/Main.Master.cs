using System;
using System.Web;

namespace Play_And_Ate.Shared
{
    public partial class Header : System.Web.UI.MasterPage
    {

        protected string userName;//登陆名称

        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.Request.Cookies["UserName"]!=null)
            {
                userName = HttpUtility.UrlDecode(this.Request.Cookies["UserName"].Value);
            }
        }


    }
}