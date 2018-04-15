using CodeToCommandLine.Tests.TestInput;
using FluentAssertions;
using System;
using System.Diagnostics;
using System.IO;
using System.Threading;
using Xunit;

namespace CodeToCommandLine.Tests
{
    public class ConsoleApplicationRunningIntegrationTests
    {
        [Fact]
        public void RunningNonExsistingCommandShouldBasicHelp()
        {
            var notFoundText = "No Commands found for command 'NonExsistingCommand'";
            var helptext = $"type 'help' for help and available commands";
            RunCommandLineApp(process =>
            {
                process.StandardInput.WriteLine("NonExsistingCommand");
            },
            output =>
            {
                output.Should().Contain(notFoundText);
                output.Should().Contain(helptext);// TODO correct assertion
            });
        }

        [Fact]
        public void RunningCommandWithIncorrectParametersShouldShowErrorAndHelpTextForCommand()
        {
            var expectedResult = $@"type 'help' for help or quit to exit the application.
cannot run command StaticMethods.Parameters missing arguments numberOfTimes
type 'help' for help and available commands.";
            RunCommandLineApp(process =>
            {
                process.StandardInput.WriteLine($"{nameof(StaticMethods)}.{nameof(StaticMethods.Parameters)} -t TEST");
            },
            output =>
            {
                output.Should().Contain(expectedResult);
            });
        }

        [Fact]
        public void RunningCommandWithParametersShouldHaveExpectedResult()
        {
            var expectedResult = $@"type 'help' for help or quit to exit the application.
TEST
TEST
TEST";
            RunCommandLineApp(process =>
            {
                process.StandardInput.WriteLine($"{nameof(StaticMethods)}.{nameof(StaticMethods.Parameters)} -t TEST -n 3");
            },
            output =>
            {
                output.Should().Contain(expectedResult);
            });
        }

        private void RunCommandLineApp(Action<Process> writeActions, Action<string> assertActions)
        {
            var pathToConsoleApp = @"..\..\..\..\CodeToCommandline.CommandlineExample\bin\Debug\netcoreapp2.0\CodeToCommandline.CommandlineExample.dll";
            var file = new FileInfo(pathToConsoleApp);

            ProcessStartInfo startInfo = new ProcessStartInfo
            {
                FileName = @"dotnet",
                Arguments = pathToConsoleApp,
                WorkingDirectory = "",
                //UseShellExecute = true,
                RedirectStandardInput = true,
                RedirectStandardOutput = true,
                //WindowStyle = System.Diagnostics.ProcessWindowStyle.Hidden,
                //CreateNoWindow = true,
            };

            Process process = new System.Diagnostics.Process
            {
                StartInfo = startInfo
            };
            var started = process.Start();
            writeActions(process);

            if (!process.HasExited)
            {
                process.StandardInput.WriteLine("quit");
            }
            var waitTime = 0;
            while (!process.HasExited)
            {
                Thread.Sleep(100);
                waitTime++;
                if (waitTime > 10)
                {
                    process.Kill();
                }
            }
            var output = process.StandardOutput.ReadToEnd();
            assertActions(output);
        }
    }
}