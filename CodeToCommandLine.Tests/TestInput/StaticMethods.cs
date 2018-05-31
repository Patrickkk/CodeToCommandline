using System;
using System.Collections.Generic;
using System.Text;

namespace CodeToCommandLine.Tests.TestInput
{
    public static class StaticMethods
    {
        public static void WithoutParameters()
        {
            Console.WriteLine("Test");
        }

        public static void Parameters(string text, int numberOfTimes)
        {
            for (int i = 0; i < numberOfTimes; i++)
            {
                Console.WriteLine(text);
            }
        }

        public static void ParametersOverLoad(string text, int numberOfTimes)
        {
            for (int i = 0; i < numberOfTimes; i++)
            {
                Console.WriteLine(text + ":" + i.ToString());
            }
        }

        public static void ParametersOverLoad(string text, int numberOfTimes, int start)
        {
            for (int i = 0; i < numberOfTimes; i++)
            {
                Console.WriteLine(text + ":" + i.ToString());
            }
        }

        public static void ParametersOverLoad(string text, int numberOfTimes, int start, int max)
        {
            for (int i = start; i < numberOfTimes && i < max; i++)
            {
                Console.WriteLine(text + ":" + i.ToString());
            }
        }

        public static void UriParameter(Uri uri, int numberOfTimes)
        {
            for (int i = 0; i < numberOfTimes; i++)
            {
                Console.WriteLine(uri.ToString());
            }
        }

        public static void Generic<T>(T input)
        {
            Console.WriteLine(typeof(T));
        }
    }
}