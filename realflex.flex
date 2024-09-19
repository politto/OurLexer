%%

%class MySearcher
%standalone
%line
%column

Operator = [+\-*/=<>]
Equal = ==
GreaterThanOrEqual = >=
LessThanOrEqual = <=
Increment = \+\+
Decrement = \-\-

COMMENT_SINGLE = "//".*
COMMENT_MULTI = "/*"([^*]|\*+[^*/])*\*+"/"

%%

{COMMENT_SINGLE} {}
{COMMENT_MULTI} {}

{Operator} | {Equal} | {GreaterThanOrEqual} | {LessThanOrEqual} | {Increment} | {Decrement} {
    System.out.printf("operator: %s\n", yytext());
}

\n {}
. {}