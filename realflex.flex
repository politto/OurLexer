import java.util.*;
%%

%class MySearcher
%standalone
%line
%column
%unicode
%public

/* Macros */
DOUBLE_QUOTE = \"|\u201C|\u201D

%%

// จับข้อความที่อยู่ในเครื่องหมายคำพูดคู่
{DOUBLE_QUOTE}[^\"\\n]*{DOUBLE_QUOTE} {
    System.out.println("Valid string: " + yytext());
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

// ละเว้นอักขระอื่น ๆ ที่ไม่ใช่ข้อความหรือตัวอักษร
. { /* Ignore any other characters */ }