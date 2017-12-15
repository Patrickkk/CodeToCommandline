using System;
using System.Threading.Tasks;
using CodeToCommandLine;
using CodeToCommandLine.Tests.TestInput;

namespace CodeToCommandline.CommandlineExample
{
    public class Program
    {
        public static async Task Main(string[] args)
        {
            var app = CodeConvert.ForType<StaticMethods>()
                                 .ForType<AsyncStaticMethods>()
                                 .ForType<InstanceTestClass>()
                                 .WithInstanceCreator(InstanceProvider)
                                 .CreateConsoleApplication();
            await app.RunAsync(args);
        }

        private static InstanceTestClass instanceTestClass = new InstanceTestClass("Console instance class");

        private static object InstanceProvider(Type type)
        {
            return instanceTestClass;
        }
    }
}