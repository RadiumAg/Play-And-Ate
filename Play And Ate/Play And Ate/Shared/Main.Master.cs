using System;

namespace Play_And_Ate.Shared
{
    public partial class Header : System.Web.UI.MasterPage
    {

        protected string userName;//登陆名称

        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.Request.Cookies["UserName"]!=null)
            {
                userName = this.Request.Cookies["UserName"].Value;
            }
        }

        protected void btnHome_Click(object sender, EventArgs e)
        {
            this.Response.Redirect("/LoginAndRegister/ordinary.html");
        }

        protected void btnTui_Click(object sender, EventArgs e)
        {
            this.Response.Redirect("/Show/FarmDetails.aspx");
        }

        protected void btnGo_Click(object sender, EventArgs e)
        {
            this.Response.Redirect("/Show/FarmRow.aspx");
        }

    }
}