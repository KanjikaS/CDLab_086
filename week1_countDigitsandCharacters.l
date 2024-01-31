%{
#include<stdio.h>
int d=0,c=0;
%}
%%
[a-zA-Z] {c++;}
[0-9] {d++;}
. ;
\n {printf("The number of digits in the sentence is %d and characters is %d\n",d,c),c=0,d=0;}
%%
void main(){
printf("Enter input\n");
yylex();
}
int yywrap(){
return 1;}

       
