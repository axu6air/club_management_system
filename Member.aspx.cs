using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Member : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            if(Session["member"].ToString() != null)
            {
                rank.Text = Session["name"].ToString();
               
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

        string id = Session["id"].ToString();
        label_name.Text = Session["name"].ToString();
        label_validity.Text = "Valid";

        //SqlConnection con = new SqlConnection(@"Data Source=.\sqlexpress;Initial Catalog=club_web;Integrated Security=True");


        //con.Open();
        //con.Close();
        



    }

    protected void logout_Click(object sender, EventArgs e)
    {
        Response.Redirect("logout.aspx");
    }
}