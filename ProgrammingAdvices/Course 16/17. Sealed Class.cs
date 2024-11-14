using System;
using System.ComponentModel;
using System.Net.Http;
using System.Reflection.Emit;
using System.Security.Cryptography;


namespace Main
{
    internal class Program
    {

        public sealed class clsPerson
        {
            public int ID { get; set; }
            public string Name { get; set; }
            public string UserName { get; set; }
            public string Password { get; set; }
        }
        // Error Inheritance From Seled Class 'clsPerson'.
        public class clsEmployee /*: clsPerson*/
        {
            public string Department { get; set; }

            public double Salary { get; set; }

            public void IncreaseSalaryBy(double Amount)
            {
                Salary += Amount;
            }
        }

        static void Main(string[] args)
        {
            clsEmployee Mostafa = new clsEmployee();

            //Mostafa.Name = "Mostafa";
            Mostafa.Salary = 1000;
        }
    }
}

