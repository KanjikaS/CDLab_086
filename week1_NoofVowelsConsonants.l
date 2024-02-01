%{
#include<stdio.h>
int v=0,c=0;
%}
%%
[aeiouAEIOU] {v++;}
[A-Za-z] {c++;}
. ;
\n {printf("The number of vowels in the sentence is %d and consonants is %d\n",v,c),c=0,v=0;}
%%
void main(){
printf("Enter input\n");
yylex();
}
int yywrap(){
return 1;}

