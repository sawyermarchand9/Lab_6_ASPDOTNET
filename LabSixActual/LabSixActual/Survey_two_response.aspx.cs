﻿using System;
using System.Collections.Generic;
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
            firstName.InnerText = (String)Session["FirstName"];
        }
    }
}