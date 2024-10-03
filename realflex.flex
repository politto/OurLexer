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
    if (!IdentifierSet.contains(yytext())) System.out.printf("new identifier: %s\n", yytext());
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
    isQuoteOpened = !isQuoteOpened;  // สลับสถานะเปิด-ปิด
    currentString.append(yytext());  // เก็บเครื่องหมายเปิดหรือปิดใน currentString
}



// จับข้อความภายในเครื่องหมายคำพูด
[^\"\n]+ {
    if (isQuoteOpened) {
        currentString.append(yytext());  // เก็บข้อความเมื่ออยู่ในเครื่องหมายคำพูด
    }
}

// จบการอ่านบรรทัดและตรวจสอบเครื่องหมายคำพูดในบรรทัดนั้น
\n {
    if (isQuoteOpened) {  // ถ้ามีการเปิดเครื่องหมายคำพูดแต่ไม่มีการปิด
        System.out.println("Error: Unmatched double quote is incomplete");
    } else if (currentString.length() > 0) {  // ถ้ามีเครื่องหมายเปิดและปิดครบ
        System.out.println("Valid string: " + currentString.toString());
    }

    // รีเซ็ตตัวแปร
    currentString.setLength(0);
    isQuoteOpened = false;
}

// ตรวจสอบตอนสิ้นสุดไฟล์ (EOF) หากไม่มี '\n'
<<EOF>> {
    if (isQuoteOpened) {  // ถ้าเครื่องหมายเปิดอยู่แต่ไม่มีการปิดเมื่อถึงจุดสิ้นสุดไฟล์
        System.out.println("Error: Unmatched double quote is incomplete");
    } else if (currentString.length() > 0) {  // ถ้ามีการเปิดและปิดครบถ้วน
        System.out.println("Valid string: " + currentString.toString());
    }
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


// ละเว้นอักขระอื่น ๆ
{Others} { throw new RuntimeException("Program terminated due to invalid character."); }
