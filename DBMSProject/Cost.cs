using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace DBMSProject
{
    abstract class Cost
    {
        protected Cost successor;
        public void setSuccessor(Cost successor)
        {
            this.successor = successor;
        }
        public abstract void ProcessRequest(CostCalculation cost, int uid);
    }
}