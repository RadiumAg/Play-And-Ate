using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FTZ.PlayAndAte.Models;
using FTZ.PlayAndAte.BLL;

namespace Play_And_Ate.Personage
{
    public partial class Personage : System.Web.UI.Page
    {
        protected UserInfo_Role user = new UserInfo_Role();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (this.Request.Cookies["UserName"] != null)
            {
                int UserId;
                int.TryParse(this.Request.Cookies["UserId"].Value, out UserId);
                user = UserInfo_RoleManager.UserData().Where(x => x.UserId == UserId).SingleOrDefault();
            }
        }

    }
}