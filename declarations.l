%{
#include<stdio.h>
#include "y.tab.h"
extern void yyerror(const char *s);
int yylineno;
%}

%%

#include   return INCLUDE;
main    return MAIN;

do    return DO;
while	return WHILE;
switch	return SWITCH;
case	return CASE;
break	return BREAK;
continue	return CONTINUE;
if	return IF;
else	return ELSE;
for	return FOR;
int	return INT;
float	return FLOAT;
char	return CHAR;
double	return DOUBLE;
"=" return ASSIGN;
"==" return EQCOMP;
">=" return GREATEREQ;
"<=" return LESSEREQ;
"!=" return NOTEQ;
">" return GREATER;
"<" return LESS;
"+" return ADD;
"-" return SUB;
"*" return MULT;
"/" return DIV;
[a-zA-Z]([a-zA-Z0-9])*	return ID;
[0-9]+	return NUM;
\n      { yylineno++;}
[' '|\t]	;
. return *yytext;


%%

int yywrap() {
    return 1;
}
