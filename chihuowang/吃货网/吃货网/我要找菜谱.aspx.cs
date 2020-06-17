using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;
using BLL;
using System.Data;

namespace 吃货网
{
    public partial class 我要找菜谱 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

          woyaozhaocaipu zcp= new woyaozhaocaipu();
          zcp.Title= this.TextBox1.Text;
          zcp.Neirong=this.TextBox2.Text;
          zcp.Fabutime =Convert.ToDateTime( DateTime.Now.ToLocalTime().ToString());
          zcp.Fabutupian = Session["fabutupianmingzi"].ToString();
          zcp.Useid =int.Parse( Session["userid"].ToString());
          if (woyaozhaocaipuBLL.tianjia(zcp))
          {
              Response.Write("<script>alert('成功发送寻找菜谱')</script>");
          }
          else
          {
              Response.Write("<script>alert('发送失败！看是否填写完整')</script>");
          }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           if (FileUpload1.HasFile)
             {
              string name = this.FileUpload1.FileName;
              Session["fabutupianmingzi"] = name;
              this.FileUpload1.SaveAs(MapPath("~")+"/Images/"+name);
              this.Image1.ImageUrl = "~/Images/" + name;
          }
        }
    }
}