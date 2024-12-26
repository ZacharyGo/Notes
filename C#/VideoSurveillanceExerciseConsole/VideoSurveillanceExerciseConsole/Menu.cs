using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VideoSurveillanceExerciseConsole
{
    class Menu
    {
        public Char choice;
        public Menu()
        {
            //bool inCorrectAnswer = true;
            ConsoleKeyInfo charKeyEnterd;

            Console.Clear();
            Console.WriteLine("1. Excercise 1 (Grades)");
            Console.WriteLine("2. Excercise 2 (Character Count)");
            Console.WriteLine("3. Excercise 3 (Password)");
            Console.WriteLine("4. Excercise 4 (Pyramid)");
            Console.WriteLine("x. Exit");
            do
            {
                VideoSurveillanceExerciseConsole.Tools.ClearConsoleLastLine();
                Console.Write("Select Option : ");
                charKeyEnterd = Console.ReadKey();

            } while (!"1234x".Contains(charKeyEnterd.KeyChar.ToString().ToLower()));
            Console.WriteLine("");

            choice = charKeyEnterd.KeyChar;


        }
    }
}
