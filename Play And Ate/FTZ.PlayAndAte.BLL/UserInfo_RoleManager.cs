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
        /// 展示所有商户信息
        /// </summary>
        /// <returns>商户信息</returns>
        public static List<UserInfo_Role> ShowBusiness()
        {
            return UserInfo_RoleService.ShowBusiness();
        }

        /// <summary>
        /// 验证是否存在用户信息
        /// </summary>
        /// <returns>用户实体</returns>
        public static UserInfo_Role CheckUserInfo(UserInfo_Role user)
        {
            return UserInfo_RoleService.UserData(user);
        }

        /// <summary>
        /// 注册用户
        /// </summary>
        /// <param name="user">用户实体</param>
        /// <returns>是否注册成功</returns>
        public static int Register(UserInfo_Role user)
        {
            return UserInfo_RoleService.InsertUser(user);
        }


    }
}
