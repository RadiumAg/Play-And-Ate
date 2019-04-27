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
        /// 根据地区编号展示商品信息
        /// </summary>
        /// <param name="AreaId">地区编号</param>
        /// <returns>农庄实体信息集</returns>
        public static List<Product> ShowProductsData(int areaId)
        {
            try
            {
                using (PlayAndAteEntities entities = new PlayAndAteEntities())
                {
                    List<Product> result = entities.Product
                                                   .Include("Image")
                                                   .Include("Area")
                                                   .Where(m => m.AreaId == areaId)
                                                   .ToList<Product>();
                    return result;
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        /// <summary>
        /// 返回指定信誉商家排名
        /// </summary>
        /// <param name="rankNum">指定商家排名</param>
        /// <returns></returns>
        public static List<Product> ShowProductDataBySinserity(int rankNum)
        {
            try
            {
                using (PlayAndAteEntities entities = new PlayAndAteEntities())
                {
                    List<Product> result = entities
                                          .Product
                                          .Include("UserInfo_Role")
                                          .Include("Image")
                                          .OrderBy(m => m.UserInfo_Role.Sincerity.SincerityNumber)
                                          .Take(rankNum).ToList<Product>();
                    return result.ToList<Product>();
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }

        /// <summary>
        /// 根据产品编号查询产品
        /// </summary>
        /// <param name="productId">产品编号</param>
        /// <returns>产品实体集合</returns>
        public static Product ShowProductsData(string productId)
        {
            try
            {
                using (PlayAndAteEntities entities = new PlayAndAteEntities())
                {
                    int id = Convert.ToInt32(productId);
                    var data = entities.Product
                                     .Where(d => d.ProductId == id).FirstOrDefault();
                    Product result = new Product();
                    result = data;
                    result.Image = data.Image;
                    result.Area = data.Area;
                    result.PPointsType = data.PPointsType;
                    return result;
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }


    }
}
