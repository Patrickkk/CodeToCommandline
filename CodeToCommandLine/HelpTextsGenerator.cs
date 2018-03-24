using CodeToCommandLine.Model;
using System;
using System.Collections.Generic;
using System.Linq;

namespace CodeToCommandLine
{
    public class HelpTextsGenerator
    {
        internal static string WriteHelpText(List<CommandInfo> commands)
        {
            var commandsHelpText = commands.Select(command => $"{command.ClassName}[{command.ClassNameShort}] {command.CommandName.TrimEndStringOrdinalIgnoreCase("Async")},[{command.CommandNameShort}]"
            + HelpForParameters(command.CommandParameters));
            return With2NewLines(commandsHelpText);
        }

        private static string HelpForParameters(List<CommandParameter> commandParameters)
        {
            return commandParameters
                .Select(parameter => $"   {parameter.Name}[{parameter.Short}] type: {parameter.Type} {parameter.HelpText}")
                .Where(x => !string.IsNullOrEmpty(x))
                .StringJoin(Environment.NewLine);
        }

        private static string With2NewLines(IEnumerable<string> values)
        {
            return values.Where(x => !string.IsNullOrEmpty(x)).StringJoin(Environment.NewLine + Environment.NewLine);
        }
    }
}