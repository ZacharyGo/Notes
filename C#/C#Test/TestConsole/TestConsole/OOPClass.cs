using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;

namespace TestConsole
{
    class OOPClass
    {
        public void Execute()
        {
            // Example file for Advanced C#: Object Oriented Programming by Joe Marini
            // Defining and instantiating classes

            // Create some new Rectangle objects with dimensions
            Rectangle rect1 = new Rectangle(10, 20);
            Rectangle rect2 = new Rectangle(30);

            Console.WriteLine(rect1.GetArea());
            Console.WriteLine(rect2.GetArea());

            // Change the values of width and height
            rect2.Width = 5;
            rect2.Height = 7;
            Console.WriteLine(rect2.GetArea());
            Console.WriteLine("Default bordersize {0}", rect2.BorderSize);

            // Using inheritance to define a class hierarchy
            Console.WriteLine("Using inheritance");
            // Instantiate some objects
            Circle c = new Circle(10);
            Rectangle r = new Rectangle(10, 20);
            Square s = new Square(10);

            // Exercise the ToString() method
            Console.WriteLine($"{c}");
            Console.WriteLine($"{r}");

            // Use the "is" operator to test an object type
            Console.WriteLine($"{c.GetType()} is Shape2D : {c is Shape2D}");
            Console.WriteLine($"{c.GetType()} is Rectangle : {c is Rectangle}");


            // Call the GetArea() function on each one
            Console.WriteLine(c.GetArea());
            Console.WriteLine(r.GetArea());
            Console.WriteLine(s.GetArea());

            // Print the area of each shape
            PrintArea(c);
            PrintArea(r);
            PrintArea(s);

            // All of the classes derive from Shape2D, so we can treat each one
            // as an instance of the base class. 
            void PrintArea(Shape2D shape)
            {
                Console.WriteLine($"{shape.GetArea()}");
            }


        }
    }

    class Shape2D
    {
        public Shape2D() { }

        // Methods must be marked as "virtual" to allow overriding
        public virtual float GetArea()
        {
            return 0.0f;
        }

        // All classes in .NET derive from Object, so we get some methods for free
        // ToString() returns a string representation of the object
        // GetType() returns the type of the object
        public override string ToString() => $"This object is a '{GetType()}'";
    }

    // Derive a Circle class that inherits from the base Shape2D
    class Circle : Shape2D
    {
        public Circle(int r)
        {
            radius = r;
        }

        // Override the GetArea() function for the Circle
        public override float GetArea()
        {
            return 3.14f * (radius * radius);
        }
        int radius;
    }



    class Rectangle : Shape2D
    {
        // The constructor accepts parameters used to create the object
        public Rectangle(int w, int h)
        {
            width = w;
            height = h;
        }

        // For convenience, we can have a constructor that takes one value
        // for squares that have the same side size
        public Rectangle(int side)
        {
            width = height = side;
        }

        // Classes can define methods that return values
        public int GetArea()
        {
            return width * height;
        }
        // Define Properties that allow access to the private data
        // These are called "backing field" properties
        public int Width
        {
            get { return width; }
            set { width = value; }
        }
        public int Height
        {
            get { return height; }
            set
            {
                if (value < 0)
                {
                    throw new ArgumentOutOfRangeException("Height", "must be >= 0");
                }
                height = value;
            }
        }


        // Auto-implmeneted properties don't have a backing field
        public int BorderSize { get; set; } = 1;

        // Properties and member variables hold data
        int width;
        int height;
    }
    // Derive a Square class that inherits from the base Rectangle
    class Square : Rectangle
    {
        // use the base keyword to initialize the superclass
        public Square(int side) : base(side, side) { }

        // No need to override GetArea, the base version works fine
    }

}
