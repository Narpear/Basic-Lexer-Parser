%{
#include<stdio.h>
#include<stdlib.h>
int yylex();
extern char* yytext;
void yyerror(const char *s);
extern int yylineno;
%}
%token INT FLOAT CHAR DOUBLE ID NUM INCLUDE
%token MAIN DO WHILE IF ELSE FOR SWITCH CASE BREAK CONTINUE
%token ASSIGN EQCOMP GREATEREQ LESSEREQ NOTEQ GREATER LESS
%token ADD SUB MULT DIV

%%
Start : Prog {printf("Valid Syntax\n");YYACCEPT;} // start with program
        ;

Prog : Main // end in main program
        | Include Prog // include library
        | Decl Prog // declaration of variables - global
        | Assign Prog // assignment of variables - global
        | DeclAssign Prog // declaration and assignment of variables - global
        | DeclArray Prog // declaration of arrays - global
        ;

Include : INCLUDE LESS ID '.' ID GREATER // include library
        | INCLUDE '"' ID '.' ID '"'
        ;        

Decl : Type ListVar ';' // declaration of variables
        ;

Assign : ID ASSIGN Expr ';' // assignment of variables
        ;

DeclAssign : Type ListVar ASSIGN Expr ';' // declaration and assignment of variables
        ;

DeclArray : Type ID ArraySize ';' // declaration of arrays

ArraySize : ArraySize '[' NUM ']' // any size of array
        | '[' NUM ']'
        ;

Type : INT // type of variables
        | FLOAT
        | CHAR
        | DOUBLE
        ;

ListVar : ListVar ',' ID // list of variables - declare multiple variables
        | ID
        ;

Expr : Expr Relop E // expression - arithmetic & relational operators
        | E
        ;

Relop : EQCOMP // relational operators
        | GREATEREQ
        | LESSEREQ
        | NOTEQ
        | GREATER
        | LESS
        ;

E : E ADD T // expression - arithmetic operators
        | E SUB T
        | T
        ;

T : T MULT F // expression - arithmetic operators
        | T DIV F
        | F
        ;

F : '(' Expr ')' // expression - parenthesis
        | ID
        | NUM
        ;

EListVar : Type ListVar // list of variables in function definition
        |
        ;

Main : Type MAIN '(' EListVar ')' '{' Stmt '}' // main function
        ;

Stmt : SingleStmt Stmt // statements in main function
        | IfElseStmt Stmt // if-else block
        | DoWhileStmt Stmt // do-while block
        | ForStmt Stmt // for block
        | WhileStmt Stmt // while block
        | SwitchStmt Stmt // switch block
        |
        ;

SingleStmt : Decl // declaration
        | Assign // assignment
        | DeclAssign // declaration and assignment
        | DeclArray // declaration of arrays
        | BREAK ';' // break statement
        | CONTINUE ';' // continue statement
        ;

IfElseStmt : IF '(' Expr ')' '{' Stmt '}' ELSE '{' Stmt '}' // if-else
        | IF '(' Expr ')' '{' Stmt '}' // if statement
        ;

DoWhileStmt : DO '{' Stmt '}' WHILE '(' Expr ')' ';' // do-while
            ;

ForStmt : FOR '(' AssignFor ';' Expr ';' AssignFor ')' '{' Stmt '}' // for
        ;

AssignFor : ID ASSIGN Expr // assignment inside for statement
        ;

WhileStmt : WHILE '(' Expr ')' '{' Stmt '}' // while statement
        ;

SwitchStmt : SWITCH '(' Expr ')' '{' CaseStmt '}' // switch statement
        ;

CaseStmt : CaseStmt CASE NUM ':' Stmt // case statements
        | CASE NUM ':' Stmt
        ;

%%
void yyerror(const char* s)
{
    printf("%s\n", s);
    printf("Error: line number: %d. Invalid token: %s ",yylineno,yytext);
    exit(0);
}

int main()
{
if(!yyparse())
	printf("Parsing Successful\n");
else
	printf("Unsuccessful\n");
return 0;
}
