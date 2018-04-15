×
_C:\Users\Patrick\Source\Repos\CodeToCommandline\CodeToCommandline.CommandlineExample\Program.cs
	namespace 	
CodeToCommandline
 
. 
CommandlineExample .
{ 
public 

class 
Program 
{		 
private

 
static

 
InstanceTestClass

 (
instanceTestClass

) :
=

; <
new

= @
InstanceTestClass

A R
(

R S
$str

S k
)

k l
;

l m
public 
static 
async 
Task  
Main! %
(% &
string& ,
[, -
]- .
args/ 3
)3 4
{ 	
var 
app 
= 
ConsoleCreation %
.% &
Start& +
(+ ,
), -
. 
ForType 
< 
StaticMethods &
>& '
(' (
)( )
. 
ForType 
< 
AsyncStaticMethods +
>+ ,
(, -
)- .
. 
ForType 
< 
InstanceTestClass *
>* +
(+ ,
), -
. 
WithInstanceCreator $
($ %
InstanceProvider% 5
)5 6
. $
CreateConsoleApplication )
() *
)* +
;+ ,
await 
app 
. 
RunAsync 
( 
args #
)# $
;$ %
} 	
private 
static 
object 
InstanceProvider .
(. /
Type/ 3
type4 8
)8 9
{ 	
return 
instanceTestClass $
;$ %
} 	
} 
} 