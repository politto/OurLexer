%%

%class MySearcher
%standalone
%line
%column

Operator = [+\-*/=<>%]
NotEqual = "!="
Equal = ==
GreaterThanOrEqual = >=
LessThanOrEqual = <=
Increment = \+\+
Decrement = \-\-
AND = "&&"
OR = "\|\|"

%%
{NotEqual} | {Operator} | {Equal} | {GreaterThanOrEqual} | {LessThanOrEqual} | {Increment} | {Decrement} | {AND} | {OR} {
    System.out.printf("operator: %s\n", yytext());
}

\n {}
. {}
