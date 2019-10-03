using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace LabSixActual
{
    public partial class ExamplePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Submit_Click(object sender, EventArgs e)
        {
            display.Visible = true;
            string file = FileToCopy.FileName;
            FileInfo fileInfo = new FileInfo(file);
            string fileName = fileInfo.Name;
            
            string filePath = @"C:\Users\marchandsaw\Desktop\" + fileInfo.FullName;
            display.Text = filePath;
            string fileParent = fileName.Replace(fileName, "");
            
            string newPath = @"C:\Users\marchandsaw\Desktop\NewFolder";

            if (Directory.Exists(fileParent))
            {
                if (File.Exists(fileName))
                {
                    File.Copy(fileName, newPath, true);
                }
                else
                {
                    display.Text = "cannot find " + fileName;
                }
            }
            else
            {
                display.Text = "cannot find " + fileParent;
            }
        }
    }
}