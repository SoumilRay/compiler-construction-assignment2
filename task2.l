%{
#include <stdio.h>
#include <stdlib.h>
#include "y.tab.h"
int line_num = 1;
//we are naming our token BEGINN instead of BEGIN as BEGIN is a reserved word in lex and yacc
// and, or, not, var have not been included in keyword as they are included in different categories (like boolean operator)
//types of variables: char, integer, real, boolean
%}
%option caseless
IDENTIFIER [a-z][a-z0-9_]*
SPACES [" "]*

%%

\n         {}


program    { return PROGRAM; }
integer    { return VTYPE; }
real       { return VTYPE; }
boolean    { return VTYPE; }
char       { return VTYPE; }
var        { return VAR; }
to         { return TO; }
downto     { return DOWNTO; }
if         { return IF; }
else       { return ELSE; }
while      { return WHILE; }
for        { return FOR; }
do         { return DO; }
array      { return ARRAY; }
begin      { return BEGINN; }
end        { return END; }
read       { return READ; }
write      { return WRITE; }

then       { return THEN; }
(and)|(or)|(not)                   { return BOOL_OP; }
[+*/%]                             { return AR_OP; }
[-]                                { return AR_OP; }
=                                  { return REL_OP; }
\<                                 { return REL_OP; }
\>                                 { return REL_OP; }
\<>                                { return REL_OP; }
\<=                                { return REL_OP; }
\>=                                { return REL_OP; }
:=                                 { return ASS_OP; }


[a-z][a-z0-9_]*                    { return IDENTIFIER; }

,                           { return COMMA; }
:                           { return COLON; }
;                           { return SEMICOLON; }
\?                           { return QUESTIONMARK; }
!                           { return EXCLAMATIONMARK; }
\(                          { return BO; }
\)                          { return BC; }

[0-9]+                             { return FNUMBER; }
[0-9]*[.][0-9]+                    { return DNUMBER; }

\'[^\']*\'                  { return STRING; }

\.                                 { return PERIOD; }

.                                  {}

%%

