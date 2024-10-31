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

        public class clsDoctor : clsEmployee
        {

            public int Patients;

            public clsDoctor(int ID, string Name, string Department, double Salary, int Patients)
                : base (ID, Name, Department, Salary)
            {
                this.Patients = Patients;
            }

            public override void Print()
            {
                base.Print();
                Console.WriteLine(string.Format($"Patients: {Patients:N}"));
            }

            public new void Data()
            {
                Console.WriteLine(string.Format($"Patients: {Patients:N}"));
            }

        }

        static void Main(string[] args)
        {

            clsDoctor Mostafa = new clsDoctor(1, "Mostafa", "IT", 100, 100000);
            Mostafa.Print();
            Mostafa.Data();

            Console.WriteLine();

            clsPerson UpcastingMostafa = (clsPerson)Mostafa;
            UpcastingMostafa.Print();
            Console.WriteLine();
            UpcastingMostafa.Data();

            Console.WriteLine();

            // I noticed that I can upcasting to any super class in multi level inheritance.
            
            clsEmployee UpcastingEmployee = (clsEmployee)Mostafa;
            UpcastingEmployee.Print();
            Console.WriteLine();
            UpcastingEmployee.Data();

        }
    }
}

