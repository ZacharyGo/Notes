using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleTest
{
    class DateTimeTest
    {
        public DateTimeTest()
        {
            string dateimeYMD = ChangeDateFormatYYYYMMDD(DateTime.Now);
            Console.WriteLine("DateTime in YYYYMMDD {0}", dateimeYMD);
            Console.WriteLine("DateTime in YYYYMMDD {0}", StringToDate(dateimeYMD));
            Console.WriteLine("DateTime in YYYYMMDD {0}", StringToDate(null));
        }

        public string ChangeDateFormatYYYYMMDD(DateTime dateTime)
        {
            return dateTime.ToString("yyyyMMdd");
        }

        public DateTime StringToDate(string dateTimeYMD)
        {
            string[] format = { "yyyyMMdd" };
            DateTime date;
            
            // DateTime.TryParse(dateTimeYMD, out date);
            DateTime.TryParseExact(dateTimeYMD, "yyyyMMdd", null, System.Globalization.DateTimeStyles.None, out date);
            return date;
        }
        public void CompareDates(string dateYMD1, string dateYMD2)
        {
            
            /*if (dateYMD1 > dateYMD2)
                Console.WriteLine("Newer");
            else if (dateYMD1 == dateYMD2)
                Console.WriteLine("Same");
            else
                Console.WriteLine("Later");*/

        }
    }
}
