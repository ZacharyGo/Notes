namespace ConsoleCheckedUnchecked
{
    internal class Program
    {
        static void Main(string[] args)
        {
            uint u = uint.MaxValue;
            Console.WriteLine(u+2);
            unchecked
            {
                Console.WriteLine(u + 3);
            }
            try
            {
                checked
                {
                    Console.WriteLine(u + 3);
                }
            }
            catch (OverflowException e)
            {
                Console.WriteLine(e.ToString());
            }
        }
    }
}