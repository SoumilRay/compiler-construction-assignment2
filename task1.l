%{
#include <stdio.h>
#include <stdlib.h>
int line_num = 1;
// I have not included and, or, not in keywords and have included them in boolean operator
%}
%option caseless

%%

\n         { line_num++; }


program    { printf("%d\t\t| %s\t\t| program\n", line_num, yytext); }
integer    { printf("%d\t\t| %s\t\t| integer\n", line_num, yytext); }
real       { printf("%d\t\t| %s\t\t| real\n", line_num, yytext); }
boolean    { printf("%d\t\t| %s\t\t| boolean\n", line_num, yytext); }
char       { printf("%d\t\t| %s\t\t| char\n", line_num, yytext); }
var        { printf("%d\t\t| %s\t\t| var\n", line_num, yytext); }
to         { printf("%d\t\t| %s\t\t| to\n", line_num, yytext); }
downto     { printf("%d\t\t| %s\t\t| downto\n", line_num, yytext); }
if         { printf("%d\t\t| %s\t\t| if\n", line_num, yytext); }
else       { printf("%d\t\t| %s\t\t| else\n", line_num, yytext); }
while      { printf("%d\t\t| %s\t\t| while\n", line_num, yytext); }
for        { printf("%d\t\t| %s\t\t| for\n", line_num, yytext); }
do         { printf("%d\t\t| %s\t\t| do\n", line_num, yytext); }
array      { printf("%d\t\t| %s\t\t| array\n", line_num, yytext); }
begin      { printf("%d\t\t| %s\t\t| begin\n", line_num, yytext); }
end        { printf("%d\t\t| %s\t\t| end\n", line_num, yytext); }
read       { printf("%d\t\t| %s\t\t| read\n", line_num, yytext); }
write      { printf("%d\t\t| %s\t\t| write\n", line_num, yytext); }
of		   { printf("%d\t\t| %s\t\t| of\n", line_num, yytext); }

(and)|(or)|(not)                   { printf("%d\t\t| %s\t\t| boolean operator\n", line_num, yytext); }
[+*/%]                             { printf("%d\t\t| %s\t\t| arithmetic operator\n", line_num, yytext); }
[-]                                { printf("%d\t\t| %s\t\t| arithmetic operator\n", line_num, yytext); }
=                                  { printf("%d\t\t| %s\t\t| relational operator\n", line_num, yytext); }
\<                             { printf("%d\t\t| %s\t\t| relational operator\n", line_num, yytext); }
\>                                { printf("%d\t\t| %s\t\t| relational operator\n", line_num, yytext); }
\<>                                { printf("%d\t\t| %s\t\t| relational operator\n", line_num, yytext); }
\<=                                { printf("%d\t\t| %s\t\t| relational operator\n", line_num, yytext); }
\>=                                { printf("%d\t\t| %s\t\t| relational operator\n", line_num, yytext); }

[a-z][a-z0-9_]*                    { printf("%d\t\t| %s\t\t| identifier\n", line_num, yytext); }

[.,:;?!]              { printf("%d\t\t| %s\t\t| punctuation\n", line_num, yytext); }

[0-9]+                             { printf("%d\t\t| %s\t\t| number\n", line_num, yytext); }
[0-9]*[.][0-9]+                    { printf("%d\t\t| %s\t\t| number\n", line_num, yytext); }

.                                  {}

%%

int main(int argc, char* argv[])
{	if(argc<2) return -1;
	printf("-----------------------------------------\n");
	printf("Line Number\t  Lexeme\t Token Type\n");
	printf("-----------------------------------------\n");
	yyin = fopen(argv[1],"r");
	yylex();
	fclose(yyin);
	return 0;
}
