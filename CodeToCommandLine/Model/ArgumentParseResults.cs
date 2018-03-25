using System;
using System.Collections.Generic;
using System.Reflection;
using System.Text;

namespace CodeToCommandLine.Model
{
    public class ArgumentParseResults
    {
        public CommandParameter ParameterInfo { get; set; }

        public object ArgumentValue { get; set; } = null;
    }
}