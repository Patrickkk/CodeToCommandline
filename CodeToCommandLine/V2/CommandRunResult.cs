using System;
using System.Collections.Generic;
using System.Text;

namespace CodeToCommandLine.V2
{
    public class CommandRunResult
    {
        public string ErrorMessages { get; set; }

        public int ReturnCode { get; set; }
    }
}