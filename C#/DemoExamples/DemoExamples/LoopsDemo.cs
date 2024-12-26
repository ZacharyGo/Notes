using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DemoExamples
{
    internal class LoopsDemo
    {
        public LoopsDemo()
        {
            Console.WriteLine("For Loop");
            for (int i = 1; i <= 10; i++)
            {
                Console.Write(i);
            }
            Console.WriteLine();
            
            int i1 = 1;
            for (; i1 <= 10; i1++)
            {
                Console.Write(i1);
            }
            Console.WriteLine();

            int i2 = 1;
            for (; ;)
            {
                if (i2 > 10)
                {
                    break;
                }
                Console.Write(i2);
                i2++;
            }
            Console.WriteLine();

            Console.WriteLine("While Loop");
            int j = 0;
            while (j < 10)
            {
                Console.Write(j);
                j++;
            }
            Console.WriteLine();

            Console.WriteLine("Do..While Loop");
            int k = 0;
            do
            {
                Console.Write(k);
                k++;
            } while (k < 10);
            Console.WriteLine();

            Console.WriteLine("Nested Loop");

            for (int i = 0; i < 5; i++)
            {
                for (int l = 0; l < 5; l++)
                    {
                    Console.WriteLine("i={0}, k={1}", i, k);
                }
            }

            Console.WriteLine("Nested Loop with continue and break");
            for (int i = 0; i < 5; i++)
            {
                if (i == 2)
                {
                    continue;
                }
                for (int l = 0; l < 5; l++)
                {
                    Console.WriteLine("i={0}, l={1}", i, l);
                    if (l == 3)
                    {
                        break;
                    }
                }
            }
        }
    }
}
