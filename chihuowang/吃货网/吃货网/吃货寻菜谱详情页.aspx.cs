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
    public partial class 吃货寻菜谱详情页 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request["id"]==null)
                {

                }
                else
                {
                  int cpid = int.Parse(Request["id"]);
                  Session["caipuid"] = cpid;
                }

                this.Repeater2.DataSource = woyaozhaocaipuBLL.select_id(int.Parse(Session["caipuid"].ToString()));
                this.Repeater2.DataBind();

                pinglun(int.Parse(Session["caipuid"].ToString()));
            }
        }

        private void pinglun(int cpid)
        {
            this.Repeater1.DataSource = woyaozhaocaipuBLL.selectpinglun_id(cpid);
            this.Repeater1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            pinglun pl = new Model.pinglun();
            pl.pinglunneirong= this.TextBox1.Text;
            pl.caipuid = int.Parse(Session["caipuid"].ToString());
            pl.userid =int.Parse( Session["userid"].ToString());
            pl.pinglunshijian =Convert.ToDateTime( DateTime.Now.ToString("yyyy-MM-dd"));  
            if (pinglunBLL.tianjia(pl))
	              {
                      Response.Write("<script>alert('评论成功！')</script>");
                      Response.Redirect("吃货寻菜谱详情页.aspx");
	              }
            else
                  {
                      Response.Write("<script>alert('评论失败！')</script>");

                   }
            
        }

        protected void Repeater2_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

    }
}