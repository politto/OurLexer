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



LineTerminator = \r|\n|\r\n
InputCharacter = [^\r\n]


/* comments */
Comment = {SingleLineComment} | {MultiLineComment} | {DocumentationComment}
SingleLineComment     = "//" {InputCharacter}* {LineTerminator}?
MultiLineComment   = "/*" [^*] ~"*/" | "/*" "*"+ "/"
DocumentationComment = "/**" {CommentContent} "*"+ "/"
CommentContent       = ( [^*] | \*+ [^/*] )*


%{
    Set<String> IdentifierSet = new HashSet<>();
%}


%%


{Identifier} {
    if (!IdentifierSet.contains(yytext())) System.out.printf("new identifier: %s", yytext());
    else System.out.printf("identifier \"%s\" already in symbol table", yytext());
    
    IdentifierSet.add(yytext());
}
    
{Comment} { /* ignore */ 
}

