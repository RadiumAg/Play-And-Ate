using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FTZ.PlayAndAte.BLL;
using FTZ.PlayAndAte.Models;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

namespace Play_And_Ate.Services
{
    /// <summary>
    /// OrderServices 的摘要说明
    /// </summary>
    public class OrderService : IHttpHandler
    {

        HttpContext context = HttpContext.Current;

        public void ProcessRequest(HttpContext context)
        {
            string id = context.Request["id"].ToString();
            switch (id)
            {
                case "1":
                    Delete();
                    break;
                case "2":
                    ShowOrderData();
                    break;
            }
        }

        /// <summary>
        /// 显示指定用户的订单
        /// </summary>
        public void ShowOrderData()
        {
            //接收单个页面的数量
            int pageSum = Convert.ToInt32(this.context.Request["rows"] == null ? "5" : this.context.Request["rows"].ToString());
            //当前页
            int page = this.context.Request["page"] == null ? 1 : Convert.ToInt32(this.context.Request["page"]);
            string userName = HttpUtility.UrlDecode(this.context.Request["UserName"].ToString());

            //定义消息类
            var msg = new
            {
                total = OrderManager.ShowOrder<string>(userName)
                                        .Select(x => new { x.OrderId, x.Contacts.ContactsName, x.OrderName, x.Success, x.OrderPrice,x.DepartureDate }).Count(),
                rows = OrderManager.ShowOrder<string>(userName)
                                        .Select(x => new { x.OrderId, x.Contacts.ContactsName, x.OrderName, x.Success, x.OrderPrice,x.DepartureDate })
                                        .OrderBy(x => x.OrderId)
                                        .Skip((page - 1) * pageSum)
                                        .Take(pageSum)
            };
            this.context.Response.Write(JsonConvert.SerializeObject(msg));
        }

        /// <summary>
        /// 删除指定订单
        /// </summary>
        public void Delete()
        {
            JArray idList = JsonConvert.DeserializeObject(context.Request["orderId"].ToString()) as JArray;
            List<FTZ.PlayAndAte.Models.Order> orders = new List<FTZ.PlayAndAte.Models.Order>();
            foreach (JToken item in idList)
            {
                if (!OrderManager.DeleteOrder(new FTZ.PlayAndAte.Models.Order() { OrderId = Convert.ToInt32(item["OrderId"].ToString()) }))
                {
                    context.Response.Write(JsonConvert.SerializeObject(item["OrderId"]));
                }
            }
            context.Response.Write(JsonConvert.SerializeObject(true));
        }


        public bool IsReusable
        {
            get
            {
                return false;
            }
        }


    }
}