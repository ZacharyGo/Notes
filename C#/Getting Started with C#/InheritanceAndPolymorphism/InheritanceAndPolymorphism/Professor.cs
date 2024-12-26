using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace InheritanceAndPolymorphism
{
    public class Professor:Person
    {
        public string Subject { get; set; }
        public string GetDetails() => $"{FullName} of age {Age}, Subject {Subject}";
    }
}
