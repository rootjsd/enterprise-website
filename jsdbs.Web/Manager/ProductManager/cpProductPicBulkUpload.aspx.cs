﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace jsbestop.Web.Manager.ProductManager
{
    public partial class cpProductPicBulkUpload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            hidmenu.Value = Request.QueryString["id"].ToString();
           

        }
    }
}