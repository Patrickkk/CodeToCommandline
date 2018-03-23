using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CodeToCommandLine.V2
{
    public class ConsoleApplication
    {
        private readonly CommandParser commandParser;
        private readonly ArgumentParser parser;// TODO turn into interfaces.
        private readonly ConsoleApplicationSettings settings;

        public ConsoleApplication(ConsoleApplicationSettings settings, ArgumentParser parser)
        {
            this.settings = settings;
            this.parser = parser;// TODO rename to something more correct/
            this.commandParser = new CommandParser();
            // TODO validate conflicts between helptext/quit and commands
        }

        public async Task<int> RunAsync(string[] args = null)
        {
            if (args == null || args.Length == 0)
            {
                await RunAsConsoleApplicationAsync();
            }
            else
            {
                throw new NotImplementedException("return await this.commandRunner.RunAsync(args);");
            }
            return 0;
        }

        private bool CommandIsHelpCommand(string commandText)
        {
            return this.settings.HelpCommands.Contains(commandText, StringComparer.OrdinalIgnoreCase);
        }

        private bool CommandIsQuitCommand(string commandText)
        {
            return this.settings.HelpCommands.Contains(commandText, StringComparer.OrdinalIgnoreCase);
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

        private async Task RunAsConsoleApplicationAsync()
        {
            var welcomeText = $"type {this.settings.HelpCommands[0]} for help or {this.settings.QuitCommands[0]} to exit the application.";
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
                    WriteHelpText();
                }
                else
                {
                    try
                    {
                        var args = CommandParser.ParseCommand(commandText);
                        var availableCommands = parser.GetCommands()
                        throw new NotImplementedException("await this.commandRunner.RunAsync(args);");
                    }
                    catch (Exception ex)
                    {
                        Console.WriteLine(ex);

                        //TODO handle in a better way
                    }
                }
            }
        }

        private void WriteHelpText()
        {
            var helptext = this.parser.WriteHelpText();
            Console.WriteLine(helptext);
        }
    }
}