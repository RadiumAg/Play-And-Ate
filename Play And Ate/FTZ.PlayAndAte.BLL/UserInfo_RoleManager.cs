using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using FTZ.PlayAndAte.BLL;
using FTZ.PlayAndAte.Models;
using FTZ.PlayAndAte.DAL;

namespace FTZ.PlayAndAte.BLL
{
    public class UserInfo_RoleManager
    {

        /// <summary>
        /// 更新用户信息 
        /// </summary>
        /// <returns>是否更新成功</returns>
        public static bool UpdateUser(UserInfo_Role user)
        {
            return UserInfo_RoleServices.UpdateUser(user);
        }

        /// <summary>
        /// 返回所有商户信息
        /// </summary>
        /// <returns>商户信息实体集合</returns>
        public static List<UserInfo_Role> UserData()
        {
            return UserInfo_RoleServices.UserData();
        }

        /// <summary>
        /// 展示所有商户信息
        /// </summary>
        /// <returns>商户信息</returns>
        public static List<UserInfo_Role> ShowBusiness()
        {
            return UserInfo_RoleServices.ShowBusiness();
        }

        /// <summary>
        /// 验证是否存在用户信息
        /// </summary>
        /// <returns>用户实体</returns>
        public static UserInfo_Role CheckUserInfo(UserInfo_Role user)
        {
            return UserInfo_RoleServices.UserData(user);
        }

        /// <summary>
        /// 注册用户
        /// </summary>
        /// <param name="user">用户实体</param>
        /// <returns>是否注册成功</returns>
        public static bool Register(UserInfo_Role user)
        {
            return UserInfo_RoleServices.InsertUser(user);
        }


    }
}
