using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Microsoft.SqlServer.Server;

using System.Data;
using FTZ.PlayAndAte.Models;

namespace FTZ.PlayAndAte.DAL
{
    public class ProductServices
    {

        /// <summary>
        /// 查询指定商户的产品
        /// </summary>
        /// <param name="userName">商户名称</param>
        /// <returns>产品实体集合</returns>
        public static List<Product> ShowProductsData(string userName, int id = 0)
        {
            try
            {
                using (PlayAndAteEntities entities = new PlayAndAteEntities())
                {
                    entities.Configuration.LazyLoadingEnabled = false;
                    return entities.Product
                        .Where(x => x.UserInfo_Role.UserName == userName)
                        .ToList();
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }

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
                return null;
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
                                     .Include("Point")
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

        /// <summary>
        /// 通过类别查询存在该类型的城市
        /// </summary>
        /// <param name="type">类型</param>
        /// <returns></returns>
        public static List<Product> GetAreaNameByPPtype(string type)
        {
            try
            {
                using (PlayAndAteEntities entities = new PlayAndAteEntities())
                {
                    List<Product> list = entities.Product.Include("Area").Include("PPointsType").Where(x => x.PPointsType.PPointsType1 == type).ToList<Product>();
                    return list;
                }
            }
            catch (Exception)
            {

                throw;
            }
        }

        /// <summary>
        /// 根据总类型ID查询下面的农庄
        /// </summary>
        /// <param name="id">总类型ID</param>
        /// <returns></returns>
        public static List<Product> GetProductsBytotal(int id)
        {
            try
            {
                using (PlayAndAteEntities entities = new PlayAndAteEntities())
                {
                    List<Product> list = entities.Product.Include("Image").Include("Area").Include("PPointsType").Where(x => x.PPointsType.Pid == id).ToList<Product>();
                    return list;
                }
            }
            catch (Exception)
            {

                throw;
            }
        }

        /// <summary>
        /// 根据总类型查询地区
        /// </summary>
        /// <param name="type">传入总类型ID</param>
        /// <returns></returns>
        public static List<Area> GetAreasByTotal(int type)
        {
            List<Area> areas = new List<Area>();
            using (PlayAndAteEntities entities = new PlayAndAteEntities())
            {
                var list = entities.Product.Include("Area").Include("PPointsType").Where(x => x.PPointsType.Pid == type).ToList();
                foreach (var dr in list)
                {
                    Area area = new Area();
                    area.AreaId = dr.Area.AreaId;
                    area.AreaName = dr.Area.AreaName;
                    areas.Add(area);
                }
                return areas;
            }
        }

        /// <summary>
        /// 获取所有产品
        /// </summary>
        /// <returns></returns>
        public static List<Product> GetALLProducts()
        {
            try
            {
                using (PlayAndAteEntities entities =new PlayAndAteEntities())
                {
                    List<Product> list = entities.Product.Include("Image").Include("Area").Include("PPointsType").ToList<Product>();
                    return list;
                }
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}
