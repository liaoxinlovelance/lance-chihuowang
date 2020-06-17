using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
   public  class woyaozhaocaipu
    {
        public int CaipuID { get; set; }
        public string Title { get; set; }
        public string Neirong { get; set; }
        public int Useid { get; set; }
        public int Liulanliang { get; set; }
        public DateTime Fabutime { get; set; }
        public int Zhichi { get; set; }
        public string Huifu { get; set; }
        public string Fabutupian { get; set; }
        public string Huifutupian { get; set; }
        public int Fangdui { get; set; }
        public DateTime Pinglunshijian { get; set; }
        public woyaozhaocaipu() { }
        public woyaozhaocaipu(
             int caipuID, string title, string neirong, int useid, int liulanliang, DateTime fabutime, int zhichi, string huifu
            , string fabutupian, string huifutupian, int fangdui, DateTime pinglunshijian 
            ) {
                this.CaipuID = caipuID;
                this.Title = title;
                this.Neirong = neirong;
                this.Useid = useid;
                this.Liulanliang = liulanliang;
                this.Fabutime = fabutime;
                this.Zhichi = zhichi;
                this.Huifu = huifu;
                this.Fabutupian = fabutupian;
                this.Huifutupian = huifutupian;
                this.Fangdui = fangdui;
                this.Pinglunshijian = pinglunshijian;
        
        }
    }
}
