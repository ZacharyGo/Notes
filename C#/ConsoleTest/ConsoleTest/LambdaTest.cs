using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleTest
{

    class LambdaTest
    {
        public LambdaTest()
        {
            GetProperty();
        }

        private void GetProperty()
        {
            List<MyClass> contacts = new List<MyClass>();
            List<string> names = new List<string>();
            contacts.Add(new MyClass()
            {
                name = "aaa",
                age = 1
            });
            contacts.Add(new MyClass()
            {
                name = "bbb",
                age = 2
            });
            var names2 = string.Join(",", contacts.Select(x =>  x.name).ToList());

            Console.WriteLine(names2);
            
        }
    }
}

