using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using MailMessage = System.Net.Mail.MailMessage;
using System.IO;

public partial class Demos_Email : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
      
    }
    protected void submit_Click(object sender, EventArgs e)
    {
      //set the cookie to hold the user's name
      HttpCookie cookie = new HttpCookie("UserName");
      cookie.Value = name.Text;
      cookie.Expires = DateTime.Now.AddDays(2);
      Response.Cookies.Add(cookie);

      //set information for email
      string fileName = Server.MapPath("~/App_Data/ContactForm.txt");
      string mailBody = File.ReadAllText(fileName);

      mailBody = mailBody.Replace("##Name##", name.Text);
      mailBody = mailBody.Replace("##Email##", email.Text);
      mailBody = mailBody.Replace("##Message##", message.Text);

      MailMessage mail = new MailMessage();
      mail.Subject = "Response from web site";
      mail.Body = mailBody;
      mail.From = new MailAddress(email.Text);
      mail.To.Add(new MailAddress("thefooderie101@gmail.com"));
      mail.ReplyToList.Add(new MailAddress(email.Text));

      SmtpClient smtp = new SmtpClient();
      smtp.Send(mail);

      //clear the form
      name.Text = "";
      email.Text = "";
      subject.Text = "";
      message.Text = "";

      //transfer user to email validation page
      Server.Transfer("~/EmailValidate.aspx");

      


    }
}