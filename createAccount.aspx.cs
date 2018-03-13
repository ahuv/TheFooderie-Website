using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using MailMessage = System.Net.Mail.MailMessage;
using System.IO;


public partial class createAccount : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void submit_Click(object sender, EventArgs e)
    {
      string connString = ConfigurationManager.ConnectionStrings["FooderieDBConnectionString1"].ConnectionString;
      SqlConnection db = new SqlConnection(connString);
      
      string insertStr = "insert into [USER](username, psword, email, phone) values('"
          + name.Text + "','"
          + password.Text + "','" 
          + email.Text + "','" 
          + phoneNum.Text 
          + "')";
      SqlCommand insert = new SqlCommand(insertStr, db);
      db.Open();
      insert.ExecuteNonQuery();
      db.Close();

      //set information for email
      string fileName = Server.MapPath("~/App_Data/NewAccount.txt");
      string mailBody = File.ReadAllText(fileName);

      mailBody = mailBody.Replace("##Name##", name.Text);

      MailMessage mail = new MailMessage();
      mail.Subject = "Your account at The Fooderie";
      mail.Body = mailBody;
      mail.From = new MailAddress("thefooderie101@gmail.com");
      mail.To.Add(new MailAddress(email.Text));
      mail.ReplyToList.Add(new MailAddress(email.Text));

      SmtpClient smtp = new SmtpClient();
      smtp.Send(mail);

      //transfer user to email validation page
      Server.Transfer("~/createAccountValidate.aspx");
    }

    
}