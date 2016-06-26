using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class ChangePassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void submit_Click(object sender, EventArgs e)
    {
        SqlConnection con = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=club_web;Integrated Security=True");
        try
        {
            

            string id = cpass_id.Text;
            string oldpassword = oldpass.Text;
            string newpassword = newpass.Text;

            con.Open();

            string new1 = "SELECT member_password FROM member_registered WHERE member_id='" + id + "'";
            SqlCommand passComm = new SqlCommand(new1, con);
            string passcode = passComm.ExecuteScalar().ToString();

            string sql = "update member_registered set member_password = '"+newpassword+"' where member_id = " + id;

            if (passcode == oldpassword)
            {
                SqlCommand comm = new SqlCommand(sql, con);
                comm.ExecuteReader();
                Label1.Text = "Password updated";
                Response.Redirect("Club_Start.aspx");
            }
            else
            {
                Label1.Text = "Wrong password!";
            }
        }
        catch
        {
            Label1.Text = "Error!";
        }
        finally
        {
            con.Close();
            //Response.Redirect("Club_Start.aspx");
        }
    }
}