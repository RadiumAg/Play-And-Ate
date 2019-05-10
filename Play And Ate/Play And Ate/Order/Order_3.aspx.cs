using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Newtonsoft.Json;

namespace Play_And_Ate.Order
{
    public partial class Order_3 : System.Web.UI.Page
    {
        protected static List<User> list;
        protected string result;
        protected string Crrs;
        protected string Etrs;
        protected string Zjg;
        protected string Lxname;
        protected string Lxmobile;
        protected string Lxemail;
        protected string Lxphone;
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
            dynamic datt = JsonConvert.DeserializeObject(Request["datt"]);
            //获取数组成员
            list = new List<User>();
            foreach (var item in datt)
            {
                User user = new User();
                user.name = item["a"];
                user.select = item["b"];
                user.CardId = item["c"];
                user.phone = item["d"];
                list.Add(user);
            }
            result = JsonConvert.SerializeObject(list); //将list集合转化为JSON格式
        }
    }

    /// <summary>
    /// 成人信息
    /// </summary>
    public class User
    {
        public string name { get; set; }
        public string select { get; set; }
        public string CardId { get; set; }
        public string phone { get; set; }
    }
}