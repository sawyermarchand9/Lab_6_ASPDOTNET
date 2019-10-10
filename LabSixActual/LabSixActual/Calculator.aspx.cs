using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LabSixActual
{
    public partial class Calculator : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        public void Add_Click(object sender, EventArgs e)
        {
            int firstNum = Convert.ToInt32(A.Text);
            int secondNum = Convert.ToInt32(B.Text);
            int sum = firstNum + secondNum;
            result.InnerText = Convert.ToString(sum);
        }

        protected void Subtract_Click(object sender, EventArgs e)
        {
            int firstNum = Convert.ToInt32(A.Text);
            int secondNum = Convert.ToInt32(B.Text);
            int difference = firstNum - secondNum;
            result.InnerText = Convert.ToString(difference);
        }

        protected void Multiply_Click(object sender, EventArgs e)
        {
            int firstNum = Convert.ToInt32(A.Text);
            int secondNum = Convert.ToInt32(B.Text);
            int mult = firstNum * secondNum;
            result.InnerText = Convert.ToString(mult);
        }

        protected void Divide_Click(object sender, EventArgs e)
        {
            int firstNum = Convert.ToInt32(A.Text);
            int secondNum = Convert.ToInt32(B.Text);
            int divide = firstNum / secondNum;
            result.InnerText = Convert.ToString(divide);
        }

        protected void Modulo_Click(object sender, EventArgs e)
        {
            int firstNum = Convert.ToInt32(A.Text);
            int secondNum = Convert.ToInt32(B.Text);
            int modulo = firstNum % secondNum;
            result.InnerText = Convert.ToString(modulo);
        }

        protected void Even_Click(object sender, EventArgs e)
        {
            int num = Convert.ToInt32(A.Text);
            if (num % 2 == 0)
                result.InnerText = "YES!";
            else
                result.InnerText = "NO!";
        }

        protected void BEven_Click(object sender, EventArgs e)
        {

        }
    }
}