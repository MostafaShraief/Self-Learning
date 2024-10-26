
//ProgrammingAdvices.com
//Mohammed Abu-Hadhoud

using System;
using System.Reflection.Emit;


namespace Main
{
    internal class Program
    {

        static class clsSettings
        {

            public static int DayNumber
            {
                get
                {
                    return DateTime.Now.Day;
                }
            }

            public static string DayOfWeek
            {
                get
                {
                    return DateTime.Today.DayOfWeek.ToString();
                }
            }
        }

        static void Main(string[] args)
        {

            Console.WriteLine(clsSettings.DayNumber);
            Console.WriteLine(clsSettings.DayOfWeek);
            // static class don`t allow us to create an object from it
            
        }
    }
}

