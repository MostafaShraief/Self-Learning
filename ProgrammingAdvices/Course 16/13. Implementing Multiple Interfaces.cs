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

        class clsPerson : IPerson
        {
            public string Name { get; set; }
            public int ID { get; set; }

            public void Print()
            {
                Console.WriteLine(ID + Name);
            }

            public void Hi()
            {

            }
        }

        // https://youtu.be/s6cfVpbJkOA?si=jwtW8sE9b4vCdcVW

        static void Main(string[] args)
        {
            clsPerson person = new clsPerson();
            person.Print();
            person.Hi();

            IPerson person2 = new clsPerson();
            person2.Print();
        }
    }
}
