%{
#include<stdio.h>
#include<stdlib.h>
int yyerror(char *s);
int yylex(void);
%}
%token A
%token B
%token NL
%%
expr:A A A A A S B NL {printf("The pattern was (a^n)b, which was successfully passed hence valid\n");}
;
S:S A
|
;
%%
void main(){
printf("Enter the pattern\n");
yyparse();
}
int yyerror(char *s){
printf("Invalid pattern\n");
return 0;}

