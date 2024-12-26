using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TestConsole
{
    public class AccessModifiers
    {
        public void Execute()
        {
            // Access modifiers

            // create the classes
            MyClass class1 = new MyClass();
            DerivedClass class2 = new DerivedClass();

            // Access the methods
            Console.WriteLine($"Class1 Data value is {class1.Data}");
            class1.FuncPublic();
            class1.FuncPublic();
            Console.WriteLine($"Class1 Data value is {class1.Data}");

            // class2.FuncProtected(); // can't access this function outside the class
            Console.WriteLine($"Class2 Data value is {class2.Data}");
            class2.FuncPublic();
            class2.Func3();
            Console.WriteLine($"Class2 Data value is {class2.Data}");

        }
    }
    public class MyClass
    {
        public MyClass() { }

        // public members can be accessed from any other class
        public void FuncPublic()
        {
            Console.WriteLine("This is FuncPublic");
            SomeValue += 1;
        }

        // protected members can be accessed only from this class or derived classes
        protected void FuncProtected()
        {
            Console.WriteLine("This is FuncProtected");
            SomeValue -= 1;
        }

        // private members can only be accessed by this class
        private int SomeValue = 1;

        // Prperties often expose internal data, so they are usually public
        public int Data
        {
            get => SomeValue;
            set => SomeValue = value;
        }
    }

    public class DerivedClass : MyClass
    {
        public DerivedClass() { }

        public void Func3()
        {
            Console.WriteLine("This is Func3 of DerivedClass");
            // TODO: FuncProtected can be accessed because this is a subclass of MyClass
            this.FuncProtected();
        }
    }
}
