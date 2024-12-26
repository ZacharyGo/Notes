// How to test this demo place commented code below to Main method
//Console.WriteLine(StaticDemo.MyStruct.x);
//StaticDemo staticDemo = new StaticDemo();
//staticDemo.AddEmployee();
//staticDemo.publicVar = 1;

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DemoExamples
{
    class StaticDemo
    {
        static int staticVar = 10;
        public int publicVar = 0;
        public struct MyStruct
        {
            public static int x = 100;
        }



        public void display()
        {
            staticVar = 5;
            Console.WriteLine(staticVar);
        }

        public void AddEmployee()
        {
            Employees employees1 = new Employees();
            employees1.id = 1;
            employees1.name = "First";

            Employees employees1a = new Employees();
            employees1a.id = 1;
            employees1a.name = "First";

            Employees employees2 = new Employees(2, "Second");
            employees1.display();
            employees2.display();
            
        }
    }

    class Employees
    {
        static int numEmployees = 0;
        public int id;
        public string name;
        public Employees()
        {
            numEmployees++;
        }
        public Employees(int id, string name)
        {
            numEmployees++;
            this.id = id;
            this.name = name;
        }

        public void display()
        {
            Console.WriteLine(numEmployees);
        }
    }
}
