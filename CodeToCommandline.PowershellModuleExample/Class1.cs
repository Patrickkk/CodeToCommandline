using System;
using System.Management.Automation;

namespace CodeToCommandline.PowershellModuleExample
{
    [Cmdlet(VerbsDiagnostic.Test, "BinaryModuleCmdlet1")]
    public class TestBinaryModuleCmdlet1Command : Cmdlet
    {
        protected override void BeginProcessing()
        {
            WriteObject("BinaryModuleCmdlet1 exported by the ModuleCmdlets module.");
        }
    }
}