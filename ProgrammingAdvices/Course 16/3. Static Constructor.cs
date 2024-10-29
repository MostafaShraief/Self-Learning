using System;
using System.ComponentModel;
using System.Net.Http;
using System.Reflection.Emit;
using System.Security.Cryptography;


namespace Main
{
    internal class Program
    {

        static class clsA
        {

            public static int X { get; set; }

            static public void Print()
            {
                Console.WriteLine(X);
            }

            static clsA()
            {
                X = 10;
            }
        }

        //Note: We can have only one static constructor in a class. It cannot have any parameters or access modifiers.

        static void Main(string[] args)
        {

            Console.WriteLine(clsA.X);

            clsA.Print();

        }
    }
}

