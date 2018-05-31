using System;
using System.Collections.Generic;
using System.Collections.Immutable;
using System.Linq;
using System.Reflection;
using CodeToCommandLine.Model;

namespace CodeToCommandLine
{
    // TODO rename
    public static class TypeToCommandConverter
    {
        private static List<CommandParameter> GetCommandParametersFor(ParameterInfo[] parameterInfo)
        {
            return parameterInfo.Aggregate(Enumerable.Empty<CommandParameter>(), CreateCommandParameter).ToList();
        }

        private static IEnumerable<CommandParameter> CreateCommandParameter(IEnumerable<CommandParameter> exsistingValues, ParameterInfo parameter)
        {
            return exsistingValues.Append(new CommandParameter
            {
                Name = parameter.Name,
                Type = parameter.ParameterType,
                Position = parameter.Position,
                Short = ShortNameCreator.GetShortNameFor(parameter.Name, exsistingValues.Select(x => x.Short)),
            });
        }

        internal static List<CommandInfo> CommandsFor(ImmutableList<(Type type, MethodInfo method, object providedInstance)> typesAndMethods)
        {
            var classNames = typesAndMethods.Select(x => x.type.Name);
            var methodNames = typesAndMethods.Select(x => x.method.Name.TrimEndStringOrdinalIgnoreCase("async"));
            var perType = typesAndMethods.Select(info => new CommandInfo
            {
                Type = info.type,
                ClassName = info.type.Name,
                ClassNameShort = ShortNameCreator.GetShortNameWithAllKnownValues(info.type.Name, classNames),
                CommandName = info.method.Name,
                CommandNameShort = ShortNameCreator.GetShortNameWithAllKnownValues(info.method.Name.TrimEndStringOrdinalIgnoreCase("async"), methodNames),
                MethodInfo = info.method,
                ProvidedInstance = info.providedInstance,
                CommandParameters = GetCommandParametersFor(info.method.GetParameters())
            });

            return perType.ToList();
        }
    }
}