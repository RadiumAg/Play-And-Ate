using FTZ.PlayAndAte.DAL;
using FTZ.PlayAndAte.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace FTZ.PlayAndAte.BLL
{
    public class ProductManager
    {

        /// <summary>
        /// 展示所有商品信息
        /// </summary>
        /// <returns>商品实体集合</returns>
        public static List<Product> ShowProductData()
        {
            return ProductServices.ShowProduct();
        }


    }
}
