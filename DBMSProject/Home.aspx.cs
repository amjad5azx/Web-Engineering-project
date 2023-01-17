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
    public partial class Home : System.Web.UI.Page
    {
        SqlConnection con=new SqlConnection(@"Data Source=DESKTOP-8FPEVVO;Initial Catalog=Insurance;Integrated Security=True");
        //SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-8FPEVVO;Initial Catalog=Insurance;User ID=sa;Password=amjad");
        //SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-8FPEVVO;Initial Catalog=Insurance;User ID=sa;Password=amjad");
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void signup_Click(object sender, EventArgs e)
        {
            con.Open();
            int x = 1;
                if (nametxt.Text != "")
                {
                    name.ForeColor = System.Drawing.Color.Black;
                    x = 1;
                }
                if (usernametxt.Text != "")
                {
                    SqlCommand cmd12 = new SqlCommand("select username from user_details where username='"+usernametxt.Text+"'", con);
                    string check_user = Convert.ToString(cmd12.ExecuteScalar());
                    if (check_user == usernametxt.Text)
                    {
                    Label1.Visible = true;
                        x = 0;
                    }
                    else
                    {
                    Label1.Visible = false;
                    username.ForeColor = System.Drawing.Color.Black;
                        x = 1;
                }

                    
                }
                if (passtxt.Text != "")
                {
                    pass.ForeColor = System.Drawing.Color.Black;
                    x = 1;
                }
                if (phonetxt.Text != "")
                {
                    phone.ForeColor = System.Drawing.Color.Black;
                    x = 1;
                }
                if (dtext.Text != "")
                {
                    dob.ForeColor = System.Drawing.Color.Black;
                    x = 1;
                }
                if (citytxt.Text != "")
                {
                    city.ForeColor = System.Drawing.Color.Black;
                    x = 1;
                }
                if (addresstxt.Text != "")
                {
                    Address.ForeColor = System.Drawing.Color.Black;
                    x = 1;
                }
                if (nomineetxt.Text != "")
                {
                    nominee.ForeColor = System.Drawing.Color.Black;
                    x = 1;
                }
                if (nametxt.Text == "")
                {
                    name.ForeColor = System.Drawing.Color.Red;
                    x = 0;
                }
                if (usernametxt.Text == "")
                {
                    username.ForeColor = System.Drawing.Color.Red;
                    x = 0;
                }
                if (passtxt.Text == "")
                {
                    pass.ForeColor = System.Drawing.Color.Red;
                    x = 0;
                }
                if (phonetxt.Text == "")
                {
                    phone.ForeColor = System.Drawing.Color.Red;
                    x = 0;
                }
                if (dtext.Text == "")
                {
                    dob.ForeColor = System.Drawing.Color.Red;
                    x = 0;
                }
                if (citytxt.Text == "")
                {
                    city.ForeColor = System.Drawing.Color.Red;
                    x = 0;
                }
                if (addresstxt.Text == "")
                {
                    Address.ForeColor = System.Drawing.Color.Red;
                    x = 0;
                }
                if (nomineetxt.Text == "")
                {
                    nominee.ForeColor = System.Drawing.Color.Red;
                    x = 0;
                }
            if (x == 1)
            {
                //Response.Write("Good job");
                int nomid = 0;
                int addit = 0;
                int uid = 0;
                
                long phonenumber = Convert.ToInt64(phonetxt.Text);
                SqlCommand cmd1 = new SqlCommand("exec Insert_User_Info_1 '" + nametxt.Text + "','" + usernametxt.Text + "','" + passtxt.Text + "'," + phonenumber + ",'" + dtext.Text + "'", con);
                SqlCommand cmd2 = new SqlCommand("exec Insert_Address_Info  '" + addresstxt.Text + "','" + citytxt.Text + "'", con);
                SqlCommand cmd3 = new SqlCommand("Insert into Nominee_Detail(nominee_name) values('" + nomineetxt.Text + "')", con);
                string nom = "select max(nominee_id) from Nominee_Detail";
                SqlCommand cmd4 = new SqlCommand(nom, con);
                string add = "select max(address_id) from address_details";
                SqlCommand cmd5 = new SqlCommand(add, con);
                string udet = "select max(user_id) from user_details";//user details
                SqlCommand cmd6 = new SqlCommand(udet, con);
                string dt = DateTime.Now.ToString("dd/MM/yyyy");
                //string formattedDate = DateTime.Now.ToString("dd/MM/yyyy");
                //DateTime dt = DateTime.Parse(formattedDate);
                SqlCommand cmd1_2 = new SqlCommand("select policy_type_code from ref_policy_types where policy_type_name='" + DropDownList1.SelectedValue + "'", con);
                for (int i = 1; i <= 4; i++)
                {
                    if (i == 1)
                    {
                        cmd1.ExecuteNonQuery();
                        cmd2.ExecuteNonQuery();
                        cmd3.ExecuteNonQuery();
                    }
                    if (i == 2)
                    {
                        nomid = Convert.ToInt32(cmd4.ExecuteScalar());
                        addit = Convert.ToInt32(cmd5.ExecuteScalar());
                        uid = Convert.ToInt32(cmd6.ExecuteScalar());
                    }
                    if (i == 3)
                    {
                        string addingIds = "exec Insert_User_Info_2 " + nomid + "," +  addit + "," + uid;//adding nominee and addressid
                        SqlCommand cmd7 = new SqlCommand(addingIds, con);
                        cmd7.ExecuteNonQuery();
                    }
                    if (i == 4)
                    {
                        string policycode = Convert.ToString(cmd1_2.ExecuteScalar());
                        SqlCommand cmd1_1 = new SqlCommand("exec Insertion_User_Policy " + uid + "," + nomid + ",'" + DateTime.Now.Date + "','" + policycode + "','Inactive'", con);
                        cmd1_1.ExecuteNonQuery();
                    }
                }
                con.Close();
                Response.Redirect("Home.aspx");
            }



        }
    }
}