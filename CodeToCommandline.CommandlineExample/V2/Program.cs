using System;
using System.Threading.Tasks;
using CodeToCommandLine;
using CodeToCommandLine.Tests.TestInput;
using CodeToCommandLine.V2;

namespace CodeToCommandline.CommandlineExample.V2
{
    public class Program
    {
        private static InstanceTestClass instanceTestClass = new InstanceTestClass("Console instance class");

        public static async Task Main(string[] args)
        {
            var app = ConsoleCreation.Start()
                .ForType<StaticMethods>()
                .ForType<AsyncStaticMethods>()
                .ForType<InstanceTestClass>()
                .WithInstanceCreator(InstanceProvider)
                .CreateConsoleApplication();
            await app.RunAsync(args);
        }

        private static object InstanceProvider(Type type)
        {
            return instanceTestClass;
        }
    }
}