using System;
using System.ComponentModel;
using System.Net.Http;
using System.Reflection.Emit;
using System.Security.Cryptography;


namespace Main
{
    internal class Program
    {
        public interface IPerson
        {
            string Name { get; set; }
            int ID { get; }

            void Print();
        }

        public interface IComunicate
        {
            string PhoneNumber { get; set; }
            void Call();
        }

        class clsPerson : IPerson, IComunicate
        {
            public string Name { get; set; }
            public int ID { get; set; }
            public string PhoneNumber { get; set; }

            public void Print()
            {
                Console.WriteLine(ID + Name);
            }

            public void Hi()
            {

            }

            public void Call()
            {

            }
        }

        static void Main(string[] args)
        {
            clsPerson person = new clsPerson();
            person.Print();
            person.Hi();
            person.Call();

            IPerson person2 = new clsPerson();
            person2.Print();
        }
    }
}
