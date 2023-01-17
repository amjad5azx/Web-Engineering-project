using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace DBMSProject
{
    class Life : Cost
    {
        public override void ProcessRequest(CostCalculation cost, int _uid)
        {
            if (cost.policyName.ToLower() == "life")
            {
                SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-8FPEVVO;Initial Catalog=Insurance;Integrated Security=True");
                con.Open();
                int sumAssure = 500000;
                int premiumAmount = 20000;
                SqlCommand cmd3 = new SqlCommand("exec Policy_Activation " + _uid + "," + sumAssure + "," + premiumAmount, con);
                cmd3.ExecuteNonQuery();
                con.Close();
            }
        }
    }
}