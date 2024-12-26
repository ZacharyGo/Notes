﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PracticeInterface
{
    internal interface IPerson
    {
        string FullName { get; set; }
        int Age { get; set; }

        string GetDetails();
        string GetDetails(double height);
    }

    public interface ITest
    {
        void Test();
    }
}
