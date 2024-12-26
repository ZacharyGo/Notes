using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DemoExamples
{
    class MethodAndFunctions
    {
        string classVariable = "Class Variable";
        public MethodAndFunctions()
        {
            MyMethod("You are inside a method which will do all the statements inside the method block");
        }

        public void MyMethod(string toDisplay)
        {
            Console.WriteLine(toDisplay);   // You are inside a method which will do all the statements inside the method block
            Console.WriteLine("classVariable is now \" "+ getClassVariable()); // classVariable is now " Value changed
        }

        public string getClassVariable()
        {
            Console.WriteLine("you are now inside function getClassVariable() and it will change the value of classVariable and return the value");
            classVariable = "Value changed";
            return classVariable;
        }

        public void MFunc()
        {

        }
    }
}
