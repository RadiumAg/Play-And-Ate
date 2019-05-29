using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FTZ.PlayAndAte.Models;
using FTZ.PlayAndAte.BLL;

namespace Play_And_Ate.Admin
{
    public partial class Backstage : System.Web.UI.Page
    {

        /// <summary>
        /// 用户权限
        /// </summary>
        public string RoleId { get; set; }
        public string UserName { get; set; }//用户姓名
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UserName = HttpUtility.UrlDecode(this.Request["UserName"].ToString());
            if (this.Request.Cookies["RoleId"] == null)
            {
                this.Response.Cookies["RoleId"].Value = this.Request["id"].ToString();
            }
            this.RoleId = this.Request.Cookies["RoleId"].Value;
        }

    }
}