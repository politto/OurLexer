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

%%

{Operator} | {Equal} | {GreaterThanOrEqual} | {LessThanOrEqual} | {Increment} | {Decrement} {
    System.out.printf("operator: %s\n", yytext());
}

\n {}
. {}
