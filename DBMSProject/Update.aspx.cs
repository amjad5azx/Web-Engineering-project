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
    public partial class Update : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-8FPEVVO;Initial Catalog=Insurance;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void phone_txt_TextChanged(object sender, EventArgs e)
        {
            con.Open();
            string updatename = "update user_details set phone_no='" + Convert.ToInt32(phone_txt.Text) + "' where username='" + Session["id"].ToString() + "'";
            SqlCommand cmd = new SqlCommand(updatename, con);
            if (phone_txt.Text != "")
            {
                cmd.ExecuteNonQuery();
            }
            else
            {
                phone.ForeColor = System.Drawing.Color.Red;
            }
            con.Close();
            Response.Redirect("Profile.aspx");
        }

        protected void UpdateName_Click(object sender, EventArgs e)
        {
            con.Open();
            string updatename = "update user_details set name='" + name_txt.Text + "' where username='" + Session["id"].ToString() + "'";
            SqlCommand cmd = new SqlCommand(updatename, con);
            if (name_txt.Text != "")
            {
                cmd.ExecuteNonQuery();
            }
            else
            {
                name.ForeColor = System.Drawing.Color.Red;
            }
            con.Close();
            Response.Redirect("Profile.aspx");
        }

        protected void UpdatePassword_Click(object sender, EventArgs e)
        {
            con.Open();
            string updatename = "update user_details set password='" + passtxt.Text + "' where username='" + Session["id"].ToString() + "'";
            SqlCommand cmd = new SqlCommand(updatename, con);
            if (passtxt.Text != "")
            {
                cmd.ExecuteNonQuery();
            }
            else
            {
                pass.ForeColor = System.Drawing.Color.Red;
            }
            con.Close();
            Response.Redirect("Profile.aspx");
        }

        protected void UpdateCity_Click(object sender, EventArgs e)
        {
            //SqlCommand cmd1_1 = new SqlCommand("select nominee_id from user_details where username='" + Session["id"].ToString() + "'", con);
            SqlCommand cmd1_2 = new SqlCommand("select address_id from user_details where username='" + Session["id"].ToString() + "'", con);
            //int nom_id = Convert.ToInt32(cmd1_1.ExecuteScalar());
            con.Open();
            int add_id = Convert.ToInt32(cmd1_2.ExecuteScalar());
            SqlCommand cmd = new SqlCommand("update address_details set city='" + citytxt.Text+"' where address_id="+add_id, con);
            if (citytxt.Text != "")
            {
                cmd.ExecuteNonQuery();
            }
            else
            {
                city.ForeColor = System.Drawing.Color.Red;
            }
            con.Close();
            Response.Redirect("Profile.aspx");
        }

        protected void UpdateAddress_Click(object sender, EventArgs e)
        {
            //SqlCommand cmd1_1 = new SqlCommand("select nominee_id from user_details where username='" + Session["id"].ToString() + "'", con);
            SqlCommand cmd1_2 = new SqlCommand("select address_id from user_details where username='" + Session["id"].ToString() + "'", con);
            //int nom_id = Convert.ToInt32(cmd1_1.ExecuteScalar());
            con.Open();
            int add_id = Convert.ToInt32(cmd1_2.ExecuteScalar());
            SqlCommand cmd = new SqlCommand("update address_details set home_address='" + addresstxt.Text + "' where address_id=" + add_id, con);
            if (addresstxt.Text != "")
            {
                cmd.ExecuteNonQuery();
            }
            else
            {
                Address.ForeColor = System.Drawing.Color.Red;
            }
            con.Close();
            Response.Redirect("Profile.aspx");
        }

        protected void UpdateNominee_Click(object sender, EventArgs e)
        {
            SqlCommand cmd1_1 = new SqlCommand("select nominee_id from user_details where username='" + Session["id"].ToString() + "'", con);
            //SqlCommand cmd1_2 = new SqlCommand("select address_id from user_details where username='" + Session["id"].ToString() + "'", con);
            con.Open();
            int nom_id = Convert.ToInt32(cmd1_1.ExecuteScalar());
            //int add_id = Convert.ToInt32(cmd1_2.ExecuteScalar());
            SqlCommand cmd = new SqlCommand("update Nominee_Detail set nominee_name='" + nomineetxt.Text + "' where nominee_id=" + nom_id, con);
            if (nomineetxt.Text != "")
            {
                cmd.ExecuteNonQuery();
            }
            else
            {
                nominee.ForeColor = System.Drawing.Color.Red;
            }
            con.Close();
            Response.Redirect("Profile.aspx");
        }
    }
}