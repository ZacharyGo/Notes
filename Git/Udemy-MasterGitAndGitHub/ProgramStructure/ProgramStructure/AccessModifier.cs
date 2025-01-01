using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ProgramStructure
{
    internal class InternalBaseClass
    {
        public static int intM = 0;
    }

    public class AccessModifier
    {
        InternalBaseClass myBase = new InternalBaseClass();

    }
}
