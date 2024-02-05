%{
#include<stdio.h>
int words = 0;
int sentences = 0;
int chr = 0;
%}

%%
[a-zA-Z0-9] { chr++; }
[^\t\n ]+ { words++; }
[.!?] { sentences++; }
\n { 
    printf("No of characters, words, sentences are %d, %d, %d.\n", chr, words, sentences);
    words = 0;
    sentences = 0;
    chr = 0;
}
%%

int main() {
    printf("Enter a sentence:\n");
    yylex();
    return 0;
}

int yywrap() {
    return 1;
}

