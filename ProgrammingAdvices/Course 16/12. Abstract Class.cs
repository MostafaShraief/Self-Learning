using System;
using System.ComponentModel;
using System.Net.Http;
using System.Reflection.Emit;
using System.Security.Cryptography;


namespace Main
{
    internal class Program
    {

        public abstract class clsPerson
        {
            public int ID { get; set; }
            public string Name { get; set; }

            public clsPerson(int ID, string Name)
            {
                this.ID = ID;
                this.Name = Name;
            }

            public abstract void Print();

            protected virtual void Data()
            {
                Console.WriteLine("ID: " + ID);
                Console.WriteLine("Name: " + Name);
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
                base.Data();
                Console.WriteLine("Department: " + Department);
                Console.WriteLine("Salary: " + Salary);
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

            public override /*override keyword is important*/ void Print()
            {
                base.Data();
                Console.WriteLine("School: " + School);
                Console.WriteLine("Class: " + Class);
            }
        }

        // Remember : the mothod in derived class that inherite the abstract method 
        // must have 'override' keyword before it.

        static void Main(string[] args)
        {
            clsEmployee employee = new clsEmployee(1, "Mostafa", "IT", 1000);
            employee.Print();

            clsStudent student = new clsStudent(2, "Ahmed", "Jareer", null);
            student.Print();
        }

    }
}

