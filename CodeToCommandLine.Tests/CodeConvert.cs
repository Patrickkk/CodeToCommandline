using System;

namespace CodeToCommandLine.Tests
{
    [System.Obsolete("This is replaced by ConsoleCreation. use ConsoleCreation.Start() to build with the new fluent api. this will be removed in future versions.")]
    public class CodeConvert
    {
        internal static ConsoleCreation ForType<T>()
        {
            return ConsoleCreation.Start().ForType<T>();
        }
    }
}