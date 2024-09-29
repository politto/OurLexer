import java.util.*;
%%


%class MySearcher
%standalone
%line
%column
/*Macro def here options too*/
Numbers = \d+\.?\d*
Letters = [a-zA-Z]
Identifier = id+\d*
Integer = \d+\.?\d*|\d+

%{
    Set<String> IdentifierSet = new HashSet<>();
%}


%%


{Identifier} {
    if (!IdentifierSet.contains(yytext())) System.out.printf("new identifier: %s", yytext());
    else System.out.printf("identifier \"%s\" already in symbol table", yytext());
    
    IdentifierSet.add(yytext());
}
    
{Integer} {
    if (yytext().matches("^\\d+$")) {
        System.out.printf("integer: %s", yytext());
    } else {
        System.out.println("Error: Non-integer value found.");
        System.exit(0);
    }
}
