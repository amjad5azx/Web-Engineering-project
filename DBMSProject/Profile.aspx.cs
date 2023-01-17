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
    public partial class Profile : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-8FPEVVO;Initial Catalog=Insurance;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (Session["id"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                string nametxt = "select name from user_details where username='" + Session["id"].ToString() + "'";
                SqlCommand cmd = new SqlCommand(nametxt, con);
                string addtxt = "select address_details.home_address from address_details inner join user_details on address_details.address_id=user_details.address_id where user_details.username='" + Session["id"].ToString() + "'";
                SqlCommand cmd2 = new SqlCommand(addtxt, con);
                string nomtxt = "select Nominee_Detail.nominee_name from Nominee_Detail inner join user_details on Nominee_Detail.nominee_id=user_details.nominee_id where user_details.username='" + Session["id"].ToString() + "'";
                SqlCommand cmd3 = new SqlCommand(nomtxt, con);
                string phonetxt = "select phone_no from user_details where username='" + Session["id"].ToString() + "'";
                SqlCommand cmd4 = new SqlCommand(phonetxt, con);
                //string dob_txt= "select dob from user_details where username='" + Session["id"].ToString() + "'";
                //SqlCommand cmd5 = new SqlCommand(dob_txt,con);
                string _password = "select password from user_details where username='" + Session["id"].ToString() + "'";
                SqlCommand cmd6 = new SqlCommand(_password, con);
                string city_name = "select address_details.city from address_details inner join user_details on address_details.address_id = user_details.address_id where user_details.username = '" + Session["id"].ToString() + "'";
                SqlCommand cmd7 = new SqlCommand(city_name, con);

                con.Open();
                string name = Convert.ToString(cmd.ExecuteScalar());
                string address = Convert.ToString(cmd2.ExecuteScalar());
                string nominee = Convert.ToString(cmd3.ExecuteScalar());
                string phone = Convert.ToString(cmd4.ExecuteScalar());
                //string _dob = Convert.ToString(cmd5.ExecuteScalar());
                string _pass = Convert.ToString(cmd6.ExecuteScalar());
                string _city = Convert.ToString(cmd7.ExecuteScalar());
                con.Close();
                //usernamenametxt.Text = Session["id"].ToString();
                nametct.Text = name;
                addresstxt.Text = address;
                nomineetxt.Text = nominee;
                phtxt.Text = phone;
                Label2.Text = _city;

                //upnametxt.Text = name;
                //uppasstxt.Text = _pass;
                //upphonetxt.Text = phone;
                ////upcitytxt.Text=
                //upaddresstxt.Text = address;
                //upnomineetxt.Text = nominee;
                //upcitytxt.Text = _city;
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Login.aspx");
        }

        protected void Button4_Click1(object sender, EventArgs e)
        {

            //int x = 1;
            con.Open();
            //if (upnametxt.Text != "")
            //{
            //    upname.ForeColor = System.Drawing.Color.Black;
            //    x = 1;
            //}
            //if (upphonetxt.Text != "")
            //{
            //    upphone.ForeColor = System.Drawing.Color.Black;
            //    x = 1;
            //}
            //if (upcitytxt.Text != "")
            //{
            //    upcity.ForeColor = System.Drawing.Color.Black;
            //    x = 1;
            //}
            //if (upaddresstxt.Text != "")
            //{
            //    upAddress.ForeColor = System.Drawing.Color.Black;
            //    x = 1;
            //}
            //if (upnomineetxt.Text != "")
            //{
            //    upnominee.ForeColor = System.Drawing.Color.Black;
            //    x = 1;
            //}
            //if (upnametxt.Text == "")
            //{
            //    upname.ForeColor = System.Drawing.Color.Red;
            //    x = 0;
            //}
            //if (upphonetxt.Text == "")
            //{
            //    upphone.ForeColor = System.Drawing.Color.Red;
            //    x = 0;
            //}
            //if (upcitytxt.Text == "")
            //{
            //    upcity.ForeColor = System.Drawing.Color.Red;
            //    x = 0;
            //}
            //if (upaddresstxt.Text == "")
            //{
            //    upAddress.ForeColor = System.Drawing.Color.Red;
            //    x = 0;
            //}
            //if (upnomineetxt.Text == "")
            //{
            //    upnominee.ForeColor = System.Drawing.Color.Red;
            //    x = 0;
            //}
            //con.Open();
            string updatename = "update user_details set name='" + upnametxt.Text + "' where username='" + Session["id"].ToString() + "'";
            if (uppasstxt.Text != "")
            {
                updatename = "update user_details set name='" + upnametxt.Text + "',password='" + uppasstxt.Text + "' where username='" + Session["id"].ToString() + "'";
            }
            SqlCommand cmd1 = new SqlCommand(updatename, con);
            int add_id = 0;
            int nom_id = 0;
            
            SqlCommand cmd1_1 = new SqlCommand("select nominee_id from user_details where username='" + Session["id"].ToString() + "'", con);
            SqlCommand cmd1_2 = new SqlCommand("select nominee_id from user_details where username='" + Session["id"].ToString() + "'", con);
            for (int i = 1; i <= 2; i++)
            {
                if (i == 1)
                {
                    cmd1.ExecuteNonQuery();
                    add_id = Convert.ToInt32(cmd1_1.ExecuteScalar());
                    nom_id = Convert.ToInt32(cmd1_2.ExecuteScalar());
                }
                if (i == 2)
                {
                    string update_address_city = "update address_details set home_address='" + upaddresstxt.Text + "',city='" + upcitytxt.Text + "' where address_id=" + add_id;
                    SqlCommand cmd2 = new SqlCommand(update_address_city, con);
                    string update_nominee = "update nominee_detail set nominee_name='" + upnomineetxt.Text + "' where nominee_id=" + nom_id;
                    SqlCommand cmd3 = new SqlCommand(update_nominee, con);
                    cmd2.ExecuteNonQuery();
                    cmd3.ExecuteNonQuery();
                }
            }

            //if(up)
            con.Close();
        }
    }
}