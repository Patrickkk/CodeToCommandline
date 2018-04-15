using System;
using System.IO;
using System.Threading;
using Xunit;

namespace CodeToCommandLine.Tests
{
    public class ConsoleApplicationRunningIntegrationTests
    {
        [Fact]
        public void RunningNonExsistingCommandShouldShowHelp()
        {
            RunCommandLineApp();
        }

        [Fact]
        public void RunningCommandWithIncorrectParametersShouldShowErrorAndHelpTextForCommand()
        {
            throw new NotImplementedException();
        }

        private void RunCommandLineApp()
        {
            var pathToConsoleApp = @"..\..\..\..\CodeToCommandline.CommandlineExample\bin\Debug\netcoreapp2.0\CodeToCommandline.CommandlineExample.dll";
            var file = new FileInfo(pathToConsoleApp);

            System.Diagnostics.ProcessStartInfo startInfo = new System.Diagnostics.ProcessStartInfo
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

            System.Diagnostics.Process process = new System.Diagnostics.Process
            {
                StartInfo = startInfo
            };
            var started = process.Start();
            process.StandardInput.WriteLine("help");
            var result = process.StandardOutput.ReadToEnd();
            throw new Exception(result);
            Thread.Sleep(10);
        }
    }
}