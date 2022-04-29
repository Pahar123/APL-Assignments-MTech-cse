%{
	#include<stdio.h>
	#include<string.h>

	char file[1];
	char word[] = "Write";
	int count = 0;
%}
%%
[a-zA-Z]+	{ if(strcmp(yytext, word)==0) count++; }
. ;
%%
int main()
{
	printf("Enter file name:");
	scanf("\n%s", file);
	yyin = fopen(file, "r");                             
	yylex();                                             
	printf("%d\n", count);
}
int yywrap()         //calling yywrap to end of file
{
	return 1;
}
