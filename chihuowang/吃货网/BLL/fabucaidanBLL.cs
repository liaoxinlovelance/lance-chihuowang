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
   public  class fabucaidanBLL
    { 
       /// <summary>查询发布菜单的所有内容
        /// 查询发布菜单的所有内容
      /// </summary>
      /// <returns></returns>
       public static DataTable selectALL()
       {
           return fabucaidanDAL.selectALL();
       }
        /// <summary>根据发布菜单的id查询所有内容
      /// 根据发布菜单的id查询所有内容
      /// </summary>
      /// <param name="id"></param>
      /// <returns></returns>
       public static DataTable selectid(int id)
       {
           return fabucaidanDAL.selectid(id);
       }
        /// <summary>发布菜单的数据添加
      /// 发布菜单的数据添加
      /// </summary>
      /// <param name="caidan"></param>
      /// <returns></returns>
       public static bool Addfabucaidan(fabucaidan caidan)
       {
           return fabucaidanDAL.Addfabucaidan(caidan);
       }
       public static DataTable selectfenye(int page, int pagehang)
       {
           return fabucaidanDAL.selectfenye(page, pagehang);
       }
       public static int selectfenyecount(int page, int pagehang)
       {
           return fabucaidanDAL.selectfenyecount(page,pagehang);
       }
       //<summary>搜索框的列表模糊查询
       
       //</summary>
       //<param name="mohu"></param>
       //<returns></returns>
       public static DataTable select_mohu(string mohu) {
           return fabucaidanDAL.select_mohu(mohu);
       }
    }
}
