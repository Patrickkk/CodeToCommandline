using CodeToCommandLine.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace CodeToCommandLine
{
    public class CommandRunner
    {
        private readonly IArgumentParser arumentParser;
        private readonly Func<Type, object> instanceProvider;
        private readonly List<CommandInfo> commands;

        public CommandRunner(List<CommandInfo> commands, IArgumentParser argumentParser, Func<Type, object> instanceProvider)
        {
            this.commands = commands;
            this.arumentParser = argumentParser;
            this.instanceProvider = instanceProvider;
        }

        public async Task RunCommandAsync(string command)
        {
            var args = CommandParser.ParseCommand(command);
            await RunAsync(args);
        }

        public Task RunAsync(string[] args)
        {
            var command = args[0];
            var parsedCommands = GetCommandToRun(command, args);
            var fullyParsedCommands = parsedCommands.Where(x => x.AllArgumentsResolved);

            if (fullyParsedCommands.Count() == 1)
            {
                return RunCommandAsync(fullyParsedCommands.Single(), args);
            }

            if (parsedCommands.Count() == 1)
            {
                throw new CommandExecutionException($"cannot run command {command} missing arguments {string.Join(",", parsedCommands.First().ArgumentParseResults.Where(x => x.ArgumentValue == null).Select(x => x.ParameterInfo.Name))}");
            }

            throw new CommandExecutionException($"Cannot run command {command} with arguments {string.Join(" ", args)} te call is ambiguous between {Environment.NewLine}{HelpTextsGenerator.WriteHelpText(parsedCommands)}. Provide all parameters for the methods to ensure proper overload resolution.");
        }

        private IEnumerable<CommandWithArguments> GetCommandToRun(string command, string[] args)
        {
            var matchingCommands = GetCommandsWithMathingName(command);
            if (matchingCommands.None())
            {
                throw new CommandExecutionException($"No Commands found for command '{command}' use help to get more information about the available commands");
            }

            return this.arumentParser.Parse(args, matchingCommands);
        }

        private IEnumerable<CommandInfo> GetCommandsWithMathingName(string command)
        {
            if (command.Contains('.'))
            {
                var classPrefix = command.Split('.')[0];
                var commandName = command.Split('.')[1];
                return this.commands.Where(x => (x.ClassName == classPrefix || x.ClassNameShort == classPrefix) &&
                (x.CommandName == commandName || x.CommandNameShort == commandName));
            }
            else
            {
                return this.commands.Where(x => x.CommandName == command || x.CommandNameShort == command);
            }
        }

        private async Task RunCommandAsync(CommandWithArguments commandToRun, string[] args)
        {
            var argumentValues = commandToRun.ArgumentParseResults.Select(x => x.ArgumentValue).ToArray();
            var instance = GetInstanceOrDefault(commandToRun);
            if (typeof(Task).IsAssignableFrom(commandToRun.MethodInfo.ReturnType))
            {
                await (Task)commandToRun.MethodInfo.Invoke(instance, argumentValues);
            }
            else
            {
                commandToRun.MethodInfo.Invoke(instance, argumentValues);
            }
        }

        internal void WriteHelpText()
        {
            var helptext = HelpTextsGenerator.WriteHelpText(this.commands);
            Console.WriteLine(helptext);
            Console.WriteLine();
        }

        private object GetInstanceOrDefault(CommandInfo commandToRun)
        {
            if (commandToRun.MethodInfo.IsStatic)
            {
                return null;
            }
            if (commandToRun.ProvidedInstance != null)
            {
                return commandToRun.ProvidedInstance;
            }
            return instanceProvider(commandToRun.Type);
        }
    }
}