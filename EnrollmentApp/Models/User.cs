using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Web;



namespace EnrollmentApp.Models
{
    
    public class User
    {
        public int Id { get; set; }
        public string UserName { get; set; }
        public string Password { get; set; }
        public string FirstName { get; set; }
        public string LastName { get; set; }
        public string Question1ID { get; set; }
        public string Answer1 { get; set; }
        public string Question2ID { get; set; }
        public string Answer2 { get; set; }
        public string PhoneNumber { get; set; }
        public string Email { get; set; }
    }
}