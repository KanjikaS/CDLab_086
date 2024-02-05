%{
#include<stdio.h>
int flag=0;
%}
%%
.*[2][2][2].* {flag=1;}
.* {flag=0;}
\n {return 0;}
%%
void main(){
printf("Enter input\n");
yylex();
if(flag==1){
printf("Consecutive 222\n");
}
else{
printf("no\n");

}}
int yywrap(){
return 1;}



