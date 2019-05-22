﻿using System;
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
                    var result = entities.Order
                                    .Include("UserInfo_Role")
                                    .Where(x => x.UserInfo_Role.UserName == UserName)
                                    .Select(x => x);
                    return result.ToList();
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message.ToString());
            }
        }


        //public static List<Order> ShowOrderDetails(int UserID)
        //{
        //    try
        //    {
        //        using (PlayAndAteEntities entities=new PlayAndAteEntities())
        //        {
        //            //var result = entities.Order
        //            //                     .Include("Image").Include("Contact").Include("Product")
        //            //                     .Where(x => x.UserId == UserID)
        //            //                     .Select(x => new { OrderName = x.OrderName, ContactsName = x.Contacts.ContactsName, ProductID = x.ProductId, });
        //            //return result.ToList<Order>();                    //var result = entities.Order
        //            //                     .Include("Image").Include("Contact").Include("Product")
        //            //                     .Where(x => x.UserId == UserID)
        //            //                     .Select(x => new { OrderName = x.OrderName, ContactsName = x.Contacts.ContactsName, ProductID = x.ProductId, });
        //            //return result.ToList<Order>();
                        
        //        }
        //    }
        //    catch (Exception)
        //    {

        //        throw;
        //    }
        //}        //public static List<Order> ShowOrderDetails(int UserID)
        //{
        //    try
        //    {
        //        using (PlayAndAteEntities entities=new PlayAndAteEntities())
        //        {
        //            //var result = entities.Order
        //            //                     .Include("Image").Include("Contact").Include("Product")
        //            //                     .Where(x => x.UserId == UserID)
        //            //                     .Select(x => new { OrderName = x.OrderName, ContactsName = x.Contacts.ContactsName, ProductID = x.ProductId, });
        //            //return result.ToList<Order>();                    //var result = entities.Order
        //            //                     .Include("Image").Include("Contact").Include("Product")
        //            //                     .Where(x => x.UserId == UserID)
        //            //                     .Select(x => new { OrderName = x.OrderName, ContactsName = x.Contacts.ContactsName, ProductID = x.ProductId, });
        //            //return result.ToList<Order>();
                        
        //        }
        //    }
        //    catch (Exception)
        //    {

        //        throw;
        //    }
        //}

    }
}
