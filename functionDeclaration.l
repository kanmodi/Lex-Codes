%{
#include "y.tab.h"
%}

ID	[a-zA-Z][a-zA-Z0-9]*

%%

"void"|"int"|"float"|"char"	{yylval.str=yytext; return RETURN_TYPE;}
{ID}	                        {yylval.str=yytext; return IDENTIFIER;}
" "		                {return WHITESPACE;}
"("|")"	                        {return yytext[0];}
;|\n|,|"*"	        	{return yytext[0];}
.		                {printf("unrecognized symbol: %c \n",yytext[0]);}
%%
int yywrap (void) 
{
    return 1;
}
