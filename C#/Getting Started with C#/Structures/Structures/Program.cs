namespace Structures
{
    internal class Program
    {
        static void Main(string[] args)
        {
            Student student = new Student();
            student.FirstName= "First";
            student.LastName = "Last";
            student.Grade = 5;
            student.ShowStudent();

            Student student1 = new Student("John","Smith",3);
            student1.ShowStudent();

            Console.WriteLine("Hello, World!");
        }
    }
}