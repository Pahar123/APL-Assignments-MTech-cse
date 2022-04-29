%{
    #include<stdio.h>
    #include<string.h>
%}
%%
[a-zA-z]+[0-9]+[a-zA-Z0-9]+   {printf("Alphanumeric");}
[0-9]+    {printf("Numeric");}
[A-Z]+   {printf("Uppercase");}
[a-z]+   {printf("Lowercase");}
.+   {printf("Unknown");}
%%
int main()
{
    printf("Enter a string:");
    yylex();
}
int yywrap()
{
    return 1;
}
