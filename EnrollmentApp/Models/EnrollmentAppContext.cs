using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;


namespace EnrollmentApp.Models
{
    
    public class EnrollmentAppContext : DbContext
    {
        public EnrollmentAppContext() : base("EnrollmentApp")
        {
        }

        public DbSet<User> User { get; set; }
        public DbSet<UserQuestions> UserQuestions { get; set; }
    }
}