using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace CodeToCommandLine.Model
{
    public class CommandWithArguments : CommandInfo
    {
        public int ParsedArgumentCount { get; set; }

        public List<ArgumentParseResults> ArgumentParseResults { get; set; }

        public bool AllArgumentsResolved { get { return this.ArgumentParseResults.TrueForAll(x => x.ArgumentValue != null) && ParsedArgumentCount == ArgumentParseResults.Count; } }
    }
}