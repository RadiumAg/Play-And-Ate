using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace FTZ.PlayAndAte.DAL
{
    class DBHelper
    {
        private SqlConnection con;
        private SqlCommand com;
        private SqlDataAdapter da;
        public DBHelper() {
            con = new SqlConnection("Data Source=47.101.216.14,2325;Initial Catalog=PlayAndAte;User ID=sa;Password=***********");
        }
        /// <summary>
        /// 查询
        /// </summary>
        /// <param name="sql"></param>
        /// <returns></returns>
        public DataTable GetData(string sql) {
            try
            {
                con.Open();
                DataTable dt = new DataTable();
                da = new SqlDataAdapter(sql,con);
                da.Fill(dt);
                return dt;
            }
            catch (Exception)
            {

                throw;
            }
            finally {
                con.Close();
            }
        }
        /// <summary>
        /// 增删改
        /// </summary>
        /// <param name="sql"></param>
        /// <returns></returns>
        public bool zsg(string sql) {
            try
            {
                con.Open();
                com = new SqlCommand(sql, con);
                return com.ExecuteNonQuery() > 0;
            }
            catch (Exception)
            {

                throw;
            }
            finally {
                con.Close();
            }
        }
    }
}
