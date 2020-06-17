using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using Model;
using System.Data.SqlClient;

namespace DAL
{
   public  class LoginDAL
    {
        /// <summary>登录
        /// 查询
        /// </summary>
        /// <param name="yhm"></param>
        /// <param name="mima"></param>
        /// <returns></returns>
        public static DataTable Select(string yhm, string mima)
        {
            //获取存储过程名称(创建存储过程的参数)
            SqlParameter[] parm = new SqlParameter[]{
                new SqlParameter("@name",yhm),
                new SqlParameter("@mima",mima)
              
            };

            //查询方法
            return DBHelper.Select("pro_denglu", parm);
            //获取对应的值
            //调用查询方法

        }
        /// <summary>注册
        /// 注册
        /// </summary>
        /// <param name="user"></param>
        /// <returns></returns>
        public static bool AddUser(Login zhuce)
        {
            //           //定义
            //           string sql = string.Format(@"
            //
            //INSERT INTO [dbo].[UserInfo]
            //           ([UserName]
            //           ,[UserPwd]
            //           ,[QQ]
            //           ,[Phone]
            //           ,[Address]
            //           ,[CreateTime])
            //     VALUES
            //           ('{0}'
            //           ,'{1}'
            //           ,'{2}'
            //           ,'{3}'
            //           ,'{4}'
            //           ,'{5}')
            //", user.UserName, user.UserPwd, user.QQ, user.Phone, user.Address, user.CreateTime);
            SqlParameter[] parm = new SqlParameter[]{
                new SqlParameter("@name",zhuce.YHM),
                new SqlParameter("@mima",zhuce.MIMA),
                 new SqlParameter("@youxiang",zhuce.YouXiang),
                new SqlParameter("@tupian",zhuce.Userpic),
              new SqlParameter("@time",zhuce.Zhuceshijian)

            };

            return DBHelper.Excute("pro_zhuce", parm);
        }
    }
}
