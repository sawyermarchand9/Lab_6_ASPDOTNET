using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data; 

namespace LabSixActual
{
    public partial class BooksDB : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddBook_Click(object sender, EventArgs e)
        {
            XMLAccess xmlAccess = new XMLAccess();

            Dictionary<string, string> books = new Dictionary<string, string>();
            books.Add("Title", title.Text);
            books.Add("Author", Author.Text);
            
            if (xmlAccess.AddNode(books))
            {
                Response.Write(title.Text + " is added to xml database.");
            }
            else
            {
                Response.Write("Can not add the new student.");
            }
        }
    }
}