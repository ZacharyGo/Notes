namespace PracticeArray
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int[] numbers = new int[5];
            string[] studentnames = new string[10];
            double[] studentResults = new double[4]
            {
                5,4.5,3,2
            };
            foreach(double result in studentResults)
            {
                Console.Write("{0} , ",result);
            }
            Console.WriteLine();
            Array.Sort(studentResults);
            foreach (double result in studentResults)
            {
                Console.Write("{0} , ", result);
            }
            Console.WriteLine();
        }
    }
}