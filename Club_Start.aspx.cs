using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;


public partial class Club_Start : System.Web.UI.Page
{
    //SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=club_web;Integrated Security=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }

   

    protected void member_registration_Click(object sender, EventArgs e)
    {
        Response.Redirect("Registration.aspx");
    }

    protected void member_login_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=club_web;Integrated Security=True");

        try
        {
            conn.Open();
            string id = member_id.Text;
            string password = member_password.Text;

            string sql = "SELECT *  FROM member_registered WHERE member_id='" + id + "'and member_password='" + password + "'";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.ExecuteNonQuery();

            string new5 = "SELECT member_validity FROM member_registered WHERE member_id='" + id + "'";
            SqlCommand validComm = new SqlCommand(new5, conn);
            string validity = validComm.ExecuteScalar().ToString();

            string new4 = "SELECT member_club FROM member_registered WHERE member_id='" + id + "'";
            SqlCommand clubComm = new SqlCommand(new4, conn);
            string club = clubComm.ExecuteScalar().ToString();

            string new3 = "SELECT member_rank FROM member_registered WHERE member_id='" + id + "'";
            SqlCommand rankComm = new SqlCommand(new3, conn);
            string rank = rankComm.ExecuteScalar().ToString();

            //message.Text = rank;

            string new2 = "SELECT member_name FROM member_registered WHERE member_id='" + id + "'";
            SqlCommand userComm = new SqlCommand(new2, conn);
            string username = userComm.ExecuteScalar().ToString();

            string new1 = "SELECT member_password FROM member_registered WHERE member_id='" + id + "'";
            SqlCommand passComm = new SqlCommand(new1, conn);
            string passcode = passComm.ExecuteScalar().ToString();

            if (passcode == password) 
            {
               

                    //message.Text = "workid";
                    //Label2.Text = username;
                    if (rank == "general member" && validity == "Valid")
                    {
                        Session["member"] = rank;
                        Session["club"] = club;
                        Session["id"] = id;
                        Session["name"] = username;
                        Response.Redirect("Member.aspx");

                    }

                    if (rank == "president")
                    {
                        Session["president"] = rank;
                        Session["club"] = club;

                        Response.Redirect("President.aspx");
                    }

                    if (rank == "admin")
                    {
                        Session["user"] = rank;


                        Response.Redirect("Admin.aspx");

                    }
                }
            else
            {
                message.Text = "Invalid id or password";
            
            }
        }
        catch
        {
            message.Text = "invalid";
        }

        finally
        {
            conn.Close();
        }
        














           // conn.Close();


          
    }
}