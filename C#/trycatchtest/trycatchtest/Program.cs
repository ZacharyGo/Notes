using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace trycatchtest
{
    class Program
    {
        static void Main(string[] args)
        {
            try
            {
                Console.WriteLine("Return value : {0}", Func1());
            } catch (Exception e)
            {
                Console.WriteLine("Catched {0}", e.Message);
            } finally
            {
                Console.WriteLine("Finally");
                Console.ReadLine();
            }
        }

        static int Func1()
        {
            return Func2();
        }

        static int Func2()
        {
            int b = 1;

            int[] a = {0,1,2};
            b = 0;
            a[1] = 1/ b;
            a[4] = 10;
            return 0;
        }

    }
}
