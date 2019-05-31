using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Play_And_Ate
{
    public partial class Rediret : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            this.Response.Redirect(this.Request[HttpUtility.UrlEncode(this.Request["ReturnUrl"])]);
        }


    }
}