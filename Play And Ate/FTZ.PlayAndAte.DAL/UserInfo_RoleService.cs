using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FTZ.PlayAndAte.Models;

namespace FTZ.PlayAndAte.DAL
{
    public class UserInfo_RoleService
    {

        /// <summary>
        /// 展示所有商户
        /// </summary>
        /// <returns>展示所有商户信息</returns>
        public static List<UserInfo_Role> ShowBusiness()
        {
            using (PlayAndAteEntities entities = new PlayAndAteEntities())
            {
                var result = entities.UserInfo_Role.Include("Product").Where(x => x.Role_UserInfo.RoleName == "business").ToList<UserInfo_Role>();
                return result;
            }
        }

        /// <summary>
        /// 查询用户信息
        /// </summary>
        /// <param name="user">用户实体</param>
        /// <returns>用户实体</returns>
        public static UserInfo_Role UserData(UserInfo_Role user)
        {
            using (PlayAndAteEntities entities = new PlayAndAteEntities())
            {
                var result = from u in entities
                             .UserInfo_Role
                             .Include("Role_UserInfo")
                             where (u.Phone == user.Phone && u.Pwd == user.Pwd) || (u.Email == user.Email && u.Pwd == user.Pwd)
                             select u;
                return result.SingleOrDefault();
            }
        }


        /// <summary>
        /// 展示所有用户信息
        /// </summary>
        /// <returns>商户信息实体集合</returns>
        public static List<UserInfo_Role> UserData()
        {
            using (PlayAndAteEntities entities = new PlayAndAteEntities())
            {
                var result = entities.UserInfo_Role.ToList();
                return result;
            }
        }

        /// <summary>
        /// 增加用户
        /// </summary>
        /// <param name="user">用户实体</param>
        /// <returns>是否添加成功</returns>
        public static bool InsertUser(UserInfo_Role user)
        {
            using (PlayAndAteEntities entities = new PlayAndAteEntities())
            {
                user.RoleId = 3;
                entities.UserInfo_Role.Add(user);
                return entities.SaveChanges() > 0; ;
            }
        }

        /// <summary>
        /// 更新用户数信息
        /// </summary>
        /// <param name="user">用户实体</param>
        /// <returns>是否更新成功</returns>
        public static bool UpdateUser(UserInfo_Role user) {
            using (PlayAndAteEntities entities = new PlayAndAteEntities()) {
                var data = entities.UserInfo_Role.Where(x=>x.Pwd == user.Pwd).FirstOrDefault();
                data.Pwd = user.Pwd;
                return entities.SaveChanges()>0;
            }
        }

    }
}
