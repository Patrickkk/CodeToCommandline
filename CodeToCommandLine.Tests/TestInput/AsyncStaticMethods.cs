﻿using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace CodeToCommandLine.Tests.TestInput
{
    public class AsyncStaticMethods
    {
        private AsyncStaticMethods()
        {
        }

        public static async Task AsyncMethod()
        {
            Console.WriteLine("Test Async");
            await Task.Delay(10);
        }
    }
}