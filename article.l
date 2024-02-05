%{
#include<stdio.h>
int flag=0;
%}
%%
^(a|an|the|A|An|The).* {flag=1;}
.* {flag=0;}
\n {return 0;}
%%
int yywrap()
{
return 1;
}
void main()
{
printf("Enter a sentence:\n");
yylex();
if(flag==1)
printf("Starts with article!\n");
else
printf("Does not start with article!\n"); 
}
