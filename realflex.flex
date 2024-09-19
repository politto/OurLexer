%%

%class MySearcher
%standalone
%line
%column
/*Macro def here options too*/
Numbers = \d+\.?\d*
Letters = [a-zA-Z]
Identifier = id+\d*

%{
    Set<String> IdentifierSet = new HashSet<>();
%}


%%


{Identifier} {
    if (!IdentifierSet.contains(yytext())) System.out.printf("new identifier: %s", yytext());
    else System.out.printf("identifier \"%s\" already in symbol table", yytext());
    
    IdentifierSet.add(yytext());
}
    
