using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FTZ.PlayAndAte.Models;
using FTZ.PlayAndAte.BLL; 

namespace Play_And_Ate.Line
{
    public partial class Line : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ShowFrmData(1);
            }
        }
        public void ShowFrmData(int typeid)
        {
           
           
        }
    }
}