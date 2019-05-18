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
        /// 根据商户姓名查询该商户的所有订单
        /// </summary>
        /// <param name="userName">商户姓名</param>
        /// <returns>订单实体集合</returns>
        public static List<Order> ShowOrder(string userName) {
            return OrderServices.ShowOrderData(userName);
        }


    }
}
