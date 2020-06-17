using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Model
{
  public class pinglun
    {
        public int pinglunID { get; set; }
        public string pinglunneirong { get; set; }
        public int caipuid { get; set; }
        public int userid { get; set; }
        public DateTime pinglunshijian { get; set; }
        public pinglun() { }
        public pinglun(int PinglunID, string Pinglunneirong, int Caipuid
            , int Userid, DateTime Pinglunshijian) {
                this.caipuid = Caipuid;
                this.pinglunID = PinglunID;
                this.pinglunneirong = Pinglunneirong;
                this.pinglunshijian = Pinglunshijian;
                this.userid = Userid;
        }
    }
}
