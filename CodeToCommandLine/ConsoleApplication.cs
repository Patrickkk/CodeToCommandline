using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using CodeToCommandLine.Model;

namespace CodeToCommandLine
{
    public class ConsoleApplication
    {
        private readonly CommandRunner commandRunner;
        private readonly ConsoleApplicationSettings settings;
        private readonly List<CommandInfo> commands;

        public ConsoleApplication(ConsoleApplicationSettings settings, List<CommandInfo> commands, IArgumentParser parser)
        {
            this.settings = settings;
            this.commands = commands;
            this.commandRunner = new CommandRunner(commands, parser, settings.InstanceProvider);
            // TODO validate conflicts between helptext/quit and commands
        }

        /// <summary>
        /// Run command directly without console.
        /// </summary>
        /// <param name="commandText"></param>
        /// <returns></returns>
        public Task RunCommandAsync(string commandText)
        {
            return this.commandRunner.RunCommandAsync(commandText);
        }

        public async Task<int> RunAsync(string[] args = null)
        {
            if (ArgumentsPassedOnstartup(args))
            {
                return await RunWithArgumentsAsync(args);
            }
            else
            {
                await RunAsConsoleApplicationAsync();
            }
            return 0;
        }

        private async Task<int> RunWithArgumentsAsync(string[] args)
        {
            try
            {
                await this.commandRunner.RunAsync(args);
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
                return 1;
            }
            return 0;
        }

        private static bool ArgumentsPassedOnstartup(string[] args)
        {
            return args != null && args.Length > 0;
        }

        private bool CommandIsHelpCommand(string commandText)
        {
            return this.settings.HelpCommands.Any(x => commandText.StartsWith(x, StringComparison.OrdinalIgnoreCase));
        }

        private bool CommandIsQuitCommand(string commandText)
        {
            return this.settings.QuitCommands.Contains(commandText, StringComparer.OrdinalIgnoreCase);
        }

        /// <summary>
        /// there is a maximum for readline this is the reason for the method below eing used to read
        /// the text. https://stackoverflow.com/questions/5557889/console-readline-max-length
        /// </summary>
        /// <returns></returns>
        private string ReadLineWithoutLengthLimitation()
        {
            var inputBuffer = new byte[1024];
            var inputStream = Console.OpenStandardInput(inputBuffer.Length);
            using (var streamReader = new StreamReader(inputStream, Console.InputEncoding, false, inputBuffer.Length))
            {
                Console.SetIn(streamReader);
                return Console.ReadLine();
            }
        }

        public async Task RunAsConsoleApplicationAsync()
        {
            var welcomeText = $"type '{this.settings.HelpCommands[0]}' for help or {this.settings.QuitCommands[0]} to exit the application.";
            Console.WriteLine(welcomeText);

            while (true)
            {
                var commandText = ReadLineWithoutLengthLimitation();
                if (CommandIsQuitCommand(commandText))
                {
                    break;
                }
                if (CommandIsHelpCommand(commandText))
                {
                    this.commandRunner.WriteHelpText();
                }
                else
                {
                    try
                    {
                        await this.commandRunner.RunCommandAsync(commandText);
                        Console.WriteLine();
                    }
                    catch (CommandExecutionException commandExecutionException)
                    {
                        Console.WriteLine(commandExecutionException.Message);
                        Console.WriteLine($"type '{this.settings.HelpCommands[0]}' for help and available commands.");
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine(ex);
                        Console.WriteLine();
                        //TODO handle in a better way
                    }
                }
            }
        }
    }
}