﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FTZ.PlayAndAte.Models;
using FTZ.PlayAndAte.BLL;

namespace Play_And_Ate.Home
{
    public partial class Home : System.Web.UI.Page
    {


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ShowFarmData();
            }
        }

        /// <summary>
        ///  
        /// </summary>
        /// <param name="areaId"></param>
        private void ShowFarmData(int areaId = 1)
        {
            var result = ProductManager.ShowProducts(areaId).Take(6).Select(s=>new { s.ProductName,s.ProductPrice,s.ProductId,Image=s.Image.FirstOrDefault() }) ;
            this.ReProduct.DataSource = result;
            this.ReProduct.DataBind();

            
            this.ReSincerityPro.DataSource = ProductManager.ShowProductByRankNum(8).Select(s=> new { s.ProductName, s.ProductPrice, s.ProductId, Image = s.Image.FirstOrDefault(), UserInfo_Role=s.UserInfo_Role });
            this.ReSincerityPro.DataBind();
        }


        /// <summary>
        /// 根据地区类型更改农家乐信息
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void ChangeFarm(object sender, EventArgs e)
        {
            int areaId = Convert.ToInt32((sender as LinkButton).CommandArgument);
            ShowFarmData(areaId);
        }


    }
}