namespace Enumeration
{
    public class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine(WeekDays.Friday);
            Console.WriteLine((int)WeekDays.Thursday);
            Console.WriteLine((int)WeekDays.Sunday);
            Console.WriteLine("GetName()");
            Console.WriteLine(Enum.GetName(typeof(WeekDays), 4));
            Console.WriteLine(Enum.GetName(typeof(WeekDays), 5)); // Nothing to display since no 5
            Console.WriteLine("GetNames()");
            foreach(string str in Enum.GetNames(typeof(WeekDays)))
            {
                Console.WriteLine(str);
            }
            Console.Write("TryParse()");
            WeekDays wdEnum;
            Enum.TryParse<WeekDays>("1", out wdEnum);
            Console.WriteLine(wdEnum);
            Enum.TryParse<WeekDays>("5", out wdEnum);
            Console.WriteLine(wdEnum); // output is 5 cause no 5 in enum
            Enum.TryParse<WeekDays>("6", out wdEnum);
            Console.WriteLine(wdEnum);

        }
    }

    enum WeekDays
    {
        Monday = 1,
        Tuesday,
        Wednesday,            
        Thursday,
        Friday=6,
        Saturday,
        Sunday
    }
}