using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
  public   class woyaozhaocaipuDAL
    {
      public static DataTable selectALL() {

          return DBHelper.Select("pro_woyaozhaocaipuselect");
      
      }
      /// <summary>根据id查询
      /// 
      /// </summary>
      /// <param name="id"></param>
      /// <returns></returns>
  public static DataTable select_id(int id){
  SqlParameter[] parm= new SqlParameter[]{
  new SqlParameter("@cpid",id)
  };
  return DBHelper.Select("pro_woyaozhaocaipuselectid", parm);
  }
      /// <summary>评论
      /// 
      /// </summary>
      /// <param name="id"></param>
      /// <returns></returns>
  public static DataTable selectpinglun_id(int id)
  {
      SqlParameter[] parm = new SqlParameter[]{
  new SqlParameter("@cpid",id)
  };
      return DBHelper.Select("pro_woyaozhaocaipupinglunselectid", parm);
  }

      public static DataTable selectfenye(int page, int pagehang) {
          SqlParameter[] parm = new SqlParameter[] { 
          new SqlParameter("@page", page),
          new SqlParameter("@pagehang",pagehang),
          new SqlParameter ("@count",SqlDbType.Int)

          
          };
       //指明@count是输出参数
            parm[2].Direction = ParameterDirection.Output;
            return DBHelper.Select("pro_woyaozhaocaipufenyeselect",parm);
      }
      public static int selectfenyecount(int page, int pagehang)
      {
          SqlParameter[] parm = new SqlParameter[] { 
          new SqlParameter("@page", page),
          new SqlParameter("@pagehang",pagehang),
          new SqlParameter ("@count",SqlDbType.Int)

          
          };
          //指明@count是输出参数
          parm[2].Direction = ParameterDirection.Output;
          DBHelper.Select("pro_woyaozhaocaipufenyeselect", parm);
          int count = int.Parse(parm[2].Value.ToString());
          return count;
      }
      public static bool tianjia(woyaozhaocaipu wycp)
          {
              SqlParameter[] parm = new SqlParameter[]{
              new SqlParameter("@Title",wycp.Title),
              new SqlParameter("@neirong",wycp.Neirong),
              new SqlParameter("@fabutupian",wycp.Fabutupian),
              new SqlParameter("@fabutime",wycp.Fabutime),
              new SqlParameter("@useid",wycp.Useid)


          };
              return DBHelper.Excute("pro_woyaozhaocaipu_tianjia", parm);
      }
      //<summary>搜索框的列表模糊查询

      //</summary>
      //<param name="mohu"></param>
      //<returns></returns>
      public static DataTable select_mohu(string mohu)
      {
          SqlParameter[] parm = new SqlParameter[] { 
          new SqlParameter("@name", mohu)};
          return DBHelper.Select("pro_mohuchaxun_wyzcp", parm);
      }
    }
}
