using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Play_And_Ate.Admin
{
    public partial class Backstage : System.Web.UI.Page
    {

        protected string role; //权限
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.Request["id"].ToString() == "1")
            {
                role = "admin";
            }
            else if (this.Request["id"].ToString() == "2")
            {
                role = "business";
            }
        }

    }
}