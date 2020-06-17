using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using Model;
using DAL;


namespace BLL
{
  public   class zunbeishijianBLL
    {
      public static DataTable select()
      {
          return zunbeishijianDAL.select();
      }
    }
}
