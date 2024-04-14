%{
#include <stdio.h>
#include <stdlib.h>
int line_num = 1;
// I have not included and, or, not in keywords and have included them in boolean operator
%}
%option caseless

%%

\n         { line_num++; }


program    { printf("%d %s program\n", line_num, yytext); }
integer    { printf("%d %s integer\n", line_num, yytext); }
real       { printf("%d %s real\n", line_num, yytext); }
boolean    { printf("%d %s boolean\n", line_num, yytext); }
char       { printf("%d %s char\n", line_num, yytext); }
var        { printf("%d %s var\n", line_num, yytext); }
to         { printf("%d %s to\n", line_num, yytext); }
downto     { printf("%d %s downto\n", line_num, yytext); }
if         { printf("%d %s if\n", line_num, yytext); }
else       { printf("%d %s else\n", line_num, yytext); }
while      { printf("%d %s while\n", line_num, yytext); }
for        { printf("%d %s for\n", line_num, yytext); }
do         { printf("%d %s do\n", line_num, yytext); }
array      { printf("%d %s array\n", line_num, yytext); }
begin      { printf("%d %s begin\n", line_num, yytext); }
end        { printf("%d %s end\n", line_num, yytext); }
read       { printf("%d %s read\n", line_num, yytext); }
write      { printf("%d %s write\n", line_num, yytext); }

(and)|(or)|(not)                   { printf("%d %s boolean operator\n", line_num, yytext); }
[+*/%]                             { printf("%d %s arithmetic operator\n", line_num, yytext); }
[-]                                { printf("%d %s arithmetic operator\n", line_num, yytext); }
=                                  { printf("%d %s relational operator\n", line_num, yytext); }
\<                             { printf("%d %s relational operator\n", line_num, yytext); }
\>                                { printf("%d %s relational operator\n", line_num, yytext); }
\<>                                { printf("%d %s relational operator\n", line_num, yytext); }
\<=                                { printf("%d %s relational operator\n", line_num, yytext); }
\>=                                { printf("%d %s relational operator\n", line_num, yytext); }

[a-z][a-z0-9_]*                    { printf("%d %s identifier\n", line_num, yytext); }

[.,:;?!]              { printf("%d %s punctuation\n", line_num, yytext); }

[0-9]+                             { printf("%d %s number\n", line_num, yytext); }
[0-9]*[.][0-9]+                    { printf("%d %s number\n", line_num, yytext); }

.                                  {}

%%

int main()
{
	yylex();
	return 0;
}
