using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DemoExamples
{

    class AccessModifierDemo
    {
        public string stringPublic = "Public String";
        private string stringPrivate = "private String";
        protected string stringprotected = "protected String";

        public void Display()
        {
            Console.WriteLine(stringPrivate);
            Console.WriteLine(stringPublic);
            Console.WriteLine(stringprotected);   
        }
    }

    class AccessModifierDemoChild : AccessModifierDemo
    {
        public void Display()
        {
            Console.WriteLine(stringprotected);
            Console.WriteLine(stringPublic);
        }
    }
}
