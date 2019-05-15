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
        protected string roleId { get; set; }
        protected string userName { get; set; }//用户姓名
        protected void Page_Load(object sender, EventArgs e)
        {
            this.userName = this.Request["UserName"].ToString();
            roleId = this.Request["id"] ?? "";
        }

    }
}