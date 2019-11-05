using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LabSixActual
{
    public partial class Survey_two_response : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SurveyID.Text = ConfigurationManager.AppSettings["SurveyID"];
            FavoriteBook.Text = (String)Session["FavoriteBook"];
            Why.Text = (String)Session["Why"];
            GeneraList.InnerHtml = (String)Session["GeneraList"];
            MostLiked.Text = (String)Session["MostLiked"];
            SurveySais.Text = (String)Session["SurveySais"];
            Improve.Text = (String)Session["Improve"];

        }
    }
}