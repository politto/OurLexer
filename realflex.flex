import java.util.*;

%%

%class MySearcher
%standalone
%line
%column
/*Macro def here options too */
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
Others = [^A-Za-z0-9+\-\*/%\"\(\)\; ]+

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
    StringBuilder currentString = new StringBuilder();  // เก็บข้อความในเครื่องหมายคำพูด
%}






%unicode
%public
%state STRING_MODE

/* Macros */
DOUBLE_QUOTE = \"|\u201C|\u201D

%%

"(" { System.out.println("Left Parenthesis: ("); }
")" { System.out.println("Right Parenthesis: )"); }
";" { System.out.println("Semicolon: ;"); }

<YYINITIAL> {

    "if"        { System.out.printf("keyword: if\n"); }
    "then"      { System.out.printf("keyword: then\n"); }
    "else"      { System.out.printf("keyword: else\n"); }
    "endif"     { System.out.printf("keyword: endif\n"); }
    "while"     { System.out.printf("keyword: while\n"); }
    "do"        { System.out.printf("keyword: do\n"); }
    "endwhile"  { System.out.printf("keyword: endwhile\n"); }
    "print"     { System.out.printf("keyword: print\n"); }
    "newline"   { System.out.printf("keyword: newline\n"); }
    "read"      { System.out.printf("keyword: read\n"); }

    {Identifier} {
        if (!IdentifierSet.contains(yytext())) {
            System.out.printf("new identifier: %s\n", yytext());
        } else {
            System.out.printf("identifier \"%s\" already in symbol table\n", yytext());
        }
        IdentifierSet.add(yytext());
    }

    {Comment} { /* ignore */ }

    {LineTerminator} { /* ignore */ }

    {NotEqual} | {Operator} | {Equal} | {GreaterThanOrEqual} | {LessThanOrEqual} | {Increment} | {Decrement} | {AND} | {OR} {
        System.out.printf("operator: %s\n", yytext());
    }

    {Integer} {
        System.out.printf("integer: %s\n", yytext());
    }

    // เมื่อพบเครื่องหมายเปิด DOUBLE_QUOTE ให้เปลี่ยนสถานะเป็น STRING_MODE
    {DOUBLE_QUOTE} {
        currentString.setLength(0);  // รีเซ็ตตัวแปรเก็บข้อความ
        yybegin(STRING_MODE);  // เปลี่ยนไปที่ STRING_MODE
    }

    // กรณีเจอ DOUBLE_QUOTE ตามหลัง Identifier ให้แสดง error
    {Identifier}{DOUBLE_QUOTE} {
        System.out.printf("Error: Unmatched double quote is incomplete");
        throw new RuntimeException("Invalid identifier followed by quote");
    }
}

// เมื่ออยู่ใน STRING_MODE
<STRING_MODE> {

    {DOUBLE_QUOTE} {
        yybegin(YYINITIAL);  // กลับสู่สถานะปกติ
        System.out.printf("Valid string: \"%s\"\n", currentString.toString());  // แสดงผล string ที่ถูกจับ
    }

    [^\"\n]+ {
        currentString.append(yytext());  // เก็บข้อความภายในเครื่องหมายคำพูด
    }

    \n {
        // ถ้าพบบรรทัดใหม่ขณะที่ยังอยู่ในโหมด string ถือว่า string ไม่สมบูรณ์
        System.out.println("Error: Unmatched double quote is incomplete");
        throw new RuntimeException("Unmatched double quote is incomplete");  // หยุดการทำงาน
    }
}

// ละเว้นอักขระอื่น ๆ
{Others} {
    System.out.printf("Error: Invalid character '%s'\n", yytext());
    throw new RuntimeException("Program terminated due to invalid character.");
}