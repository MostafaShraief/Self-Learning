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

            public clsPerson(int ID, string Name)
            {
                this.ID = ID;
                this.Name = Name;
                this.UserName = Name + "1234";
                this.Password = "12345678";
            }

            public static clsPerson Find(int ID)
            {

                if (ID == 10)
                    return new clsPerson(10, "Mostafa");
                else
                    return null;

            }

            public static clsPerson Find(string UserName, string Password)
            {

                if (UserName == "mostafamobile" && Password == "12345")
                    return new clsPerson(10, "Mostafa");
                else
                    return null;

            }

            public virtual void Print()
            {
                Console.WriteLine("ID: " + ID);
                Console.WriteLine("Name: " + Name);
            }

        }

        public class clsEmployee : clsPerson
        {

            public clsEmployee(int ID, string Name, string Department, double Salary)
                : base(ID, Name)
            {
                this.Department = Department;
                this.Salary = Salary;
            }

            public string Department { get; set; }

            public double Salary { get; set; }

            public void IncreaseSalaryBy(double Amount)
            {
                Salary += Amount;
            }

            public override void Print()
            {
                Console.WriteLine("ID: " + ID);
                Console.WriteLine("Name: " + Name);
                Console.WriteLine("Department: " + Department);
                Console.WriteLine("Salary: " + Salary);
                //base.Print();
            }

        }

        static void Main(string[] args)
        {

            clsEmployee Mostafa = new clsEmployee(1, "Mostafa", "IT", 100);
            Mostafa.Print();

        }
    }
}

