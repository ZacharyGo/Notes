using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DemoExamples
{
    class ScopeDemo
    {
        string classString = "Class Level";
        string myString = "Class String";

        public void display()
        {
            Console.WriteLine(classString);
            Console.WriteLine("Befre calling display2 {0}", myString);
            display2();
            Console.WriteLine("Befre calling display2 {0}", myString);
            for (int i = 0; i < 10; i++)
            {
                string myString = "Block String" + i.ToString();
                Console.WriteLine(myString);
            }
            Console.WriteLine(myString);

        }

        public void display2() {
            string myString = "Method String";

            Console.WriteLine("Inside display2 {0}", myString);
            Console.WriteLine("Inside display2 {0}", myString);
        }
    }
}
