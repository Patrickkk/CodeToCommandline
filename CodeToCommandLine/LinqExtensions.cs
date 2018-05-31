using System.Collections.Generic;
using System.Linq;

namespace CodeToCommandLine
{
    public static class LinqExtensions
    {
        public static IEnumerable<T> Append<T>(this IEnumerable<T> source, params T[] values)
        {
            foreach (var item in source)
            {
                yield return item;
            }
            foreach (var item in values)
            {
                yield return item;
            }
        }

        public static bool None<T>(this IEnumerable<T> source)
        {
            return !source.Any();
        }
    }
}