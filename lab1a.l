%{
#include<stdio.h>
%}
%%
print|void|main|while|if|for|else {printf("%s - Keyword\n",yytext);}
[a-zA-Z]* {printf("%s - Identifier\n",yytext);}
,|; {printf("%s- Separator\n",yytext);}
[0-9]* {printf("%s - Digit\n",yytext);}
%%
void main(){
printf("Enter the text");
yylex();
}
int yywrap(){
return 1;
}
