using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Model;

namespace 吃货网
{
    public partial class 注册 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
            }
        }

       
        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                string youxiang = this.TextBox1.Text;
                string yhm = this.TextBox2.Text;
                string mima = this.TextBox3.Text;
                if (youxiang.Trim() == "")
                {
                    Response.Write("<script>alert('邮箱不能为空')</script>");
                }
                else if (yhm.Trim() == "")
                {
                    Response.Write("<script>alert('用户名不能为空')</script>");
                }
                else if (mima.Trim() == "")
                {
                    Response.Write("<script>alert('密码不能为空')</script>");
                }
                else if (this.CheckBox1.Checked == false)
                {
                    Response.Write("<script>alert('注册必须同意协议')</script>");
                }
                else
                {
                    Model.Login zhuce = new Model.Login();
                    zhuce.YHM = yhm;
                    zhuce.YouXiang = youxiang;
                    zhuce.MIMA = mima;
                    zhuce.Zhuceshijian = Convert.ToDateTime(DateTime.Now.ToString());
                    zhuce.Userpic = "touxiang_23.gif";
                    if (LoginBLL.AddUser(zhuce))
                    {
                        Response.Write("<script>alert('注册成功！')</script>");
                        Response.Redirect("登录.aspx");

                    }
                    else
                    {
                        Response.Write("<script>alert('注册失败！')</script>");
                    }
                }
            }
        }
    }
}