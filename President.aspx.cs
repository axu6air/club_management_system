using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


public partial class President : System.Web.UI.Page
{

    
    protected void Page_Load(object sender, EventArgs e)
    {

        try
        {
            if (Session["president"].ToString() != null)
            {
                welcome_Label.Text = Session["president"].ToString();
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


    protected void logout_Click(object sender, EventArgs e)
    {
        //Session.Clear();
        Response.Redirect("logout.aspx");

    }

    protected void invalid_check_Click(object sender, EventArgs e)
    {
        //con   
        SqlConnection con = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=club_web;Integrated Security=True");
        con.Open();
        string sql = "update member_registered set member_validity = 'Invalid' where member_id = " + member_id.Text;
        SqlCommand cmd = new SqlCommand(sql, con);


        cmd.ExecuteReader();
        con.Close();
        GridView1.DataBind();


    }

    protected void valid_chek_Click(object sender, EventArgs e)
    {
        //con
        SqlConnection con = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=club_web;Integrated Security=True");
        con.Open();
        string sql = "update member_registered set member_validity = 'Valid' where member_id = " + member_id.Text;
        SqlCommand cmd = new SqlCommand(sql, con);


        cmd.ExecuteReader();
        con.Close();

        GridView1.DataBind();
    }
}