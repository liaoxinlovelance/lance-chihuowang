using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BLL;
using DAL;
using Model;


namespace 吃货网
{
    public partial class 首页 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ////https://www.meishij.net/zuofa/duojiaofensizhengwawacai.html
            if (!IsPostBack) {
                //第一个轮播
                int hang = 6;
                Session["count"] = woyaozhaocaipuBLL.selectfenyecount(1, hang);

                Session["num"] = int.Parse(Session["count"].ToString()) / hang;
                if (Request["fyid1"] != null)
                {

                    int ye = int.Parse(Request["fyid1"].ToString());

                    if (ye > 0 && ye < int.Parse(Session["num"].ToString()))
                    {
                        Session["fyid1"] = ye;
                        DataTable dt = woyaozhaocaipuBLL.selectfenye(ye, hang);


                        this.Repeater1.DataSource = dt;
                        this.Repeater1.DataBind();
                    }
                    else if (ye <= 0)
                    {
                        Session["fyid1"] = 1;
                        ye = 1;
                        DataTable dt = woyaozhaocaipuBLL.selectfenye(ye, hang);

                        this.Repeater1.DataSource = dt;
                        this.Repeater1.DataBind();
                    }
                    else if (ye >= int.Parse(Session["num"].ToString()))
                    {
                        Session["fyid1"] = int.Parse(Session["num"].ToString()) - 1;
                        DataTable dt = woyaozhaocaipuBLL.selectfenye(ye, hang);

                        this.Repeater1.DataSource = dt;
                        this.Repeater1.DataBind();
                    }
                }

                else
                {
                    int ye = 1;
                    Session["fyid1"] = ye;
                    DataTable dt = woyaozhaocaipuBLL.selectfenye(ye, hang);
                    int count = woyaozhaocaipuBLL.selectfenyecount(ye, hang);
                    int num = count / hang;
                    this.Repeater1.DataSource = dt;
                    this.Repeater1.DataBind();
                }
                //第二个轮播
                int hang2 = 6;
                Session["count2"] =fabucaidanBLL.selectfenyecount(1, hang2);

                Session["num2"] = int.Parse(Session["count2"].ToString()) / hang2;
                if (Request["fyid2"] != null)
                {

                    int ye2 = int.Parse(Request["fyid2"].ToString());

                    if (ye2 > 0 && ye2 < int.Parse(Session["num"].ToString()))
                    {
                        Session["fyid2"] = ye2;
                        DataTable dt2 = fabucaidanBLL.selectfenye(ye2, hang2);

                        this.Repeater2.DataSource = dt2;
                        this.Repeater2.DataBind();
                    }
                    else if (ye2 <= 0)
                    {
                        Session["fyid2"] = 1;
                        ye2 = 1;
                        DataTable dt2 = fabucaidanBLL.selectfenye(ye2, hang2);

                        this.Repeater2.DataSource = dt2;
                        this.Repeater2.DataBind();
                    }
                    else if (ye2 >= int.Parse(Session["num2"].ToString()))
                    {
                        Session["fyid2"] = int.Parse(Session["num2"].ToString()) - 1;
                        DataTable dt2 = fabucaidanBLL.selectfenye(ye2, hang2);

                        this.Repeater2.DataSource = dt2;
                        this.Repeater2.DataBind();
                    }
                }

                else
                {
                    int ye2 = 1;
                    Session["fyid2"] = ye2;
                    DataTable dt2 = fabucaidanBLL.selectfenye(ye2, hang2);
                    int count2 = fabucaidanBLL.selectfenyecount(ye2, hang2);
                    int num2 = count2 / hang2;
                    this.Repeater2.DataSource = dt2;
                    this.Repeater2.DataBind();
                }

            }
        }
    }
}