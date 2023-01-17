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
    public partial class AgentPage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-8FPEVVO;Initial Catalog=Insurance;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Visible = false;
            if (Session["id"] == null)
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void approvePolicy_Click(object sender, EventArgs e)
        {
            SqlCommand cmd = new SqlCommand("select username from user_details where username='"+usertxt.Text+"'",con);
            con.Open();
            string uname = Convert.ToString(cmd.ExecuteScalar());
            if (usertxt.Text == "")
            {
                user.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                user.ForeColor = System.Drawing.Color.Black;
                if (uname == usertxt.Text)
                {
                    int _uid = 0;
                    //int sumAssure = 0;
                    //int premiumAmount = 0;
                    string policy_name = "exec Fetching_PolicyName_For_Activation '" + usertxt.Text + "'";
                    string p_name = "";
                    //Response.Write("Found");
                    Label1.Visible = false;

                    for (int i = 1; i <= 2; i++)
                    {
                        if (i == 1)
                        {
                            SqlCommand cmd1 = new SqlCommand("exec Fetching_UserId_For_Activation '" + usertxt.Text + "'", con);
                            _uid = Convert.ToInt32(cmd1.ExecuteScalar());
                            SqlCommand cmd2 = new SqlCommand(policy_name, con);
                            p_name = Convert.ToString(cmd2.ExecuteScalar());
                        }
                        if (i == 2)
                        {
                            Cost h = new Health();
                            Cost l = new Life();
                            h.setSuccessor(l);
                            CostCalculation c = new CostCalculation(p_name);
                            h.ProcessRequest(c, _uid);
                        }
                    }
                    Response.Redirect("AgentPage.aspx");
                }
                else
                {
                    Label1.Visible = true;
                }
            }
            
        }

        protected void SignOut_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
            Response.Redirect("Login.aspx");
        }
    }
}