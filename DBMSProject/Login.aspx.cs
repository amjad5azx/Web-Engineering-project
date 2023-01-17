using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace DBMSProject
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-8FPEVVO;Initial Catalog=Insurance;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
            username.ForeColor = System.Drawing.Color.Black;
            pass.ForeColor = System.Drawing.Color.Black;
        }

        protected void signin_Click(object sender, EventArgs e)
        {
            if (usernametxt.Text == ""||passtxt.Text=="")
            {
                
                if (usernametxt.Text == "")
                {
                    username.ForeColor = System.Drawing.Color.Red;
                }
                if(passtxt.Text == "")
                {
                    pass.ForeColor = System.Drawing.Color.Red;
                }
                Label1.Visible = true;
            }
            else
            {
                username.ForeColor = System.Drawing.Color.Black;
                pass.ForeColor = System.Drawing.Color.Black;
                if (usernametxt.Text == "Agent"|| usernametxt.Text == "agent")
                {
                    Session["id"] = usernametxt.Text;
                    Response.Redirect("AgentPage.aspx");
                }
                else if (usernametxt.Text == "Admin"|| usernametxt.Text == "admin")
                {
                    Session["id"] = usernametxt.Text;
                    Response.Redirect("AdminPage.aspx");
                }
                else
                {
                    SqlCommand cmd = new SqlCommand("select username,Password from user_details where username='" + usernametxt.Text + "'and password='" + passtxt.Text + "'", con);
                    con.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    if (dr.Read())
                    {
                        Session["id"] = usernametxt.Text;
                        Response.Redirect("Profile.aspx");
                    }
                    else
                    {
                        Response.Write("Data not match");
                    }
                }
            }
            
        }
    }
}