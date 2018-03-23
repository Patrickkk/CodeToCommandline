using System;
using System.Collections.Generic;
using System.Collections.Immutable;
using System.Linq;
using System.Reflection;
using System.Text;

namespace CodeToCommandLine.V2
{
    public class ConsoleCreation
    {
        /*
         * for instance methods
         * for instance methods with specific instance
         * for instance method
         * for instance method with specific instance
         * for static methods of type
         * for static method of type
         * for all methods of type
         * for all methods of type with specific instance
         *
         * Design choices
         * allow different instances for different methods => allows for more flexibility, but might produce unexpected results. V2 => turn this into an optional setting.
         *
         */

        public ConsoleCreation(ImmutableList<(Type, MethodInfo, object)> types, Func<Type, object> instanceProvider)
        {
            this.TypesAndMethods = types;
            this.InstanceProvider = instanceProvider;
        }

        private ConsoleCreation() : this(ImmutableList<(Type, MethodInfo, object)>.Empty, DefaultInstanceProvider)
        {
        }

        public Func<Type, object> InstanceProvider { get; }

        public ImmutableList<(Type, MethodInfo, object)> TypesAndMethods { get; }

        public static ConsoleCreation Start()
        {
            return new ConsoleCreation();
        }

        public ConsoleApplication CreateConsoleApplication()
        {
            throw new NotImplementedException();
        }

        public ConsoleApplication CreateConsoleApplication(ConsoleApplicationSettings settings)
        {
            throw new NotImplementedException();
        }

        public ConsoleCreation ForInstanceMethod<T>(MethodInfo method, object instance)
        {
            return ForMethodInternal(typeof(T), method, instance);
        }

        public ConsoleCreation ForInstanceMethod(Type type, MethodInfo method, object instance)
        {
            return ForMethodInternal(type, method, instance);
        }

        public ConsoleCreation ForInstanceMethods<T>()
        {
            return ForMethodsInternal(typeof(T), BindingFlags.Instance | BindingFlags.Public, null);
        }

        public ConsoleCreation ForInstanceMethods(Type type)
        {
            return ForMethodsInternal(type, BindingFlags.Instance | BindingFlags.Public, null);
        }

        public ConsoleCreation ForInstanceMethods(Type type, object instance)
        {
            return ForMethodsInternal(type, BindingFlags.Instance | BindingFlags.Public, instance);
        }

        public ConsoleCreation ForInstanceMethods<T>(T instance)
        {
            return ForMethodsInternal(typeof(T), BindingFlags.Instance | BindingFlags.Public, instance);
        }

        public ConsoleCreation ForMethod<T>(MethodInfo method)
        {
            return ForMethodInternal(typeof(T), method, null);
        }

        public ConsoleCreation ForStaticMethods<T>()
        {
            return ForMethodsInternal(typeof(T), BindingFlags.Static | BindingFlags.Public, null);
        }

        public ConsoleCreation ForStaticMethods(Type type)
        {
            return ForMethodsInternal(type, BindingFlags.Static | BindingFlags.Public, null);
        }

        public ConsoleCreation ForType<T>()
        {
            return ForStaticMethods<T>().ForInstanceMethods<T>();
        }

        public ConsoleCreation WithInstanceCreator(Func<Type, object> instanceProvider)
        {
            return new ConsoleCreation(this.TypesAndMethods, instanceProvider);
        }

        private static object DefaultInstanceProvider(Type type)
        {
            return Activator.CreateInstance(type);
        }

        private ConsoleCreation ForMethodInternal(Type type, MethodInfo method, object instance)
        {
            return new ConsoleCreation(this.TypesAndMethods.Add((type, method, instance)), this.InstanceProvider);
        }

        private ConsoleCreation ForMethodsInternal(Type type, BindingFlags bindingFlags, object instance)
        {
            var methods = type.GetMethods(bindingFlags);
            var newMethods = methods.Select(x => (type, x, instance));
            return new ConsoleCreation(this.TypesAndMethods.AddRange(newMethods), this.InstanceProvider);
        }
    }
}