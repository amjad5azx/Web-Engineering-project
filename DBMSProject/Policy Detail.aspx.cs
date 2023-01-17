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
    public partial class Policy_Detail : System.Web.UI.Page
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
                Label3.Visible = false;
                int uid = 0;
                string pol_name = "select ref_policy_types.policy_type_name from user_details inner join user_policies on user_details.user_id=user_policies.user_id inner join ref_policy_types on ref_policy_types.policy_type_code=user_policies.policy_type_id where user_details.username='" + Session["id"].ToString() + "'";
                string pre_amount = "select premium_amount from user_details where username='" + Session["id"].ToString() + "'";
                string sum = "select Sum_Assured from user_details where username='" + Session["id"].ToString() + "'";
                string stat = "select user_policies.policy_status from user_policies inner join user_details on user_details.user_id=user_policies.user_id where user_details.username='" + Session["id"].ToString() + "'";
                con.Open();
                SqlCommand cmd = new SqlCommand(pol_name, con);
                SqlCommand cmd2 = new SqlCommand(pre_amount, con);
                SqlCommand cmd3 = new SqlCommand(sum, con);
                SqlCommand cmd3_1 = new SqlCommand("select user_id from user_details where username='"+ Session["id"].ToString() + "'", con);
                SqlCommand cmd5 = new SqlCommand(stat, con);
                string policy_name = Convert.ToString(cmd.ExecuteScalar());
                string premium_amount = Convert.ToString(cmd2.ExecuteScalar());
                string sum_assured_amount = Convert.ToString(cmd3.ExecuteScalar());
                string pstatus = Convert.ToString(cmd5.ExecuteScalar());
                

                
                string payments = "";
                for(int i = 1; i <= 2; i++)
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
                nametct.Text = policy_name;
                if (premium_amount == "")
                {
                    addresstxt.Text = "Wait for policy Approval";
                    Label2.Text = "Wait for policy Approval";
                    nomineetxt.Text = "Wait for policy Approval";
                    status.Text = pstatus;
                    Button1.Visible = false;
                    Button2.Visible = false;
                }
                else
                {
                    addresstxt.Text = premium_amount;
                    Label2.Text = sum_assured_amount;
                    nomineetxt.Text = payments;
                    status.Text = pstatus;
                    Button1.Visible = true;
                    if (sum_assured_amount == payments)
                    {
                        Button1.Visible = false;
                        
                        SqlCommand cmd23 = new SqlCommand("select user_id from Claim_Detials where user_id=" + uid,con);
                        int check_uid = Convert.ToInt32(cmd23.ExecuteScalar());
                        if (check_uid == uid)
                        {
                            Label3.Visible = true;
                            Button2.Visible = false;
                        }
                        else
                        {
                            Label3.Visible = false;
                            Button2.Visible = true;
                        }
                    }
                    else
                    {
                        Button1.Visible = true;
                        Button2.Visible = false;
                    }
                }

                con.Close();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int p_amount = 0;
            int uid = 0;
            int p_no = 0;
            SqlCommand cmd = new SqlCommand("select premium_amount from user_details where username='" + Session["id"].ToString() + "'",con);
            SqlCommand cmd2 = new SqlCommand("select user_id from user_details where username='" + Session["id"].ToString() + "'", con);
            con.Open();
            for(int i = 1; i <= 3; i++)
            {
                if (i == 1)
                {
                    p_amount = Convert.ToInt32(cmd.ExecuteScalar());
                    uid = Convert.ToInt32(cmd2.ExecuteScalar());
                }
                if (i == 2)
                {
                    SqlCommand cmd3 = new SqlCommand("select policy_no from user_policies where user_id="+uid,con);
                    p_no = Convert.ToInt32(cmd3.ExecuteScalar());
                }
                if (i == 3)
                {
                    SqlCommand cmd4 = new SqlCommand("exec Payments "+uid+","+p_no+","+p_amount,con);
                    cmd4.ExecuteNonQuery();
                }
            }
            Response.Redirect("Policy Detail.aspx");
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int uid = 0;
            int nomid = 0;
            int pre_amount = 0;
            double _pay = 0;
            string user = "";
            SqlCommand cmd1 = new SqlCommand("select Sum_Assured from user_details where username='" + Session["id"].ToString()+"'",con);
            SqlCommand cmd2 = new SqlCommand("select user_id from user_details where username='" + Session["id"].ToString() + "'",con);
            SqlCommand cmd2_1 = new SqlCommand("select nominee_id from user_details where username='" + Session["id"].ToString() + "'", con);

            con.Open();
            
            for(int i = 0; i <= 2; i++)
            {
                if (i == 0)
                {
                    uid = Convert.ToInt32(cmd2.ExecuteScalar());
                    nomid = Convert.ToInt32(cmd2_1.ExecuteScalar());
                }
                if (i == 1)
                {
                    string pay = "select sum(policy_payments.amount) from policy_payments inner join user_details on policy_payments.user_id=user_details.user_id where policy_payments.user_id=" + uid;
                    SqlCommand cmd3 = new SqlCommand(pay, con);
                    
                    pre_amount = Convert.ToInt32(cmd1.ExecuteScalar());
                    _pay = Convert.ToDouble(cmd3.ExecuteScalar());
                    //SqlCommand cmd4 = new SqlCommand("select username from user_details where username='" + Session["id"].ToString() + "'", con);
                    //user = Convert.ToString(cmd4.ExecuteScalar());
                }
                if (i == 2)
                {
                    SqlCommand cmd6 = new SqlCommand("exec Claiming_Policy " + uid + "," + nomid + ",'" + Session["id"].ToString() + "'," + _pay, con);
                    SqlCommand cmd7 = new SqlCommand("Update user_policies set policy_status='Claimed' where user_id=" + uid,con);
                    cmd7.ExecuteNonQuery();
                    cmd6.ExecuteNonQuery();
                }
                if (i == 3)
                {
                   
                }
            }
            Response.Redirect("Policy Detail.aspx");
            con.Close();
        }
    }
}