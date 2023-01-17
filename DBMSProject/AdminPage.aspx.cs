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
    public partial class AdminPage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-8FPEVVO;Initial Catalog=Insurance;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["id"] == null)
            {
                Response.Redirect("Login.aspx");
            }
            nametct.Visible = false;
            addresstxt.Visible = false;
            nomineetxt.Visible = false;
            status.Visible = false;
            Label3.Visible = false;
            Label1.Visible = false;
        }

        protected void SignOut_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Login.aspx");
        }

        protected void approvePolicy_Click(object sender, EventArgs e)
        {
            if (usertxt.Text == "")
            {
                user.ForeColor = System.Drawing.Color.Red;
                nametct.Visible = false;
                addresstxt.Visible = false;
                nomineetxt.Visible = false;
                status.Visible = false;
                Label3.Visible = false;
                Label1.Visible = false;
            }
            else
            {
                user.ForeColor = System.Drawing.Color.Black;
                con.Open();
                SqlCommand _cmd = new SqlCommand("select username from user_details where username='" + usertxt.Text + "'", con);
                string uName = Convert.ToString(_cmd.ExecuteScalar());
                if (uName == usertxt.Text)
                {
                    int uid = 0;
                    string pol_name = "select ref_policy_types.policy_type_name from user_details inner join user_policies on user_details.user_id=user_policies.user_id inner join ref_policy_types on ref_policy_types.policy_type_code=user_policies.policy_type_id where user_details.username='" + usertxt.Text + "'";
                    string pre_amount = "select premium_amount from user_details where username='" + usertxt.Text + "'";
                    string sum = "select Sum_Assured from user_details where username='" + usertxt.Text + "'";
                    string stat = "select user_policies.policy_status from user_policies inner join user_details on user_details.user_id=user_policies.user_id where user_details.username='" + usertxt.Text + "'";
                    SqlCommand cmd = new SqlCommand(pol_name, con);
                    SqlCommand cmd2 = new SqlCommand(pre_amount, con);
                    SqlCommand cmd3 = new SqlCommand(sum, con);
                    SqlCommand cmd3_1 = new SqlCommand("select user_id from user_details where username='" + usertxt.Text + "'", con);
                    SqlCommand cmd5 = new SqlCommand(stat, con);
                    string policy_name = Convert.ToString(cmd.ExecuteScalar());
                    string premium_amount = Convert.ToString(cmd2.ExecuteScalar());
                    string sum_assured_amount = Convert.ToString(cmd3.ExecuteScalar());
                    string pstatus = Convert.ToString(cmd5.ExecuteScalar());



                    string payments = "";
                    for (int i = 1; i <= 2; i++)
                    {
                        if (i == 1)
                        {
                            uid = Convert.ToInt32(cmd3_1.ExecuteScalar());
                        }
                        if (i == 2)
                        {
                            //yaha kaam kr raha hu
                            string pay = "select sum(policy_payments.amount) from policy_payments inner join user_details on policy_payments.user_id=user_details.user_id where policy_payments.user_id=" + uid;
                            SqlCommand cmd4 = new SqlCommand(pay, con);
                            payments = Convert.ToString(cmd4.ExecuteScalar());
                            if (payments == "")
                            {
                                payments = "0";
                            }
                        }
                    }
                    nametct.Visible = true;
                    addresstxt.Visible = true;
                    nomineetxt.Visible = true;
                    status.Visible = true;
                    Label3.Visible = true;
                    nametct.Text = policy_name;
                    status.Text = pstatus;
                    if (premium_amount == "")
                    {
                        addresstxt.Text = "Wait for policy Approval";
                        Label3.Text = "Wait for policy Approval";
                        nomineetxt.Text = "Wait for policy Approval";

                    }
                    else
                    {
                        addresstxt.Text = premium_amount;
                        Label3.Text = sum_assured_amount;
                        nomineetxt.Text = payments;
                        //status.Text = pstatus;
                    }

                    con.Close();
                }
                else
                {
                    Label1.Visible = true;
                }
                con.Close();
            }
        }
            
    }
}