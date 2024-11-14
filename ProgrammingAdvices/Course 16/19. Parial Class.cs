using System;

public partial class clsPerson
{
    private void Hi()
    {
        Console.WriteLine("Hi");
    }
}

public partial class clsPerson
{
    public void CallHi()
    {
        Hi();
    }
}

public class Program
{
    public static void Main(string[] args)
    {
        clsPerson person = new clsPerson();
        person.CallHi();
    }
}