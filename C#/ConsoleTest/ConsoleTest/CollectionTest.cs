using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleTest
{
    class CollectionTest
    {
        public CollectionTest()
        {
            ListTest();
        }
        public void JoinTest()
        {
            List<string> names = new List<string> { "john", "brian", "robert" };
            List<string> names2 = new List<string> { "john2", "brian2", "robert2" };
            names.AddRange(names2);
            Console.WriteLine("'" + String.Join("', '", names) + "'");
        }

        public void ListTest()
        {
            List<MyClass> contacts = new List<MyClass>();
            string names = "'" + string.Join("', '", contacts.Select(x => x.name)) + "'";
            Console.WriteLine(names);

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

            List<MyClass> contacts2 = new List<MyClass>();
            contacts2.Add(new MyClass()
            {
                name = "ccc",
                age = 3
            });
            contacts2.Add(new MyClass()
            {
                name = "ddd",
                age = 4
            });
            contacts.AddRange(contacts2);
            names = "'" + string.Join("', '", contacts.Select(x=>x.name)) + "'";
            Console.WriteLine(names);
            List<MyClass> contacts3 = new List<MyClass>();
            contacts3 = contacts;
            Console.WriteLine("'" + string.Join("', '", contacts3.Select(x => x.name)) + "'");

        }
    }
}
