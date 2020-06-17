using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
  public  class pinglunDAL
    {
      /// <summary>发布评论
      /// 
      /// </summary>
      /// <param name="pl"></param>
      /// <returns></returns>
      public static bool tianjia(pinglun pl) {

          SqlParameter[] parm = new SqlParameter[] { 
          new SqlParameter("@pinglunneirong",pl.pinglunneirong),
          new SqlParameter("@caipuid",pl.caipuid),
          new SqlParameter("@userid",pl.userid),
          new SqlParameter("@pinglunshijian",pl.pinglunshijian)
          };
          return DBHelper.Excute("pro_fabupinglun_tianjia", parm);
      }
    }
}
