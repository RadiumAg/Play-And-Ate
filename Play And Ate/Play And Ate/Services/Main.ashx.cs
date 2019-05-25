using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using FTZ.PlayAndAte.Models;
using FTZ.PlayAndAte.BLL;
using Newtonsoft.Json;
using System.Web.Security;
using Play_And_Ate.Helper;
using Newtonsoft.Json.Linq;
using Play_And_Ate.Order.App_Code;


namespace Play_And_Ate.Services
{
    /// <summary>
    /// Main 的摘要说明
    /// </summary>
    public class Main : IHttpHandler
    {
        HttpContext context = HttpContext.Current;
        public void ProcessRequest(HttpContext context)
        {
            string id = context.Request["id"].ToString();
            switch (id)
            {
                case "1":
                    ChekLogin();
                    break;
                case "2":
                    ShowBusiness();
                    break;
                case "3":
                    GetSMS();
                    break;
                case "4":
                    Register();
                    break;
                case "5":
                    LoginOut();
                    break;
                case "6":
                    UserIsExists();
                    break;
                case "7":
                    UpdatePwd();
                    break;
                case "8":
                    ShowCustomerOrder();
                    break;
                case "9":
                    ShowProduct();
                    break;
                case "10":
                    CreateOrder();
                    break;
                case "11":
                    CheckPay();
                    break;
            }
        }

        /// <summary>
        /// 判断是否支付成功，并更新订单状态
        /// </summary>
        public void CheckPay()
        {
            //创建XddpayResponse实例
            XddpayResponse xddpayResponse = new XddpayResponse(context);
            //判断签名
            if (xddpayResponse.IsXddpaySign())
            {
                string result = xddpayResponse.getParameter("result");//支付结果
                string order_no = xddpayResponse.getParameter("order_no");//商户自己的订单号
                if ("success".Equals(result))
                {
                    FTZ.PlayAndAte.Models.Order order = new FTZ.PlayAndAte.Models.Order()
                    {
                        OrderName = Helper.OrderMessage.OrderName,
                    };
                    OrderManager.UPdateOrder(order);
                }
            }
            context.Response.Write("这里是订单的确认支付！");
        }

        /// <summary>
        /// 生成订单
        /// </summary>
        public void CreateOrder()
        {
            string data = context.Request["Customers"].ToString();
            //取出JArray对象
            JArray Customers = JsonConvert.DeserializeObject(data) as JArray;
            FTZ.PlayAndAte.Models.Order order = new FTZ.PlayAndAte.Models.Order();
            //遍历JArray对象中的每个json数组
            /*
             创建订单详情
             为订单详情开辟一块新内存地址
             */
            order.OrderItem = new List<OrderItem>();
            List<Customers> customerList = new List<Customers>();
            //为订单添加游客项
            foreach (JToken item in Customers)
            {
                //创建一个新的订单详情
                OrderItem orderItem = new OrderItem();

                //创建一个新的顾客
                Customers customer = new Customers();
                customer.Name = item["cName"].ToString();
                customer.Phone = item["phone"].ToString();
                customer.CardTypeId = Convert.ToInt32(item["cardTypeId"].ToString());
                customer.Id_Number = item["carId"].ToString();
                customerList.Add(customer);
                //将顾客和OrderItem连接起来
                orderItem.Customers.Add(customer);
                order.OrderItem.Add(orderItem);
            }

            /*
            创建下单用户
            为用户开辟一块新内存地址
            */
            //为订单添加信息
            Helper.OrderMessage.OrderName = DateTime.Now.ToString("yyyyMMddHHmmssfff");
            order.OrderName = Helper.OrderMessage.OrderName;
            order.OrderPrice = Convert.ToDecimal(context.Request["sumMoney"].ToString());
            order.Success = false;
            order.CustomerNum = order.OrderItem.Count();
            order.UserId = Convert.ToInt32(context.Request.Cookies["UserId"].Value);
            order.ProductId = Helper.OrderMessage.ProductID;
            /*
             创建联系人
             为联系人开辟一块新内存地址
             */
            order.Contacts = new Contacts()
            {
                ContactsEmail = this.context.Request["lxemail"].ToString(),
                ContactsName = this.context.Request["lxname"].ToString(),
                FixedTelephone = this.context.Request["lxphone"].ToString(),
                ContactsMobilePhone = this.context.Request["lxmobile"].ToString(),
            };
            //创建订单
            FTZ.PlayAndAte.BLL.OrderManager.CreateOrder(order);
        }

        /// <summary>
        /// 展示客户订单列表
        /// </summary>
        public void ShowCustomerOrder()
        {
            string userName = context.Request["UserName"].ToString();//获取登录的管理员名
            var result = OrderManager.ShowOrder(userName);
            context.Response.Write(JsonConvert.SerializeObject(result));
        }

        /// <summary>
        /// 退出登录
        /// </summary>
        public void LoginOut()
        {
            try
            {
                Authentication.logOut();
                this.context.Response.Cookies["UserName"].Value = null;
                this.context.Response.Cookies["UserId"].Value = null;
                this.context.Response.Cookies["AccessToken"].Value = null;
                this.context.Response.Write(JsonConvert.SerializeObject(true));
            }
            catch (Exception ex)
            {
                context.Response.Write(JsonConvert.SerializeObject(false));
            }
        }

        /// <summary>
        /// 发送短信验证码
        /// </summary>
        public void GetSMS()
        {
            string phoneNumber = context.Request["phoneNumber"].ToString();
            SMSinterface sM = new SMSinterface();
            var msg = new
            {
                Result = sM.SMSMessage(phoneNumber),
                Str = sM.str,
            };
            context.Response.Write(JsonConvert.SerializeObject(msg));
        }

        /// <summary>
        /// 更新用户数据
        /// </summary>
        public void UpdatePwd()
        {
            string pwd = context.Request["pwd"].ToString();
            UserInfo_Role user = new UserInfo_Role
            {
                Pwd = pwd,
            };
            if (UserInfo_RoleManager.UpdateUser(user))
            {
                context.Response.Write(JsonConvert.SerializeObject(true));
            }
            else
            {
                context.Response.Write(JsonConvert.SerializeObject(false));
            }
        }


        /// <summary>
        /// 判断用户是否存在
        /// </summary>
        public void UserIsExists()
        {
            string userName = context.Request["userName"].ToString();
            string phoneNumber = context.Request["phoneNumber"].ToString();
            if (UserInfo_RoleManager.UserData().Where(x => x.Phone == phoneNumber && x.UserName == userName).Count() > 0)
            {
                context.Response.Write(JsonConvert.SerializeObject(true));
            }
            else
            {
                context.Response.Write(JsonConvert.SerializeObject(false));
            }
        }

        /// <summary>
        /// 用户注册
        /// </summary>
        public void Register()
        {
            UserInfo_Role user = new UserInfo_Role
            {
                UserName = context.Request["user_name"].ToString(),
                Pwd = context.Request["user_pwd"].ToString(),
                Address = context.Request["user_address"].ToString(),
                Email = context.Request["email"].ToString(),
                QQ = context.Request["user_qq"].ToString(),
                Phone = context.Request["phoneNumber"].ToString()
            };

            if (UserInfo_RoleManager.Register(user))
            {
                context.Response.Write(JsonConvert.SerializeObject("1"));
            }
            else
            {
                context.Response.Write(JsonConvert.SerializeObject("0"));
            }


        }

        /// <summary>
        /// 登陆
        /// </summary>
        /// <returns>是否登陆成功</returns>
        public void ChekLogin()
        {
            UserInfo_Role user = new UserInfo_Role
            {
                Email = context.Request["email"].ToString(),
                Phone = context.Request["email"].ToString(),
                Pwd = context.Request["user_pwd"].ToString(),
            };

            UserInfo_Role userData = UserInfo_RoleManager.CheckUserInfo(user);
            if (userData == null)
            {
                var msg = new
                {
                    Role = "",
                    isLogin = false,
                };
                context.Response.Write(JsonConvert.SerializeObject(msg));
            }
            else
            {
                var msg = new
                {
                    Role = userData.Role_UserInfo.RoleName,
                    isLogin = true
                };
                Helper.Authentication.SetCookie(userData.UserName, userData.Pwd, userData.Role_UserInfo.RoleName);
                this.context.Response.Cookies["UserName"].Value = HttpUtility.HtmlEncode(userData.UserName);
                this.context.Response.Cookies["UserId"].Value = HttpUtility.HtmlEncode(userData.UserId.ToString());
                context.Response.Write(JsonConvert.SerializeObject(msg));
            }
        }

        /// <summary>
        /// 获取所有商户
        /// </summary>
        public void ShowBusiness()
        {
            context.Response.Write(JsonConvert.SerializeObject(UserInfo_RoleManager.ShowBusiness().Select(x => new
            {
                x.Address,
                x.Email,
                x.Phone,
                x.UserName,
                x.Pwd,
                x.QQ,
                Product = x.Product.Select(n => new { n.ProductName, n.ProductPrice }),
            })));
        }

        /// <summary>
        /// 获取指定所有商户
        /// </summary>
        public void ShowProduct()
        {
            string userName = this.context.Request.Cookies["UserName"].Value.ToString();
            context.Response.Write(JsonConvert.SerializeObject(ProductManager.ShowProducts(userName: userName)));
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }

    }
}