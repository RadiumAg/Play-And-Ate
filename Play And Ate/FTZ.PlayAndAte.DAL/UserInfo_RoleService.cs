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
        /// 增加用户
        /// </summary>
        /// <param name="user">用户实体</param>
        /// <returns>是否添加成功</returns>
        public static int InsertUser(UserInfo_Role user)
        {
            using (PlayAndAteEntities entities = new PlayAndAteEntities())
            {
                user.RoleId = 3;
                entities.UserInfo_Role.Add(user);
                return entities.SaveChanges();
            }
        }


    }
}
