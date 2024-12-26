using System.Collections;
using System.Collections.Generic;
using System.Xml.Linq;

namespace Exercise
{
    public class Program
    {
        static void Main(string[] args)
        {
            /*int sample = 3;
            Console.WriteLine(Math.Pow(sample, 2));
            return;*/
            string choice;
            Console.WriteLine("1. Divisible");
            Console.WriteLine("2. Mean, Mode, Median");
            Console.WriteLine("3. Pythagorean Theorem");
            Console.WriteLine("4. Density");
            Console.WriteLine("5. Fibonacci Number");
            Console.Write("Select which one to run :");
            choice = Console.ReadLine();
            switch(choice)
            {
                case "1":
                    Exercise1();
                    break;
                case "2":
                    Exercise2();
                    break;
                case "3":
                    Exercise3();
                    break;
                case "4":
                    Exercise4();
                    break;
                case "5":
                    Exercise5();
                    break;
                default:
                    Console.WriteLine("Invalid entry");
                    break;
            }
        }

        public static void Exercise1()
        {
            int numberEntered;
            string result;
            bool isNumeric;
            do
            {
                result = "";
                Console.Write("Enter a number from 1-200 or any string to exit : ");
                isNumeric = int.TryParse(Console.ReadLine(), out numberEntered);
                if (isNumeric)
                {
                    if (numberEntered < 1 || numberEntered > 200)
                        Console.WriteLine("Number entered must be between 1-200, try again");
                    else
                    {
                        for (int i = 1; i <= 10; i++)
                        {
                            if (numberEntered % i == 0)
                            {
                                if (result == "")
                                    result = i.ToString();
                                else
                                    result = result.Replace(" and ", ", ") + " and " + i.ToString();
                            }
                        }
                        Console.WriteLine("Divisible to : {0}", result);
                    }
                }
            } while (isNumeric);
        }
        

        public static void Exercise2()
        {
            bool isNumeric;

            List<int> numberList = new List<int>();

            do
            {
                int numberEntered;
                Console.Write("Enter a number or enter when done : ");
                isNumeric = int.TryParse(Console.ReadLine(), out numberEntered);
                if (isNumeric)
                {
                    numberList.Add(numberEntered);
                }
            } while (isNumeric);
            numberList.Sort();
            double mean = 0;
            int mode = 0;
            int modeCount = 0;
            double median = 0;
            SortedList sortedList = new SortedList();
            foreach (int numberEntered in numberList)
            {
                // Mean - Get total
                mean += numberEntered;

                // Mode - Get number of times entered per key
                if (sortedList.ContainsKey(numberEntered))
                {
                    sortedList[numberEntered] = (int)sortedList[numberEntered] + 1;
                }
                else
                {
                    sortedList.Add(numberEntered, 1);
                }
            }
            // Get Mean
            mean = mean / sortedList.Count;
            Console.WriteLine($"Average (Mean) : {mean}");

            // Get Mode
            foreach (int key in sortedList.Keys)
            {
                if ((int)sortedList[key] > modeCount)
                {
                    modeCount = (int)sortedList[key];
                    mode = (int)key;
                }
            }
            Console.WriteLine($"Mode           : {mode}");

            // Get Median
            int index = numberList.Count / 2;
            if (numberList.Count % 2 == 0)
            {
                Console.WriteLine($"Median         : {(double)(numberList[index - 1] + numberList[index]) / 2}");
            }
            else
            {
                Console.WriteLine($"Median         : {numberList[index]}");
            }





        }

        public static void Exercise3()
        {
            int baseValue;
            int altitudeValue;
            int hypoenuse;
            Console.Write("Please enter the value of the altitude:");
            if (!int.TryParse(Console.ReadLine(), out altitudeValue))
            {
                Console.WriteLine("A none numeric was entered, applicaction will now end");
                return;
            }
            Console.Write("Please enter the value of the base:");
            if (!int.TryParse(Console.ReadLine(), out baseValue))
            {
                Console.WriteLine("A none numeric was entered, applicaction will now end");
                return;
            }
            Console.Write($"The hypoenuse of triangle with altitude ={altitudeValue} and base = {baseValue} is ");
            Console.Write(Math.Sqrt(Math.Pow(altitudeValue, 2) + Math.Pow(baseValue, 2)));
        }
        public static void Exercise4()
        {
            string userInput;
            string desiredInput = "DMVE";
            int density = 0;
            int mass = 0;
            int volume = 0;
            bool isNumeric = false;
            do
            {
                Console.Write("Enter the first letter of what you are looking for: Density/Mass/Volume/Exit :");
                userInput = Console.ReadLine().Substring(0, 1).ToUpper();

                if (userInput != "E" && desiredInput.Contains(userInput))
                {
                    if (userInput != "D") // Get Density
                    {
                        do
                        {
                            Console.Write("Enter Density:");
                            isNumeric = int.TryParse(Console.ReadLine(), out density);
                            if (!isNumeric)
                                Console.WriteLine("Please enter a numeric integer");
                        } while (!isNumeric);
                    }
                    if (userInput != "M") // Get Mass
                    {
                        do
                        {
                            Console.Write("Enter Mass:");
                            isNumeric = int.TryParse(Console.ReadLine(), out mass);
                            if (!isNumeric)
                                Console.WriteLine("Please enter a numeric integer");
                        } while (!isNumeric);
                    }
                    if (userInput != "V") // Volume
                    {
                        do
                        {
                            Console.Write("Enter Volume:");
                            isNumeric = int.TryParse(Console.ReadLine(), out volume);
                            if (!isNumeric)
                                Console.WriteLine("Please enter a numeric integer");
                        } while (!isNumeric);
                    }
                    switch (userInput)
                    {
                        case "D":
                            density = mass / volume;
                            Console.WriteLine($"The Density is {density}");
                            break;
                        case "M":
                            mass = density * volume;
                            Console.WriteLine($"The Mass  is {mass}");
                            break;
                        case "V":
                            volume = mass / density;
                            Console.WriteLine($"The Density is {density}");
                            break;

                    }
                }
            } while (userInput != "E");
        }

        public static void Exercise5()
        {
            List<int> list = new List<int>();


            int numberOfSequence;

            Console.Write("Enter number of Fibonacci sequence : ");
            if (!int.TryParse(Console.ReadLine(), out numberOfSequence))
            {
                Console.WriteLine("A none numeric was entered, applicaction will now end");
            }
            else
            {
                for (int i = 1; i <= numberOfSequence; i++)
                {
                    switch (i)
                    {
                        case 1:
                            list.Add(0);
                            break;
                        case 2:
                            list.Add(1);
                            break;
                        default:
                            list.Add(list[i - 3] + list[i - 2]);
                            break;
                    }
                }
                foreach (int result in list)
                {
                    Console.WriteLine(result);
                }
            }
        }
    }
}