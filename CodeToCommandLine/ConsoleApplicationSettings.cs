﻿using System;
using System.Collections.Generic;
using System.Text;

namespace CodeToCommandLine
{
    public class ConsoleApplicationSettings
    {
        public string[] HelpCommands { get; set; } = new string[] { "help", "h" };
        public string[] QuitCommands { get; set; } = new string[] { "quit", "q" };
    }
}