using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Aliyun.Acs.Core;
using Aliyun.Acs.Core.Profile;
using Aliyun.Acs.Core.Exceptions;
using Aliyun.Acs.Core.Http;

namespace Play_And_Ate.Helper
{
    public class SMSinterface
    {
        private static char[] constant =
        {
        '0','1','2','3','4','5','6','7','8','9',
        };
        public static string GenerateRandom(int Length)
        {
            System.Text.StringBuilder newRandom = new System.Text.StringBuilder(10);
            Random rd = new Random();
            for (int i = 0; i < Length; i++)
            {
                newRandom.Append(constant[rd.Next(10)]);
            }
            return newRandom.ToString();
        }
       public string str = GenerateRandom(6);

        /// <summary>
        /// 向指定手机发送随机验证码
        /// </summary>
        /// <param name="phoneNum">手机号码</param>
        public string SMSMessage(string phoneNum)
        {
            IClientProfile profile = DefaultProfile.GetProfile("default", "LTAIhP5WZRh2vKxi", "sUyYvEAWyTTJ3HfaWaGTu6rCMv6suV");
            DefaultAcsClient client = new DefaultAcsClient(profile);
            CommonRequest request = new CommonRequest();
            request.Method = MethodType.POST;
            request.Domain = "dysmsapi.aliyuncs.com";
            request.Version = "2017-05-25";
            request.Action = "SendSms";
            request.AddQueryParameters("TemplateParam", "{'code':'"+str+"'}");
            request.AddQueryParameters("SignName", "PlayAndAte");
            request.AddQueryParameters("TemplateCode", "SMS_164435106");
            request.AddQueryParameters("PhoneNumbers", phoneNum);
            request.AddQueryParameters("OutId", "abcdefgh");
            try
            {
                CommonResponse response = client.GetCommonResponse(request);
                //Console.WriteLine(System.Text.Encoding.Default.GetString(response.HttpResponse.Content));
                return System.Text.UnicodeEncoding.Default.GetString(response.HttpResponse.Content);
            }
            catch (ServerException e)
            {
                //Console.WriteLine(e);
                return e.ErrorMessage;
            }
            catch (ClientException e)
            {
                return e.ErrorMessage;
            }
        }
    }
}