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
        public static string connStr = "Data Source=DESKTOP-SIJHIP0;Initial Catalog=Learning_Lhub;Integrated Security=True";
        public SqlConnection con = new SqlConnection(connStr);

        public int login(string uName, string pw)
        {
            int flag = 0;
            string query = "select USER_name , USER_password from USER_lhub where USER_name ='" + uName + "' and USER_password='" + pw + "'";
            SqlCommand sqlCommand = new SqlCommand(query, con);
            con.Open();
            SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
            int count = 0;
            while (sqlDataReader.Read())
            {
                count++;
            }
            if (count == 1)
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
        public void Registertion(string uName, string pw, string FName, string LName, string Cpw, string Email)
        {

            string query = "insert into Registertion values(@username, @Fname, @Lname, @Email, @password,@confrim_password)";
            SqlCommand sqlCommand = new SqlCommand(query, con);
            con.Open();
            sqlCommand.Parameters.AddWithValue("username", uName);
            sqlCommand.Parameters.AddWithValue("Fname", FName);
            sqlCommand.Parameters.AddWithValue("Lname", LName);
            sqlCommand.Parameters.AddWithValue("Email", Email);
            sqlCommand.Parameters.AddWithValue("password", pw);
            sqlCommand.Parameters.AddWithValue("confrim_password", Cpw);
            sqlCommand.ExecuteNonQuery();


        }
        /* public DataTable searchArticle(string keyword)
         {
             string query = "select text from article where text like(%" + keyword + "%)";
             SqlCommand sqlCommand = new SqlCommand(query, con);
             SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
             DataTable dataTable = new DataTable();
             dataTable.Load(sqlDataReader);
             con.Close();
             sqlDataReader.Close();
             return dataTable;
         }*/
    }
}