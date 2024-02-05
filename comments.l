%{
#include<stdio.h>
%}
%%
[ \t]+ {fprintf(yyout," ");}
.|\n {fprintf(yyout,"%s",yytext);}
%%
void main(){
yyin=fopen("input2.txt","r");
yyout=fopen("output2.txt","w");
yylex();
fclose(yyin);
fclose(yyout);
printf("printed\n");
}
int yywrap(){
return 1;}



