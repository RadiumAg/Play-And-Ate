using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FTZ.PlayAndAte.Models;
using FTZ.PlayAndAte.DAL;

namespace FTZ.PlayAndAte.BLL
{
    public class CustomersManager
    {

        /// <summary>
        /// 添加顾客
        /// </summary>
        /// <param name="customers">游客实体</param>
        public static void AddCustomer(List<Customers> customers)
        {
            CustomersServices.AddCustomers(customers);
        }


    }
}
