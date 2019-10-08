using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace LabSixActual
{
    public partial class Survay : System.Web.UI.Page
    {
        List<string> generas = new List<string>();

        protected void Page_Load(object sender, EventArgs e)
        {
            Resmess.Visible = false;
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            if (HORROR.Checked)
                generas.Add(HORROR.ID);
            if (ACTION.Checked)
                generas.Add(ACTION.ID);
            if (ROMANCE.Checked)
                generas.Add(ROMANCE.ID);


            foreach (var thing in generas)
            {
                generaList.InnerHtml += "<li>" + thing + "</li>";
            }

            favBook.InnerText += favoriteBook.Text;
            why.InnerText += favoriteWhy.Text;
            why.InnerText.Replace("me", "you");

            if (yes.Checked)
                readOften.InnerText = "It is good that you read often";
            else
                readOften.InnerText = "you should read more";

            whatToDo.InnerText = "Heres what you sugested for us to do: " + Improve.Text;
            Resmess.Visible = true;
        }
    }
}