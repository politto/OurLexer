import java.util.*;
%%

%class MySearcher
%standalone
%line
%column
/*Macro def here options too*/
Numbers = \d+\.?\d*
Letters = [a-zA-Z]
Identifier = [A-Za-z][A-Za-z0-9]*

Integer = \d+
Operator = [+\-*/=<>]
Equal = ==
GreaterThanOrEqual = >=
LessThanOrEqual = <=
Increment = \+\+
Decrement = \-\-

COMMENT_SINGLE = "//".*
COMMENT_MULTI = "/*"([^*]|\*+[^*/])*\*+"/"



LineTerminator = \r|\n|\r\n
InputCharacter = [^\r\n]


/* comments */
Comment = {TraditionalComment} | {EndOfLineComment} | {DocumentationComment}
TraditionalComment   = "/*" [^*] ~"*/" | "/*" "*"+ "/"
EndOfLineComment     = "//" {InputCharacter}* {LineTerminator}?
DocumentationComment = "/**" {CommentContent} "*"+ "/"
CommentContent       = ( [^*] | \*+ [^/*] )*

/* insert java code*/
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
    if (!IdentifierSet.contains(yytext())) System.out.printf("new identifier: %s", yytext());
    else System.out.printf("identifier \"%s\" already in symbol table", yytext());
    
    IdentifierSet.add(yytext());
}
    
{Comment} { /* ignore */ 
}

{Integer} {
    System.out.printf("integer: %s", yytext());
}



%%

{COMMENT_SINGLE} {}
{COMMENT_MULTI} {}

{Operator} | {Equal} | {GreaterThanOrEqual} | {LessThanOrEqual} | {Increment} | {Decrement} {
    System.out.printf("operator: %s\n", yytext());
}

\n {}
. {}