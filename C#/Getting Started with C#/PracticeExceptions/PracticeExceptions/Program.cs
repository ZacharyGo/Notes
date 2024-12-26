namespace PracticeExceptions
{
    internal class Program
    {
        static void Main(string[] args)
        {
            try
            {
                Console.WriteLine("Before throw");
                //throw new Exception();
                Console.WriteLine("After throw");

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());

            }finally
            {
                Console.WriteLine("Finally");
            }
            Console.WriteLine("Outside Try/Catch.Finally");
        }
    }
}