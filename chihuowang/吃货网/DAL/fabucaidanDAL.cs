using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Model;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
  public  class fabucaidanDAL
    {

      /// <summary>查询发布菜单的所有内容
        /// 查询发布菜单的所有内容
      /// </summary>
      /// <returns></returns>
      public static DataTable selectALL()
      {
          
          return DBHelper.Select("pro_fabucaidanselectALL");
      }
      /// <summary>根据发布菜单的id查询所有内容
      /// 根据发布菜单的id查询所有内容
      /// </summary>
      /// <param name="id"></param>
      /// <returns></returns>
      public static DataTable selectid(int id) {
          SqlParameter[] parm = new SqlParameter[]
          {new SqlParameter("@id ",id)

          };
          return DBHelper.Select("pro_fabucaidanselectID", parm);
      }
      /// <summary>发布菜单的数据添加
      /// 发布菜单的数据添加
      /// </summary>
      /// <param name="caidan"></param>
      /// <returns></returns>
      public static bool Addfabucaidan(fabucaidan caidan){
          SqlParameter[] parm = new SqlParameter[]{
      new SqlParameter("@yuanchuang",caidan.Yuanchuang),
       new SqlParameter("@biaoti",caidan.Biaoti),
        new SqlParameter("@gongyi",caidan.Gongyi),
         new SqlParameter("@kowei",caidan.Kowei),
          new SqlParameter("@nandu",caidan.Nandu),
           new SqlParameter("@zunbeishijian",caidan.Zunbeishijian),
           new SqlParameter("@penrenshijian",caidan.Penrenshijian),
           new SqlParameter("@renshu",caidan.Renshu),
           new SqlParameter("@chengpintupian",caidan.Chengpintupian),
           new SqlParameter("@fenxiangxinqin ",caidan.Fenxiangxinqin),
           new SqlParameter("@zhuliaomingcheng",caidan.Zhuliaomingcheng),
           new SqlParameter("@zhuliaoyongliang",caidan.Zhuliaoyongliang),
            new SqlParameter("@fuliaomingcheng",caidan.Fuliaomingcheng),
             new SqlParameter("@fuliaoyongliang",caidan.Fuliaoyongliang),
              new SqlParameter("@buzoutupian",caidan.Buzoutupian),
               new SqlParameter("@buzoumiaosu ",caidan.Buzoumiaosu),
                new SqlParameter("@zuizhongxiaoguotu",caidan.Zuizhongxiaoguotu),
                 new SqlParameter("@fabushijian",caidan.Fabushijian),
                  new SqlParameter("@caiputitle",caidan.Caiputitle),
                   new SqlParameter("@userid",caidan.Userid),
                    new SqlParameter("@renqi",caidan.Renqi)
      };
          return DBHelper.Excute("pro_fabucaidanADD", parm);
      }


      public static DataTable selectfenye(int page, int pagehang)
      {
          SqlParameter[] parm = new SqlParameter[] { 
          new SqlParameter("@page", page),
          new SqlParameter("@pagehang",pagehang),
          new SqlParameter ("@count",SqlDbType.Int)

          
          };
          //指明@count是输出参数
          parm[2].Direction = ParameterDirection.Output;
          return DBHelper.Select("pro_fabucaipufenyeselect", parm);
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
          DBHelper.Select("pro_fabucaipufenyeselect", parm);
          int count = int.Parse(parm[2].Value.ToString());
          return count;
      }

       //<summary>搜索框的列表模糊查询
       
       //</summary>
       //<param name="mohu"></param>
       //<returns></returns>
      public static DataTable select_mohu(string mohu) {
          SqlParameter[] parm = new SqlParameter[] { 
          new SqlParameter("@name", mohu)};
          return DBHelper.Select("pro_mohuchaxun_fabucaidan", parm);
      }
    }
}
