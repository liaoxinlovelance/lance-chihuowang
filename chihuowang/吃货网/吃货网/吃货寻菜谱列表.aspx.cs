using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using BLL;
using Model;


namespace 吃货网
{
    public partial class 吃货寻菜谱列表 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int hang = 6;
                int ye = 1;
                Session["count"] = woyaozhaocaipuBLL.selectfenyecount(1, 6);
                if (Request["page"] != null)
                {
                    ye = int.Parse(Request["page"]);

                }
                Session["page"] = ye;
                this.Repeater1.DataSource = woyaozhaocaipuBLL.selectfenye(ye, hang);
                this.Repeater1.DataBind();

                DataTable dt = paihangbangBLL.select();
                string shuzu1 = dt.Rows[0][0].ToString();
                string shuzu2 = dt.Rows[0][1].ToString();
                string shuzu3 = dt.Rows[0][2].ToString();
                string shuzu4 = dt.Rows[0][3].ToString();
                string shuzu5 = dt.Rows[0][4].ToString();
                this.Repeater2.DataSource = dt;
                this.Repeater2.DataBind();
              
            }
        }
    }
}