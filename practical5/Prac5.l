%{
#include <stdio.h>

char changeCase(char ch)
{
    if (ch >= 'a' && ch <= 'z')
        return ch - 32;

    if (ch >= 'A' && ch <= 'Z')
        return ch + 32;

    return ch;
}
%}

%%

[a-zA-Z]    { putchar(changeCase(yytext[0])); }

%%

int main()
{
    printf("Parth Kandikurwar 24070521097\n");
    printf("Enter a Text: ");
    yylex();
    return 0;
}

int yywrap()
{
    return 1;
}
