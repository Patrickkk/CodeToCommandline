using System;
using System.Collections.Generic;
using System.Text;

namespace CodeToCommandLine
{
    public class ConsoleApplicationSettings
    {
        public string[] HelpCommands { get; set; } = new string[] { "help", "h" };
        public string[] QuitCommands { get; set; } = new string[] { "quit", "q" };

        public Func<Type, object> InstanceProvider { get; set; } = DefaultInstanceProvider;

        private static object DefaultInstanceProvider(Type type)
        {
            return Activator.CreateInstance(type);
        }

        // TODO allow custom implementations of interfaces used in console and commandrunner.
    }
}