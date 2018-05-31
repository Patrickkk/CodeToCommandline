using System;
using System.Runtime.Serialization;

namespace CodeToCommandLine
{
    [Serializable]
    internal class MaximumStringLengthContainsDuplicatesException : Exception
    {
        public MaximumStringLengthContainsDuplicatesException()
        {
        }

        public MaximumStringLengthContainsDuplicatesException(string message) : base(message)
        {
        }

        public MaximumStringLengthContainsDuplicatesException(string message, Exception innerException) : base(message, innerException)
        {
        }

        protected MaximumStringLengthContainsDuplicatesException(SerializationInfo info, StreamingContext context) : base(info, context)
        {
        }
    }
}