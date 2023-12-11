%{
#include<stdio.h>
#include<stdlib.h>
%}
%%
^[0-9]*[00] {printf("ending with 00\n");}
^[0-9]*[222][0-9]* {printf("has consecutive 222\n");}
^[0-9]*[00]|^[0-9]*[222][0-9]* {printf("ending with 00 and has consecutive 222\n");}
%%
int yywrap()
{
}
int main()
{
yylex();
return 0;
}
