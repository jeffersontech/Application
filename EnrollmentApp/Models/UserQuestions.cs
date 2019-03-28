using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace EnrollmentApp.Models
{
    public class UserQuestions
    {
        [Key]
        public int QuestionID { get; set; }
        public string Questions { get; set; }

    }
}