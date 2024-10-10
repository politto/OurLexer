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
GreaterThanOrEqual = ">="
LessThanOrEqual = <=
Increment = \+\+
Decrement = \-\-
AND = "&&"
OR = "\|\|"
Others = [^A-Za-z0-9+\-\*\"/% ]+




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

%{
    boolean isQuoteOpened = false;  // สถานะการเปิดเครื่องหมายคำพูด
    StringBuilder currentString = new StringBuilder();  // เก็บข้อความในเครื่องหมายคำพูด
%}

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
    if (isQuoteOpened) currentString.append(yytext());
    else if (!IdentifierSet.contains(yytext())) System.out.printf("new identifier: %s\n", yytext());
    else System.out.printf("identifier \"%s\" already in symbol table\n", yytext());
    IdentifierSet.add(yytext());
}
    
{Comment} { /* ignore */ 
}

{LineTerminator} { /* ignore */ 
}
{NotEqual} | {Operator} | {Equal} | {GreaterThanOrEqual} | {LessThanOrEqual} | {Increment} | {Decrement} | {AND} | {OR} {
    System.out.printf("operator: %s\n", yytext());
}

{Integer} {
    System.out.printf("integer: %s\n", yytext());
}

// จับการเปิดและปิดเครื่องหมายคำพูดคู่
{DOUBLE_QUOTE} {
    // System.out.printf("[DEBUG] found quote! isQuoteOpened %s, currentString >>%s<< length %d, yy.text is %s\n", isQuoteOpened, currentString, currentString.length(), yytext());
    if (isQuoteOpened && currentString.length() == 0) {
        throw new RuntimeException("Program terminated due to unmatched double quote.");
    }
    else if (isQuoteOpened && currentString.length() > 0) {
        isQuoteOpened = !isQuoteOpened;
        System.out.printf("string: \"%s\"\n", currentString);
        currentString.setLength(0);
    }
    else {
        isQuoteOpened = !isQuoteOpened;  // สลับสถานะเปิด-ปิด
    }
}


// ละเว้นอักขระอื่น ๆ
{Others} { throw new RuntimeException("Program terminated due to invalid character or misused string quotes."); }
