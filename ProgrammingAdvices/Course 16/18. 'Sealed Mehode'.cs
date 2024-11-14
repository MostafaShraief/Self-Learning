using System;


public class Person
{
    public virtual void Greet()
    {
        Console.WriteLine("The person says hello.");
    }
}


public class Employee : Person
{
    public sealed override void Greet()
    {
        Console.WriteLine("The employee greets you.");
    }
}

public class Manager : Employee
{
    //This will produce a compile-time error because the Greet method in Employee is
    //sealed and cannot be overridden.
    //public override void Greet()
    //{
    //    Console.WriteLine("The manager greets you warmly.");
    //}
    // But This Will Not!
    public new void Greet()
    {
        Console.WriteLine("The manager greets you warmly.");
    }
}

// Notice That That We Can Fix The Isuue By Using Shadowing ('new' Keyword).
// Notice That Base Functon Is Sealed By Default, That Why We Use Virtual Keyword.
// Notice That 'sealed' Keyword Can be Used Only With Overrided Function.

public class Program
{
    public static void Main(string[] args)
    {
        Person person = new Person();
        person.Greet(); // outputs "The person says hello."

        Employee employee = new Employee();
        employee.Greet(); // outputs "The employee greets you."

        Manager manager = new Manager();
        manager.Greet(); // outputs "The employee greets you."

        Console.ReadKey();

    }
}