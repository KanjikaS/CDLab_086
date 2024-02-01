%{
#include<stdio.h>
int words;
%}
%%
[^\t\n ]+ {words++;}
\n {printf("The number of words in sentence is %d\n",words),words = 0;}
%%
void main(){
printf("Enter input\n");
yylex();
}
int yywrap(){
return 1;
}

