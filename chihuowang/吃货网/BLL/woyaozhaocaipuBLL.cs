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
   public  class woyaozhaocaipuBLL
    {
       public static DataTable selectALL() {
           return woyaozhaocaipuDAL.selectALL();
       }
       public static DataTable selectfenye(int page, int pagehang)
       {
           return woyaozhaocaipuDAL.selectfenye(page, pagehang);
       }
       public static int selectfenyecount(int page, int pagehang)
       {
           return woyaozhaocaipuDAL.selectfenyecount(page, pagehang);


       }
       public static DataTable select_id(int id) {
           return woyaozhaocaipuDAL.select_id(id);
       }
           /// <summary>评论
      /// 
      /// </summary>
      /// <param name="id"></param>
      /// <returns></returns>
       public static DataTable selectpinglun_id(int id)
       {
           return woyaozhaocaipuDAL.selectpinglun_id(id);
       }
       public static bool tianjia(woyaozhaocaipu wycp)
       {
           return woyaozhaocaipuDAL.tianjia(wycp);

       }
       public static DataTable select_mohu(string mohu)
       {
           return woyaozhaocaipuDAL.select_mohu(mohu);
       }
    }
}
