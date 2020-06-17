using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using DAL;
using Model;
using System.Data;

namespace BLL
{
   public  class LoginBLL
    {
        /// <summary>查询
        /// 调用DAL的查询方法
        /// </summary>
        /// <param name="yhm"></param>
        /// <param name="mima"></param>
        /// <returns></returns>
        public static DataTable Select(string yhm, string mima)
        {
            return LoginDAL.Select(yhm, mima);
        }
        /// <summary>注册添加
        /// 调用DAL的添加方法
        /// </summary>
        /// <param name="yhm"></param>
        /// <param name="mima"></param>
        /// <returns></returns>
        public static bool AddUser(Login zhuce)
        {
            return LoginDAL.AddUser(zhuce);
        }
    }
}
