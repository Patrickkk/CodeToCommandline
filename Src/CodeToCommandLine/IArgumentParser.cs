using CodeToCommandLine.Model;

namespace CodeToCommandLine
{
    public interface IArgumentParser
    {
        object[] Parse(string[] args, Command commandToRun);
    }
}