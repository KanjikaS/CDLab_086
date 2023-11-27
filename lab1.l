%{
#include<stdio.h>
%}
%%
[+-]?[0-9]*[.][0-9][0-9]* {printf("\n%s:This is a Floating point number\n",yytext);}
[+-]?[0-9][0-9]* { printf("\n%s:This is not floating point\n",yytext);}
%%
int yywrap(){
}
int main(){
 printf("Enter a number\n");
 yylex();
 return 0;
 }
