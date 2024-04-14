%{
#include <stdio.h>
#include <stdlib.h>
%}
%token PROGRAM IDENTIFIER VAR VARLINE BEGINN END PERIOD
%%

S: PROGRAM IDENTIFIER VAR VARLINES BEGINN END PERIOD {return 1;}
 ;
VARLINES: VARLINE VARLINES
        | VARLINE
        ;

%%

void main()
{
	yyparse();
	printf("valid input");
	exit(0);
}

void yyerror()
{
	printf("syntax error");
	exit(0);
}
