using System.Collections.Generic;

namespace CodeToCommandLine
{
    public static class EnumerableExtensions
    {
        public static string StringJoin(this IEnumerable<string> values, string seperator)
        {
            return string.Join(seperator, values);
        }
    }
}