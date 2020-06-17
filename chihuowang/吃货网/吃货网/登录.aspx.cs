using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using DAL;
using Model;
using System.Data;
using System.Web.Security;

namespace 吃货网
{
    public partial class 登录 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void zhuceannui_Click(object sender, EventArgs e)
        {
            FormsAuthentication.RedirectFromLoginPage(this.TextBox1.Text,false);
            string name = this.TextBox1.Text;
            
            string mima = this.TextBox2.Text;
            if (name.Trim() != "" && mima.Trim() != "")
            {
                DataTable dt = LoginBLL.Select(name, mima);
                if (dt.Rows.Count > 0)
                {
                    Session["userid"] = dt.Rows[0][0];
                    Response.Redirect("首页.aspx");
                }
                else
                {
                    Response.Write("<script>alert('登录失败！用户名或密码错误！')</script>"); 
                }
            }

        }
    }
}