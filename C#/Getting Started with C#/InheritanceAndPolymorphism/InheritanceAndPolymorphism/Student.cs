using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace InheritanceAndPolymorphism
{
    public class Student:Person
    {
        public int Grade { get; set; }
        public string GetDetails() => $"{FullName} of age {Age}, Grade {Grade}";

    }
}
