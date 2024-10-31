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

            public virtual void Data()
            {
                Console.WriteLine("UserName: " + UserName);
                Console.WriteLine("Password: " + Password);
            }

        }

        public class clsEmployee : clsPerson
        {
            public string Department { get; set; }
            public double Salary { get; set; }

            public clsEmployee(int ID, string Name, string Department, double Salary)
                : base(ID, Name)
            {
                this.Department = Department;
                this.Salary = Salary;
            }


            public void IncreaseSalaryBy(double Amount)
            {
                Salary += Amount;
            }

            public override void Print()
            {
                base.Print();
                Data();
                //base.Print();
            }

            public new void Data()
            {
                Console.WriteLine("Department: " + Department);
                Console.WriteLine(string.Format($"Salary: {Salary:C}"));
            }

        }

        public class clsStudent : clsPerson
        {

            public string School;
            public string Class;

            public clsStudent(int ID, string Name, string School, string Class)
                : base(ID, Name)
            {
                this.School = School;
                this.Class = Class;
            }

            public override void Print()
            {
                base.Print();
                Data();
            }

            public new void Data()
            {
                Console.WriteLine("School: " + School);
                Console.WriteLine("Class: " + Class);
            }

        }

        static void Main(string[] args)
        {

            Console.WriteLine("\nMostafa\n");

            clsEmployee Mostafa = new clsEmployee(1, "Mostafa", "IT", 100);
            Mostafa.Print();
            Mostafa.Data();

            Console.WriteLine();

            clsPerson UpcastingMostafa = (clsPerson)Mostafa;
            UpcastingMostafa.Print();
            Console.WriteLine();
            UpcastingMostafa.Data();

            Console.WriteLine("\nAhmed\n");

            clsStudent Ahmed = new clsStudent(1, "Ahmed", "Jareer", "Bac");
            Ahmed.Print();
            Console.WriteLine();
            Ahmed.Data();

            Console.WriteLine();

            clsPerson UpcastingAhmed = (clsPerson)Ahmed;
            UpcastingAhmed.Print();
            Console.WriteLine();
            UpcastingAhmed.Data();

        }

    }
}

