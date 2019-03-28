using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data.Entity;
using EnrollmentApp.Models;

namespace EnrollmentApp
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            txtUserName.Focus();
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            EnrollmentAppContext employeeContext = new EnrollmentAppContext();
            IQueryable<User> query = employeeContext.User.Where(user => user.UserName == txtUserName.Text && user.Password == txtPassword.Text);
            if (query != null)
            {
                FormsAuthentication.RedirectFromLoginPage(txtUserName.Text, false);
            }
            else
            {
                lblMessage.Text = "Login Failed.Please enter valid to Username and/or password";
                lblMessage.ForeColor = System.Drawing.Color.Red;

            }                         

        }

        
    }
}