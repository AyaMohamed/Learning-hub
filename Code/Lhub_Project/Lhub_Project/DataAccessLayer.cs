using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Data;
namespace Lhub_Project
{
    public class DataAccessLayer
    {
        public static string connStr = "Data Source=.;Initial Catalog=Learning_Lhub;Integrated Security=True";
        public SqlConnection con = new SqlConnection(connStr);

        public int login(string uName,string pw)
        {
            int flag = 0;
            string query = "select uname , password from login where uname='" + uName + "' and password='" + pw + "'";
            SqlCommand sqlCommand = new SqlCommand(query, con);
            SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
            int count = 0;
            while(sqlDataReader.Read())
            {
                count++;
            }
            if(count==1)
            {
                flag = 1;
            }
            else
            {
                flag = 0;
            }
            con.Close();
            sqlDataReader.Close();
            return flag;
            

        }
        public DataTable searchArticle(string keyword)
        {
            string query = "select text from article where text like(%" + keyword + "%)";
            SqlCommand sqlCommand = new SqlCommand(query, con);
            SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
            DataTable dataTable = new DataTable();
            dataTable.Load(sqlDataReader);
            con.Close();
            sqlDataReader.Close();
            return dataTable;
        }
    }
}