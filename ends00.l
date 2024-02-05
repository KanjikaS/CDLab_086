%{
#include<stdio.h>
int flag=0;
%}
%%
.*[00] {flag=1;}
.* {flag=0;}
\n {return 0;}
%%
void main(){
printf("Enter input\n");
yylex();
if(flag==1){
printf("Ends with 00\n");
}
else{
printf("doesnt Ends with 00\n");

}}
int yywrap(){
return 1;}



