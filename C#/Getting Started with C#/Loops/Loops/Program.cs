namespace Loops
{
    class Program
    {
        // Access Modifier public & private

        static void Main(string[] args)
        {
            Console.WriteLine("for"); 
            for (int i=1; i < 11; i++)
            {
                Console.Write(i);
            }
            Console.WriteLine();
            Console.WriteLine("While");
            int j = 1;
            while (j<11)
            {
                Console.Write(j);
                j++;
            }
            Console.WriteLine();
            Console.WriteLine("Do-While");
                
             j = 1;
            do
            {
                Console.Write(j);
                j++;
            } while (j < 11);
        }
    }
}

    