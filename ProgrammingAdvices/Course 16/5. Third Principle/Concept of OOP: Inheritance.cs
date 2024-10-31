using System;
using System.ComponentModel;
using System.Net.Http;
using System.Reflection.Emit;
using System.Security.Cryptography;


namespace Main
{
    internal class Program
    {

        public class clsPerson
        {

            public int ID { get; set; }
            public string Name { get; set; }
            public string UserName {  get; set; }
            public string Password { get; set; }

            //public clsPerson(int ID, string Name)
            //{
            //    this.ID = ID;
            //    this.Name = Name;
            //}

            //public static clsPerson Find(int ID)
            //{

            //    if (ID == 10)
            //        return new clsPerson(10, "Mostafa";
            //    else
            //        return null;

            //}

            //public static clsPerson Find(string UserName, string Password)
            //{

            //    if (UserName == "mostafamobile" && Password == "12345")
            //        return new clsPerson(10, "Mostafa";
            //    else
            //        return null;

            //}

        }

        public class clsEmployee : clsPerson
        {

            public string Department { get; set; }

            public double Salary { get; set; }

            public void IncreaseSalaryBy(double Amount)
            {
                Salary += Amount;
            }

        }

        // Notice that super/base class should have higher access modifier than
        // sub/derived class.

        static void Main(string[] args)
        {

            clsEmployee Mostafa = new clsEmployee();

            Mostafa.Name = "Mostafa";
            Mostafa.Salary = 1000;
        }
    }
}

