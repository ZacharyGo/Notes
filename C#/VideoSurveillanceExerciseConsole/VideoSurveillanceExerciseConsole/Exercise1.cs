using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace VideoSurveillanceExerciseConsole
{
    class Exercise1
    {
        Dictionary<string, int> scores = new Dictionary<string, int>();

        public Exercise1()
        {
            scores.Add("Mathematics", 0);
            scores.Add("Science", 0);
            scores.Add("Economics", 0);
            scores.Add("Filipino", 0);
            scores.Add("English", 0);
            scores.Add("Araling Panlipunan", 0);
            do
            {

            } while (Display()!="x");


        }

        public string Display()
        {
            string usersChoice = "'x";
            Console.Clear();
            Console.WriteLine("Excercise 1");
            foreach (KeyValuePair<string, int> keyValuePair in scores)
            {
                Console.WriteLine($"{keyValuePair.Key}{new String(' ', 25 - keyValuePair.Key.Length)}{keyValuePair.Value}");
            }
            Console.WriteLine();
            Console.WriteLine("Option to choose");
            Console.WriteLine("1. Change Score : ");
            Console.WriteLine("2. Get Average");
            Console.WriteLine("3. Get Sum");
            Console.WriteLine("4. Get Highest Grade");
            Console.WriteLine("X. Exit");

            ConsoleKeyInfo charKeyEnterd;
            do
            {
                VideoSurveillanceExerciseConsole.Tools.ClearConsoleLastLine();

                Console.Write("Select Option : ");
                usersChoice = Console.ReadKey().KeyChar.ToString().ToLower();                
            } while (!"1234x".Contains(usersChoice));
            Console.WriteLine("");
            switch (usersChoice) {
                case "1":
                    // Select Subject to change grade
                    Console.WriteLine("Select Subject using Arrow Up and Down the press enter or Esc to return");
                    string[] subjects = scores.Keys.ToArray();
                    int subjectsIndex = 0;
                    do
                    {
                        VideoSurveillanceExerciseConsole.Tools.ClearConsoleLastLine();
                        Console.Write(subjects[subjectsIndex]);
                        charKeyEnterd = Console.ReadKey();
                        if (charKeyEnterd.Key == ConsoleKey.UpArrow)
                        {
                            if (subjectsIndex == 0)
                                subjectsIndex = subjects.Length - 1;
                            else
                                subjectsIndex--;
                        }
                        else if (charKeyEnterd.Key == ConsoleKey.DownArrow)
                        {
                            if (subjectsIndex == subjects.Length - 1)
                                subjectsIndex = 0;
                            else
                                subjectsIndex++;
                        }
                    } while ((charKeyEnterd.Key != ConsoleKey.Enter) && (charKeyEnterd.Key != ConsoleKey.Escape));
                    Console.WriteLine("");
                    Console.Write("Enter Score : ");
                    short newScore = 0; 
                    do
                    {
                        Int16.TryParse(Console.ReadLine(), out newScore) ;
                    } while (newScore==0);
                    scores[subjects[subjectsIndex]] = newScore;
                    break;
                case "2":
                    Console.WriteLine($"Average Score :  {scores.Values.Average()}");
                    Console.WriteLine("Press any key to continue");
                    Console.ReadKey();
                    break;
                case "3":
                    Console.WriteLine($"Sum of all Score :  {scores.Values.Sum()}");
                    Console.WriteLine("Press any key to continue");
                    Console.ReadKey();
                    break;
                case "4":
                    Console.WriteLine($"Maximum Score :  {scores.Values.Max()}");
                    Console.WriteLine("Press any key to continue");
                    Console.ReadKey();
                    break;
            }
            return usersChoice;
        }

        
    }
}
