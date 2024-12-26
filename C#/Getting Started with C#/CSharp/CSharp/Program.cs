using System;

namespace CSharp
{
    class Progam
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Hellow World");
            Circle circle= new Circle();
            circle.AcceptRadius();
            
            circle.ShowResults();

            Console.WriteLine(5 > 10 ? "Greater": "Lesser");
        }            
    }

    class Circle
    {
        // member variables
        double radius;
        const double pi = 3.14;

        public void AcceptRadius()
        {
            radius = 4.5;
        }
        public double GetArea() 
        {
            return pi * radius*radius;
        }

        public void ShowResults()
        {
            Console.WriteLine("Radius: {0}", radius);
            Console.WriteLine("Area: {0}",GetArea());
        }
    }
}