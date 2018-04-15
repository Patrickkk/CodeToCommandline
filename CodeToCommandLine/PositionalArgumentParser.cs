using System;
using System.Collections.Generic;
using System.Linq;
using CodeToCommandLine.Model;

namespace CodeToCommandLine
{
    internal class PositionalArgumentParser : IArgumentParser
    {
        public PositionalArgumentParser()
        {
        }

        public IEnumerable<CommandWithArguments> Parse(string[] args, IEnumerable<CommandInfo> commands)
        {
            return commands.Select(command => ParseForCommand(command, args));
        }

        private CommandWithArguments ParseForCommand(CommandInfo command, string[] args)
        {
            return new CommandWithArguments
            {
                ClassName = command.ClassName,
                ClassNameShort = command.ClassNameShort,
                CommandName = command.CommandName,
                CommandNameShort = command.CommandNameShort,
                CommandParameters = command.CommandParameters,
                MethodInfo = command.MethodInfo,
                ProvidedInstance = command.ProvidedInstance,
                Type = command.Type,
                ParsedArgumentCount = (args.Count() - 1) / 2,
                ArgumentParseResults = command.CommandParameters.Select(x => ParseArgForParameter(args, x)).ToList(),
            };
        }

        private static ArgumentParseResults ParseArgForParameter(string[] args, CommandParameter parameter)
        {
            var argumentTags = args.Where(arg => string.Equals(parameter.Name, arg.TrimStart('-'), StringComparison.OrdinalIgnoreCase) || string.Equals(parameter.Short, arg.TrimStart('-'), StringComparison.OrdinalIgnoreCase));
            if (argumentTags.Count() > 1)
            {
                throw new CommandExecutionException($"More than one value found for the parameter {parameter.Name}");
            }

            if (!argumentTags.Any())
            {
                return new ArgumentParseResults
                {
                    ParameterInfo = parameter,
                };
            }

            var argumentTag = argumentTags.Single();
            var tagIndex = Array.IndexOf(args, argumentTag);
            if (args.Length < tagIndex + 2)
            {
                throw new CommandExecutionException($"Missing value for parameter with name '{argumentTag}'");
            }

            var stringValue = args[tagIndex + 1];
            var parameterObject = ParseStringValue(stringValue, parameter.Type);
            return new ArgumentParseResults
            {
                ArgumentValue = parameterObject,
                ParameterInfo = parameter,
            };
        }

        private static object ParseStringValue(string stringValue, Type type)
        {
            // todo allow custom parsing.
            var types = new Dictionary<Type, Func<string, object>>
            {
                { typeof(string), str => { return str; } },
                { typeof(int), str => { return int.Parse(str); } },
                { typeof(float), str => { return float.Parse(str); } },
                { typeof(decimal), str => { return decimal.Parse(str); } },
                { typeof(bool), str => { return bool.Parse(str); } },
            };
            if (types.ContainsKey(type))
            {
                return types[type].Invoke(stringValue);
            }
            else
            {
                return TryConstructingTypeWithStringConstructor(stringValue, type);
            }
        }

        private static object TryConstructingTypeWithStringConstructor(string stringValue, Type type)
        {
            var constructors = type.GetConstructors();

            // todo make a lot more robust.
            var stringBasedconstructor = constructors.SingleOrDefault(constructor => constructor.GetParameters().Count() == 1 && constructor.GetParameters().Single().ParameterType == typeof(string));
            if (stringBasedconstructor != null)
            {
                return Activator.CreateInstance(type, stringValue);
            }
            else
            {
                throw new Exception();// TODO improve error message
            }
        }
    }
}