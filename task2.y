%{
#include <stdio.h>
int sum;
%}
%token PROGRAM VAR VARLINE BEGIN END PERIOD
%%

//expr: NUM'+'NUM {$$=$1+$3;  sum=$$;  printf("sum is %d", sum);}
S: PROGRAM IDENTIFIER VAR VARLINES BEGIN A END PERIOD
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
