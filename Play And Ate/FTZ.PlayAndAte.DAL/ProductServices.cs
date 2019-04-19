using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.SqlServer.Server;
using Microsoft.Practices.EnterpriseLibrary.Data;
using System.Data;
using FTZ.PlayAndAte.Models;

namespace FTZ.PlayAndAte.DAL
{
    public class ProductServices
    {

        /// <summary>
        /// 展示所有商品信息
        /// </summary>
        public static List<Product> ShowProduct()
        {
            using (PlayAndAteEntities entities = new PlayAndAteEntities())
            {
                var result = from g in entities.Product select g;
                return result.ToList<Product>();
            }
        }


    }
}
