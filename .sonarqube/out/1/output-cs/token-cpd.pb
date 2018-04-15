Ê
VC:\Users\Patrick\Source\Repos\CodeToCommandline\CodeToCommandLine.Tests\CodeConvert.cs
	namespace 	
CodeToCommandLine
 
. 
Tests !
{ 
[ 
System 
. 
Obsolete 
( 
$str	 ¢
)
¢ £
]
£ §
public 

class 
CodeConvert 
{ 
internal 
static 
ConsoleCreation '
ForType( /
</ 0
T0 1
>1 2
(2 3
)3 4
{		 	
return

 
ConsoleCreation

 "
.

" #
Start

# (
(

( )
)

) *
.

* +
ForType

+ 2
<

2 3
T

3 4
>

4 5
(

5 6
)

6 7
;

7 8
} 	
} 
} ’
]C:\Users\Patrick\Source\Repos\CodeToCommandline\CodeToCommandLine.Tests\CommandParserTests.cs
	namespace 	
CodeToCommandLine
 
. 
Tests !
{ 
public 

class 
CommandPArserTests #
{ 
[ 	
Fact	 
] 
public		 
void		 P
DWhenParsingAsStringWithTwoValuesSeperatedBySpaces2ResultsAreExpected		 X
(		X Y
)		Y Z
{

 	
var 
command 
= 
$str  
;  !
var 
result 
= 
CommandParser &
.& '
ParseCommand' 3
(3 4
command4 ;
); <
;< =
result 
. 
Should 
( 
) 
. 
Equal !
(! "
$str" %
,% &
$str' *
)* +
;+ ,
} 	
[ 	
Fact	 
] 
public 
void ?
3WhenPArsingQuotedValuesTheReultsShouldNotHaveQuotes G
(G H
)H I
{ 	
var 
command 
= 
$str ,
;, -
var 
result 
= 
CommandParser &
.& '
ParseCommand' 3
(3 4
command4 ;
); <
;< =
result 
. 
Should 
( 
) 
. 
Equal !
(! "
$str" '
,' (
$str) .
). /
;/ 0
} 	
[ 	
Fact	 
] 
public 
void V
JWhenParsingQuotedValuesWithEscapedQuotesTheEscapedQuoteShouldEndUpAsAValue ^
(^ _
)_ `
{ 	
var 
command 
= 
$str 0
;0 1
var 
result 
= 
CommandParser &
.& '
ParseCommand' 3
(3 4
command4 ;
); <
;< =
result 
. 
Should 
( 
) 
. 
Equal !
(! "
$str" )
,) *
$str+ 2
)2 3
;3 4
} 	
[   	
Fact  	 
]   
public!! 
void!! P
DWhenParsingQuotedValuesWithEscapedBackSlashesTheyShouldEndUpAsAValue!! X
(!!X Y
)!!Y Z
{"" 	
var## 
command## 
=## 
$str## /
;##/ 0
var$$ 
result$$ 
=$$ 
CommandParser$$ &
.$$& '
ParseCommand$$' 3
($$3 4
command$$4 ;
)$$; <
;$$< =
result%% 
.%% 
Should%% 
(%% 
)%% 
.%% 
Equal%% !
(%%! "
$str%%" (
,%%( )
$str%%* 0
)%%0 1
;%%1 2
}&& 	
}'' 
}(( º0
]C:\Users\Patrick\Source\Repos\CodeToCommandline\CodeToCommandLine.Tests\CommandRunnerTests.cs
	namespace 	
CodeToCommandLine
 
. 
Tests !
{ 
public 

class +
CommandFromCodeIntergationTests 0
{		 
[

 	
Fact

	 
]

 
public 
async 
Task 4
(RunningNonExsistingCommandShouldShowHelp B
(B C
)C D
{ 	
await 
Assert 
. 
ThrowsAsync $
<$ %%
CommandExecutionException% >
>> ?
(? @
async@ E
(F G
)G H
=>I K
{L M
awaitN S

RunCommandT ^
(^ _
$str_ m
)m n
;n o
}p q
)q r
;r s
} 	
[ 	
Fact	 
] 
public 
async 
Task U
IRunningCommandWithIncorrectParametersShouldShowErrorAndHelpTextForCommand c
(c d
)d e
{ 	
await 
Assert 
. 
ThrowsAsync $
<$ %
FormatException% 4
>4 5
(5 6
async6 ;
(< =
)= >
=>? A
{B C
awaitD I

RunCommandJ T
(T U
$"U W
StaticMethods.W e
{e f
nameoff l
(l m
StaticMethodsm z
.z {

Parameters	{ Ö
)
Ö Ü
}
Ü áI
; -text stringValue -numberOfTimes textWhereNumberIsExpected
á ¬
"
¬ √
)
√ ƒ
;
ƒ ≈
}
∆ «
)
« »
;
» …
} 	
[ 	
Fact	 
] 
public 
async 
Task 3
'TestSimpleStaticMethodWithoutParameters A
(A B
)B C
{ 	
await 

RunCommand 
( 
$str -
+. /
nameof0 6
(6 7
StaticMethods7 D
.D E
WithoutParametersE V
)V W
)W X
;X Y
} 	
[ 	
Fact	 
] 
public 
async 
Task '
SimpleIntAndStringValueTest 5
(5 6
)6 7
{ 	
await 

RunCommand 
( 
$" 
StaticMethods. -
{- .
nameof. 4
(4 5
StaticMethods5 B
.B C

ParametersC M
)M N
}N O0
$ -text stringValue -numberOfTimes 10O s
"s t
)t u
;u v
}   	
["" 	
Fact""	 
]"" 
public## 
async## 
Task## 1
%SimpleIntAndStringValueTestWithShorts## ?
(##? @
)##@ A
{$$ 	
await%% 

RunCommand%% 
(%% 
$"%% 
StaticMethods.%% -
{%%- .
nameof%%. 4
(%%4 5
StaticMethods%%5 B
.%%B C

Parameters%%C M
)%%M N
}%%N O!
 -t stringValue -n 10%%O d
"%%d e
)%%e f
;%%f g
}&& 	
[(( 	
Fact((	 
](( 
public)) 
async)) 
Task)) 8
,TypeWithStringBasedConstructorShouldBeParsed)) F
())F G
)))G H
{** 	
await++ 

RunCommand++ 
(++ 
$"++ 
StaticMethods.++ -
{++- .
nameof++. 4
(++4 5
StaticMethods++5 B
.++B C
UriParameter++C O
)++O P
}++P Q9
- -uri http://localhost:8000 -numberOfTimes 10++Q ~
"++~ 
)	++ Ä
;
++Ä Å
},, 	
[.. 	
Fact..	 
(.. 
Skip.. 
=.. 
$str.. *
)..* +
]..+ ,
public// 
async// 
Task// 
GenericMethod// '
(//' (
)//( )
{00 	
throw11 
new11 #
NotImplementedException11 -
(11- .
)11. /
;11/ 0
await22 

RunCommand22 
(22 
$"22 
{22  
nameof22  &
(22& '
StaticMethods22' 4
.224 5
Generic225 <
)22< =
}22= >J
> -T system.string -uri http://localhost:8000 -numberOfTimes 1022> |
"22| }
)22} ~
;22~ 
}33 	
private55 
static55 
Task55 

RunCommand55 &
(55& '
string55' -
command55. 5
)555 6
{66 	
var77 
commandRunner77 
=77 
CodeConvert77  +
.77+ ,
ForType77, 3
<773 4
StaticMethods774 A
>77A B
(77B C
)77C D
.88+ ,
ForType88, 3
<883 4
AsyncStaticMethods884 F
>88F G
(88G H
)88H I
.99+ ,
ForType99, 3
<993 4
InstanceTestClass994 E
>99E F
(99F G
)99G H
.::+ ,
WithInstanceCreator::, ?
(::? @
InstanceProvider::@ P
)::P Q
.;;+ ,$
CreateConsoleApplication;;, D
(;;D E
);;E F
;;;F G
return<< 
commandRunner<<  
.<<  !
RunCommandAsync<<! 0
(<<0 1
command<<1 8
)<<8 9
;<<9 :
}== 	
private?? 
static?? 
InstanceTestClass?? (
instanceTestClass??) :
=??; <
new??= @
InstanceTestClass??A R
(??R S
$str??S Z
)??Z [
;??[ \
privateAA 
staticAA 
objectAA 
InstanceProviderAA .
(AA. /
TypeAA/ 3
typeAA4 8
)AA8 9
{BB 	
returnCC 
instanceTestClassCC $
;CC$ %
}DD 	
}EE 
}FF Ÿ
aC:\Users\Patrick\Source\Repos\CodeToCommandline\CodeToCommandLine.Tests\HelpTextGeneratorTests.cs
	namespace 	
CodeToCommandLine
 
. 
Tests !
{ 
public 

class "
HelpTextGeneratorTests '
{ 
[ 	
Fact	 
( 
Skip 
= 
$str %
)% &
]& '
public		 
void		 B
6HelpTextGeneratorShouldGenerateTextForMultipleCommands		 J
(		J K
)		K L
{

 	
throw 
new #
NotImplementedException -
(- .
). /
;/ 0
} 	
} 
} Ü
gC:\Users\Patrick\Source\Repos\CodeToCommandline\CodeToCommandLine.Tests\TestInput\AsyncStaticMethods.cs
	namespace 	
CodeToCommandLine
 
. 
Tests !
.! "
	TestInput" +
{ 
public 

class 
AsyncStaticMethods #
{		 
public

 
static

 
async

 
Task

  
AsyncMethod

! ,
(

, -
)

- .
{ 	
Console 
. 
	WriteLine 
( 
$str *
)* +
;+ ,
await 
Task 
. 
Delay 
( 
$num 
)  
;  !
} 	
} 
} π
fC:\Users\Patrick\Source\Repos\CodeToCommandline\CodeToCommandLine.Tests\TestInput\InstanceTestClass.cs
	namespace 	
CodeToCommandLine
 
. 
Tests !
.! "
	TestInput" +
{ 
public 

class 
InstanceTestClass "
{		 
private

 
readonly

 
string

 
	echoValue

  )
;

) *
public 
InstanceTestClass  
(  !
string! '
	echoValue( 1
)1 2
{ 	
this 
. 
	echoValue 
= 
	echoValue &
;& '
} 	
public 
void 
WithoutParameters %
(% &
)& '
{ 	
Console 
. 
	WriteLine 
( 
this "
." #
	echoValue# ,
+- .
$str/ ?
)? @
;@ A
} 	
public 
async 
Task "
WithoutParametersAsync 0
(0 1
)1 2
{ 	
Console 
. 
	WriteLine 
( 
this "
." #
	echoValue# ,
+- .
$str/ E
)E F
;F G
await 
Task 
. 
Delay 
( 
$num !
)! "
;" #
Console 
. 
	WriteLine 
( 
this "
." #
	echoValue# ,
+- .
$str/ P
)P Q
;Q R
} 	
public 
void 
WithParameters "
(" #
string# )
value* /
)/ 0
{ 	
Console 
. 
	WriteLine 
( 
this "
." #
	echoValue# ,
+- .
$str/ =
+> ?
value@ E
)E F
;F G
}   	
}!! 
}"" ¬%
bC:\Users\Patrick\Source\Repos\CodeToCommandline\CodeToCommandLine.Tests\TestInput\StaticMethods.cs
	namespace 	
CodeToCommandLine
 
. 
Tests !
.! "
	TestInput" +
{ 
public 

class 
StaticMethods 
{ 
public		 
static		 
void		 
WithoutParameters		 ,
(		, -
)		- .
{

 	
Console 
. 
	WriteLine 
( 
$str $
)$ %
;% &
} 	
public 
static 
void 

Parameters %
(% &
string& ,
text- 1
,1 2
int3 6
numberOfTimes7 D
)D E
{ 	
for 
( 
int 
i 
= 
$num 
; 
i 
< 
numberOfTimes  -
;- .
i/ 0
++0 2
)2 3
{ 
Console 
. 
	WriteLine !
(! "
text" &
)& '
;' (
} 
} 	
public 
static 
void 
ParametersOverLoad -
(- .
string. 4
text5 9
,9 :
int; >
numberOfTimes? L
)L M
{ 	
for 
( 
int 
i 
= 
$num 
; 
i 
< 
numberOfTimes  -
;- .
i/ 0
++0 2
)2 3
{ 
Console 
. 
	WriteLine !
(! "
text" &
+' (
$str) ,
+- .
i/ 0
.0 1
ToString1 9
(9 :
): ;
); <
;< =
} 
} 	
public 
static 
void 
ParametersOverLoad -
(- .
string. 4
text5 9
,9 :
int; >
numberOfTimes? L
,L M
intN Q
startR W
)W X
{ 	
for   
(   
int   
i   
=   
$num   
;   
i   
<   
numberOfTimes    -
;  - .
i  / 0
++  0 2
)  2 3
{!! 
Console"" 
."" 
	WriteLine"" !
(""! "
text""" &
+""' (
$str"") ,
+""- .
i""/ 0
.""0 1
ToString""1 9
(""9 :
)"": ;
)""; <
;""< =
}## 
}$$ 	
public&& 
static&& 
void&& 
ParametersOverLoad&& -
(&&- .
string&&. 4
text&&5 9
,&&9 :
int&&; >
numberOfTimes&&? L
,&&L M
int&&N Q
start&&R W
,&&W X
int&&Y \
max&&] `
)&&` a
{'' 	
for(( 
((( 
int(( 
i(( 
=(( 
start(( 
;(( 
i((  !
<((" #
numberOfTimes(($ 1
&&((2 4
i((5 6
<((7 8
max((9 <
;((< =
i((> ?
++((? A
)((A B
{)) 
Console** 
.** 
	WriteLine** !
(**! "
text**" &
+**' (
$str**) ,
+**- .
i**/ 0
.**0 1
ToString**1 9
(**9 :
)**: ;
)**; <
;**< =
}++ 
},, 	
public.. 
static.. 
void.. 
UriParameter.. '
(..' (
Uri..( +
uri.., /
,../ 0
int..1 4
numberOfTimes..5 B
)..B C
{// 	
for00 
(00 
int00 
i00 
=00 
$num00 
;00 
i00 
<00 
numberOfTimes00  -
;00- .
i00/ 0
++000 2
)002 3
{11 
Console22 
.22 
	WriteLine22 !
(22! "
uri22" %
.22% &
ToString22& .
(22. /
)22/ 0
)220 1
;221 2
}33 
}44 	
public66 
static66 
void66 
Generic66 "
<66" #
T66# $
>66$ %
(66% &
T66& '
input66( -
)66- .
{77 	
Console88 
.88 
	WriteLine88 
(88 
typeof88 $
(88$ %
T88% &
)88& '
)88' (
;88( )
}99 	
}:: 
};; 