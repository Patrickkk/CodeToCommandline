using System;
using System.Collections.Generic;

namespace CodeToCommandLine
{
    public static class EnumerableExtensions
    {
        public static string StringJoin(this IEnumerable<string> values, string seperator)
        {
            return string.Join(seperator, values);
        }

        public static string StringJoinNewLine(this IEnumerable<string> values)
        {
            return values.StringJoin(Environment.NewLine);
        }
    }
}