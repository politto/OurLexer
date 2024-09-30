import java.util.*;

%%

%class MySearcher
%standalone
%line
%column
/*Macro def here options too*/
Numbers = \d+\.?\d*
Letters = \"[A-Za-z]\"
Identifier = [A-Za-z]+[A-Za-z0-9]?
Integer = \d+
Operator = [+\-*/=<>%]
NotEqual = "!="
Equal = ==
GreaterThanOrEqual = >=
LessThanOrEqual = <=
Increment = \+\+
Decrement = \-\-
AND = "&&"
OR = "\|\|"



LineTerminator = \r|\n|\r\n
InputCharacter = [^\r\n]


/* comments */
Comment = {TraditionalComment} | {EndOfLineComment} | {DocumentationComment}
TraditionalComment   = "/*" [^*] ~"*/" | "/*" "*"+ "/"
EndOfLineComment     = "//" {InputCharacter}* {LineTerminator}?
DocumentationComment = "/**" {CommentContent} "*"+ "/"
CommentContent       = ( [^*] | \*+ [^/*] )*


%{
    Set<String> IdentifierSet = new HashSet<>();
%}


%%
"if"        { System.out.printf("keyword: if"); }
"then"      { System.out.printf("keyword: then"); }
"else"      { System.out.printf("keyword: else"); }
"endif"     { System.out.printf("keyword: endif"); }
"while"     { System.out.printf("keyword: while"); }
"do"        { System.out.printf("keyword: do"); }
"endwhile"  { System.out.printf("keyword: endwhile"); }
"print"     { System.out.printf("keyword: print"); }
"newline"   { System.out.printf("keyword: newline"); }
"read"      { System.out.printf("keyword: read"); }


{Identifier} {
    if (!IdentifierSet.contains(yytext())) System.out.printf("new identifier: %s\n", yytext());
    else System.out.printf("identifier \"%s\" already in symbol table", yytext());
    
    IdentifierSet.add(yytext());
}
    
{Comment} { /* ignore */ 
}

{Integer} {
    System.out.printf("integer: %s", yytext());
}
{NotEqual} | {Operator} | {Equal} | {GreaterThanOrEqual} | {LessThanOrEqual} | {Increment} | {Decrement} | {AND} | {OR} {
    System.out.printf("operator: %s\n", yytext());
}

