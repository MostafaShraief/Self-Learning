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
            public string Name { get; set; }

            public clsPerson(string Name)
            {
                this.Name = Name;
            }

            public void Hi(string City)
            {
                Console.WriteLine("Hi " + Name);

                clsAddress address = new clsAddress(City);
                Console.WriteLine("City: " + address.City);
            }
        }

        public class clsAddress
        {
            public string City { get; set; }

            public clsAddress(string City)
            {
                this.City = City;
            }
        }

        static void Main(string[] args)
        {
            clsPerson person = new clsPerson("Mostafa");
            person.Hi("Aleppo");
        }
    }
}
