using System;
using Xunit;

namespace CodeToCommandLine.Tests
{
    public class ConsoleApplicationRunningIntegrationTests
    {
        [Fact]
        public void RunningNonExsistingCommandShouldShowHelp()
        {
            throw new NotImplementedException();
        }

        [Fact]
        public void RunningCommandWithIncorrectParametersShouldShowErrorAndHelpTextForCommand()
        {
            throw new NotImplementedException();
        }

        private void RunCommandLineApp()
        {
            System.Diagnostics.Process process = new System.Diagnostics.Process();
            System.Diagnostics.ProcessStartInfo startInfo = new System.Diagnostics.ProcessStartInfo();
            startInfo.WindowStyle = System.Diagnostics.ProcessWindowStyle.Hidden;
            startInfo.FileName = @"..\..\..\..\CodeToCommandline.CommandlineExample\bin\Debug\netcoreapp2.0\";
            startInfo.Arguments = "/C copy /b Image1.jpg + Archive.rar Image2.jpg";
            process.StartInfo = startInfo;
            process.Start();
        }
    }
}