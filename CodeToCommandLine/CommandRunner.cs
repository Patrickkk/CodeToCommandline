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

        public async Task<int> RunCommandAsync(string command)
        {
            try
            {
                var args = CommandParser.ParseCommand(command);
                await RunAsync(args);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
                return 1;
            }
            return 0;
        }

        public Task RunAsync(string[] args)
        {
            var command = args[0];
            var commandToRun = GetCommandToRun(command, args);
            return RunCommandAsync(commandToRun, args);
        }

        private CommandInfo GetCommandToRun(string command, string[] args)
        {
            var matchingCommands = GetCommandsWithMathingName(command);
            if (matchingCommands.None())
            {
                throw new Exception($"No Commands found for command '{command}'");// todo output info about help text
            }

            if (matchingCommands.Count() == 1)
            {
                return matchingCommands.Single();
            }
            return matchCommandsOnArguments(matchingCommands, args);
        }

        private CommandInfo matchCommandsOnArguments(IEnumerable<CommandInfo> matchingCommands, string[] args)
        {
            throw new NotImplementedException("TODO implement overload resolution based on the number and names of arguments.");
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

        private async Task RunCommandAsync(CommandInfo commandToRun, string[] args)
        {
            var argumentsWithoutCommand = args.Skip(1).ToArray();
            var argumentValues = this.arumentParser.Parse(argumentsWithoutCommand, commandToRun);
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