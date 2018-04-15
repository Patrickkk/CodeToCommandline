Ó

^C:\Users\Patrick\Source\Repos\CodeToCommandline\CodeToCommandLine\CommandExecutionException.cs
	namespace 	
CodeToCommandLine
 
{ 
public 

class %
CommandExecutionException *
:+ ,
	Exception- 6
{		 
public

 %
CommandExecutionException

 (
(

( )
)

) *
{ 	
} 	
public %
CommandExecutionException (
(( )
string) /
message0 7
)7 8
:9 :
base; ?
(? @
message@ G
)G H
{ 	
} 	
public %
CommandExecutionException (
(( )
string) /
message0 7
,7 8
	Exception9 B
innerExceptionC Q
)Q R
:S T
baseU Y
(Y Z
messageZ a
,a b
innerExceptionc q
)q r
{ 	
} 	
	protected %
CommandExecutionException +
(+ ,
SerializationInfo, =
info> B
,B C
StreamingContextD T
contextU \
)\ ]
:^ _
base` d
(d e
infoe i
,i j
contextk r
)r s
{ 	
} 	
} 
} Ç2
RC:\Users\Patrick\Source\Repos\CodeToCommandline\CodeToCommandLine\CommandParser.cs
	namespace 	
CodeToCommandLine
 
{ 
public 

class 
CommandParser 
{ 
public		 
static		 
string		 
[		 
]		 
ParseCommand		 +
(		+ ,
string		, 2
command		3 :
)		: ;
{

 	
var 
result 
= 
command  
.  !
ToCharArray! ,
(, -
)- .
. 
	Aggregate 
( 
new 
ParseResult *
(* +
)+ ,
,, -
ParseCharacter. <
)< =
;= >
return 
ParseResult 
. '
WithCurrentResultAsArgument :
(: ;
result; A
)A B
.B C
	ArgumentsC L
.L M
ToArrayM T
(T U
)U V
;V W
} 	
private 
static 
ParseResult "
ParseCharacter# 1
(1 2
ParseResult2 =
previousResult> L
,L M
charN R
currentCharS ^
)^ _
{ 	
if 
( 
! 
previousResult 
.  
PreviouseIsEscape  1
&&2 4
currentChar5 @
==A C
$charD H
)H I
{ 
return 
new 
ParseResult &
(& '
previousResult' 5
)5 6
{7 8
PreviouseIsEscape9 J
=K L
trueM Q
}R S
;S T
} 
if 
( 
! 
previousResult 
.  
PreviouseIsEscape  1
&&2 4
currentChar 
== 
$char "
)" #
{ 
return 
new 
ParseResult &
(& '
previousResult' 5
)5 6
{7 8
InQuotes9 A
=B C
!D E
previousResultE S
.S T
InQuotesT \
}] ^
;^ _
} 
if 
( 
currentChar 
== 
$char "
&&# %
!& '
previousResult' 5
.5 6
InQuotes6 >
)> ?
{ 
return 
ParseResult "
." #'
WithCurrentResultAsArgument# >
(> ?
previousResult? M
)M N
;N O
}   
return"" 
ParseResult"" 
."" #
WithAdditionalCharacter"" 6
(""6 7
previousResult""7 E
,""E F
currentChar""G R
)""R S
;""S T
}## 	
private%% 
class%% 
ParseResult%% !
{&& 	
public'' 
ParseResult'' 
('' 
)''  
{(( 
})) 
internal++ 
static++ 
ParseResult++ ''
WithCurrentResultAsArgument++( C
(++C D
ParseResult++D O
previous++P X
)++X Y
{,, 
var-- 
value-- 
=-- 
new-- 
ParseResult--  +
(--+ ,
previous--, 4
)--4 5
;--5 6
value.. 
... 
	Arguments.. 
...  
Add..  #
(..# $
value..$ )
...) *
CurrentValue..* 6
)..6 7
;..7 8
value// 
.// 
CurrentValue// "
=//# $
$str//% '
;//' (
return00 
value00 
;00 
}11 
internal33 
static33 
ParseResult33 '#
WithAdditionalCharacter33( ?
(33? @
ParseResult33@ K
previous33L T
,33T U
char33V Z
currentChar33[ f
)33f g
{44 
var55 
value55 
=55 
new55 
ParseResult55  +
(55+ ,
previous55, 4
)554 5
;555 6
value66 
.66 
CurrentValue66 "
+=66# %
currentChar66& 1
;661 2
value77 
.77 
PreviouseIsEscape77 '
=77( )
false77* /
;77/ 0
return88 
value88 
;88 
}99 
public;; 
ParseResult;; 
(;; 
ParseResult;; *
previous;;+ 3
);;3 4
{<< 
this== 
.== 
InQuotes== 
=== 
previous==  (
.==( )
InQuotes==) 1
;==1 2
this>> 
.>> 
PreviouseIsEscape>> &
=>>' (
previous>>) 1
.>>1 2
PreviouseIsEscape>>2 C
;>>C D
this?? 
.?? 
CurrentValue?? !
=??" #
previous??$ ,
.??, -
CurrentValue??- 9
;??9 :
this@@ 
.@@ 
	Arguments@@ 
.@@ 
AddRange@@ '
(@@' (
previous@@( 0
.@@0 1
	Arguments@@1 :
)@@: ;
;@@; <
}AA 
publicCC 
boolCC 
InQuotesCC  
{CC! "
getCC# &
;CC& '
setCC( +
;CC+ ,
}CC- .
=CC/ 0
falseCC1 6
;CC6 7
publicEE 
boolEE 
PreviouseIsEscapeEE )
{EE* +
getEE, /
;EE/ 0
setEE1 4
;EE4 5
}EE6 7
=EE8 9
falseEE: ?
;EE? @
publicGG 
stringGG 
CurrentValueGG &
{GG' (
getGG) ,
;GG, -
setGG. 1
;GG1 2
}GG3 4
=GG5 6
$strGG7 9
;GG9 :
publicII 
newII 
ListII 
<II 
stringII "
>II" #
	ArgumentsII$ -
{II. /
getII0 3
;II3 4
setII5 8
;II8 9
}II: ;
=II< =
newII> A
ListIIB F
<IIF G
stringIIG M
>IIM N
(IIN O
)IIO P
;IIP Q
}JJ 	
}KK 
}LL …[
RC:\Users\Patrick\Source\Repos\CodeToCommandline\CodeToCommandLine\CommandRunner.cs
	namespace 	
CodeToCommandLine
 
{ 
public		 

class		 
CommandRunner		 
{

 
private 
readonly 
IArgumentParser (
arumentParser) 6
;6 7
private 
readonly 
Func 
< 
Type "
," #
object$ *
>* +
instanceProvider, <
;< =
private 
readonly 
List 
< 
CommandInfo )
>) *
commands+ 3
;3 4
public 
CommandRunner 
( 
List !
<! "
CommandInfo" -
>- .
commands/ 7
,7 8
IArgumentParser9 H
argumentParserI W
,W X
FuncY ]
<] ^
Type^ b
,b c
objectd j
>j k
instanceProviderl |
)| }
{ 	
this 
. 
commands 
= 
commands $
;$ %
this 
. 
arumentParser 
=  
argumentParser! /
;/ 0
this 
. 
instanceProvider !
=" #
instanceProvider$ 4
;4 5
} 	
public 
async 
Task 
RunCommandAsync )
() *
string* 0
command1 8
)8 9
{ 	
var 
args 
= 
CommandParser $
.$ %
ParseCommand% 1
(1 2
command2 9
)9 :
;: ;
await 
RunAsync 
( 
args 
)  
;  !
} 	
public 
Task 
RunAsync 
( 
string #
[# $
]$ %
args& *
)* +
{ 	
var 
command 
= 
args 
[ 
$num  
]  !
;! "
var 
parsedCommands 
=  
GetCommandToRun! 0
(0 1
command1 8
,8 9
args: >
)> ?
;? @
var   
fullyParsedCommands   #
=  $ %
parsedCommands  & 4
.  4 5
Where  5 :
(  : ;
x  ; <
=>  = ?
x  @ A
.  A B 
AllArgumentsResolved  B V
)  V W
;  W X
if"" 
("" 
fullyParsedCommands"" #
.""# $
Count""$ )
("") *
)""* +
=="", .
$num""/ 0
)""0 1
{## 
return$$ 
RunCommandAsync$$ &
($$& '
fullyParsedCommands$$' :
.$$: ;
Single$$; A
($$A B
)$$B C
,$$C D
args$$E I
)$$I J
;$$J K
}%% 
if'' 
('' 
parsedCommands'' 
.'' 
Count'' $
(''$ %
)''% &
==''' )
$num''* +
)''+ ,
{(( 
throw)) 
new)) %
CommandExecutionException)) 3
())3 4
$"))4 6
cannot run command ))6 I
{))I J
command))J Q
}))Q R
 missing arguments ))R e
{))e f
string))f l
.))l m
Join))m q
())q r
$str))r u
,))u v
parsedCommands	))w Ö
.
))Ö Ü
First
))Ü ã
(
))ã å
)
))å ç
.
))ç é"
ArgumentParseResults
))é ¢
.
))¢ £
Where
))£ ®
(
))® ©
x
))© ™
=>
))´ ≠
x
))Æ Ø
.
))Ø ∞
ArgumentValue
))∞ Ω
==
))æ ¿
null
))¡ ≈
)
))≈ ∆
.
))∆ «
Select
))« Õ
(
))Õ Œ
x
))Œ œ
=>
))– “
x
))” ‘
.
))‘ ’
ParameterInfo
))’ ‚
.
))‚ „
Name
))„ Á
)
))Á Ë
)
))Ë È
}
))È Í
"
))Í Î
)
))Î Ï
;
))Ï Ì
}** 
throw,, 
new,, %
CommandExecutionException,, /
(,,/ 0
$",,0 2
Cannot run command ,,2 E
{,,E F
command,,F M
},,M N
 with arguments ,,N ^
{,,^ _
string,,_ e
.,,e f
Join,,f j
(,,j k
$str,,k n
,,,n o
args,,p t
),,t u
},,u v+
 te call is ambiguous between 	,,v î
{
,,î ï
Environment
,,ï †
.
,,† °
NewLine
,,° ®
}
,,® ©
{
,,© ™ 
HelpTextsGenerator
,,™ º
.
,,º Ω
WriteHelpText
,,Ω  
(
,,  À
parsedCommands
,,À Ÿ
)
,,Ÿ ⁄
}
,,⁄ €\
N. Provide all parameters for the methods to ensure proper overload resolution.
,,€ ©
"
,,© ™
)
,,™ ´
;
,,´ ¨
}-- 	
private// 
IEnumerable// 
<//  
CommandWithArguments// 0
>//0 1
GetCommandToRun//2 A
(//A B
string//B H
command//I P
,//P Q
string//R X
[//X Y
]//Y Z
args//[ _
)//_ `
{00 	
var11 
matchingCommands11  
=11! "&
GetCommandsWithMathingName11# =
(11= >
command11> E
)11E F
;11F G
if22 
(22 
matchingCommands22  
.22  !
None22! %
(22% &
)22& '
)22' (
{33 
throw44 
new44 %
CommandExecutionException44 3
(443 4
$"444 6+
No Commands found for command '446 U
{44U V
command44V ]
}44] ^
'44^ _
"44_ `
)44` a
;44a b
}55 
return77 
this77 
.77 
arumentParser77 %
.77% &
Parse77& +
(77+ ,
args77, 0
,770 1
matchingCommands772 B
)77B C
;77C D
}88 	
private:: 
IEnumerable:: 
<:: 
CommandInfo:: '
>::' (&
GetCommandsWithMathingName::) C
(::C D
string::D J
command::K R
)::R S
{;; 	
if<< 
(<< 
command<< 
.<< 
Contains<<  
(<<  !
$char<<! $
)<<$ %
)<<% &
{== 
var>> 
classPrefix>> 
=>>  !
command>>" )
.>>) *
Split>>* /
(>>/ 0
$char>>0 3
)>>3 4
[>>4 5
$num>>5 6
]>>6 7
;>>7 8
var?? 
commandName?? 
=??  !
command??" )
.??) *
Split??* /
(??/ 0
$char??0 3
)??3 4
[??4 5
$num??5 6
]??6 7
;??7 8
return@@ 
this@@ 
.@@ 
commands@@ $
.@@$ %
Where@@% *
(@@* +
x@@+ ,
=>@@- /
(@@0 1
x@@1 2
.@@2 3
	ClassName@@3 <
==@@= ?
classPrefix@@@ K
||@@L N
x@@O P
.@@P Q
ClassNameShort@@Q _
==@@` b
classPrefix@@c n
)@@n o
&&@@p r
(AA 
xAA 
.AA 
CommandNameAA 
==AA !
commandNameAA" -
||AA. 0
xAA1 2
.AA2 3
CommandNameShortAA3 C
==AAD F
commandNameAAG R
)AAR S
)AAS T
;AAT U
}BB 
elseCC 
{DD 
returnEE 
thisEE 
.EE 
commandsEE $
.EE$ %
WhereEE% *
(EE* +
xEE+ ,
=>EE- /
xEE0 1
.EE1 2
CommandNameEE2 =
==EE> @
commandEEA H
||EEI K
xEEL M
.EEM N
CommandNameShortEEN ^
==EE_ a
commandEEb i
)EEi j
;EEj k
}FF 
}GG 	
privateII 
asyncII 
TaskII 
RunCommandAsyncII *
(II* + 
CommandWithArgumentsII+ ?
commandToRunII@ L
,IIL M
stringIIN T
[IIT U
]IIU V
argsIIW [
)II[ \
{JJ 	
varKK #
argumentsWithoutCommandKK '
=KK( )
argsKK* .
.KK. /
SkipKK/ 3
(KK3 4
$numKK4 5
)KK5 6
.KK6 7
ToArrayKK7 >
(KK> ?
)KK? @
;KK@ A
varLL 
argumentValuesLL 
=LL  
commandToRunLL! -
.LL- . 
ArgumentParseResultsLL. B
.LLB C
SelectLLC I
(LLI J
xLLJ K
=>LLL N
xLLO P
.LLP Q
ArgumentValueLLQ ^
)LL^ _
.LL_ `
ToArrayLL` g
(LLg h
)LLh i
;LLi j
varMM 
instanceMM 
=MM  
GetInstanceOrDefaultMM /
(MM/ 0
commandToRunMM0 <
)MM< =
;MM= >
ifNN 
(NN 
typeofNN 
(NN 
TaskNN 
)NN 
.NN 
IsAssignableFromNN -
(NN- .
commandToRunNN. :
.NN: ;

MethodInfoNN; E
.NNE F

ReturnTypeNNF P
)NNP Q
)NNQ R
{OO 
awaitPP 
(PP 
TaskPP 
)PP 
commandToRunPP (
.PP( )

MethodInfoPP) 3
.PP3 4
InvokePP4 :
(PP: ;
instancePP; C
,PPC D
argumentValuesPPE S
)PPS T
;PPT U
}QQ 
elseRR 
{SS 
commandToRunTT 
.TT 

MethodInfoTT '
.TT' (
InvokeTT( .
(TT. /
instanceTT/ 7
,TT7 8
argumentValuesTT9 G
)TTG H
;TTH I
}UU 
}VV 	
internalXX 
voidXX 
WriteHelpTextXX #
(XX# $
)XX$ %
{YY 	
varZZ 
helptextZZ 
=ZZ 
HelpTextsGeneratorZZ -
.ZZ- .
WriteHelpTextZZ. ;
(ZZ; <
thisZZ< @
.ZZ@ A
commandsZZA I
)ZZI J
;ZZJ K
Console[[ 
.[[ 
	WriteLine[[ 
([[ 
helptext[[ &
)[[& '
;[[' (
Console\\ 
.\\ 
	WriteLine\\ 
(\\ 
)\\ 
;\\  
}]] 	
private__ 
object__  
GetInstanceOrDefault__ +
(__+ ,
CommandInfo__, 7
commandToRun__8 D
)__D E
{`` 	
ifaa 
(aa 
commandToRunaa 
.aa 

MethodInfoaa '
.aa' (
IsStaticaa( 0
)aa0 1
{bb 
returncc 
nullcc 
;cc 
}dd 
ifee 
(ee 
commandToRunee 
.ee 
ProvidedInstanceee -
!=ee. 0
nullee1 5
)ee5 6
{ff 
returngg 
commandToRungg #
.gg# $
ProvidedInstancegg$ 4
;gg4 5
}hh 
returnii 
instanceProviderii #
(ii# $
commandToRunii$ 0
.ii0 1
Typeii1 5
)ii5 6
;ii6 7
}jj 	
}kk 
}ll ÚH
WC:\Users\Patrick\Source\Repos\CodeToCommandline\CodeToCommandLine\ConsoleApplication.cs
	namespace		 	
CodeToCommandLine		
 
{

 
public 

class 
ConsoleApplication #
{ 
private 
readonly 
CommandRunner &
commandRunner' 4
;4 5
private 
readonly &
ConsoleApplicationSettings 3
settings4 <
;< =
private 
readonly 
List 
< 
CommandInfo )
>) *
commands+ 3
;3 4
public 
ConsoleApplication !
(! "&
ConsoleApplicationSettings" <
settings= E
,E F
ListG K
<K L
CommandInfoL W
>W X
commandsY a
,a b
IArgumentParserc r
parsers y
)y z
{ 	
this 
. 
settings 
= 
settings $
;$ %
this 
. 
commands 
= 
commands $
;$ %
this 
. 
commandRunner 
=  
new! $
CommandRunner% 2
(2 3
commands3 ;
,; <
parser= C
,C D
settingsE M
.M N
InstanceProviderN ^
)^ _
;_ `
} 	
public 
Task 
RunCommandAsync #
(# $
string$ *
commandText+ 6
)6 7
{ 	
return   
this   
.   
commandRunner   %
.  % &
RunCommandAsync  & 5
(  5 6
commandText  6 A
)  A B
;  B C
}!! 	
public## 
async## 
Task## 
<## 
int## 
>## 
RunAsync## '
(##' (
string##( .
[##. /
]##/ 0
args##1 5
=##6 7
null##8 <
)##< =
{$$ 	
if%% 
(%% $
ArgumentsPassedOnstartup%% (
(%%( )
args%%) -
)%%- .
)%%. /
{&& 
return'' 
await'' !
RunWithArgumentsAsync'' 2
(''2 3
args''3 7
)''7 8
;''8 9
}(( 
else)) 
{** 
await++ (
RunAsConsoleApplicationAsync++ 2
(++2 3
)++3 4
;++4 5
},, 
return-- 
$num-- 
;-- 
}.. 	
private00 
async00 
Task00 
<00 
int00 
>00 !
RunWithArgumentsAsync00  5
(005 6
string006 <
[00< =
]00= >
args00? C
)00C D
{11 	
try22 
{33 
await44 
this44 
.44 
commandRunner44 (
.44( )
RunAsync44) 1
(441 2
args442 6
)446 7
;447 8
}55 
catch66 
(66 
	Exception66 
ex66 
)66  
{77 
Console88 
.88 
	WriteLine88 !
(88! "
ex88" $
.88$ %
ToString88% -
(88- .
)88. /
)88/ 0
;880 1
return99 
$num99 
;99 
}:: 
return;; 
$num;; 
;;; 
}<< 	
private>> 
static>> 
bool>> $
ArgumentsPassedOnstartup>> 4
(>>4 5
string>>5 ;
[>>; <
]>>< =
args>>> B
)>>B C
{?? 	
return@@ 
args@@ 
!=@@ 
null@@ 
&&@@  "
args@@# '
.@@' (
Length@@( .
>@@/ 0
$num@@1 2
;@@2 3
}AA 	
privateCC 
boolCC  
CommandIsHelpCommandCC )
(CC) *
stringCC* 0
commandTextCC1 <
)CC< =
{DD 	
returnEE 
thisEE 
.EE 
settingsEE  
.EE  !
HelpCommandsEE! -
.EE- .
AnyEE. 1
(EE1 2
xEE2 3
=>EE4 6
commandTextEE7 B
.EEB C

StartsWithEEC M
(EEM N
xEEN O
,EEO P
StringComparisonEEQ a
.EEa b
OrdinalIgnoreCaseEEb s
)EEs t
)EEt u
;EEu v
}FF 	
privateHH 
boolHH  
CommandIsQuitCommandHH )
(HH) *
stringHH* 0
commandTextHH1 <
)HH< =
{II 	
returnJJ 
thisJJ 
.JJ 
settingsJJ  
.JJ  !
QuitCommandsJJ! -
.JJ- .
ContainsJJ. 6
(JJ6 7
commandTextJJ7 B
,JJB C
StringComparerJJD R
.JJR S
OrdinalIgnoreCaseJJS d
)JJd e
;JJe f
}KK 	
privateRR 
stringRR +
ReadLineWithoutLengthLimitationRR 6
(RR6 7
)RR7 8
{SS 	
varTT 
inputBufferTT 
=TT 
newTT !
byteTT" &
[TT& '
$numTT' +
]TT+ ,
;TT, -
varUU 
inputStreamUU 
=UU 
ConsoleUU %
.UU% &
OpenStandardInputUU& 7
(UU7 8
inputBufferUU8 C
.UUC D
LengthUUD J
)UUJ K
;UUK L
usingVV 
(VV 
varVV 
streamReaderVV #
=VV$ %
newVV& )
StreamReaderVV* 6
(VV6 7
inputStreamVV7 B
,VVB C
ConsoleVVD K
.VVK L
InputEncodingVVL Y
,VVY Z
falseVV[ `
,VV` a
inputBufferVVb m
.VVm n
LengthVVn t
)VVt u
)VVu v
{WW 
ConsoleXX 
.XX 
SetInXX 
(XX 
streamReaderXX *
)XX* +
;XX+ ,
returnYY 
ConsoleYY 
.YY 
ReadLineYY '
(YY' (
)YY( )
;YY) *
}ZZ 
}[[ 	
public]] 
async]] 
Task]] (
RunAsConsoleApplicationAsync]] 6
(]]6 7
)]]7 8
{^^ 	
var__ 
welcomeText__ 
=__ 
$"__  
type '__  &
{__& '
this__' +
.__+ ,
settings__, 4
.__4 5
HelpCommands__5 A
[__A B
$num__B C
]__C D
}__D E
' for help or __E S
{__S T
this__T X
.__X Y
settings__Y a
.__a b
QuitCommands__b n
[__n o
$num__o p
]__p q
}__q r&
 to exit the application.	__r ã
"
__ã å
;
__å ç
Console`` 
.`` 
	WriteLine`` 
(`` 
welcomeText`` )
)``) *
;``* +
whilebb 
(bb 
truebb 
)bb 
{cc 
vardd 
commandTextdd 
=dd  !+
ReadLineWithoutLengthLimitationdd" A
(ddA B
)ddB C
;ddC D
ifee 
(ee  
CommandIsQuitCommandee (
(ee( )
commandTextee) 4
)ee4 5
)ee5 6
{ff 
breakgg 
;gg 
}hh 
ifii 
(ii  
CommandIsHelpCommandii (
(ii( )
commandTextii) 4
)ii4 5
)ii5 6
{jj 
thiskk 
.kk 
commandRunnerkk &
.kk& '
WriteHelpTextkk' 4
(kk4 5
)kk5 6
;kk6 7
}ll 
elsemm 
{nn 
tryoo 
{pp 
awaitqq 
thisqq "
.qq" #
commandRunnerqq# 0
.qq0 1
RunCommandAsyncqq1 @
(qq@ A
commandTextqqA L
)qqL M
;qqM N
Consolerr 
.rr  
	WriteLinerr  )
(rr) *
)rr* +
;rr+ ,
}ss 
catchtt 
(tt %
CommandExecutionExceptiontt 4%
commandExecutionExceptiontt5 N
)ttN O
{uu 
Consolevv 
.vv  
	WriteLinevv  )
(vv) *%
commandExecutionExceptionvv* C
.vvC D
MessagevvD K
)vvK L
;vvL M
Consoleww 
.ww  
	WriteLineww  )
(ww) *
$"ww* ,
type 'ww, 2
{ww2 3
thisww3 7
.ww7 8
settingsww8 @
.ww@ A
HelpCommandswwA M
[wwM N
$numwwN O
]wwO P
}wwP Q.
"' for help and available commands.wwQ s
"wws t
)wwt u
;wwu v
}xx 
catchyy 
(yy 
	Exceptionyy $
exyy% '
)yy' (
{zz 
Console{{ 
.{{  
	WriteLine{{  )
({{) *
ex{{* ,
){{, -
;{{- .
Console|| 
.||  
	WriteLine||  )
(||) *
)||* +
;||+ ,
}~~ 
} 
}
ÄÄ 
}
ÅÅ 	
}
ÇÇ 
}ÉÉ ã
_C:\Users\Patrick\Source\Repos\CodeToCommandline\CodeToCommandLine\ConsoleApplicationSettings.cs
	namespace 	
CodeToCommandLine
 
{ 
public 

class &
ConsoleApplicationSettings +
{ 
public		 
string		 
[		 
]		 
HelpCommands		 $
{		% &
get		' *
;		* +
set		, /
;		/ 0
}		1 2
=		3 4
new		5 8
string		9 ?
[		? @
]		@ A
{		B C
$str		D J
,		J K
$str		L O
}		P Q
;		Q R
public

 
string

 
[

 
]

 
QuitCommands

 $
{

% &
get

' *
;

* +
set

, /
;

/ 0
}

1 2
=

3 4
new

5 8
string

9 ?
[

? @
]

@ A
{

B C
$str

D J
,

J K
$str

L O
}

P Q
;

Q R
public 
Func 
< 
Type 
, 
object  
>  !
InstanceProvider" 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
=A B#
DefaultInstanceProviderC Z
;Z [
private 
static 
object #
DefaultInstanceProvider 5
(5 6
Type6 :
type; ?
)? @
{ 	
return 
	Activator 
. 
CreateInstance +
(+ ,
type, 0
)0 1
;1 2
} 	
} 
} ¨R
TC:\Users\Patrick\Source\Repos\CodeToCommandline\CodeToCommandLine\ConsoleCreation.cs
	namespace 	
CodeToCommandLine
 
{		 
public

 

class

 
ConsoleCreation

  
{ 
private 
const 
BindingFlags "(
DeclaredPublicInstanceMethod# ?
=@ A
BindingFlagsB N
.N O
InstanceO W
|X Y
BindingFlagsZ f
.f g
Publicg m
|n o
BindingFlagsp |
.| }
DeclaredOnly	} â
;
â ä
private 
const 
BindingFlags "'
DeclaredPublicStaticMethods# >
=? @
BindingFlagsA M
.M N
StaticN T
|U V
BindingFlagsW c
.c d
Publicd j
|k l
BindingFlagsm y
.y z
DeclaredOnly	z Ü
;
Ü á
public 
ConsoleCreation 
( 
ImmutableList ,
<, -
(- .
Type. 2
,2 3

MethodInfo4 >
,> ?
object@ F
)F G
>G H
typesI N
,N O&
ConsoleApplicationSettingsP j
settingsk s
)s t
{ 	
this   
.   
TypesAndMethods    
=  ! "
types  # (
;  ( )
this!! 
.!! 
Settings!! 
=!! 
settings!! $
;!!$ %
}"" 	
private$$ 
ConsoleCreation$$ 
($$  
)$$  !
:$$" #
this$$$ (
($$( )
ImmutableList$$) 6
<$$6 7
($$7 8
Type$$8 <
,$$< =

MethodInfo$$> H
,$$H I
object$$J P
)$$P Q
>$$Q R
.$$R S
Empty$$S X
,$$X Y
new$$Z ]&
ConsoleApplicationSettings$$^ x
($$x y
)$$y z
)$$z {
{%% 	
}&& 	
public(( &
ConsoleApplicationSettings(( )
Settings((* 2
{((3 4
get((5 8
;((8 9
}((: ;
public** 
ImmutableList** 
<** 
(** 
Type** "
,**" #

MethodInfo**$ .
,**. /
object**0 6
)**6 7
>**7 8
TypesAndMethods**9 H
{**I J
get**K N
;**N O
}**P Q
public,, 
static,, 
ConsoleCreation,, %
Start,,& +
(,,+ ,
),,, -
{-- 	
return.. 
new.. 
ConsoleCreation.. &
(..& '
)..' (
;..( )
}// 	
public11 
ConsoleApplication11 !$
CreateConsoleApplication11" :
(11: ;
)11; <
{22 	
var33 
commands33 
=33 "
TypeToCommandConverter33 1
.331 2
CommandsFor332 =
(33= >
this33> B
.33B C
TypesAndMethods33C R
)33R S
;33S T
return44 
new44 
ConsoleApplication44 )
(44) *
Settings44* 2
,442 3
commands444 <
,44< =
new44> A$
PositionalArgumentParser44B Z
(44Z [
)44[ \
)44\ ]
;44] ^
}55 	
public77 
ConsoleApplication77 !$
CreateConsoleApplication77" :
(77: ;&
ConsoleApplicationSettings77; U
settings77V ^
)77^ _
{88 	
throw99 
new99 #
NotImplementedException99 -
(99- .
$str99. o
)99o p
;99p q
}:: 	
public<< 
ConsoleCreation<< 
ForInstanceMethod<< 0
<<<0 1
T<<1 2
><<2 3
(<<3 4

MethodInfo<<4 >
method<<? E
,<<E F
object<<G M
instance<<N V
)<<V W
{== 	
return>> 
ForMethodInternal>> $
(>>$ %
typeof>>% +
(>>+ ,
T>>, -
)>>- .
,>>. /
method>>0 6
,>>6 7
instance>>8 @
)>>@ A
;>>A B
}?? 	
publicAA 
ConsoleCreationAA 
ForInstanceMethodAA 0
(AA0 1
TypeAA1 5
typeAA6 :
,AA: ;

MethodInfoAA< F
methodAAG M
,AAM N
objectAAO U
instanceAAV ^
)AA^ _
{BB 	
returnCC 
ForMethodInternalCC $
(CC$ %
typeCC% )
,CC) *
methodCC+ 1
,CC1 2
instanceCC3 ;
)CC; <
;CC< =
}DD 	
publicFF 
ConsoleCreationFF 
ForInstanceMethodsFF 1
<FF1 2
TFF2 3
>FF3 4
(FF4 5
)FF5 6
{GG 	
returnHH 
ForMethodsInternalHH %
(HH% &
typeofHH& ,
(HH, -
THH- .
)HH. /
,HH/ 0(
DeclaredPublicInstanceMethodHH1 M
,HHM N
nullHHO S
)HHS T
;HHT U
}II 	
publicKK 
ConsoleCreationKK 
ForInstanceMethodsKK 1
(KK1 2
TypeKK2 6
typeKK7 ;
)KK; <
{LL 	
returnMM 
ForMethodsInternalMM %
(MM% &
typeMM& *
,MM* +(
DeclaredPublicInstanceMethodMM, H
,MMH I
nullMMJ N
)MMN O
;MMO P
}NN 	
publicPP 
ConsoleCreationPP 
ForInstanceMethodsPP 1
(PP1 2
TypePP2 6
typePP7 ;
,PP; <
objectPP= C
instancePPD L
)PPL M
{QQ 	
returnRR 
ForMethodsInternalRR %
(RR% &
typeRR& *
,RR* +(
DeclaredPublicInstanceMethodRR, H
,RRH I
instanceRRJ R
)RRR S
;RRS T
}SS 	
publicUU 
ConsoleCreationUU 
ForInstanceMethodsUU 1
<UU1 2
TUU2 3
>UU3 4
(UU4 5
TUU5 6
instanceUU7 ?
)UU? @
{VV 	
returnWW 
ForMethodsInternalWW %
(WW% &
typeofWW& ,
(WW, -
TWW- .
)WW. /
,WW/ 0(
DeclaredPublicInstanceMethodWW1 M
,WWM N
instanceWWO W
)WWW X
;WWX Y
}XX 	
publicZZ 
ConsoleCreationZZ 
	ForMethodZZ (
<ZZ( )
TZZ) *
>ZZ* +
(ZZ+ ,

MethodInfoZZ, 6
methodZZ7 =
)ZZ= >
{[[ 	
return\\ 
ForMethodInternal\\ $
(\\$ %
typeof\\% +
(\\+ ,
T\\, -
)\\- .
,\\. /
method\\0 6
,\\6 7
null\\8 <
)\\< =
;\\= >
}]] 	
public__ 
ConsoleCreation__ 
ForStaticMethods__ /
<__/ 0
T__0 1
>__1 2
(__2 3
)__3 4
{`` 	
returnaa 
ForMethodsInternalaa %
(aa% &
typeofaa& ,
(aa, -
Taa- .
)aa. /
,aa/ 0'
DeclaredPublicStaticMethodsaa1 L
,aaL M
nullaaN R
)aaR S
;aaS T
}bb 	
publicdd 
ConsoleCreationdd 
ForStaticMethodsdd /
(dd/ 0
Typedd0 4
typedd5 9
)dd9 :
{ee 	
returnff 
ForMethodsInternalff %
(ff% &
typeff& *
,ff* +'
DeclaredPublicStaticMethodsff, G
,ffG H
nullffI M
)ffM N
;ffN O
}gg 	
publicii 
ConsoleCreationii 
ForTypeii &
<ii& '
Tii' (
>ii( )
(ii) *
)ii* +
{jj 	
returnkk 
ForStaticMethodskk #
<kk# $
Tkk$ %
>kk% &
(kk& '
)kk' (
.kk( )
ForInstanceMethodskk) ;
<kk; <
Tkk< =
>kk= >
(kk> ?
)kk? @
;kk@ A
}ll 	
publicnn 
ConsoleCreationnn 
WithInstanceCreatornn 2
(nn2 3
Funcnn3 7
<nn7 8
Typenn8 <
,nn< =
objectnn> D
>nnD E
instanceProvidernnF V
)nnV W
{oo 	
thispp 
.pp 
Settingspp 
.pp 
InstanceProviderpp *
=pp+ ,
instanceProviderpp- =
;pp= >
returnqq 
thisqq 
;qq 
}rr 	
privatett 
ConsoleCreationtt 
ForMethodInternaltt  1
(tt1 2
Typett2 6
typett7 ;
,tt; <

MethodInfott= G
methodttH N
,ttN O
objectttP V
instancettW _
)tt_ `
{uu 	
returnvv 
newvv 
ConsoleCreationvv &
(vv& '
thisvv' +
.vv+ ,
TypesAndMethodsvv, ;
.vv; <
Addvv< ?
(vv? @
(vv@ A
typevvA E
,vvE F
methodvvG M
,vvM N
instancevvO W
)vvW X
)vvX Y
,vvY Z
thisvv[ _
.vv_ `
Settingsvv` h
)vvh i
;vvi j
}ww 	
privateyy 
ConsoleCreationyy 
ForMethodsInternalyy  2
(yy2 3
Typeyy3 7
typeyy8 <
,yy< =
BindingFlagsyy> J
bindingFlagsyyK W
,yyW X
objectyyY _
instanceyy` h
)yyh i
{zz 	
var{{ 
methods{{ 
={{ 
type{{ 
.{{ 

GetMethods{{ )
({{) *
bindingFlags{{* 6
){{6 7
;{{7 8
var|| 

newMethods|| 
=|| 
methods|| $
.||$ %
Select||% +
(||+ ,
x||, -
=>||. 0
(||1 2
type||2 6
,||6 7
x||8 9
,||9 :
instance||; C
)||C D
)||D E
;||E F
return}} 
new}} 
ConsoleCreation}} &
(}}& '
this}}' +
.}}+ ,
TypesAndMethods}}, ;
.}}; <
AddRange}}< D
(}}D E

newMethods}}E O
)}}O P
,}}P Q
this}}R V
.}}V W
Settings}}W _
)}}_ `
;}}` a
}~~ 	
} 
}ÄÄ –	
YC:\Users\Patrick\Source\Repos\CodeToCommandline\CodeToCommandLine\EnumerableExtensions.cs
	namespace 	
CodeToCommandLine
 
{ 
public 

static 
class  
EnumerableExtensions ,
{ 
public 
static 
string 

StringJoin '
(' (
this( ,
IEnumerable- 8
<8 9
string9 ?
>? @
valuesA G
,G H
stringI O
	seperatorP Y
)Y Z
{		 	
return

 
string

 
.

 
Join

 
(

 
	seperator

 (
,

( )
values

* 0
)

0 1
;

1 2
} 	
public 
static 
string 
StringJoinNewLine .
(. /
this/ 3
IEnumerable4 ?
<? @
string@ F
>F G
valuesH N
)N O
{ 	
return 
values 
. 

StringJoin $
($ %
Environment% 0
.0 1
NewLine1 8
)8 9
;9 :
} 	
} 
} ¨
WC:\Users\Patrick\Source\Repos\CodeToCommandline\CodeToCommandLine\HelpTextsGenerator.cs
	namespace 	
CodeToCommandLine
 
{ 
public 

class 
HelpTextsGenerator #
{		 
internal

 
static

 
string

 
WriteHelpText

 ,
(

, -
IEnumerable

- 8
<

8 9
CommandInfo

9 D
>

D E
commands

F N
)

N O
{ 	
var 
commandsHelpText  
=! "
commands# +
.+ ,
Select, 2
(2 3
command3 :
=>; =
$"> @
{@ A
commandA H
.H I
	ClassNameI R
}R S
[S T
{T U
commandU \
.\ ]
ClassNameShort] k
}k l
] l n
{n o
commando v
.v w
CommandName	w Ç
.
Ç É,
TrimEndStringOrdinalIgnoreCase
É °
(
° ¢
$str
¢ ©
)
© ™
}
™ ´
,[
´ ≠
{
≠ Æ
command
Æ µ
.
µ ∂
CommandNameShort
∂ ∆
}
∆ «
]
« »
"
» …
+ 
HelpForParameters 
(  
command  '
.' (
CommandParameters( 9
)9 :
): ;
;; <
return 
With2NewLines  
(  !
commandsHelpText! 1
)1 2
;2 3
} 	
private 
static 
string 
HelpForParameters /
(/ 0
List0 4
<4 5
CommandParameter5 E
>E F
commandParametersG X
)X Y
{ 	
return 
commandParameters $
. 
Select 
( 
	parameter !
=>" $
$"% '
{* +
	parameter+ 4
.4 5
Name5 9
}9 :
[: ;
{; <
	parameter< E
.E F
ShortF K
}K L
] type: L T
{T U
	parameterU ^
.^ _
Type_ c
}c d
{e f
	parameterf o
.o p
HelpTextp x
}x y
"y z
)z {
. 
Where 
( 
x 
=> 
! 
string #
.# $
IsNullOrEmpty$ 1
(1 2
x2 3
)3 4
)4 5
. 

StringJoin 
( 
Environment '
.' (
NewLine( /
)/ 0
;0 1
} 	
private 
static 
string 
With2NewLines +
(+ ,
IEnumerable, 7
<7 8
string8 >
>> ?
values@ F
)F G
{ 	
return 
values 
. 
Where 
(  
x  !
=>" $
!% &
string& ,
., -
IsNullOrEmpty- :
(: ;
x; <
)< =
)= >
.> ?

StringJoin? I
(I J
EnvironmentJ U
.U V
NewLineV ]
+^ _
Environment` k
.k l
NewLinel s
)s t
;t u
} 	
} 
} ‹
TC:\Users\Patrick\Source\Repos\CodeToCommandline\CodeToCommandLine\IArgumentParser.cs
	namespace 	
CodeToCommandLine
 
{ 
public 

	interface 
IArgumentParser $
{ 
IEnumerable 
<  
CommandWithArguments (
>( )
Parse* /
(/ 0
string0 6
[6 7
]7 8
args9 =
,= >
IEnumerable? J
<J K
CommandInfoK V
>V W
commandsX `
)` a
;a b
}		 
}

 ¥
_C:\Users\Patrick\Source\Repos\CodeToCommandline\CodeToCommandLine\Model\ArgumentParseResults.cs
	namespace 	
CodeToCommandLine
 
. 
Model !
{ 
public 

class  
ArgumentParseResults %
{		 
public

 
CommandParameter

 
ParameterInfo

  -
{

. /
get

0 3
;

3 4
set

5 8
;

8 9
}

: ;
public 
object 
ArgumentValue #
{$ %
get& )
;) *
set+ .
;. /
}0 1
=2 3
null4 8
;8 9
} 
} Ó
VC:\Users\Patrick\Source\Repos\CodeToCommandline\CodeToCommandLine\Model\CommandInfo.cs
	namespace 	
CodeToCommandLine
 
. 
Model !
{ 
public 

class 
CommandInfo 
{		 
public

 
string

 
	ClassName

 
{

  !
get

" %
;

% &
set

' *
;

* +
}

, -
=

. /
$str

0 2
;

2 3
public 
string 
ClassNameShort $
{% &
get' *
;* +
set, /
;/ 0
}1 2
=3 4
$str5 7
;7 8
public 
string 
CommandName !
{" #
get$ '
;' (
set) ,
;, -
}. /
=0 1
$str2 4
;4 5
public 
string 
CommandNameShort &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
=5 6
$str7 9
;9 :
public 
List 
< 
CommandParameter $
>$ %
CommandParameters& 7
{8 9
get: =
;= >
set? B
;B C
}D E
=F G
newH K
ListL P
<P Q
CommandParameterQ a
>a b
(b c
)c d
;d e
public 
Type 
Type 
{ 
get 
; 
set  #
;# $
}% &
public 

MethodInfo 

MethodInfo $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
object 
ProvidedInstance &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
=5 6
null7 ;
;; <
} 
} ˚	
[C:\Users\Patrick\Source\Repos\CodeToCommandline\CodeToCommandLine\Model\CommandParameter.cs
	namespace 	
CodeToCommandLine
 
. 
Model !
{ 
public 

class 
CommandParameter !
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
=) *
$str+ -
;- .
public		 
int		 
Position		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
=		* +
-		, -
$num		- .
;		. /
public 
Type 
Type 
{ 
get 
; 
set  #
;# $
}% &
public 
string 
Short 
{ 
get !
;! "
set# &
;& '
}( )
=* +
$str, .
;. /
public 
string 
HelpText 
{  
get! $
;$ %
set& )
;) *
}+ ,
=- .
$str/ 1
;1 2
} 
} ∏

_C:\Users\Patrick\Source\Repos\CodeToCommandline\CodeToCommandLine\Model\CommandWithArguments.cs
	namespace 	
CodeToCommandLine
 
. 
Model !
{ 
public 

class  
CommandWithArguments %
:& '
CommandInfo( 3
{		 
public

 
int

 
ParsedArgumentCount

 &
{

' (
get

) ,
;

, -
set

. 1
;

1 2
}

3 4
public 
List 
<  
ArgumentParseResults (
>( ) 
ArgumentParseResults* >
{? @
getA D
;D E
setF I
;I J
}K L
public 
bool  
AllArgumentsResolved (
{) *
get+ .
{/ 0
return1 7
this8 <
.< = 
ArgumentParseResults= Q
.Q R

TrueForAllR \
(\ ]
x] ^
=>_ a
xb c
.c d
ArgumentValued q
!=r t
nullu y
)y z
&&{ } 
ParsedArgumentCount	~ ë
==
í î"
ArgumentParseResults
ï ©
.
© ™
Count
™ Ø
;
Ø ∞
}
± ≤
}
≥ ¥
} 
} V
]C:\Users\Patrick\Source\Repos\CodeToCommandline\CodeToCommandLine\PositionalArgumentParser.cs
	namespace 	
CodeToCommandLine
 
{ 
internal 
class $
PositionalArgumentParser +
:, -
IArgumentParser. =
{		 
public

 $
PositionalArgumentParser

 '
(

' (
)

( )
{ 	
} 	
public 
IEnumerable 
<  
CommandWithArguments /
>/ 0
Parse1 6
(6 7
string7 =
[= >
]> ?
args@ D
,D E
IEnumerableF Q
<Q R
CommandInfoR ]
>] ^
commands_ g
)g h
{ 	
return 
commands 
. 
Select "
(" #
command# *
=>+ -
ParseForCommand. =
(= >
command> E
,E F
argsG K
)K L
)L M
;M N
} 	
private  
CommandWithArguments $
ParseForCommand% 4
(4 5
CommandInfo5 @
commandA H
,H I
stringJ P
[P Q
]Q R
argsS W
)W X
{ 	
return 
new  
CommandWithArguments +
{ 
	ClassName 
= 
command #
.# $
	ClassName$ -
,- .
ClassNameShort 
=  
command! (
.( )
ClassNameShort) 7
,7 8
CommandName 
= 
command %
.% &
CommandName& 1
,1 2
CommandNameShort  
=! "
command# *
.* +
CommandNameShort+ ;
,; <
CommandParameters !
=" #
command$ +
.+ ,
CommandParameters, =
,= >

MethodInfo 
= 
command $
.$ %

MethodInfo% /
,/ 0
ProvidedInstance  
=! "
command# *
.* +
ProvidedInstance+ ;
,; <
Type 
= 
command 
. 
Type #
,# $
ParsedArgumentCount #
=$ %
(& '
args' +
.+ ,
Count, 1
(1 2
)2 3
-4 5
$num6 7
)7 8
/9 :
$num; <
,< = 
ArgumentParseResults   $
=  % &
command  ' .
.  . /
CommandParameters  / @
.  @ A
Select  A G
(  G H
x  H I
=>  J L 
ParseArgForParameter  M a
(  a b
args  b f
,  f g
x  h i
)  i j
)  j k
.  k l
ToList  l r
(  r s
)  s t
,  t u
}!! 
;!! 
}"" 	
private$$ 
static$$  
ArgumentParseResults$$ + 
ParseArgForParameter$$, @
($$@ A
string$$A G
[$$G H
]$$H I
args$$J N
,$$N O
CommandParameter$$P `
	parameter$$a j
)$$j k
{%% 	
var&& 
argumentTags&& 
=&& 
args&& #
.&&# $
Where&&$ )
(&&) *
arg&&* -
=>&&. 0
string&&1 7
.&&7 8
Equals&&8 >
(&&> ?
	parameter&&? H
.&&H I
Name&&I M
,&&M N
arg&&O R
.&&R S
	TrimStart&&S \
(&&\ ]
$char&&] `
)&&` a
,&&a b
StringComparison&&c s
.&&s t
OrdinalIgnoreCase	&&t Ö
)
&&Ö Ü
||
&&á â
string
&&ä ê
.
&&ê ë
Equals
&&ë ó
(
&&ó ò
	parameter
&&ò °
.
&&° ¢
Short
&&¢ ß
,
&&ß ®
arg
&&© ¨
.
&&¨ ≠
	TrimStart
&&≠ ∂
(
&&∂ ∑
$char
&&∑ ∫
)
&&∫ ª
,
&&ª º
StringComparison
&&Ω Õ
.
&&Õ Œ
OrdinalIgnoreCase
&&Œ ﬂ
)
&&ﬂ ‡
)
&&‡ ·
;
&&· ‚
if'' 
('' 
argumentTags'' 
.'' 
Count'' "
(''" #
)''# $
>''% &
$num''' (
)''( )
{(( 
throw)) 
new)) %
CommandExecutionException)) 3
())3 4
$"))4 68
,More than one value found for the parameter ))6 b
{))b c
	parameter))c l
.))l m
Name))m q
}))q r
"))r s
)))s t
;))t u
}** 
if,, 
(,, 
!,, 
argumentTags,, 
.,, 
Any,, !
(,,! "
),," #
),,# $
{-- 
return.. 
new..  
ArgumentParseResults.. /
{// 
ParameterInfo00 !
=00" #
	parameter00$ -
,00- .
}11 
;11 
}22 
var44 
argumentTag44 
=44 
argumentTags44 *
.44* +
Single44+ 1
(441 2
)442 3
;443 4
var55 
tagIndex55 
=55 
Array55  
.55  !
IndexOf55! (
(55( )
args55) -
,55- .
argumentTag55/ :
)55: ;
;55; <
if66 
(66 
args66 
.66 
Length66 
<66 
tagIndex66 &
+66' (
$num66) *
)66* +
{77 
throw88 
new88 %
CommandExecutionException88 3
(883 4
$"884 63
'Missing value for parameter with name '886 ]
{88] ^
argumentTag88^ i
}88i j
'88j k
"88k l
)88l m
;88m n
}99 
var;; 
stringValue;; 
=;; 
args;; "
[;;" #
tagIndex;;# +
+;;, -
$num;;. /
];;/ 0
;;;0 1
var<< 
parameterObject<< 
=<<  !
ParseStringValue<<" 2
(<<2 3
stringValue<<3 >
,<<> ?
	parameter<<@ I
.<<I J
Type<<J N
)<<N O
;<<O P
return== 
new==  
ArgumentParseResults== +
{>> 
ArgumentValue?? 
=?? 
parameterObject??  /
,??/ 0
ParameterInfo@@ 
=@@ 
	parameter@@  )
,@@) *
}AA 
;AA 
}BB 	
privateDD 
staticDD 
objectDD 
ParseStringValueDD .
(DD. /
stringDD/ 5
stringValueDD6 A
,DDA B
TypeDDC G
typeDDH L
)DDL M
{EE 	
varGG 
typesGG 
=GG 
newGG 

DictionaryGG &
<GG& '
TypeGG' +
,GG+ ,
FuncGG- 1
<GG1 2
stringGG2 8
,GG8 9
objectGG: @
>GG@ A
>GGA B
{HH 
{II 
typeofII 
(II 
stringII 
)II  
,II  !
strII" %
=>II& (
{II) *
returnII+ 1
strII2 5
;II5 6
}II7 8
}II9 :
,II: ;
{JJ 
typeofJJ 
(JJ 
intJJ 
)JJ 
,JJ 
strJJ "
=>JJ# %
{JJ& '
returnJJ( .
intJJ/ 2
.JJ2 3
ParseJJ3 8
(JJ8 9
strJJ9 <
)JJ< =
;JJ= >
}JJ? @
}JJA B
,JJB C
{KK 
typeofKK 
(KK 
floatKK 
)KK 
,KK  
strKK! $
=>KK% '
{KK( )
returnKK* 0
floatKK1 6
.KK6 7
ParseKK7 <
(KK< =
strKK= @
)KK@ A
;KKA B
}KKC D
}KKE F
,KKF G
{LL 
typeofLL 
(LL 
decimalLL  
)LL  !
,LL! "
strLL# &
=>LL' )
{LL* +
returnLL, 2
decimalLL3 :
.LL: ;
ParseLL; @
(LL@ A
strLLA D
)LLD E
;LLE F
}LLG H
}LLI J
,LLJ K
{MM 
typeofMM 
(MM 
boolMM 
)MM 
,MM 
strMM  #
=>MM$ &
{MM' (
returnMM) /
boolMM0 4
.MM4 5
ParseMM5 :
(MM: ;
strMM; >
)MM> ?
;MM? @
}MMA B
}MMC D
,MMD E
}NN 
;NN 
ifOO 
(OO 
typesOO 
.OO 
ContainsKeyOO !
(OO! "
typeOO" &
)OO& '
)OO' (
{PP 
returnQQ 
typesQQ 
[QQ 
typeQQ !
]QQ! "
.QQ" #
InvokeQQ# )
(QQ) *
stringValueQQ* 5
)QQ5 6
;QQ6 7
}RR 
elseSS 
{TT 
returnUU 4
(TryConstructingTypeWithStringConstructorUU ?
(UU? @
stringValueUU@ K
,UUK L
typeUUM Q
)UUQ R
;UUR S
}VV 
}WW 	
privateYY 
staticYY 
objectYY 4
(TryConstructingTypeWithStringConstructorYY F
(YYF G
stringYYG M
stringValueYYN Y
,YYY Z
TypeYY[ _
typeYY` d
)YYd e
{ZZ 	
var[[ 
constructors[[ 
=[[ 
type[[ #
.[[# $
GetConstructors[[$ 3
([[3 4
)[[4 5
;[[5 6
var^^ "
stringBasedconstructor^^ &
=^^' (
constructors^^) 5
.^^5 6
SingleOrDefault^^6 E
(^^E F
constructor^^F Q
=>^^R T
constructor^^U `
.^^` a
GetParameters^^a n
(^^n o
)^^o p
.^^p q
Count^^q v
(^^v w
)^^w x
==^^y {
$num^^| }
&&	^^~ Ä
constructor
^^Å å
.
^^å ç
GetParameters
^^ç ö
(
^^ö õ
)
^^õ ú
.
^^ú ù
Single
^^ù £
(
^^£ §
)
^^§ •
.
^^• ¶
ParameterType
^^¶ ≥
==
^^¥ ∂
typeof
^^∑ Ω
(
^^Ω æ
string
^^æ ƒ
)
^^ƒ ≈
)
^^≈ ∆
;
^^∆ «
if__ 
(__ "
stringBasedconstructor__ &
!=__' )
null__* .
)__. /
{`` 
returnaa 
	Activatoraa  
.aa  !
CreateInstanceaa! /
(aa/ 0
typeaa0 4
,aa4 5
stringValueaa6 A
)aaA B
;aaB C
}bb 
elsecc 
{dd 
throwee 
newee 
	Exceptionee #
(ee# $
)ee$ %
;ee% &
}ff 
}gg 	
}hh 
}ii •;
UC:\Users\Patrick\Source\Repos\CodeToCommandline\CodeToCommandLine\ShortNameCreator.cs
	namespace 	
CodeToCommandLine
 
{ 
internal 
class 
ShortNameCreator #
{		 
public

 
static

 
string

 
GetShortNameFor

 ,
(

, -
string

- 3
name

4 8
,

8 9
IEnumerable

: E
<

E F
string

F L
>

L M
exsistingNames

N \
)

\ ]
{ 	
return $
GetSingleLetterShortName (
(( )
name) -
,- .
exsistingNames/ =
)= >
??? A&
GetCapitalLettersShortName *
(* +
name+ /
,/ 0
exsistingNames1 ?
)? @
??A C+
GetMinimumUniqueLengthShortName /
(/ 0
name0 4
,4 5
exsistingNames6 D
)D E
;E F
} 	
public 
static 
string *
GetShortNameWithAllKnownValues ;
(; <
string< B
nameC G
,G H
IEnumerableI T
<T U
stringU [
>[ \
exsistingNames] k
)k l
{ 	
var 

otherNames 
= 
exsistingNames +
.+ ,
Where, 1
(1 2
x2 3
=>4 6
x7 8
!=9 ;
name< @
)@ A
;A B
var &
singleLetterExsistingNames *
=+ ,

otherNames- 7
.7 8
Where8 =
(= >
x> ?
=>@ B
xC D
!=E G
nameH L
)L M
.M N
SelectN T
(T U
xU V
=>W Y
xZ [
.[ \
	Substring\ e
(e f
$numf g
,g h
$numi j
)j k
)k l
;l m
var 
capitalLettersName "
=# $

otherNames% /
./ 0
Where0 5
(5 6
x6 7
=>8 :
x; <
!== ?
name@ D
)D E
.E F
SelectF L
(L M!
GetCapitalLettersNameM b
)b c
;c d
return $
GetSingleLetterShortName (
(( )
name) -
,- .&
singleLetterExsistingNames/ I
)I J
??K M&
GetCapitalLettersShortName *
(* +
name+ /
,/ 0
capitalLettersName1 C
)C D
??E G
name 
; 
} 	
private 
static 
string +
GetMinimumUniqueLengthShortName =
(= >
string> D
nameE I
,I J
IEnumerableK V
<V W
stringW ]
>] ^
exsistingNames_ m
)m n
{ 	
var   
length   
=   .
"StringLengthUntillNoMoreDuplicates   ;
(  ; <
exsistingNames  < J
)  J K
;  K L
return!! 
name!! 
.!! 
	Substring!! !
(!!! "
$num!!" #
,!!# $
length!!% +
)!!+ ,
;!!, -
}"" 	
private$$ 
static$$ 
string$$ &
GetCapitalLettersShortName$$ 8
($$8 9
string$$9 ?
name$$@ D
,$$D E
IEnumerable$$F Q
<$$Q R
string$$R X
>$$X Y
exsistingNames$$Z h
)$$h i
{%% 	
var&& 
capitalLettersName&& "
=&&# $!
GetCapitalLettersName&&% :
(&&: ;
name&&; ?
)&&? @
;&&@ A
if'' 
('' 
!'' 
exsistingNames'' 
.''  
Contains''  (
(''( )
capitalLettersName'') ;
,''; <
StringComparer''= K
.''K L
OrdinalIgnoreCase''L ]
)''] ^
)''^ _
{(( 
return)) 
capitalLettersName)) )
;))) *
}** 
return++ 
null++ 
;++ 
},, 	
private.. 
static.. 
string.. !
GetCapitalLettersName.. 3
(..3 4
string..4 :
name..; ?
)..? @
{// 	
return00 
string00 
.00 
Concat00  
(00  !
name00! %
.00% &
Where00& +
(00+ ,
x00, -
=>00. 0
char001 5
.005 6
IsUpper006 =
(00= >
x00> ?
)00? @
)00@ A
)00A B
;00B C
}11 	
private33 
static33 
string33 $
GetSingleLetterShortName33 6
(336 7
string337 =
name33> B
,33B C
IEnumerable33D O
<33O P
string33P V
>33V W
exsistingNames33X f
)33f g
{44 	
if55 
(55 
!55 
exsistingNames55 
.55  
Contains55  (
(55( )
name55) -
.55- .
	Substring55. 7
(557 8
$num558 9
,559 :
$num55; <
)55< =
,55= >
StringComparer55? M
.55M N
OrdinalIgnoreCase55N _
)55_ `
)55` a
{66 
return77 
name77 
.77 
	Substring77 %
(77% &
$num77& '
,77' (
$num77) *
)77* +
;77+ ,
}88 
return99 
null99 
;99 
}:: 	
private<< 
static<< 
int<< .
"StringLengthUntillNoMoreDuplicates<< =
(<<= >
IEnumerable<<> I
<<<I J
string<<J P
><<P Q
values<<R X
)<<X Y
{== 	
var>> 
length>> 
=>> 
$num>> 
;>> 
while?? 
(?? 
true?? 
)?? 
{@@ 
lengthAA 
+=AA 
$numAA 
;AA 
varBB 

duplicatesBB 
=BB  
valuesBB! '
.CC 
SelectCC 
(CC 
valueCC !
=>CC" $
valueCC% *
.CC* +
SafeSubstringCC+ 8
(CC8 9
$numCC9 :
,CC: ;
lengthCC< B
)CCB C
)CCC D
.DD 
GroupByDD 
(DD 
valueDD "
=>DD# %
valueDD& +
)DD+ ,
.EE 
AnyEE 
(EE 
valueEE 
=>EE !
valueEE" '
.EE' (
CountEE( -
(EE- .
)EE. /
>EE0 1
$numEE2 3
)EE3 4
;EE4 5
ifFF 
(FF 
!FF 

duplicatesFF 
)FF  
{GG 
returnHH 
lengthHH !
;HH! "
}II 
ifJJ 
(JJ 
lengthJJ 
>JJ 
valuesJJ #
.JJ# $
MaxJJ$ '
(JJ' (
xJJ( )
=>JJ* ,
xJJ- .
.JJ. /
LengthJJ/ 5
)JJ5 6
)JJ6 7
{KK 
throwLL 
newLL 
	ExceptionLL '
(LL' (
$strLL( a
)LLa b
;LLb c
}MM 
}NN 
}OO 	
}PP 
}QQ ƒ 
UC:\Users\Patrick\Source\Repos\CodeToCommandline\CodeToCommandLine\StringExtensions.cs
	namespace 	
CodeToCommandLine
 
{ 
public 

static 
class 
LinqExtensions &
{ 
public		 
static		 
IEnumerable		 !
<		! "
T		" #
>		# $
Append		% +
<		+ ,
T		, -
>		- .
(		. /
this		/ 3
IEnumerable		4 ?
<		? @
T		@ A
>		A B
source		C I
,		I J
params		K Q
T		R S
[		S T
]		T U
values		V \
)		\ ]
{

 	
foreach 
( 
var 
item 
in  
source! '
)' (
{ 
yield 
return 
item !
;! "
} 
foreach 
( 
var 
item 
in  
values! '
)' (
{ 
yield 
return 
item !
;! "
} 
} 	
public 
static 
bool 
None 
<  
T  !
>! "
(" #
this# '
IEnumerable( 3
<3 4
T4 5
>5 6
source7 =
)= >
{ 	
return 
! 
source 
. 
Any 
( 
)  
;  !
} 	
} 
public 

static 
class 
StringExtensions (
{ 
public 
static 
string 
SafeSubstring *
(* +
this+ /
string0 6
value7 <
,< =
int> A

startIndexB L
,L M
intN Q
lengthR X
)X Y
{ 	
if 
( 
value 
. 
Length 
> 
length %
+& '

startIndex( 2
)2 3
{   
return!! 
value!! 
.!! 
	Substring!! &
(!!& '

startIndex!!' 1
,!!1 2
length!!3 9
)!!9 :
;!!: ;
}"" 
return## 
value## 
.## 
	Substring## "
(##" #

startIndex### -
)##- .
;##. /
}$$ 	
public&& 
static&& 
string&& *
TrimEndStringOrdinalIgnoreCase&& ;
(&&; <
this&&< @
string&&A G
input&&H M
,&&M N
string&&O U
suffixToRemove&&V d
)&&d e
{'' 	
return(( 
input(( 
.(( 
TrimEndString(( &
(((& '
suffixToRemove((' 5
,((5 6
StringComparison((7 G
.((G H
OrdinalIgnoreCase((H Y
)((Y Z
;((Z [
})) 	
public++ 
static++ 
string++ 
TrimEndString++ *
(++* +
this+++ /
string++0 6
input++7 <
,++< =
string++> D
suffixToRemove++E S
,++S T
StringComparison,, 
comparisonType,, #
),,# $
{-- 	
if// 
(// 
input// 
!=// 
null// 
&&//  
suffixToRemove//! /
!=//0 2
null//3 7
&&00 
input00 
.00 
EndsWith00 
(00  
suffixToRemove00  .
,00. /
comparisonType000 >
)00> ?
)00? @
{11 
return22 
input22 
.22 
	Substring22 &
(22& '
$num22' (
,22( )
input22* /
.22/ 0
Length220 6
-227 8
suffixToRemove229 G
.22G H
Length22H N
)22N O
;22O P
}33 
else44 
return44 
input44 
;44 
}55 	
}66 
}77 •*
[C:\Users\Patrick\Source\Repos\CodeToCommandline\CodeToCommandLine\TypeToCommandConverter.cs
	namespace 	
CodeToCommandLine
 
{		 
public 

class "
TypeToCommandConverter '
{ 
private 
static 
List 
< 
CommandParameter ,
>, -#
GetCommandParametersFor. E
(E F
ParameterInfoF S
[S T
]T U
parameterInfoV c
)c d
{ 	
return 
parameterInfo  
.  !
	Aggregate! *
(* +

Enumerable+ 5
.5 6
Empty6 ;
<; <
CommandParameter< L
>L M
(M N
)N O
,O P"
CreateCommandParameterQ g
)g h
.h i
ToListi o
(o p
)p q
;q r
} 	
private 
static 
IEnumerable "
<" #
CommandParameter# 3
>3 4"
CreateCommandParameter5 K
(K L
IEnumerableL W
<W X
CommandParameterX h
>h i
exsistingValuesj y
,y z
ParameterInfo	{ à
	parameter
â í
)
í ì
{ 	
return 
exsistingValues "
." #
Append# )
() *
new* -
CommandParameter. >
{ 
Name 
= 
	parameter  
.  !
Name! %
,% &
Type 
= 
	parameter  
.  !
ParameterType! .
,. /
Position 
= 
	parameter $
.$ %
Position% -
,- .
Short 
= 
ShortNameCreator (
.( )
GetShortNameFor) 8
(8 9
	parameter9 B
.B C
NameC G
,G H
exsistingValuesI X
.X Y
SelectY _
(_ `
x` a
=>b d
xe f
.f g
Shortg l
)l m
)m n
,n o
} 
) 
; 
} 	
internal 
static 
List 
< 
CommandInfo (
>( )
CommandsFor* 5
(5 6
ImmutableList6 C
<C D
(D E
TypeE I
typeJ N
,N O

MethodInfoP Z
method[ a
,a b
objectc i
providedInstancej z
)z {
>{ |
typesAndMethods	} å
)
å ç
{ 	
var 

classNames 
= 
typesAndMethods ,
., -
Select- 3
(3 4
x4 5
=>6 8
x9 :
.: ;
type; ?
.? @
Name@ D
)D E
;E F
var   
methodNames   
=   
typesAndMethods   -
.  - .
Select  . 4
(  4 5
x  5 6
=>  7 9
x  : ;
.  ; <
method  < B
.  B C
Name  C G
.  G H*
TrimEndStringOrdinalIgnoreCase  H f
(  f g
$str  g n
)  n o
)  o p
;  p q
var!! 
perType!! 
=!! 
typesAndMethods!! )
.!!) *
Select!!* 0
(!!0 1
info!!1 5
=>!!6 8
new!!9 <
CommandInfo!!= H
{"" 
Type## 
=## 
info## 
.## 
type##  
,##  !
	ClassName$$ 
=$$ 
info$$  
.$$  !
type$$! %
.$$% &
Name$$& *
,$$* +
ClassNameShort%% 
=%%  
ShortNameCreator%%! 1
.%%1 2*
GetShortNameWithAllKnownValues%%2 P
(%%P Q
info%%Q U
.%%U V
type%%V Z
.%%Z [
Name%%[ _
,%%_ `

classNames%%a k
)%%k l
,%%l m
CommandName&& 
=&& 
info&& "
.&&" #
method&&# )
.&&) *
Name&&* .
,&&. /
CommandNameShort''  
=''! "
ShortNameCreator''# 3
.''3 4*
GetShortNameWithAllKnownValues''4 R
(''R S
info''S W
.''W X
method''X ^
.''^ _
Name''_ c
.''c d+
TrimEndStringOrdinalIgnoreCase	''d Ç
(
''Ç É
$str
''É ä
)
''ä ã
,
''ã å
methodNames
''ç ò
)
''ò ô
,
''ô ö

MethodInfo(( 
=(( 
info(( !
.((! "
method((" (
,((( )
ProvidedInstance))  
=))! "
info))# '
.))' (
providedInstance))( 8
,))8 9
CommandParameters** !
=**" ##
GetCommandParametersFor**$ ;
(**; <
info**< @
.**@ A
method**A G
.**G H
GetParameters**H U
(**U V
)**V W
)**W X
}++ 
)++ 
;++ 
return-- 
perType-- 
.-- 
ToList-- !
(--! "
)--" #
;--# $
}.. 	
}// 
}00 