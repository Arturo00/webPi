﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PisoEstudiantes.Models.DTO
{
    public class User
    {

        #region protected properties
        protected string email = "";
        protected string name = "";
        protected string phone = "";
        protected string age = "";
        protected string leaseholder = "";
        protected string surname = "";
        protected string password = "";
        protected string gender = "";
        protected string username = "";

        #endregion

        #region Public properties
        public User()
        {

        }

        public User(string email, string password)
        {
            this.email = email;
            this.password = password;
        }
            public User(string email, string name, string phone, string age, string leaseholder, string surname, string password, string gender)
        {
            this.email = email;
            this.name = name;
            this.phone = phone;
            this.surname = surname;
            this.password = password;
            this.gender = gender;
            this.age = age;
            this.leaseholder = leaseholder;
        
        }
       

        public string Name
        {
            get { return name; }
            set { name = value; }
        }

        public string Surname
        {
            get { return surname; }
            set { surname = value; }
        }

        public string Email
        {
            get { return email; }
            set { email = value; }
        }

        public string Phone
        {
            get { return phone; }
            set { phone = value; }
        }

        public string Password
        {
            get { return password; }
            set { password = value; }
        }


        public string Gender
        {
            get { return gender; }
            set { gender = value; }
        }

        public string Age
        {
            get { return age; }
            set { age = value; }
        }

        public string Leaseholder
        {
            get { return leaseholder; }
            set { leaseholder = value; }
        }


        #endregion
    }
}