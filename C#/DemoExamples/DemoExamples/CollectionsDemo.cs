using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DemoExamples
{
     class CollectionsDemo
    {
        public CollectionsDemo()
        {
            DemoDictionary();
        }
        public void DemoArrayList()
        {
            ArrayList arrayList = new ArrayList();
            arrayList.Add(1);
            arrayList.Add("Hello");
            arrayList.Add(true);
             arrayList.Add(DateTime.Parse("20-dec-2022"));
            foreach (object obj in arrayList)
            {
                Console.WriteLine(obj);
            }
            Console.WriteLine(arrayList[1]);
        }

        public void DemoHashTable()
        {
            Hashtable areaCode = new Hashtable();
            areaCode.Add("Manila", 2);
            areaCode.Add("Cebu", 32);
            areaCode.Add("Davao", 82);

            foreach (DictionaryEntry area in areaCode)
            {
                Console.WriteLine($"Area Code for {area.Key} is {area.Value}" );
            }
            Console.WriteLine(areaCode["Cebu"]);

        }

        public void DemoSortedList()
        {
            SortedList areaCode = new SortedList();
            areaCode.Add("Manila", 2);
            areaCode.Add("Cebu", 32);
            areaCode.Add("Davao", 82);
            areaCode.Add("New York", "Unknown");

            foreach (DictionaryEntry area in areaCode)
            {
                Console.WriteLine($"Area Code for {area.Key} is {area.Value}");
            }
            Console.WriteLine(areaCode["Cebu"]);
        }

        public void DemoSortedListGeneric()
        {
            SortedList<string, int> areaCode = new SortedList<string, int>();
            areaCode.Add("Manila", 2);
            areaCode.Add("Cebu", 32);
            areaCode.Add("Davao", 82);

            foreach (KeyValuePair<string, int> area in areaCode)
            {
                Console.WriteLine($"Area Code for {area.Key} is {area.Value}");
            }
            Console.WriteLine(areaCode["Cebu"]);
        }

        public void DemoStack() {
            Stack stack = new Stack();
            stack.Push(1);
            stack.Push("2");
            stack.Push(true);
            stack.Push(DateTime.Parse("20-dec-2022"));

            foreach (object obj in stack)
            {
                Console.WriteLine(obj);
            }
            Console.WriteLine(stack.Peek());
        }

        public void DemoStackGeneric()
        {
            Stack<string> stack = new Stack<string>();
            stack.Push("1");
            stack.Push("hello");
            stack.Push("hi");
            stack.Push("good bye");


            foreach (string element in stack)
            {
                Console.WriteLine(element);
            }
            Console.WriteLine(stack.Peek());
        }

        public void DemoQueue()
        {
            Queue queue = new Queue();
            queue.Enqueue(1);
            queue.Enqueue("2");
            queue.Enqueue(true);
            queue.Enqueue(DateTime.Parse("20-dec-2022"));

            foreach (object obj in queue)
            {
                Console.WriteLine(obj);
            }
            Console.WriteLine(queue.Peek());
        }

        public void DemoQueueGeneric()
        {
            Queue<string> queue = new Queue<string>();
            queue.Enqueue("1");
            queue.Enqueue("hello");
            queue.Enqueue("hi");
            queue.Enqueue("good bye");


            foreach (string element in queue)
            {
                Console.WriteLine(element);
            }
            Console.WriteLine(queue.Peek());
        }

        public void DemoList()
        {
            List<int> myList = new List<int>();
            myList.Add(100);
            myList.Add(200);
            myList.Add(300);
            myList.Add(400);
            foreach (int i in myList)
            {
                Console.WriteLine(i);
            }
            Console.WriteLine(myList[2]);
        }

        public void DemoDictionary()
        {
            Dictionary<string, int> areaCode = new Dictionary<string, int>();
            areaCode.Add("Manila", 2);
            areaCode.Add("Cebu", 32);
            areaCode.Add("Davao", 82);

            foreach (KeyValuePair<string, int> area in areaCode)
            {
                Console.WriteLine($"Area Code for {area.Key} is {area.Value}");
            }
            Console.WriteLine(areaCode["Cebu"]);
        }

    }
}
