%{
#include<stdio.h>

%}
alpha [A-Za-z0-9]
%%
[A-Za-z]+ {printf("characters\n");}
[0-9]+ {printf("Digits\n");}
{alpha}+ {printf("Invalid input\n");}
%%
void main(){
printf("Enter input\n");
yylex();
}
int yywrap(){
return 1;
}

