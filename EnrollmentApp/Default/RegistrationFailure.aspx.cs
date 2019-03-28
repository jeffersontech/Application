using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace EnrollmentApp.Default
{
    public partial class RegistrationFailure : System.Web.UI.Page
    {
        public string senderemail;

        protected void Page_Load(object sender, EventArgs e)
        {
            Page previouspage = new Page();
            senderemail = ((TextBox)previouspage.FindControl("txtEmail")).ToString();
            string emailBody = "The user try to login but the login failed" + senderemail;

            SendEmail(emailBody);
        }

        public static void SendEmail(string emailBody)
        {
            MailMessage mailMessage = new MailMessage("southwestmany@gmail.com", "janu.vasan4@gmail.com");
            mailMessage.Subject = "Enrollment Application Login failed";
            mailMessage.Body = emailBody;

            SmtpClient smtpClient = new SmtpClient("smtp.gmail.com", 587);
            smtpClient.Credentials = new System.Net.NetworkCredential()
            {
                UserName = "southwestmany@gmail.com",
                Password = "#Mar2019"
            };

            smtpClient.EnableSsl = true;

            smtpClient.Send(mailMessage);

        }
    }
}