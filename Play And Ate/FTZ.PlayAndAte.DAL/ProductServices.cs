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
      /// <returns>商品信息集合</returns>
        public static List<Product> ShowProduct()
        {
            using (PlayAndAteEntities entities = new PlayAndAteEntities())
            {
                List<Product> result = entities.Product.Include("Image").ToList<Product>();
                return result;
            }
        }


    }
}
