using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void member_register_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=club_web;Integrated Security=True");
        try
        {
            conn.Open();
            string name = member_name.Text;
            string password = member_password.Text;
            string club = member_club.Text;
            //Response.Write(club);
            string rank = "general member";
            string sql = "INSERT INTO member_registered (member_name, member_password, member_club, member_rank, member_validity) VALUES('" + name + "', '"+password+"' , '"+club+ "', '" + rank + "' , 'Invalid')";
            SqlCommand cmd = new SqlCommand(sql, conn);
            

            cmd.ExecuteReader();  

        }
        catch
        {
            Response.Write("not working");           
        }
        finally
        {
            conn.Close();
            Response.Redirect("Club_Start.aspx");
        }
    }
}