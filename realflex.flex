import java.util.*;

%%

%class MySearcher
%standalone
%line
%column
/*Macro def here options too*/
Numbers = \d+\.?\d*
Letters = \"[^\"\\\n]*\"
Identifier = [A-Za-z][A-Za-z0-9]*
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
Others = [^A-Za-z0-9+\-\*/%\" ]+




LineTerminator = \r|\n|\r\n
InputCharacter = [^\r\n]


/* comments */
Comment = {SingleLineComment} | {MultiLineComment} | {DocumentationComment} | [ ]
SingleLineComment     = "//" {InputCharacter}* {LineTerminator}?
MultiLineComment   = "/*" [^*] ~"*/" | "/*" "*"+ "/"
DocumentationComment = "/**" {CommentContent} "*"+ "/"
CommentContent       = ( [^*] | \*+ [^/*] )*


%{
    Set<String> IdentifierSet = new HashSet<>();
%}
%unicode
%public

/* Macros */
DOUBLE_QUOTE = \"|\u201C|\u201D

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
    else System.out.printf("identifier \"%s\" already in symbol table\n", yytext());
    
    IdentifierSet.add(yytext());
}
    
{Comment} { /* ignore */ 
}

{LineTerminator} { /* ignore */ 
}

{Integer} {
    System.out.printf("integer: %s", yytext());
}
{NotEqual} | {Operator} | {Equal} | {GreaterThanOrEqual} | {LessThanOrEqual} | {Increment} | {Decrement} | {AND} | {OR} {
    System.out.printf("operator: %s\n", yytext());
}

{Integer} {
    System.out.printf("integer: %s\n", yytext());
}

{Letters} {
    // ตรวจสอบว่ามีเครื่องหมาย ! ในสตริงหรือไม่
    // if (yytext().contains("!")) {
    //     System.out.println("Error: Exclamation mark ('!') found in string: " + yytext());
    //     throw new RuntimeException("Program terminated due to exclamation mark in string.");
    // } else {
        System.out.println("string: " + yytext());
    // }
}

// จับข้อความที่ไม่ถูกครอบด้วยเครื่องหมายคำพูด และหยุดการทำงานทันที
[a-zA-Z_][a-zA-Z0-9_]* {
    try {
        System.out.println("Error: String is not enclosed in double quotes: " + yytext());
        throw new RuntimeException("Program terminated due to string not enclosed in double quotes.");
    } catch (RuntimeException e) {
        System.err.println(e.getMessage());
    }
}



// ละเว้นอักขระอื่น ๆ
{Others} { throw new RuntimeException("Program terminated due to invalid character."); }
