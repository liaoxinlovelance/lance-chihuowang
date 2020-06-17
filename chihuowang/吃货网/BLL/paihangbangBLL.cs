using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL;
using Model;
using System.Data;


namespace BLL
{
    /// <summary>
    /// 排行降序
    /// </summary>
 public   class paihangbangBLL
    {
     public static DataTable select()
     {
         return paihangbangDAL.select();
     }
    }
}
