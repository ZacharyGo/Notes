using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DemoExamples
{
    internal class VAlueReferenceDemo
    {
        public class MyClass
        {
            public int Count = 0;
        }

        public void MainMethod() {
            Example1();
        }

        public void Example1()
        {
            // Value Type
            int valueTypeVarible = 10;
            int valueTypeVarible2 = 5;

            valueTypeVarible2 = valueTypeVarible;
            Console.WriteLine(valueTypeVarible+ " " + valueTypeVarible2);
            valueTypeVarible= 5;
            Console.WriteLine(valueTypeVarible + " " + valueTypeVarible2);

            //Refernce Type
            MyClass myClass = new MyClass();
            MyClass myClass2 = new MyClass();
            myClass2 = myClass;
            Console.WriteLine(myClass.Count + " " + myClass2.Count);
            myClass.Count = 100;
            Console.WriteLine(myClass.Count + " " + myClass2.Count);



        }
    }
}
