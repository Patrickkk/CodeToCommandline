using System;
using System.Threading.Tasks;
using CodeToCommandLine.Tests.TestInput;
using Xunit;

namespace CodeToCommandLine.Tests
{
    public class CommandFromCodeIntergationTests
    {
        [Fact]
        public async Task RunningNonExsistingCommandShouldShowHelp()
        {
            await Assert.ThrowsAsync<CommandExecutionException>(async () => { await RunCommand("NonExsisting"); });
        }

        [Fact]
        public async Task RunningCommandWithIncorrectParametersShouldShowErrorAndHelpTextForCommand()
        {
            await Assert.ThrowsAsync<FormatException>(async () => { await RunCommand($"StaticMethods.{nameof(StaticMethods.Parameters)} -text stringValue -numberOfTimes textWhereNumberIsExpected"); });
        }

        [Fact]
        public async Task TestSimpleStaticMethodWithoutParameters()
        {
            await RunCommand("StaticMethods." + nameof(StaticMethods.WithoutParameters));
        }

        [Fact]
        public async Task SimpleIntAndStringValueTest()
        {
            await RunCommand($"StaticMethods.{nameof(StaticMethods.Parameters)} -text stringValue -numberOfTimes 10");
        }

        [Fact]
        public async Task SimpleIntAndStringValueTestWithShorts()
        {
            await RunCommand($"StaticMethods.{nameof(StaticMethods.Parameters)} -t stringValue -n 10");
        }

        [Fact]
        public async Task TypeWithStringBasedConstructorShouldBeParsed()
        {
            await RunCommand($"StaticMethods.{nameof(StaticMethods.UriParameter)} -uri http://localhost:8000 -numberOfTimes 10");
        }

        [Fact(Skip = "not implemented yet")]
        public async Task GenericMethod()
        {
            throw new NotImplementedException();
            await RunCommand($"{nameof(StaticMethods.Generic)} -T system.string -uri http://localhost:8000 -numberOfTimes 10");
        }

        private static Task RunCommand(string command)
        {
            var commandRunner = ConsoleCreation.Start()
                                           .ForType<StaticMethods>()
                                           .ForType<AsyncStaticMethods>()
                                           .ForType<InstanceTestClass>()
                                           .WithInstanceCreator(InstanceProvider)
                                           .CreateConsoleApplication();
            return commandRunner.RunCommandAsync(command);
        }

        private static InstanceTestClass instanceTestClass = new InstanceTestClass("Tests");

        private static object InstanceProvider(Type type)
        {
            return instanceTestClass;
        }
    }
}