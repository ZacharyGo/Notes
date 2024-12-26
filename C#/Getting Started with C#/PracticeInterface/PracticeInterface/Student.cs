using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PracticeInterface
{
    public class Student:IPerson
    {
        public int Grade { get; set; }
        public string FullName { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }
        public int Age { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }

        public string GetDetails() => $"{FullName} of age {Age}, Grade {Grade}";

        public string GetDetails(double height)
        {
            throw new NotImplementedException();
        }
    }
}
