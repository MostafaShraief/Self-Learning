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
            public string Name { get; set; }

            public clsPerson(string Name)
            {
                this.Name = Name;
            }

            public void Hi()
            {
                Console.WriteLine("Hi " + Name);
            }

            public class clsAddress
            {
                public string City { get; set; }

                public clsAddress(string City)
                {
                    this.City = City;
                }

                public string PersonName(clsPerson person)
                {
                    return person.Name;
                }
            }
        }

        static void Main(string[] args)
        {
            clsPerson person = new clsPerson("Mostafa");
            person.Hi();

            clsPerson.clsAddress address = new clsPerson.clsAddress("Aleppo");
            Console.WriteLine(address.City);
            Console.WriteLine(address.PersonName(person));
        }
    }
}
