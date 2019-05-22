using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace Lhub_Project
{
    public partial class HomePage : System.Web.UI.Page
    {
        DataAccessLayer dataAccessLayer = new DataAccessLayer();
        protected void Page_Load(object sender, EventArgs e)
        {
            nameLbl.Text = Request.QueryString["userName"];
            DataTable dt = dataAccessLayer.getArticles();
            if(txtsrch.Text!="")
            {
                string queryStringSrch = "srch=" + txtsrch.Text.ToString();
                string queryStringName = "name=" + nameLbl.Text.ToString();
                Response.Redirect("SearchResultsPage.aspx?" + queryStringSrch+"&"+queryStringName);
            }
            if (dt.Rows.Count == 0)
            {
                Response.Write("<script>alert('No articles found !')</script>");
            }
            else
            {
                if(dt.Rows.Count==1)
                {
                    Label1.Text = dt.Rows[0]["article_title"].ToString();
                    article1ID.Text = dt.Rows[0]["article_text"].ToString();

                    panel2.Visible = false;
                    panel3.Visible = false;
                    panel4.Visible = false;
                    panel5.Visible = false;
                }
                else if (dt.Rows.Count == 2)
                {
                    Label1.Text = dt.Rows[0]["article_title"].ToString();
                    article1ID.Text = dt.Rows[0]["article_text"].ToString();

                    Label3.Text = dt.Rows[1]["article_title"].ToString();
                    article2ID.Text = dt.Rows[1]["article_text"].ToString();
                    panel3.Visible = false;
                    panel4.Visible = false;
                    panel5.Visible = false;
                }
                else if (dt.Rows.Count == 3)
                {
                    Label1.Text = dt.Rows[0]["article_title"].ToString();
                    article1ID.Text = dt.Rows[0]["article_text"].ToString();

                    Label3.Text = dt.Rows[1]["article_title"].ToString();
                    article2ID.Text = dt.Rows[1]["article_text"].ToString();

                    Label4.Text = dt.Rows[2]["article_title"].ToString();
                    article3ID.Text = dt.Rows[2]["article_text"].ToString();
                    panel4.Visible = false;
                    panel5.Visible = false;
                }
                else if (dt.Rows.Count == 4)
                {
                    Label1.Text = dt.Rows[0]["article_title"].ToString();
                    article1ID.Text = dt.Rows[0]["article_text"].ToString();

                    Label3.Text = dt.Rows[1]["article_title"].ToString();
                    article2ID.Text = dt.Rows[1]["article_text"].ToString();

                    Label4.Text = dt.Rows[2]["article_title"].ToString();
                    article3ID.Text = dt.Rows[2]["article_text"].ToString();

                    Label5.Text = dt.Rows[3]["article_title"].ToString();
                    article4ID.Text = dt.Rows[3]["article_text"].ToString();
                    panel5.Visible = false;
                }
                else if(dt.Rows.Count==5)
                {
                    Label1.Text = dt.Rows[0]["article_title"].ToString();
                    article1ID.Text = dt.Rows[0]["article_text"].ToString();

                    Label3.Text = dt.Rows[1]["article_title"].ToString();
                    article2ID.Text = dt.Rows[1]["article_text"].ToString();

                    Label4.Text = dt.Rows[2]["article_title"].ToString();
                    article3ID.Text = dt.Rows[2]["article_text"].ToString();

                    Label5.Text = dt.Rows[3]["article_title"].ToString();
                    article4ID.Text = dt.Rows[3]["article_text"].ToString();

                    Label7.Text = dt.Rows[4]["article_title"].ToString();
                    article5ID.Text = dt.Rows[4]["article_text"].ToString();
                }
                

            }
        }
        
    }
}