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
        
        
        protected void Page_Load(object sender, EventArgs e)
        {
            Resmess.Visible = false;
        }

        #region Method for getting users information
        protected void Submit_Click(object sender, EventArgs e)
        {

            // gets favorite book and sends it to result div
            favBook.InnerText = "Your favorite Book is " + favoriteBook.Text;


            // gets why this is the users favorite book
            why.InnerText ="You like this Book because " + favoriteWhy.Text;


            // gets list of generas and sends to result div 
            generaList.InnerHtml = "";
            foreach (ListItem item in generas.Items)
            {
                if (item.Selected)
                    generaList.InnerHtml += "<li>" + item + "</li>"; 
            }


            // most liked
            if (mostLiked.SelectedItem != null)
                favGen.InnerText = "You like " + mostLiked.SelectedItem.Text + " the most";


            // do you like reading?
            if(likeReading.SelectedItem != null)
                readOften.InnerText = "Do you like to read often? " + likeReading.SelectedItem.Text;


            // survay thoughts
            like.InnerHtml = "You thought the survay was " + how_you_like.Value;


            // suggestion 
            whatToDo.InnerText = "Heres what you sugested for us to do: " + Improve.Text;

           
            Resmess.Visible = true;
            
        }
        #endregion

        protected void ShowOnPage_Click(object sender, EventArgs e)
        {
            // Session information to be sent
            Session["FavoriteBook"] = favoriteBook.Text;
            Session["Why"] = favoriteWhy.Text;
            Session["GeneraList"] = generaList.InnerHtml;
            Session["MostLiked"] = mostLiked.SelectedItem.Value;
            Session["SurveySais"] = how_you_like.Value;
            Session["Improve"] = Improve.Text;
            Response.Redirect("Survey_two_response.aspx");
        }
    }
}