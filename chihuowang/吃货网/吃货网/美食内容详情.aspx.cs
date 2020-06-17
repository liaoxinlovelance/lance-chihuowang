using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using BLL;
using Model;



namespace 吃货网
{
    public partial class 美食内容详情 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int fbcdid=int.Parse(Request["id"]);
                DataTable dt=fabucaidanBLL.selectid(fbcdid);
                Session["biaoti"] = dt.Rows[0]["biaoti"].ToString();
               
                string biaoqian = dt.Rows[0]["caiputitle"].ToString();             
                Session["biaoqian"] = biaoqian;
                //List<string> list = new List<string>(biaoqian.Split(',')); //根据逗号分隔转化为list 
                //心情
                string xingqin = dt.Rows[0]["fenxiangxinqin"].ToString();
                Session["xingqin"] = xingqin;
                //主料名称
                string zhuliao = dt.Rows[0]["zhuliaomingcheng"].ToString();
                List<string> zhuliaolist = new List<string>(zhuliao.Split(','));

                this.Label1.Text = zhuliaolist[0];
                this.Label3.Text = zhuliaolist[1];
                this.Label5.Text = zhuliaolist[2];
                //主料用量
                string zhuliaoyongliang = dt.Rows[0]["zhuliaoyongliang"].ToString();
                List<string> zhuliaoyonglianglist = new List<string>(zhuliaoyongliang.Split(','));

                this.Label2.Text = zhuliaoyonglianglist[0];
                this.Label4.Text = zhuliaoyonglianglist[1];
                this.Label6.Text = zhuliaoyonglianglist[2];


                //辅料名称
                string fuliao = dt.Rows[0]["fuliaomingcheng"].ToString();
                List<string> fuliaolist = new List<string>(fuliao.Split(','));

                this.Label7.Text = fuliaolist[0];
                this.Label9.Text = fuliaolist[1];
                this.Label11.Text = fuliaolist[2];
                //辅料用量
                string fuliaoyongliang = dt.Rows[0]["fuliaoyongliang"].ToString();
                List<string> fuliaoyonglianglist = new List<string>(fuliaoyongliang.Split(','));

                this.Label8.Text = fuliaoyonglianglist[0];
                this.Label10.Text = fuliaoyonglianglist[1];
                this.Label12.Text = fuliaoyonglianglist[2];


                  this.Repeater1.DataSource = dt;
                  this.Repeater1.DataBind();

                  string buzhoumiaosu = dt.Rows[0]["buzoumiaosu"].ToString();
                  Session["buzhoumiaosu"] = buzhoumiaosu;

                  string buzoutupian = dt.Rows[0]["buzoutupian"].ToString();
                  Session["buzoutupian"] = buzoutupian;

                  string zuizhongxiaoguotu = dt.Rows[0]["zuizhongxiaoguotu"].ToString();
                  Session["zuizhongxiaoguotu"] = zuizhongxiaoguotu;
                
            }
        }
       
        
    }
}