using System;
using System.Text;

namespace StringBuilder2
{
    public class Program
    {
        static void Main(string[] args)
        {
            string hello = "Hello, World!";
            var hi = hello;

            Console.WriteLine(ReferenceEquals(hello,hi));
            hello = "Hi!";
            Console.WriteLine(ReferenceEquals(hello, hi));

            StringBuilder sb = new StringBuilder("this is string builder");
            var sbNew = sb;

            Console.WriteLine("sb {1} and sbNew {2} reference are the same : {0}",ReferenceEquals(sb, sbNew),sb,sbNew);
            sb.Append(" Additional string");
            sb.AppendFormat("{0:C}", 25);
            sb.Insert(0, "John ");
            sb.Remove(1, 2); 
            Console.WriteLine("sb {1} and sbNew {2} reference are the same : {0}", ReferenceEquals(sb, sbNew), sb, sbNew);

        }
    }
}