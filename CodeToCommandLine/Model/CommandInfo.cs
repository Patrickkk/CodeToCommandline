using System;
using System.Collections.Generic;
using System.Reflection;
using System.Text;

namespace CodeToCommandLine.Model
{
    public class CommandInfo
    {
        public string ClassName { get; set; } = "";

        public string ClassNameShort { get; set; } = "";

        public string CommandName { get; set; } = "";

        public string CommandNameShort { get; set; } = "";

        public List<CommandParameter> CommandParameters { get; set; } = new List<CommandParameter>();

        public Type Type { get; set; }

        public MethodInfo MethodInfo { get; set; }

        public object ProvidedInstance { get; set; } = null;
    }
}