using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Model;
using System.Data;
using System.Data.SqlClient;

namespace 吃货网
{
    public partial class 吃货天堂 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int hang = 6;
                int ye = 1;
                Session["count"] = fabucaidanBLL.selectfenyecount(1, 6);
                if (Request["page"] != null)
                {
                    ye = int.Parse(Request["page"]);

                }
                Session["page"] = ye;
                this.Repeater1.DataSource = fabucaidanBLL.selectfenye(ye, hang);
                this.Repeater1.DataBind();




            }
        }
    }
}