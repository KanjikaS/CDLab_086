%{
#include<stdio.h>
int flag=0;
%}
%%
^(a|an|the|The|A|An).*[.|?|!] {flag=1;}
.* {flag=0;}
\n {return 0;}
%%
int yywrap(){
return 1;}
void main(){
printf("Enter input\n");
yylex();
if(flag==1){
printf("Valid\n");
}
else{
printf("Invalid\n");
}
}
