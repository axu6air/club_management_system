using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class Admin : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if (Session["user"].ToString() != null)
            {
                admin_welcome.Text = Session["user"].ToString();
                //Response.Redirect("Club_Start.aspx");

            }
            else if (!IsPostBack)
            {
                Response.Redirect("Club_Start.aspx");
                //admin_welcome.Text = Session["user"].ToString();

            }
            else
            {
                Response.Redirect("Club_Start.aspx");
            }
        }
        catch
        {
            Response.Redirect("Club_Start.aspx");
        }
    }
    protected void admin_createClub_Click(object sender, EventArgs e)
    {
        string data = admin_clubname.Text;
        string sql = "INSERT INTO Club (club_name) VALUES('" + data + "')";
        string cs = "data source=.\\SQLEXPRESS; database = club_web; integrated security = SSPI";

        using (SqlConnection con = new SqlConnection(cs))
        {
            con.Open();
            SqlCommand cmd = new SqlCommand(sql, con);
            

            cmd.ExecuteReader();
            con.Close();

            //Grid_admin.DataBind();
        }
    }

    protected void admin_logout_Click(object sender, EventArgs e)
    {
        //Session["admin"] = null;
        //Session.Abandon();
        Response.Redirect("logout.aspx");
        

    }

    protected void admin_Update_Click(object sender, EventArgs e)
    {
        string id = member_id.Text;

        string sql = "UPDATE member_registered SET member_rank = '" + rank_list.Text + "'WHERE member_id = '" + id +"'";

        SqlConnection conn = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=club_web;Integrated Security=True");

        conn.Open();
        SqlCommand cmd = new SqlCommand(sql,conn);
        cmd.ExecuteReader();
        conn.Close();
        GridView1.DataBind();
    }

    protected void club_delete_Click(object sender, EventArgs e)
    {
        string sql = "DELETE FROM Club WHERE club_id = '" + club_id.Text + "'";
        SqlConnection conn = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=club_web;Integrated Security=True");
        conn.Open();
        SqlCommand cmd = new SqlCommand(sql, conn);
        cmd.ExecuteReader();
        conn.Close();
        club_id.Text = null;
        GridView2.DataBind();

    }
}