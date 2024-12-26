namespace VideoSurveillanceExerciseConsole
{
    internal class Program
    {
        static void Main(string[] args)
        {

            bool exit = false;
            while (!exit)
            {
                Console.BackgroundColor = ConsoleColor.Blue;
                Console.ForegroundColor = ConsoleColor.White;
                exit = false;
                Menu menu = new Menu();
                switch (menu.choice)
                {
                    case '1':
                        Exercise1 exercise1 = new Exercise1();
                        break;
                    case '2':
                        Exercise2 exercise2 = new Exercise2();
                        break;
                    case '3':
                        Exercise3 exercise3 = new Exercise3();
                        break;
                    case '4':
                        Exercise4 exercise4 = new Exercise4();
                        Console.WriteLine("4. Excercise 4");
                        break;
                    case 'x':
                    case 'X':
                        exit = true;
                        break;
                    default:
                        Console.WriteLine("Invalid Option"); // Redundant
                        break;
                }
            }

        }

        

    }
}