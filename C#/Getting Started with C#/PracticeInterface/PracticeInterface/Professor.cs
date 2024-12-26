using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PracticeInterface
{
    public class Professor : IPerson
    {
        public string Subject { get; set; }
        public string FullName { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }
        public int Age { get => throw new NotImplementedException(); set => throw new NotImplementedException(); }

        public string GetDetails()
        {
            throw new NotImplementedException();
        }

        public string GetDetails(double height)
        {
            throw new NotImplementedException();
        }

       // public string GetDetails() => $"{FullName} of age {Age}, Subject {Subject}";
    }
}
