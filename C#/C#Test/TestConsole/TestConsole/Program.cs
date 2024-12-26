namespace TestConsole
{
    internal class Program
    {
        static void Main(string[] args)
        {
            int a = 2;

            switch (a) {
                case 1:
                    OOPClass oOPClass = new OOPClass();
                    oOPClass.Execute();
                    break;
                case 2:
                    AccessModifiers accessModifiers = new AccessModifiers();
                    accessModifiers.Execute();
                    break;
            }
            
        }
    }
}