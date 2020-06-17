using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Newtonsoft.Json;
using BLL;
using System.Data;
namespace 吃货网
{
    /// <summary>
    /// Handler1 的摘要说明
    /// </summary>
    public class Handler1 : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        { 
            context.Response.ContentType = "text/plain";
            int hang = 6;
            int ye = int.Parse(context.Request["ye"]);
            DataTable dt = woyaozhaocaipuBLL.selectfenye(ye, hang);
            context.Response.Write(JsonConvert.SerializeObject(dt));
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