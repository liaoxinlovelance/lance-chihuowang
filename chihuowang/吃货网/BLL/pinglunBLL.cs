using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using System.Data;
using System.Data.SqlClient;
using DAL;

namespace BLL
{
  public   class pinglunBLL
    {
      /// <summary>发布评论
      /// 
      /// </summary>
      /// <param name="pl"></param>
      /// <returns></returns>
      public static bool tianjia(pinglun pl) {
          return pinglunDAL.tianjia(pl);
      }
    }
}
