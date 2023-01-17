using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DBMSProject
{
    class CostCalculation
    {
        private string Policy_Name;
        public CostCalculation(string Policy_Name)
        {
            this.Policy_Name = Policy_Name;
        }
        public string policyName { get { return Policy_Name; } set { Policy_Name = value; } }
    }
}