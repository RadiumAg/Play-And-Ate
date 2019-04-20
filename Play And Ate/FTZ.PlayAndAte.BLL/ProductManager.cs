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
        /// 根据地区编号展示商品信息
        /// </summary>
        /// <returns>商品信息</returns>
        public static List<Product> ShowProducts(int areaId)
        {
            return ProductServices.ShowProductsData(areaId);
        }

        /// <summary>
        /// 返回指定的前几位商家排名
        /// </summary>
        /// <param name="rankNum">指定的位数</param>
        /// <returns></returns>
        public static List<Product> ShowProductByRankNum(int rankNum)
        {
            return ProductServices.ShowProductDataBySinserity(rankNum);
        }


    }
}
