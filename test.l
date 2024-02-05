%{
#include<stdio.h>
int c=0;
%}
%%
"\/\*"[^*]*\*+([^/*][^*]*\*+)*\/ {c++;}
"//".* {c++;}
\n  {fprintf(yyout,"The comments are - %d\n",c);
c=0;
}
%%
void main(){
yyin = fopen("output1.txt","r");
yyout = fopen("new.txt","w");
yylex();
fclose(yyin);
fclose(yyout);
}
int yywrap(){
return 1;}
