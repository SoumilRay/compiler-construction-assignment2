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
integer    { printf("%d %s integer\n", line_num, yytext); }
real       { printf("%d %s real\n", line_num, yytext); }
boolean    { printf("%d %s boolean\n", line_num, yytext); }
char       { printf("%d %s char\n", line_num, yytext); }
var        { return VAR; }
to         { printf("%d %s to\n", line_num, yytext); }
downto     { printf("%d %s downto\n", line_num, yytext); }
if         { printf("%d %s if\n", line_num, yytext); }
else       { printf("%d %s else\n", line_num, yytext); }
while      { printf("%d %s while\n", line_num, yytext); }
for        { printf("%d %s for\n", line_num, yytext); }
do         { printf("%d %s do\n", line_num, yytext); }
array      { printf("%d %s array\n", line_num, yytext); }
begin      { return BEGINN; }
end        { return END; }
read       { printf("%d %s read\n", line_num, yytext); }
write      { printf("%d %s write\n", line_num, yytext); }

({IDENTIFIER}{SPACES},{SPACES})*{SPACES}{IDENTIFIER}{SPACES}:{SPACES}(integer|real|boolean|char){SPACES};    { return VARLINE; }

(and)|(or)|(not)                   { printf("%d %s boolean operator\n", line_num, yytext); }
[+*/%]                             { printf("%d %s arithmetic operator\n", line_num, yytext); }
[-]                                { printf("%d %s arithmetic operator\n", line_num, yytext); }
=                                  { printf("%d %s relational operator\n", line_num, yytext); }
\<                                 { printf("%d %s relational operator\n", line_num, yytext); }
\>                                 { printf("%d %s relational operator\n", line_num, yytext); }
\<>                                { printf("%d %s relational operator\n", line_num, yytext); }
\<=                                { printf("%d %s relational operator\n", line_num, yytext); }
\>=                                { printf("%d %s relational operator\n", line_num, yytext); }

[a-z][a-z0-9_]*                    { return IDENTIFIER; }

[,:;?!]                           { printf("%d %s punctuation\n", line_num, yytext); }

[0-9]+                             { printf("%d %s number\n", line_num, yytext); }
[0-9]*[.][0-9]+                    { printf("%d %s number\n", line_num, yytext); }

\.                                 { return PERIOD; }

.                                  {}

%%

