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
         public DataTable getArticles()
        {
            string query = "select top 5 article_title,article_text from article_lhub order by article_date desc";
            con.Open();
            SqlCommand sqlCommand = new SqlCommand(query, con);
            SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
            DataTable dataTable = new DataTable();
            dataTable.Load(sqlDataReader);
            con.Close();
            sqlDataReader.Close();
            return dataTable;

        }
        public string getUserID(string uName)
        {
            string query = "select user_id from user_lhub where user_name=@uName ";
            string id = "";
            SqlCommand sqlCommand = new SqlCommand(query, con);
            sqlCommand.Parameters.Add("@uName", SqlDbType.NVarChar).Value = uName;
            SqlDataReader dr = sqlCommand.ExecuteReader();
            while(dr.Read())
            {
                id = dr["user_name"].ToString();
            }
            return id;
        }
        //to follow a category is to assign userid to a category id ,so we have to insert both values in the joint table 
        public string getCategoryID(string catName)
        {
            string query = "select category_id from category_lhub where lower(category_name)=@catname ";
            con.Open();
            string id = "";
            SqlCommand sqlCommand = new SqlCommand(query, con);
            sqlCommand.Parameters.Add("@catname", SqlDbType.NVarChar).Value = catName;
            SqlDataReader dr = sqlCommand.ExecuteReader();
            while (dr.Read())
            {
                id = dr["category_id"].ToString();
            }
            con.Close();
            dr.Close();
            return id;
        }

        public void addUserCategory(string userName,string categoryName)
        {
            string userID = getUserID(userName);
            string categoryID = getCategoryID(categoryName);
            string query = @"insert into User_Follow_Category_lhub values(@catid,@userid)";
            con.Open();
            SqlCommand sqlCommand = new SqlCommand(query, con);
            sqlCommand.Parameters.Add("@catid", SqlDbType.NVarChar).Value = categoryID;
            sqlCommand.Parameters.Add("@userid", SqlDbType.NVarChar).Value = userID;
            sqlCommand.ExecuteNonQuery();
            
        }
        public DataTable getArticlesFromCategory(string categoryName)
        {
            string catid = getCategoryID(categoryName);
            string query = "select article_title as Title, article_author as Author ,article_date as Date from article_lhub where category_id=@catid order by article_date desc";
            con.Open();
            SqlCommand sqlCommand = new SqlCommand(query, con);
            sqlCommand.Parameters.Add("@catid", SqlDbType.NVarChar).Value = catid;
            SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
            DataTable dataTable = new DataTable();
            dataTable.Load(sqlDataReader);
            con.Close();
            sqlDataReader.Close();
            return dataTable;

        }
        public int resetPassword(string email,string password)
        {
            
            string query = @"update User_lhub set USER_password=@pw where USER_Email=@email";
            con.Open();
            SqlCommand sqlCommand = new SqlCommand(query, con);
            sqlCommand.Parameters.Add("@pw", SqlDbType.NVarChar).Value = password;
            sqlCommand.Parameters.Add("@email", SqlDbType.NVarChar).Value = email;
            int line=sqlCommand.ExecuteNonQuery();//# of rows affected
            //if line == 0 ==> not updated
            //if line ==1 ==> updated

            return line;
        }

    }
}