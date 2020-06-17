using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Model;
using BLL;

namespace 吃货网
{
    public partial class 发布菜单 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {   //加载出7个下拉列表
                this.DropDownList1.DataSource = yuanchuangBLL.select();
                this.DropDownList1.DataTextField = "neirong";
                this.DropDownList1.DataValueField = "yuanchuangid";
                this.DropDownList1.DataBind();

                this.DropDownList2.DataSource = gongyiBLL.select();
                this.DropDownList2.DataTextField = "gongyiname";
                this.DropDownList2.DataValueField = "gongyiID";
                this.DropDownList2.DataBind();

                this.DropDownList3.DataSource = koweiBLL.select();
                this.DropDownList3.DataTextField = "koweiname";
                this.DropDownList3.DataValueField = "koweiID";
                this.DropDownList3.DataBind();

                this.DropDownList4.DataSource = nanduBLL.select();
                this.DropDownList4.DataTextField = "nanduname";
                this.DropDownList4.DataValueField = "nanduID";
                this.DropDownList4.DataBind();

                this.DropDownList5.DataSource = zunbeishijianBLL.select();
                this.DropDownList5.DataTextField = "zunbeishijianname";
                this.DropDownList5.DataValueField = "zunbeishijianID";
                this.DropDownList5.DataBind();

                this.DropDownList6.DataSource = penrenshijianBLL.select();
                this.DropDownList6.DataTextField = "penrenshijianname";
                this.DropDownList6.DataValueField = "penrenshijianID";
                this.DropDownList6.DataBind();

                this.DropDownList7.DataSource = renshuBLL.select();
                this.DropDownList7.DataTextField = "renshuname";
                this.DropDownList7.DataValueField = "renshuID";
                this.DropDownList7.DataBind();


            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                if (FileUpload1.HasFile)
                {
                    string filename = FileUpload1.FileName;
                    //返回指定图片的后缀
                    string fileext = System.IO.Path.GetExtension(filename);
                    //获取当前时间
                    string filenamaes = DateTime.Now.ToString("yyyyMMddHHffss") + fileext;
                    Session["tupian1"] = filenamaes;
                        
                    this.FileUpload1.SaveAs(Server.MapPath("~") + "/Images/" + filenamaes);
                    this.Image1.ImageUrl = "~/Images/" + filenamaes;
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                if (FileUpload2.HasFile)
                {
                    string filename = FileUpload2.FileName;
                    //返回指定图片的后缀
                    string fileext = System.IO.Path.GetExtension(filename);
                    //获取当前时间
                    string filenamaes = DateTime.Now.ToString("yyyyMMddHHffss") + fileext;
                    Session["tupian2"] = filenamaes;

                    this.FileUpload2.SaveAs(Server.MapPath("~") + "/Images/" + filenamaes);
                    this.Image2.ImageUrl = "~/Images/" + filenamaes;
                }
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                if (FileUpload3.HasFile)
                {
                    string filename = FileUpload3.FileName;
                    //返回指定图片的后缀
                    string fileext = System.IO.Path.GetExtension(filename);
                    //获取当前时间
                    string filenamaes = DateTime.Now.ToString("yyyyMMddHHffss") + fileext;
                    Session["tupian3"] = filenamaes;

                    this.FileUpload3.SaveAs(Server.MapPath("~") + "/Images/" + filenamaes);
                    this.Image3.ImageUrl = "~/Images/" + filenamaes;
                }
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                if (FileUpload4.HasFile)
                {
                    string filename = FileUpload4.FileName;
                    //返回指定图片的后缀
                    string fileext = System.IO.Path.GetExtension(filename);
                    //获取当前时间
                    string filenamaes = DateTime.Now.ToString("yyyyMMddHHffss") + fileext;
                    Session["tupian4"] = filenamaes;

                    this.FileUpload4.SaveAs(Server.MapPath("~") + "/Images/" + filenamaes);
                    this.Image4.ImageUrl = "~/Images/" + filenamaes;
                }
            }
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                if (FileUpload5.HasFile)
                {
                    string filename = FileUpload5.FileName;
                    //返回指定图片的后缀
                    string fileext = System.IO.Path.GetExtension(filename);
                    //获取当前时间
                    string filenamaes = DateTime.Now.ToString("yyyyMMddHHffss") + fileext;
                    Session["tupian5"] = filenamaes;

                    this.FileUpload5.SaveAs(Server.MapPath("~") + "/Images/" + filenamaes);
                    this.Image5.ImageUrl = "~/Images/" + filenamaes;
                }
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                if (FileUpload6.HasFile)
                {
                    string filename = FileUpload6.FileName;
                    //返回指定图片的后缀
                    string fileext = System.IO.Path.GetExtension(filename);
                    //获取当前时间
                    string filenamaes = DateTime.Now.ToString("yyyyMMddHHffss") + fileext;
                    Session["tupian6"] = filenamaes;

                    this.FileUpload6.SaveAs(Server.MapPath("~") + "/Images/" + filenamaes);
                    this.Image6.ImageUrl = "~/Images/" + filenamaes;
                }
            }
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                if (FileUpload7.HasFile)
                {
                    string filename = FileUpload7.FileName;
                    //返回指定图片的后缀
                    string fileext = System.IO.Path.GetExtension(filename);
                    //获取当前时间
                    string filenamaes = DateTime.Now.ToString("yyyyMMddHHffss") + fileext;
                    Session["tupian7"] = filenamaes;

                    this.FileUpload7.SaveAs(Server.MapPath("~") + "/Images/" + filenamaes);
                    this.Image7.ImageUrl = "~/Images/" + filenamaes;
                }
            }
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                if (FileUpload8.HasFile)
                {
                    string filename = FileUpload8.FileName;
                    //返回指定图片的后缀
                    string fileext = System.IO.Path.GetExtension(filename);
                    //获取当前时间
                    string filenamaes = DateTime.Now.ToString("yyyyMMddHHffss") + fileext;
                    Session["tupian8"] = filenamaes;

                    this.FileUpload8.SaveAs(Server.MapPath("~") + "/Images/" + filenamaes);
                    this.Image8.ImageUrl = "~/Images/" + filenamaes;
                }
            }
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                if (FileUpload9.HasFile)
                {
                    string filename = FileUpload9.FileName;
                    //返回指定图片的后缀
                    string fileext = System.IO.Path.GetExtension(filename);
                    //获取当前时间
                    string filenamaes = DateTime.Now.ToString("yyyyMMddHHffss") + fileext;
                    Session["tupian9"] = filenamaes;

                    this.FileUpload9.SaveAs(Server.MapPath("~") + "/Images/" + filenamaes);
                    this.Image9.ImageUrl = "~/Images/" + filenamaes;
                }
            }
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                if (FileUpload10.HasFile)
                {
                    string filename = FileUpload10.FileName;
                    //返回指定图片的后缀
                    string fileext = System.IO.Path.GetExtension(filename);
                    //获取当前时间
                    string filenamaes = DateTime.Now.ToString("yyyyMMddHHffss") + fileext;
                    Session["tupian10"] = filenamaes;

                    this.FileUpload10.SaveAs(Server.MapPath("~") + "/Images/" + filenamaes);
                    this.Image10.ImageUrl = "~/Images/" + filenamaes;
                }
            }
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            fabucaidan fb = new fabucaidan();
            fb.Biaoti = this.TextBox1.Text;
            fb.Yuanchuang =int.Parse( this.DropDownList1.SelectedValue);

            fb.Gongyi = int.Parse(this.DropDownList2.SelectedValue);
            fb.Kowei = int.Parse(this.DropDownList3.SelectedValue);
            fb.Nandu = int.Parse(this.DropDownList4.SelectedValue);
            fb.Zunbeishijian = int.Parse(this.DropDownList5.SelectedValue);
            fb.Penrenshijian = int.Parse(this.DropDownList6.SelectedValue);
         
            fb.Renshu = int.Parse(this.DropDownList7.SelectedValue);
            string tupisn1 = Session["tupian1"].ToString();
            string tupisn2 = Session["tupian2"].ToString();
            string tupisn3 = Session["tupian3"].ToString();
            string tupisn4 = Session["tupian4"].ToString();
            string tupisn5 = Session["tupian5"].ToString();
            string tupisn6 = Session["tupian6"].ToString();
            string tupisn7 = Session["tupian7"].ToString();
            string tupisn8 = Session["tupian8"].ToString();
            string tupisn9 = Session["tupian9"].ToString();
            string tupisn10 = Session["tupian10"].ToString();
            fb.Chengpintupian = tupisn1;
            fb.Buzoutupian = tupisn2 + "," + tupisn3 + "," + tupisn4 +","+ tupisn5 + "," + tupisn6;
            fb.Zuizhongxiaoguotu = tupisn7 + "," + tupisn8 + "," + tupisn9 + "," + tupisn10;
            fb.Fenxiangxinqin = this.TextBox2.Text;
            //主料
            string zhuliaomc1 = this.TextBox3.Text;
            string zhuliaomc2 = this.TextBox5.Text;
            string zhuliaomc3 = this.TextBox7.Text;
            string zhuliaoyl1 = this.TextBox4.Text;
            string zhuliaoyl2 = this.TextBox6.Text;
            string zhuliaoyl3 = this.TextBox8.Text;
            fb.Zhuliaomingcheng = zhuliaomc1 + "," + zhuliaomc2 + "," + zhuliaomc3;
            fb.Zhuliaoyongliang = zhuliaoyl1 + "," + zhuliaoyl2 + "," + zhuliaoyl3;
            //辅料
            string fuliaomc1 = this.TextBox9.Text;
            string fuliaomc2 = this.TextBox11.Text;
            string fuliaomc3 = this.TextBox13.Text;
            string fuliaoyl1 = this.TextBox10.Text;
            string fuliaoyl2 = this.TextBox12.Text;
            string fuliaoyl3 = this.TextBox14.Text;
            fb.Fuliaomingcheng = fuliaomc1 + "," + fuliaomc2 + "," + fuliaomc3;
            fb.Fuliaoyongliang = fuliaoyl1 + "," + fuliaoyl2 + "," + fuliaoyl3;
            fb.Buzoumiaosu = this.TextBox15.Text + "," + this.TextBox16.Text + "," + this.TextBox17.Text + "," + this.TextBox18.Text + "," + this.TextBox19.Text;
            fb.Fabushijian = Convert.ToDateTime(DateTime.Now.ToString());
            fb.Caiputitle = this.TextBox21.Text;
            fb.Userid =int.Parse(Session["userid"].ToString());
            
            if (fabucaidanBLL.Addfabucaidan(fb))
            {
                Response.Write("<script>alert('发布菜单成功！')</script>");
            }
            else
            {
                Response.Write("<script>alert('发布菜单失败！')</script>");
            }
        }
       
        // List idList = Arrays.asList(string名称.split(","));//根据逗号分隔转化为list
      

        //protected void Button1_Click(object sender, EventArgs e)
        //{
        //    if (IsPostBack)
        //    {
        //        if (FileUpload1.HasFile)
        //        {
        //            string filename = FileUpload1.FileName;
        //            //返回指定图片的后缀
        //            string fileext = System.IO.Path.GetExtension(filename);
        //            //获取当前时间
        //            string filenamaes = DateTime.Now.ToString("yyyyMMddHHffss") + fileext;

        //            this.FileUpload1.SaveAs(Server.MapPath("~") + "/Images/" + filenamaes);
        //            this.Image1.ImageUrl = "~/Images/" + filenamaes;
        //        }
        //    }
        //}

        
      
    }
}