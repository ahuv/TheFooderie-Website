﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class EmailValidate : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      HttpCookie cookie = Request.Cookies["UserName"];
      if (cookie != null)
      {
        Label1.Text = cookie.Value + ",";
        //Response.Write("Welcome " + cookie.Value + "!");
      }
    }
}