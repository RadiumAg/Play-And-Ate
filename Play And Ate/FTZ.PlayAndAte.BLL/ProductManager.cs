﻿using FTZ.PlayAndAte.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FTZ.PlayAndAte.DAL;
namespace FTZ.PlayAndAte.BLL
{
    public class ProductManager
    {

        /// <summary>
        /// 根据商家姓名显示该商家的所有商品
        /// </summary>
        /// <param name="userName">商家姓名</param>
        /// <returns>商品实体信息集合</returns>
        public static List<Product> ShowProducts(string userName, int id = 0)
        {
            return ProductServices.ShowProductsData(userName: userName, id: id);
        }

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

        /// <summary>
        /// 根据商品编号返回商品实体
        /// </summary>
        /// <param name="productId">商品编号</param>
        /// <returns>商品实体</returns>
        public static Product ShowProducts(string productId)
        {
            return ProductServices.ShowProductsData(productId);
        }

        /// <summary>
        /// 通过类别查询存在该类型的城市
        /// </summary>
        /// <param name="type">类型</param>
        /// <returns></returns>
        public static List<Product> GetAreaNameByPPtype(string type)
        {
            return ProductServices.GetAreaNameByPPtype(type);
        }

        /// <summary>
        /// 根据总类型ID查询下面的农庄
        /// </summary>
        /// <returns></returns>
        public static List<Product> GetProductsBytotal(int id)
        {
            return ProductServices.GetProductsBytotal(id);
        }

        /// <summary>
        /// 根据总类型查询地区
        /// </summary>
        /// <param name="type"></param>
        /// <returns></returns>
        public static List<Area> GetAreasByTotal(int type)
        {
            return ProductServices.GetAreasByTotal(type);
        }
        /// <summary>
        /// 返回所有产品
        /// </summary>
        /// <returns></returns>
        public static List<Product> GetALLProducts()
        {
            return ProductServices.GetALLProducts();
        }

    }
}
