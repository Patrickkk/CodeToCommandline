using System.Collections.Generic;
using CodeToCommandLine.Model;

namespace CodeToCommandLine
{
    public interface IArgumentParser
    {
        IEnumerable<CommandWithArguments> Parse(string[] args, IEnumerable<CommandInfo> commands);
    }
}