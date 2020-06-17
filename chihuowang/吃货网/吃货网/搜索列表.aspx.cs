using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Model;
using System.Data;

namespace 吃货网
{
    public partial class 搜索列表 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string name = Session["sousuo"].ToString();
                DataTable dt = fabucaidanBLL.select_mohu(name);
               

                DataTable dt2 = woyaozhaocaipuBLL.select_mohu(name);
                

                if (dt.Rows.Count>0 || dt2.Rows.Count>0)
                {
                     this.Repeater1.DataSource = dt;
                     this.Repeater1.DataBind();
                     this.Repeater2.DataSource = dt2;
                     this.Repeater2.DataBind();
                }
                else
                {
                    Session["zaobudaojieguo"] = "抱歉找不到结果！";     
                }
            }
        }
    }
}