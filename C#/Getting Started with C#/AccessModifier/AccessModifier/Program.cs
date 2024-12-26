namespace Loops
{
    class Program
    {
        // Access Modifier public & private

        static void Main(string[] args)
        {

        }
    }
    public class Student
    {
        public string firstName; // can be accessed from anywhere
        protected string lastName;    // can only be accessed from the same class and its derived classes
        private int age; // can only be accessed within the same class or struct
        internal string course; // can be accessed only within the same assembly.
        internal protected DateOnly birthday;               // 

        public Student (string firstName, string lastName, int age)
        {
            this.lastName = lastName;
            this.firstName = firstName;
            this.age = age;
        }
    }
}

