using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LabSixActual
{
    public partial class Servay_two : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            Session["FirstName"] = FirstName.Text;
            Session["LastName"] = LastName.Text;
            Session["Address"] = Address.Text;
            Session["Zip"] = Zip.Text;
            Session["Age"] = Age.Text;
            Session["Phone"] = Phone;
            Session["SurveyID"] = SurveyID.Text;
            Response.Redirect("Survey_two_response.aspx");
        }
    }
}