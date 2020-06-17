using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;


namespace Model
{
   public  class Login
    {
        public int LoginID { get; set; }
        public string YHM { get; set; }
        public string MIMA { get; set; }
        public string YouXiang { get; set; }
        public string Userpic { get; set; }
        public DateTime Zhuceshijian { get; set; }

        public Login() { }
        public Login(int loginid, string yhm, string mima, string youxiang, string userpic, DateTime zhuceshijian)
        {
            this.LoginID = loginid;
            this.YHM = yhm;
            this.MIMA = mima;
            this.YouXiang = youxiang;
            this.Userpic = userpic;
            this.Zhuceshijian = zhuceshijian;
        }
    }
}
