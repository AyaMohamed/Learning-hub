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
        public int loginAdmin(string uName, string pw)
        {
            int flag = 0;
            string query = @"select admin_name , admin_password from admin_lhub 
                            where (admin_name=@name or admin_email=@email) and admin_password=@pw";
            SqlCommand sqlCommand = new SqlCommand(query, con);
            con.Open();
            sqlCommand.Parameters.Add("@name", SqlDbType.NVarChar).Value = uName;
            sqlCommand.Parameters.Add("@email", SqlDbType.NVarChar).Value = uName;
            sqlCommand.Parameters.Add("@pw", SqlDbType.NVarChar).Value = pw;
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
        public int login(string uName, string pw)
        {
            int flag = 0;
            string query = @"select USER_name , USER_password from USER_lhub where 
                    (USER_name ='" + uName + "' or user_email ='" + uName + "' )and " +
                    "USER_password='" + pw + "'";
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
        public int getCount()
        {
            string query = "select count(*) from user_lhub ";
            SqlCommand sqlCommand = new SqlCommand(query, con);
            con.Open();
            int count = (int)sqlCommand.ExecuteScalar();
            con.Close();
            return count;
        }
        public int register(string uName, string pw, string FName, string LName, string Email)

        {
            int newCount = getCount() + 1;
            string user_id = "USERID_" + newCount;
            string query = "insert into user_lhub (user_id ,user_name,user_email,user_password,user_fname,user_lname)  values(@userid,@username, @Email, @password, @Fname, @Lname)";
            SqlCommand sqlCommand = new SqlCommand(query, con);
            con.Open();
            sqlCommand.Parameters.AddWithValue("@userid", user_id);
            sqlCommand.Parameters.AddWithValue("@username", uName);
            sqlCommand.Parameters.AddWithValue("@Email", Email);
            sqlCommand.Parameters.AddWithValue("@password", pw);
            sqlCommand.Parameters.AddWithValue("@Fname", FName);
            sqlCommand.Parameters.AddWithValue("@Lname", LName);

            sqlCommand.ExecuteNonQuery();
            con.Close();
            int result = 0;
            if (getCount() == newCount)
            {
                result = 1;
            }
            else
            {
                result = 0;
            }
            return result;


        }
        public DataTable searchArticle(string keyword)
        {
            string query = "select text from article_lhub where article_text like(%" + keyword + "%) or article_title like (%" + keyword + "%)";
            SqlCommand sqlCommand = new SqlCommand(query, con);
            SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
            DataTable dataTable = new DataTable();
            dataTable.Load(sqlDataReader);
            con.Close();
            sqlDataReader.Close();
            return dataTable;
        }
        public DataTable getArticles()
        {
            string query = "select top 5 article_title,article_text from article_lhub where article_text is not null order by article_date desc";
            con.Open();
            SqlCommand sqlCommand = new SqlCommand(query, con);
            SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
            DataTable dataTable = new DataTable();
            dataTable.Load(sqlDataReader);
            con.Close();
            sqlDataReader.Close();
            return dataTable;

        }
        /*
         * to get user id from his user name , to use in follow category function
         */
        public string getUserID(string uName)
        {
            string query = "select user_id from user_lhub where user_name=@uName ";
            string id = "";
            con.Open();
            SqlCommand sqlCommand = new SqlCommand(query, con);
            sqlCommand.Parameters.Add("@uName", SqlDbType.NVarChar).Value = uName;
            SqlDataReader dr = sqlCommand.ExecuteReader();
            while (dr.Read())
            {
                id = dr["user_id"].ToString();
            }
            con.Close();
            return id;
        }
        //to follow a category is to assign userid to a category id ,so we have to insert both values in the joint table 
        public string getCategoryIDFromName(string catName)
        {
            string query = "select category_id from category_lhub where lower(category_name) like '%" + catName + "%' ";
            con.Open();
            string id = "";
            SqlCommand sqlCommand = new SqlCommand(query, con);
            //sqlCommand.Parameters.Add("@catname", SqlDbType.NVarChar).Value = catName;
            SqlDataReader dr = sqlCommand.ExecuteReader();
            while (dr.Read())
            {
                id = dr["category_id"].ToString();
            }
            con.Close();
            dr.Close();
            return id;
        }
        //follow category
        public void followCategory(string userName, string categoryName)
        {
            string userID = getUserID(userName);
            string categoryID = getCategoryIDFromName(categoryName);
            string query1 = "update user_lhub set cat_id =@catid where user_name=@name";
            string query = @"insert into User_Follow_Category_lhub values(@catid,@userid)";
            con.Open();
            SqlCommand sqlCommand = new SqlCommand(query, con);

            sqlCommand.Parameters.Add("@catid", SqlDbType.NVarChar).Value = categoryID;
            sqlCommand.Parameters.Add("@userid", SqlDbType.NVarChar).Value = userID;
            SqlCommand cmd1 = new SqlCommand(query1, con);
            cmd1.Parameters.AddWithValue("@catid", categoryID);
            cmd1.Parameters.AddWithValue("@name", userName);
            sqlCommand.ExecuteNonQuery();
            cmd1.ExecuteNonQuery();
            con.Close();

        }
        //unfollow category
        public void unfollowCategory(string userName, string categoryName)
        {
            string userID = getUserID(userName);
            string categoryID = getCategoryIDFromName(categoryName);
            string query1 = "update user_lhub set cat_id =NULL where user_name=@name";

            string query = @"delete from User_Follow_Category_lhub where category_id=@catid and user_id =@userid";
            con.Open();
            SqlCommand sqlCommand = new SqlCommand(query, con);
            SqlCommand cmd1 = new SqlCommand(query1, con);
            sqlCommand.Parameters.Add("@catid", SqlDbType.NVarChar).Value = categoryID;
            sqlCommand.Parameters.Add("@userid", SqlDbType.NVarChar).Value = userID;
            sqlCommand.ExecuteNonQuery();
            cmd1.Parameters.AddWithValue("@name", userName);
            cmd1.ExecuteNonQuery();
            con.Close();

        }
        public DataTable getArticlesFromCategory(string categoryName)
        {
            string catid = getCategoryIDFromName(categoryName);
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
        public int resetPassword(string email, string password)
        {

            string query = @"update User_lhub set USER_password=@pw where USER_Email=@email";
            con.Open();
            SqlCommand sqlCommand = new SqlCommand(query, con);
            sqlCommand.Parameters.Add("@pw", SqlDbType.NVarChar).Value = password;
            sqlCommand.Parameters.Add("@email", SqlDbType.NVarChar).Value = email;
            int line = sqlCommand.ExecuteNonQuery();//# of rows affected
            //if line == 0 ==> not updated
            //if line ==1 ==> updated
            con.Close();
            return line;
        }

        public int getArticleCount()
        {
            string query = "select count(*) from article_lhub ";
            SqlCommand sqlCommand = new SqlCommand(query, con);
            con.Open();
            int count = (int)sqlCommand.ExecuteScalar();
            con.Close();
            return count;
        }
        public DataTable getRequests()
        {

            string query = "SELECT [article_title] as Title, [user_name] as [Author Name], [article_date] as [Published Date],[article_id] FROM [article_Temp] ORDER BY [article_date] DESC";
            con.Open();
            SqlCommand sqlCommand = new SqlCommand(query, con);
            SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
            DataTable dataTable = new DataTable();
            dataTable.Load(sqlDataReader);
            con.Close();
            sqlDataReader.Close();
            return dataTable;
        }
        /*
         * 1. user upload article
         * 2. article is saved to tmp table
         * 3. admin approve article
         * 4. article status is updated in tmp table from pending to approved
         * 5. article is saved into article table
         * */
        //=================insert into temp table=============================//
        public void insertArticle(string title, string text, string author, string categoryID, DateTime date, string video, string audio)
        {
            int count = getArticleCount() + 1;
            string articleID = "Article_ID_" + count;
            string query = @"insert into article_temp values(@articleid,@articletxt,@video,@audio
                            @title,@articledate,@catid,@author)";
            con.Open();
            SqlCommand sqlCommand = new SqlCommand(query, con);
            sqlCommand.Parameters.Add("@articleid", SqlDbType.NVarChar).Value = articleID;
            sqlCommand.Parameters.Add("@articletxt", SqlDbType.Text).Value = text;
            sqlCommand.Parameters.Add("@video", SqlDbType.VarBinary).Value = video;
            sqlCommand.Parameters.Add("@audio", SqlDbType.VarBinary).Value = audio;
            sqlCommand.Parameters.Add("@title", SqlDbType.NVarChar).Value = title;
            sqlCommand.Parameters.Add("@articledate", SqlDbType.DateTime).Value = date;

            sqlCommand.Parameters.Add("@catid", SqlDbType.NVarChar).Value = categoryID;
            sqlCommand.Parameters.Add("@author", SqlDbType.NVarChar).Value = author;
            sqlCommand.ExecuteNonQuery();
            con.Close();
        }

        public int reviewArticle(string option, string author, string title)
        {
            int result = 0;
            //byte[] video,audio;
            string id = "", text = "", catID = "";
            DateTime date = DateTime.Now;
            string query = @"select * from article_temp where user_name=@author
                            and article_title=@title and status='pending approval'";
            con.Open();
            SqlCommand sqlCommand = new SqlCommand(query, con);
            sqlCommand.Parameters.Add("@author", SqlDbType.VarChar).Value = author;
            sqlCommand.Parameters.Add("@title", SqlDbType.VarChar).Value = title;
            SqlDataReader dr = sqlCommand.ExecuteReader();
            while (dr.Read())
            {
                id = dr["article_id"].ToString();
                text = dr["article_text"].ToString();
                //video =Convert.tob dr["article_video"];
                //audio = dr["article_record"].ToString();
                date = Convert.ToDateTime(dr["article_date"].ToString());
                catID = dr["category_id"].ToString();
            }
            con.Close();

            //===========================
            if (option.ToLower() == "approve")
            {
                string query1 = "update article_temp set status='approved' where article_id=@id";
                SqlCommand sqlCommand1 = new SqlCommand(query1, con);
                con.Open();
                sqlCommand1.Parameters.Add("@id", SqlDbType.VarChar).Value = id;
                sqlCommand1.ExecuteNonQuery();

                query = @"insert into article_lhub (article_id,article_text
                   ,article_title,article_date, category_id,article_author)
                    values(@id,@articletxt ,@title
                        ,@articledate,@catid,@author)";
                sqlCommand = new SqlCommand(query, con);

                sqlCommand.Parameters.Add("@id", SqlDbType.NVarChar).Value = id;
                sqlCommand.Parameters.Add("@articletxt", SqlDbType.Text).Value = text;
                //sqlCommand.Parameters.Add("@video", SqlDbType.VarBinary).Value = video;
                //sqlCommand.Parameters.Add("@audio", SqlDbType.VarBinary).Value = audio;
                sqlCommand.Parameters.Add("@title", SqlDbType.NVarChar).Value = title;
                sqlCommand.Parameters.Add("@articledate", SqlDbType.DateTime).Value = date;

                sqlCommand.Parameters.Add("@catid", SqlDbType.NVarChar).Value = catID;
                sqlCommand.Parameters.Add("@author", SqlDbType.NVarChar).Value = author;
                sqlCommand.ExecuteNonQuery();
                con.Close();
                result = 1;

            }
            else if (option.ToLower() == "reject")
            {
                string query1 = "update article_temp set status='rejected' where article_id=@id";
                SqlCommand sqlCommand1 = new SqlCommand(query1, con);
                con.Open();
                sqlCommand1.Parameters.Add("@id", SqlDbType.VarChar).Value = id;
                sqlCommand1.ExecuteNonQuery();
                con.Close();
                result = 0;
            }
            return result;

        }

        public DataTable getRequestsByTitleAuthor(string title, string author)
        {
            string query = @"SELECT [article_title] as Title, [user_name] as [Author Name], [article_date] as 
                        [Published Date],[article_id] FROM [article_Temp] where article_title=@title 
                        and user_name=@author ORDER BY [article_date] DESC";
            con.Open();
            SqlCommand sqlCommand = new SqlCommand(query, con);
            sqlCommand.Parameters.Add("@title", SqlDbType.VarChar).Value = title;
            sqlCommand.Parameters.Add("@author", SqlDbType.VarChar).Value = author;
            SqlDataReader sqlDataReader = sqlCommand.ExecuteReader();
            DataTable dataTable = new DataTable();
            dataTable.Load(sqlDataReader);
            con.Close();
            sqlDataReader.Close();
            return dataTable;
        }

        public void uploadArticle(string username, string text, string title, string categoryname)
        {
            int articleCount = getArticleCount() + 1;
            string articleid = "article_id_" + articleCount;
            string userid = getUserID(username);
            string categoryid = getCategoryIDFromName(categoryname);
            DateTime date = DateTime.Now;
            string query = @"insert into article_temp (article_id,user_name,article_title,article_date,category_id,article_text)
                values(@articleid,@uname,@title,@articledate,@catid,@articletext)";
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);
            cmd.Parameters.AddWithValue("@articleid", articleid);
            cmd.Parameters.AddWithValue("@uname", username);
            cmd.Parameters.AddWithValue("@title", title);
            cmd.Parameters.AddWithValue("@articledate", date);
            cmd.Parameters.AddWithValue("@catid", categoryid);
            cmd.Parameters.AddWithValue("@articletext", text);
            cmd.ExecuteNonQuery();
            con.Close();
        }
        public string getCategoryNameFromID(string id)
        {
            string query = "select category_name from category_lhub where lower(category_id) like '%" + id + "%' ";
            con.Open();
            string name = "";
            SqlCommand sqlCommand = new SqlCommand(query, con);
            //sqlCommand.Parameters.Add("@catname", SqlDbType.NVarChar).Value = catName;
            SqlDataReader dr = sqlCommand.ExecuteReader();
            while (dr.Read())
            {
                name = dr["category_name"].ToString();
            }
            con.Close();
            dr.Close();
            return name;
        }
        public string getCategory(string title, string author, DateTime date)
        {
            string query = @"select category_id from article_temp where lower(user_name)=@name and
                article_title=@title and article_date=@articledate ";
            con.Open();
            string id = "";
            SqlCommand sqlCommand = new SqlCommand(query, con);
            sqlCommand.Parameters.AddWithValue("@name", author);
            sqlCommand.Parameters.AddWithValue("@title", title);
            sqlCommand.Parameters.AddWithValue("@articledate", date);
            SqlDataReader dr = sqlCommand.ExecuteReader();
            while (dr.Read())
            {
                id = dr["category_id"].ToString();
            }
            con.Close();
            string name = getCategoryNameFromID(id);

            dr.Close();
            return id;
        }

    }
}