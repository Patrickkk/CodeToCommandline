using System;

namespace CodeToCommandLine
{
    public static class StringExtensions
    {
        public static string SafeSubstring(this string value, int startIndex, int length)
        {
            if (value.Length > length + startIndex)
            {
                return value.Substring(startIndex, length);
            }
            return value.Substring(startIndex);
        }

        public static string TrimEndStringOrdinalIgnoreCase(this string input, string suffixToRemove)
        {
            return input.TrimEndString(suffixToRemove, StringComparison.OrdinalIgnoreCase);
        }

        public static string TrimEndString(this string input, string suffixToRemove,
    StringComparison comparisonType)
        {
            if (input != null && suffixToRemove != null
              && input.EndsWith(suffixToRemove, comparisonType))
            {
                return input.Substring(0, input.Length - suffixToRemove.Length);
            }
            else return input;
        }
    }
}