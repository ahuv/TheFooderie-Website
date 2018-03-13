using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submit_Click(object sender, EventArgs e)
    {

     // string val = System.Configuration.ConfigurationManager.ConnectionStrings["FooderieDBConnectionString1"].ConnectionString;
      //SqlConnection con2 = new SqlConnection(val);
     // string val2 = "select * from AUTH_USER where auth_username='" + name.Text + "' and auth_password='" + password.Text + "'";
     // SqlCommand cmd2 = new SqlCommand(val2, con2);
     // con2.Open();
    //  SqlDataReader dr = cmd2.ExecuteReader();
     // con2.Close();
      string authname = "admin";
      string authpwd = "admin123";
      if (name.Text.Equals(authname) && password.Text.Equals(authpwd))
      {
        Server.Transfer("~/Admin/AdminDefault.aspx");
      }
      

    }
    protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
    {

    }
    protected void LoginStatus1_LoggingOut(object sender, LoginCancelEventArgs e)
    {

    }
}