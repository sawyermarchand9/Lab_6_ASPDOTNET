using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml;
using System.Collections;
using System.Data;
using System.Configuration;

/// <summary>
/// Summary description for XMLAccess
/// </summary>

public class XMLAccess
{
    private string xmlPath
    {
        get
        {
            return ConfigurationManager.AppSettings["XMLDBPath"];
        }
    }

    public XMLAccess()
    {

    }

    public bool AddNode(Dictionary<string, string> Book)
    {
        try
        {
            XmlDocument xmlDocument = new XmlDocument();
            xmlDocument.Load(xmlPath);

            //Create a new student node with XmlNode class
            XmlNode newStudent = xmlDocument.CreateNode(XmlNodeType.Element, "Book", null);

            //Creat new student info nodes with XmlElement class
            foreach (KeyValuePair<string, string> entry in Book)
            {
                XmlElement node = xmlDocument.CreateElement(entry.Key.ToString());
                node.InnerText = entry.Value.ToString();

                //add nodes to the new student node
                newStudent.AppendChild(node);
            }


            //Add the node to the document.
            XmlNode root = xmlDocument.DocumentElement;
            root.AppendChild(newStudent);

            xmlDocument.Save(xmlPath);

            return true;
        }
        catch
        {
            return false;
        }
    }

    public string RemoveNode(String name)
    {
        XmlDocument xmlDocument = new XmlDocument();
        xmlDocument.Load(xmlPath);

        XmlNode node = xmlDocument.SelectSingleNode(String.Format("Students/Student[name='{0}']", name));
        if (node != null)
        {
            node.ParentNode.RemoveChild(node);

            xmlDocument.Save(xmlPath);
            string retMsg = String.Format("Student {0} is removed from the xml database.", name);
            return retMsg;
        }
        else
        {
            string notFound = String.Format("Student {0} is not in the xml database.", name);
            return notFound;
        }

    }

    public string SearchNode(String name)
    {
        XmlDocument xmlDocument = new XmlDocument();
        xmlDocument.Load(xmlPath);

        XmlNode node = xmlDocument.SelectSingleNode(String.Format("Students/Student[name='{0}']", name));
        if (node != null)
            return node.OuterXml.ToString();
        else
        {
            string notFound = String.Format("Student {0} is not in the xml database.", name);
            return notFound;
        }

    }

    public DataSet RetrieveNodes()
    {
        DataSet ds = new DataSet();
        ds.ReadXml(xmlPath);

        return ds;
    }
}
