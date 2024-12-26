namespace ConsoleYield
{
    internal class Program
    {
        static void Main(string[] args)
        {
            List<int> list2= new List<int>();
            int[] list3 = { 9, 8, 7, 6, 5, 4 };
            list2.Add(4);
            list2.Add(8);
            list2.Add(3);
            list2.Add(5);
            list2.Add(6);
            list2.Add(7);

            foreach (int i in list(list3.Length))
            {
                Console.WriteLine(i);
            }
            Console.WriteLine(list(5));


            IEnumerable<int> list(int upto)
            {
                for (int i = 0; i < upto; i++)
                {
                    Console.Write("Current : " + i + " - ");
                    //yield return list2[i];
                    yield return list3[i];


                }

            }
        }
    }
}