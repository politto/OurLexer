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

{DOUBLE_QUOTE}[^\"\\n]*{DOUBLE_QUOTE} {
    // ตรวจสอบว่ามีเครื่องหมาย ! ในสตริงหรือไม่
    if (yytext().contains("!")) {
        System.out.println("Error: Exclamation mark ('!') found in string: " + yytext());
        throw new RuntimeException("Program terminated due to exclamation mark in string.");
    } else {
        System.out.println("string: " + yytext());
    }
}

// ตรวจสอบกรณีข้อความที่ไม่มีอยู่ในเครื่องหมายคำพูด
[a-zA-Z_][a-zA-Z0-9_]* { 
    // แสดงข้อความข้อผิดพลาดและหยุดการทำงานเมื่อพบข้อความที่ไม่ได้อยู่ในเครื่องหมายคำพูด
    System.out.println("Error: String is not enclosed in double quotes: " + yytext());
    throw new RuntimeException("Program terminated due to string not enclosed in double quotes.");
}

// ละเว้นอักขระอื่น ๆ
. { /* Ignore any other characters */ }