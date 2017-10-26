%option noyywrap
%%

[A-Z]+
%%
int main(void){
	yylex();
	return 0;
}
