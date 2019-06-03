using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using FTZ.PlayAndAte.Models;
using Newtonsoft.Json;

namespace Play_And_Ate.Order
{
    public partial class Order_3 : System.Web.UI.Page
    {
        protected static List<Customers> list = new List<Customers>();
        protected string result;
        protected string Crrs;
        protected string Etrs;
        protected string Zjg;
        protected string Lxname;
        protected string Lxmobile;
        protected string Lxemail;
        protected string Lxphone;
        protected dynamic datt;
        protected void Page_Load(object sender, EventArgs e)
        {
            //用json格式保存上个页面传递的参数
            Lxname = JsonConvert.SerializeObject(Request["Lxname"]);
            Lxmobile = JsonConvert.SerializeObject(Request["Lxmobile"]);
            Lxemail = JsonConvert.SerializeObject(Request["Lxemail"]);
            Lxphone = JsonConvert.SerializeObject(Request["Lxphone"]);
            Crrs = JsonConvert.SerializeObject(Request["Crrs"]);
            Etrs = JsonConvert.SerializeObject(Request["Etrs"]);
            Zjg = JsonConvert.SerializeObject(Request["Zjg"]);
            //成人信息数组
            datt = JsonConvert.DeserializeObject(Request["datt"]);
            //获取数组成员
            //初始化list
            list.Clear();
            foreach (var item in datt)
            {
                Customers customers = new Customers();
                customers.Name = item["cName"];
                customers.CardTypeId = item["cardTypeId"];
                customers.Id_Number = item["carId"];
                customers.Phone = item["phone"];
                list.Add(customers);
            }
            result = JsonConvert.SerializeObject(list); //将list集合转化为JSON格式
        }

    }
}