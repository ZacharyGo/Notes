using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VideoSurveillanceExerciseConsole
{
    class Exercise4
    {
        public Exercise4()
        {
            int numberOfRows = 0;
            Console.Clear();
            Console.WriteLine("Excercise 4");
            do
            {
                Console.Write("Enter number of rows (must be more than 1: ");
            } while (!int.TryParse(Console.ReadLine(), out numberOfRows));
            string line = "*";

            for (int rowNumber=1; rowNumber <= numberOfRows; rowNumber++) { 
                if (rowNumber > 1)
                {
                    line+= "**";
                }
                Console.WriteLine($"{new String(' ',numberOfRows - rowNumber) } {line}");
            }
            Console.Write("Press any key to Continue");
            Console.ReadKey();

        }
    }
}
