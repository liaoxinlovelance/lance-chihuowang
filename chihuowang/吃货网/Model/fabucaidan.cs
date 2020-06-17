using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
  public   class fabucaidan
    {
        public int Fabucaidanid { get; set; }
        public int Yuanchuang { get; set; }
        public string Biaoti { get; set; }
        public int Gongyi { get; set; }
        public int Kowei { get; set; }
        public int Nandu { get; set; }
        public int Zunbeishijian { get; set; }
        public int Penrenshijian { get; set; }
        public int Renshu { get; set; }
        public string Chengpintupian { get; set; }
        public string Fenxiangxinqin { get; set; }
        public string Zhuliaomingcheng { get; set; }
        public string Zhuliaoyongliang { get; set; }
        public string Fuliaomingcheng { get; set; }
        public string Fuliaoyongliang { get; set; }
        public string Buzoutupian { get; set; }
        public string Buzoumiaosu { get; set; }
        public string Zuizhongxiaoguotu { get; set; }
        public DateTime Fabushijian { get; set; }
        public string Caiputitle { get; set; }
        public int Userid { get; set; }
        public int Renqi { get; set; }
        public fabucaidan() { }
        public fabucaidan(int fabucaidanid, int yuanchuang, string biaoti, int gongyi, int kowei, int nandu, int zunbeishijian, int penrenshijian, int renshu,
            string chengpintupian, string fenxiangxinqin, string zhuliaomingcheng, string zhuliaoyongliang, string fuliaomingcheng, string fuliaoyongliang, string buzoutupian,
           string buzoumiaosu, string zuizhongxiaoguotu, DateTime fabushijian, string caiputitle, int userid, int renqi) 
        {
            this.Fabucaidanid = fabucaidanid;
            this.Yuanchuang = yuanchuang;
            this.Biaoti = biaoti;
            this.Gongyi = gongyi;
            this.Kowei = kowei;
            this.Nandu = nandu;
            this.Zunbeishijian = zunbeishijian;
            this.Penrenshijian = penrenshijian;
            this.Renshu = renshu;
            this.Chengpintupian = chengpintupian;
            this.Fenxiangxinqin = fenxiangxinqin;
            this.Zhuliaomingcheng = zhuliaomingcheng;
            this.Zhuliaoyongliang = zhuliaoyongliang;
            this.Fuliaomingcheng = fuliaomingcheng;
            this.Fuliaoyongliang = fuliaoyongliang;
            this.Buzoutupian = buzoutupian;
            this.Buzoumiaosu = buzoumiaosu;
            this.Zuizhongxiaoguotu = zuizhongxiaoguotu;
            this.Fabushijian = fabushijian;
            this.Caiputitle = caiputitle;
            this.Userid = userid;
            this.Renqi = renqi;
        }
    }
}
