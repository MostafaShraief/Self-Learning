using System;

public partial class clsPerson
{

    partial void Hi();

    public void CallHi()
    {
        Hi();
    }
}

public partial class clsPerson
{
    partial void Hi()
    {
        Console.WriteLine("Hi");
    }
}

// Things to remember about Partial Method
// partial keyword.
// return type void.
// implicitly private.
// and cannot be virtual.

public class Program
{
    public static void Main(string[] args)
    {
        clsPerson person = new clsPerson();
        person.CallHi();
    }
}