using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace ConsoleTest
{
    public class RegExTest
    {
        public RegExTest()
        {
            string strToCheck = "abc123";
            Console.WriteLine(isAlphaNumeric(strToCheck));
            Console.WriteLine(isAlphaNumeric("strToCheck"));
            Console.WriteLine(isAlphaNumeric("strT  oCheck"));
            Console.WriteLine(isAlphaNumeric("str=ToCheck"));
        }
        public static Boolean isAlphaNumeric(string strToCheck)
        {
            Console.Write("is string : {0} Alphanumeric ", strToCheck);
            Regex rg = new Regex(@"^[a-zA-Z0-9\s,]*$");
            return rg.IsMatch(strToCheck);
        }
    }
}
