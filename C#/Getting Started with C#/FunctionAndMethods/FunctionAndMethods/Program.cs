namespace Loops
{
    class Program
    {
        // Access Modifier public & private

        static void Main(string[] args)
        {
            double firstSum = AddNumbers(12.7, 16.35);
            Console.WriteLine($"firstSum = {firstSum}");


            double secondSum = AddNumbers(12.7, 16.35);
            Console.WriteLine($"secondSum = {secondSum}");

            Hello();
        }

        public static double AddNumbers(double firstNumber,double secondNumber) => firstNumber + secondNumber;

        public static void Hello()
        {
            Console.WriteLine("Hellow from a void function");
        }
    }

}

