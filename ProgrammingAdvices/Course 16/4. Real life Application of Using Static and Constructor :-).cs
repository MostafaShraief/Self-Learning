using System;
using System.ComponentModel;
using System.Net.Http;
using System.Reflection.Emit;
using System.Security.Cryptography;


namespace Main
{
    internal class Program
    {

        class clsPerson
        {

            public int ID { get; set; }
            public string Name { get; set; }
            public double Salary { get; set; }
            public string UserName {  get; set; }
            public string Password { get; set; }

            public clsPerson(int ID, string Name, double Salary)
            {
                this.ID = ID;
                this.Name = Name;
                this.Salary = Salary;
            }

            public static clsPerson Find(int ID)
            {

                if (ID == 10)
                    return new clsPerson(10, "Mostafa", 100.0);
                else
                    return null;

            }

            public static clsPerson Find(string UserName, string Password)
            {

                if (UserName == "mostafamobile" && Password == "12345")
                    return new clsPerson(10, "Mostafa", 100.0);
                else
                    return null;

            }

        }

        static void Main(string[] args)
        {

            clsPerson Mostafa = new clsPerson(10, "Mostafa Shraief", 100);

            Console.WriteLine(Mostafa.Name);

            clsPerson p = clsPerson.Find(100);

            if (p != null)
                Console.WriteLine(p.Name);

            clsPerson p2 = clsPerson.Find("mostafamobile", "12345");

            if (p2 != null)
                Console.WriteLine(p2.Name);
        }
    }
}

