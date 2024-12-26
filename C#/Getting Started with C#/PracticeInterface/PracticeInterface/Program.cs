using System;

namespace PracticeInterface
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Person person = new Person() { Age = 15, FullName = "John Smith" };
            Console.WriteLine(person.GetDetails());
            Professor professor = new Professor() { Age = 45, FullName = "Jimmy Snack", Subject = "Math" };
            Console.WriteLine(professor.GetDetails());
            Student student = new Student() { Age = 18, FullName = "Joe Doe", Grade = 12 };
            Console.WriteLine(student.GetDetails());

            Console.WriteLine("Hello, World!");
        }
    }
}