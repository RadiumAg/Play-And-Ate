using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using Microsoft.Practices.EnterpriseLibrary.Common;
using System.Configuration;
using FTZ.PlayAndAte.BLL;

namespace Play_And_Ate.Search
{
    public partial class Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request["content"] != null)
                {
                    DatasBind(Request["content"]);
                }
                else
                {
                    DatasBind();
                }
                
            }
        }
        private void DatasBind()

        {
            
            String a = ConfigurationManager.ConnectionStrings["PlayAndAte"].ToString();
            SqlConnection con = new SqlConnection(a);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter("select * from product ", con);

            DataSet ds = new DataSet();

            sda.Fill(ds, "product");

            this.Pager.RecordCount = ds.Tables[0].Rows.Count;

            PagedDataSource pds = new PagedDataSource();

            pds.AllowPaging = true;

            pds.PageSize = Pager.PageSize;

            pds.CurrentPageIndex = Pager.CurrentPageIndex - 1;

            pds.DataSource = ds.Tables[0].DefaultView;

            this.Repeater1.DataSource =pds;

            this.Repeater1.DataBind();
            con.Close();

        }
        private void DatasBind(string content)
        {
            String a = ConfigurationManager.ConnectionStrings["PlayAndAte"].ToString();
            SqlConnection con = new SqlConnection(a);
            con.Open();
            SqlDataAdapter sda = new SqlDataAdapter(string.Format("select distinct *from product p,Image i,PPointsType ppt where p.PPTId=ppt.Pid and i.ProductId=p.ProductId and (ppt.PPointsType like '%{0}%' or p.ProductName like '%{0}%' or Feature like '%{0}%') ",Request["content"]), con);

            DataSet ds = new DataSet();

            sda.Fill(ds, "product");

            this.Pager.RecordCount = ds.Tables[0].Rows.Count;

            PagedDataSource pds = new PagedDataSource();

            pds.AllowPaging = true;

            pds.PageSize = Pager.PageSize;

            pds.CurrentPageIndex = Pager.CurrentPageIndex - 1;

            pds.DataSource = ds.Tables[0].DefaultView;

            this.Repeater1.DataSource = pds;

            this.Repeater1.DataBind();
            con.Close();
        }

        protected void Pager_PageChanged(object sender, EventArgs e)
        {
            int rows = this.Pager.PageSize;
            int pageIndex = this.Pager.CurrentPageIndex;
            if (Request["content"]!=null)
            {
                this.Repeater1.DataSource = ProductManager.GetALLProducts().Where(x=>x.ProductName.Contains(Request["content"])).Where(x=>x.PPointsType.PPointsType1.Contains(Request["content"])).Where(x=>x.Feature.Contains(Request["content"])).OrderBy(x => x.ProductId).Skip(rows * (pageIndex - 1)).Take(rows);
                this.Repeater1.DataBind();
            }
            else
            {
                this.Repeater1.DataSource = ProductManager.GetALLProducts().OrderBy(x => x.ProductId).Skip(rows * (pageIndex - 1)).Take(rows);
                this.Repeater1.DataBind();
            }
            
        }

        protected void Pager_PageChanging(object src, Wuqi.Webdiyer.PageChangingEventArgs e)
        {
           
            Pager.CurrentPageIndex = e.NewPageIndex;
            DataBind();
        }
    }
}