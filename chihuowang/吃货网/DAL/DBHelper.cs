using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
  public   class DBHelper
    {
      public static string constr = "Data Source=.;Initial Catalog=吃货网DB;Integrated Security=True";

        #region 执行增删改操作
        /// <summary>
        /// 执行增删改操作
        /// </summary>
        /// <param name="proc">存储过程名称</param>
        /// <param name="values">参数数组</param>
        /// <returns>是否执行成功</returns>
        public static bool Excute(string proc, params SqlParameter[] values)
        {
            SqlConnection conn = new SqlConnection(constr);
            conn.Open();
            SqlCommand cmd = new SqlCommand(proc, conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddRange(values);
            int count = cmd.ExecuteNonQuery();
            conn.Close();
            return count > 0;
        }
        #endregion

        #region 执行查询操作
        /// <summary>
        /// 执行查询操作
        /// </summary>
        /// <param name="proc">存储过程名称</param>
        /// <param name="values">参数数组</param>
        /// <returns>数据表格</returns>
        public static DataTable Select(string proc, params SqlParameter[] values)
        {
            SqlConnection conn = new SqlConnection(constr);
            conn.Open();
            SqlCommand cmd = new SqlCommand(proc, conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddRange(values);
            SqlDataAdapter dap = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            dap.Fill(dt);
            conn.Close();
            return dt;
        }
        #endregion
    }
}
