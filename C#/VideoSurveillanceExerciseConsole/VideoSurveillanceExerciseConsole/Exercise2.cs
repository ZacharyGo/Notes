using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VideoSurveillanceExerciseConsole
{
    
    class Exercise2
    {
        Dictionary<string, int> words = new Dictionary<string, int>();
        public Exercise2()
        {
            GetWords();
        }
        void GetWords()
        {
            Console.Clear();
            Console.WriteLine("Excercise 2");
            Console.WriteLine("Enter Words to determine the number of characters");
            string wordEntered = "";
            int numberOfWords = 0;
            do
            {
                wordEntered = Console.ReadLine();
                Console.SetCursorPosition(0, Console.CursorTop -1);
                VideoSurveillanceExerciseConsole.Tools.ClearConsoleLastLine();
                if (wordEntered.Length>0)
                {
                    Console.WriteLine($"{wordEntered} {new String(' ', 50 - wordEntered.Length)} { wordEntered.Length}");
                    numberOfWords++;
                }

            } while ((wordEntered.ToString() != "") && (numberOfWords < 10));
        }
    }
}
