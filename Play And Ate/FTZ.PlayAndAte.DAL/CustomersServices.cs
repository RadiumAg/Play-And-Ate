using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FTZ.PlayAndAte.Models;

namespace FTZ.PlayAndAte.DAL
{
    public class CustomersServices
    {

        /// <summary>
        /// 添加顾客信息
        /// </summary>
        /// <param name="customers">游客实体</param>
        public static void AddCustomers(List<Customers> customers)
        {
            try
            {
                using (PlayAndAteEntities entities = new PlayAndAteEntities())
                {
                    foreach (Customers data in customers)
                    {
                        entities.Customers.Add(data);
                        entities.SaveChanges();
                    }
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }

    }
}
