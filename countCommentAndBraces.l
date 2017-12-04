%{

#include<stdio.h>

int countkeywords=0, countcomments=0, countbraces=0, countbrackets=0;

%}

op [+-*/]

letter [a-zA-Z]

digit [0-9]

id {letter}*|({letter}{digit})+

type int|char|bool|float|void|for|do|while|if|else|return|void|default|printf|scanf|include|main

%%

[\t\n]+

{type} {countkeywords++;}

"/*"[^\n]+"*/" {countcomments++;}

"(" {countbrackets++;}
")" {countbrackets++;}
"}" {countbraces++;}
"{" {countbraces++;}

%%
int yywrap (void) 
{
    return 1;
}

int main()

{

printf("\nEnter the C code: ");

yylex();

printf("Total keywords, comments, braces, brackets are: %d %d %d %d\n", countkeywords, countcomments,countbraces, countbrackets);
return 0;

}

