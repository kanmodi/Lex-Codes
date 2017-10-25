%{
int lineno = 1;
%}

line .*\n

%option noyywrap

%%
{line} {printf("%d %s",lineno++,yytext);}
%%
int main(void){
	yylex();
	return 0;
}
