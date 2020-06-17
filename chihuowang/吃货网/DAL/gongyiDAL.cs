using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using Model;



namespace DAL
{
   public  class gongyiDAL
    {
       /// <summary>
       /// 排行降序
       /// </summary>
       /// <returns></returns>
       public static DataTable select()
       {


           return DBHelper.Select("pro_gongyiselect");

       }
    }
}
