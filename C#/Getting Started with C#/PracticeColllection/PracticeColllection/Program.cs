using Microsoft.VisualBasic;
using System.Collections;

namespace PracticeColllection
{
    public class Program
    {
        static void Main(string[] args)
        {
            //PracticeHashTable();
            List<int> list = new List<int>();
            list.Add(1);
            list.Add(2);
            list.Add(3);
            list.Add(4);
            Console.WriteLine(list[1]);
        }
        public static void PracticeArrayList()
        {
            ArrayList myValues = new ArrayList();
            myValues.Add(10);
            myValues.Add("This is a string");
            Console.WriteLine($"Count - {myValues.Count}, Capacity - {myValues.Capacity}");

            myValues.Add(12.25);
            DisplaymyArrayList("()",myValues);
            myValues.AddRange(new ArrayList{ "John",24,78});
            DisplaymyArrayList("Add Range", myValues);
            myValues.Insert(1,"This is first Index");
            myValues.Insert(3, "This is third Index");
            DisplaymyArrayList("Insert", myValues);
            myValues.Remove("This is first Index");
            myValues.RemoveRange(0, 2);
            myValues.RemoveAt(0);
            DisplaymyArrayList("Remove", myValues);
            //myValues.Sort(); // Will cause error cause the elements are no of the same type
            myValues.Clear();
            Console.WriteLine($"Count - {myValues.Count}, Capacity - {myValues.Capacity}");

            myValues.Add(12);
            myValues.Add(13);
            myValues.AddRange(new ArrayList() {5,7,4,8,9,23});
            myValues.Sort();
            DisplaymyArrayList("Sort", myValues);
            myValues.Reverse();
            DisplaymyArrayList("Reverse", myValues);
            Console.WriteLine($"12 exists in the array - {myValues.Contains(12)}");
            myValues.Clear();
            myValues.Add(12);
            myValues.Add(13);
            Console.WriteLine($"Count - {myValues.Count}, Capacity - {myValues.Capacity}");
            myValues.AddRange(new ArrayList() { 5, 7, 4, 8, 9, 23 });
            myValues.AddRange(new ArrayList() { 1,2 });
            Console.WriteLine($"Count - {myValues.Count}, Capacity - {myValues.Capacity}");
            myValues = new ArrayList();
            myValues.Add(12);
            myValues.Add(13);
            Console.WriteLine($"Count - {myValues.Count}, Capacity - {myValues.Capacity}");
        }

        public static void DisplaymyArrayList(string title, ArrayList myArrayList)
        {
           Console.WriteLine("ArrayList-{0}", title);
            foreach (var value in myArrayList)
            {
                Console.WriteLine(value);
            }
            Console.WriteLine();
        }

        public static void PracticeSortedList()
        {
            // Keys should be of the same tye and no null
            SortedList sl1 = new SortedList();
            sl1.Add(3, "Number Three");
            sl1.Add(4, "Number Four");
            sl1.Add(1, "Number One");
            sl1.Add(5, "Number Five");
            sl1.Add(2, "Number Two");
            DisplaymySortedListFor("Integer", sl1);
            SortedList sl2 = new SortedList();
            sl2.Add(3.1, "Number Three");
            sl2.Add(4.1, "Number Four");
            sl2.Add(1.1, "Number One");
            sl2.Add(5.1, "Number Five");
            sl2.Add(2.1, "Number Two");
            DisplaymySortedListFor("Long", sl2);
            SortedList sl3 = new SortedList();
            sl3.Add("3.1", "Number Three");
            sl3.Add("4.1", "Number Four");
            sl3.Add("1.1", "Number One");
            sl3.Add("5.1", "Number Five");
            sl3.Add("2.1", "Number Two");
            DisplaymySortedListFor("string", sl3);

            sl3.Remove("1.1");
            sl3.RemoveAt(0);
            DisplaymySortedListForEach("string", sl3);
            string value = (string)sl3["4.1"];
            Console.WriteLine($"Value = {value}");
            Console.WriteLine($"Contains(3.1) - {sl3.Contains("3.1")}, ContainsKey(1.1)" +
                $" - {sl3.ContainsKey("1.1")}, ContainsValue(Number Five)- {sl3.ContainsValue("Number Five")}");
        }
        public static void DisplaymySortedListFor(string title, SortedList mySortedList)
        {
            Console.WriteLine("SortedList-{0} (For)", title);
            for (int i=0; i<mySortedList.Count; i++)
            {
                Console.WriteLine($"Key: {mySortedList.GetKey(i)}, value: {mySortedList.GetByIndex(i)}");
            }
            Console.WriteLine();
        }

        public static void DisplaymySortedListForEach(string title, SortedList mySortedList)
        {
            Console.WriteLine("SortedList-{0} (ForEach)", title);
            foreach (DictionaryEntry element in mySortedList)
            {
                Console.WriteLine($"Key: {element.Key}, value: {element.Value}");
            }
            Console.WriteLine();
        }

        public static void PracticeStack()
        {
            // LIFO Last In First Out
            Stack myStack = new Stack();
            myStack.Push("Hello There");
            myStack.Push(1);
            myStack.Push(2);
            myStack.Push(3);
            myStack.Push(4.5);
            myStack.Push(null);
            myStack.Push("Top of Stack");
            DisplaymyStackForEach("()", myStack);

            Console.WriteLine($"Stack length = {myStack.Count}");
            Console.WriteLine($"The peak of the stack (pop) is - {myStack.Pop()}");
            myStack.Pop();
            Console.WriteLine($"The peak of the stack (pop) is - {myStack.Peek()}");
            Console.WriteLine($"Stack length = {myStack.Count}");
            Console.WriteLine($"myStack has a 3 => {myStack.Contains(3)}");
        }

        public static void DisplaymyStackForEach(string title, Stack myStack)
        {
            foreach(var stackItem in myStack)
            {
                Console.WriteLine(stackItem);
            }
        }

        public static void PracticeQueue()
        {
            // LIFO Last In First Out
            Queue myQueue = new Queue();
           myQueue.Enqueue(1);
            myQueue.Enqueue(2);
            myQueue.Enqueue(31);
            myQueue.Enqueue("This is my string");
            myQueue.Enqueue(null);
            myQueue.Enqueue("This the last value");
            
            Console.WriteLine($"Number of Elements = {myQueue.Count}");
            DisplaymyQueueForEach("()", myQueue);
            Console.WriteLine($"The peak of myQueue is {myQueue.Peek()}");

            Console.WriteLine($"Value 31 exist in myQueue => {myQueue.Contains(31)}");
            while (myQueue.Count>0) 
                Console.WriteLine(myQueue.Dequeue());
            Console.WriteLine($"Number of Elements = {myQueue.Count}");
        }

        public static void DisplaymyQueueForEach(string title, Queue myQueue)
        {
            foreach (var myQueueItem in myQueue)
            {
                Console.WriteLine(myQueueItem);
            }
        }

        public static void PracticeHashTable()
        {
            Hashtable myHashtable = new Hashtable();

            myHashtable.Add(1, "One");
            myHashtable.Add("2", null);

            Hashtable myHashtable2 = new Hashtable()
            {
                {3, "Three" },
                {"another", 78.5}
            };

            myHashtable2.Add(1, "One");
            myHashtable2.Add("2", null);

            Dictionary<int, string> myDictionary = new Dictionary<int, string>();
            myDictionary.Add(1, "One");
            myDictionary.Add(6, "number 6");

            Hashtable hashtable = new Hashtable(myDictionary);

            string valueofOne = (string)hashtable[1];
            Console.WriteLine($"Value of One = {valueofOne}");
            DisplaymyHashtableForEach("Hashtable(myDictionary)", hashtable);
            Console.WriteLine($"contains One value - {hashtable.ContainsValue("One")}");
            Console.WriteLine($"contains 6 key - {hashtable.ContainsKey(6)}");

            hashtable.Remove(1);
            DisplaymyHashtableForEach("Hashtable(myDictionary)", hashtable);


        }
        public static void DisplaymyHashtableForEach(string title, Hashtable myHashTable)
        {
            Console.WriteLine("Pair");
            foreach (DictionaryEntry value in myHashTable)
            {
                Console.WriteLine($"Key: {value.Key}, value: {value.Value}");
            }
            Console.WriteLine("Values");
            foreach (var value in myHashTable.Values)
            {
                Console.WriteLine(value);
            }
            Console.WriteLine("Keys");
            foreach (var value in myHashTable.Keys)
            {
                Console.WriteLine(value);
            }
        }
    }

    
}