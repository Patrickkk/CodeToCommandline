# CodeToCommandline
Turn your code into a commandline application. Sometimes you have some exsisting code that you could use to automate some of your work, but because it takes time to turn it into a console application you are not doing it. With this project you can easily turn your exsisting code into a console application you you can run it more easly via the commandline or powershell.

## Design goals
- Generate a console application from your exsisting code with minimal setup.
  - Run the program with arguments.
  - Run the program as a console application.
- Simple fluent api for setup.
- extensible

## Non goals
- to be the perfect console application.
- super high performance (as the code doesn't run often)

## Build and release

[![Build status](https://ci.appveyor.com/api/projects/status/spne62t6gcnolu4p?svg=true)](https://ci.appveyor.com/project/Patrickkk/codetocommandline)
[![NuGet](https://img.shields.io/nuget/v/PTRK.CodeToCommandLine.svg)]()


## overload resolution
Because the input types cannot be determined untill the actual method is selected overload resolution happens based on:
- The number of arguments.
- Names of arguments passed in.

## possible future features
generate powershell module.