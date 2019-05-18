using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FTZ.PlayAndAte.Models;
using FTZ.PlayAndAte.DAL;

namespace FTZ.PlayAndAte.BLL
{
    public class OrderManager
    {

        /// <summary>
        /// 更新订单状态
        /// </summary>
        public static void UPdateOrder(Order order)
        {
            OrderServices.UpdateOrderData(order);
        }

        /// <summary>
        /// 根据商户姓名查询该商户的所有订单
        /// </summary>
        /// <param name="userName">商户姓名</param>
        /// <returns>订单实体集合</returns>
        public static List<Order> ShowOrder(string userName)
        {
            return OrderServices.ShowOrderData(userName);
        }

        /// <summary>
        /// 添加新的订单
        /// </summary>
        /// <param name="order">订单实体</param>
        public static void CreateOrder(Order order)
        {
            OrderServices.InsertOrder(order);
        }

    }
}
