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
            // liked generas -- fix the multiple issue
            if (HORROR.Checked)
                generas.Add(HORROR.ID);
            if (ACTION.Checked)
                generas.Add(ACTION.ID);
            if (ROMANCE.Checked)
                generas.Add(ROMANCE.ID);
            
            // favorite genera
            if (Hrr.Checked)
                favGen.InnerText = "You like Horror the most";
            if (Act.Checked)          
                favGen.InnerText = "You like Action the most";
            if (Rom.Checked)          
                favGen.InnerText = "You like Romance the most";

            // genera list 
            generaList.InnerHtml = ""; // reset list items
            foreach (var thing in generas)
            {
                generaList.InnerHtml += "<li>" + thing + "</li>";
            }

            favBook.InnerText = "Your favorite Book is " + favoriteBook.Text;
            why.InnerText ="You like this Book because " + favoriteWhy.Text;
            why.InnerText.Replace("me", "you");

            if (yes.Checked)
                readOften.InnerText = "It is good that you read often";
            else
                readOften.InnerText = "you should read more";

            like.InnerHtml = "You thought the survay was " + how_you_like.Value;
            whatToDo.InnerText = "Heres what you sugested for us to do: " + Improve.Text;
            Resmess.Visible = true;

        }
    }
}