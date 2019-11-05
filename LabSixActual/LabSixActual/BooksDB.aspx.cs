using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

namespace LabSixActual
{
    public partial class BooksDB : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // load in books
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

        protected void FileUpload1_Load(object sender, EventArgs e)
        {
            try
            {
                string fileName = FileUpload1.FileName;
                FileInfo file = new FileInfo(fileName);
                file.CopyTo(@"C:\Users\marchandsaw\Source\Repos\sawyermarchand9\Lab_6_ASPDOTNET\LabSixActual\LabSixActual\Content\");
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error Message: "+ ex.Message);
            }
        }

        protected void Remove_Click(object sender, EventArgs e)
        {
            XMLAccess xmlAccess = new XMLAccess();

            
            if (xmlAccess.RemoveNode(BookName.Text))
            {
                Response.Write("removed");
            }
            else
            {
                Response.Write("DNE");
            }
        }
    }
}