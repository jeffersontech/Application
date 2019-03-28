using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using EnrollmentApp.Models;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Text;
using System.Web.Security;
using System.Net.Mail;

namespace EnrollmentApp.Default
{
    public partial class Register : System.Web.UI.Page
    {
        public string senderemail;
        public bool usernamevalid = true;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtFirstName.Focus();
                string CS = ConfigurationManager.ConnectionStrings["EnrollmentAppContext"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS))
                {

                    SqlDataAdapter da = new SqlDataAdapter("Select * from [UserQuestions]", con);

                    DataSet ds = new DataSet();
                    da.Fill(ds);

                    ddlQuestion1.DataSource = ds;
                    ddlQuestion1.DataBind();

                    ddlQuestion2.DataSource = ds;
                    ddlQuestion2.DataBind();

                    ListItem li = new ListItem("Select", "-1");
                    ddlQuestion1.Items.Insert(0, li);
                    ddlQuestion2.Items.Insert(0, li);

                }

            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (!txtFirstName.Text.All(c => Char.IsLetter(c)))
            {
                reqFirstName.ErrorMessage = "First Name cannot contain numbers or special characters";
            }
            if (!txtLastName.Text.All(c => Char.IsLetter(c)))
            {
                reqLastName.ErrorMessage = "Last Name cannot contain numbers or special characters";
            }
            if (Page.IsValid && usernamevalid)
            {
                string CS1 = ConfigurationManager.ConnectionStrings["EnrollmentAppContext"].ConnectionString;
                using (SqlConnection con = new SqlConnection(CS1))
                {
                    SqlCommand cmd1 = new SqlCommand("Insert into [User] values(@UserName,@Password,@FirstName,@LastName,@Question1ID,@Answer1,@Question2ID,@Answer2,@PhoneNumber,@Email)", con);
                    con.Open();

                    string UserName = "user_" + txtFirstName.Text.Substring(0, 3);
                    cmd1.Parameters.AddWithValue("@UserName", UserName);

                    string password = Membership.GeneratePassword(8, 3);
                    cmd1.Parameters.AddWithValue("@Password", password);
                    cmd1.Parameters.AddWithValue("@FirstName", txtFirstName.Text);
                    cmd1.Parameters.AddWithValue("@LastName", txtLastName.Text);
                    cmd1.Parameters.AddWithValue("@Question1ID", ddlQuestion1.SelectedItem.Value);
                    cmd1.Parameters.AddWithValue("@Answer1", txtAnswer1.Text);
                    cmd1.Parameters.AddWithValue("@Question2ID", ddlQuestion1.SelectedItem.Value);
                    cmd1.Parameters.AddWithValue("@Answer2", txtAnswer2.Text);
                    cmd1.Parameters.AddWithValue("@PhoneNumber", txtPhoneNo.Text);
                    cmd1.Parameters.AddWithValue("@Email", txtEmail.Text);

                    int total = cmd1.ExecuteNonQuery();

                    if (total == 1)
                    {
                        string senderemail = txtEmail.Text;
                        string emailBody = "UserName:" + UserName + "<br/>" + "Password" + password;
                        SendEmail(emailBody, senderemail);
                        Response.Redirect("RegistrationSucess.aspx");
                    }
                    else
                    {
                        Response.Redirect("RegistrationFailure.aspx");
                    }


                }
            }

        }
    
        public static void SendEmail(string emailBody, string senderemail)
        {
            MailMessage mailMessage = new MailMessage("southwestmany@gmail.com", senderemail);
            mailMessage.Subject = "Enrollment Application Login Information";
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

        protected void txtUserName_TextChanged(object sender, EventArgs e)
        {

            string CS = ConfigurationManager.ConnectionStrings["EnrollmentAppContext"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("Select * from [User] where UserName=@UserName", con);
                cmd.Parameters.AddWithValue("@UserName", txtUserName.Text);

                con.Open();

                SqlDataReader rdr = cmd.ExecuteReader();
                if(rdr.HasRows)
                {
                    //reqUserName.ControlToValidate = txtUserName.Text;
                    usernamevalid = false;
                    reqUserName.IsValid = false;
                    reqUserName.ErrorMessage = "User Name already exists";
                    
                }
                else
                {
                    txtEmail.Focus();
                }
            }
        }
    }
}


