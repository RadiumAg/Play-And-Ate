using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FTZ.PlayAndAte.Models;

namespace FTZ.PlayAndAte.DAL
{
    public class OrderServices
    {

        /// <summary>
        /// 删除指定订单
        /// </summary>
        /// <param name="order">订单实体</param>
        /// <returns>是否删除成功</returns>
        public static bool DeleteOrderData(Order order)
        {
            try
            {
                using (PlayAndAteEntities entities = new PlayAndAteEntities())
                {
                    entities.Configuration.LazyLoadingEnabled = false;
                    //1.移除Customers
                    List<Customers> customers = entities.Customers
                                                        .Include("OrderItem")
                                                        .Where(x => x.OrderItem.OrderId == order.OrderId)
                                                        .ToList();
                    entities.Customers.RemoveRange(customers);

                    //2.移除OrderItem
                    List<OrderItem> orderItems = entities.OrderItem
                                                         .Where(x => x.OrderId == order.OrderId)
                                                         .ToList();
                    entities.OrderItem.RemoveRange(orderItems);

                    //3.移除Order
                    Order orderData = entities.Order
                                               .Include("Contacts")
                                               .Where(x => x.OrderId == order.OrderId)
                                               .SingleOrDefault();

                    //4.移除Contacts
                    entities.Contacts.Remove(orderData.Contacts);
                    entities.Order.Remove(orderData);
                    entities.SaveChanges();
                    return true;
                }
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        /// <summary>
        /// 更新订单状态
        /// </summary>
        /// <param name="order">订单实体</param>
        public static void UpdateOrderData(Order order)
        {
            try
            {
                using (PlayAndAteEntities entities = new PlayAndAteEntities())
                {
                    var data = entities.Order
                                       .Where(x => x.OrderName == order.OrderName)
                                       .SingleOrDefault();
                    data.Success = true;
                    entities.SaveChanges();
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        /// <summary>
        /// 显示用户的订单
        /// </summary>
        /// <typeparam name="T">泛型标识</typeparam>
        /// <param name="t">泛型参数</param>
        /// <returns>订单表</returns>
        public static List<Order> ShowOrderData<T>(T t)
        {
            using (PlayAndAteEntities entities = new PlayAndAteEntities())
            {
                entities.Configuration.LazyLoadingEnabled = false;
                List<Order> result = entities.Order
                                    .Include("Contacts")
                                    .Where(x => x.UserInfo_Role.UserName == t.ToString())
                                    .ToList();
                return result;
            }
        }

        /// <summary>
        /// 根据商户名查询商户的订单
        /// </summary>
        /// <param name="UserName">商户名</param>
        /// <returns>订单实体集合</returns>
        public static List<Order> ShowOrderData(string UserName)
        {
            try
            {
                using (PlayAndAteEntities entities = new PlayAndAteEntities())
                {
                    entities.Configuration.LazyLoadingEnabled = false;//关闭延迟加载
                    List<Order> result = new List<Order>();
                    var productIdList = entities.Product
                                                .Include("UserInfo_Role")
                                                .Where(x => x.UserInfo_Role.UserName == UserName)
                                                .Select(x => x.ProductId)
                                                .ToList();
                    foreach (int id in productIdList)
                    {
                        var data = entities.Order
                                            .Where(x => x.ProductId.Equals(id));
                        foreach (Order order in data)
                        {
                            result.Add(order);
                        }
                    }
                    return result;
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        /// <summary>
        /// 插入订单信息
        /// </summary>
        /// <param name="Order">订单实体</param>
        public static void InsertOrder(Order Order)
        {
            try
            {
                using (PlayAndAteEntities entities = new PlayAndAteEntities())
                {
                    entities.Order.Add(Order);
                    entities.SaveChanges();
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }

    }
}
