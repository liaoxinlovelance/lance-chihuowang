﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using Model;


namespace DAL
{
  public   class renshuDAL
  {
      public static DataTable select()
      {


          return DBHelper.Select("pro_renshuselect");

      }
    }
}
