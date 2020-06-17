using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
   public  class paihangbangDAL
    {
       public static DataTable select()
       {


           return DBHelper.Select("pro_paihangbangselect");

       }
    }
}
