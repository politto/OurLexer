import java.util.*;
<<<<<<< HEAD
import java.io.*;

=======
>>>>>>> parent of ff5ea8e (หัวผมหมุ่นแล้วครับ)
%%

%class MySearcher
%standalone
%line
%column
%unicode
%public

/* Macros */
DOUBLE_QUOTE_PATTERN = \"([^\"\\\\\\n]|\\\\(.|\\n))*\"  // For valid strings

%%

<<<<<<< HEAD
{DOUBLE_QUOTE_PATTERN} {
    System.out.println("string:" + yytext()); // If matched, print the valid string
}

/* ข้อมูลอื่น ๆ ถือว่าเป็นข้อผิดพลาด */
. {
    System.out.println("Error");
    System.exit(1);
} 
=======
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
>>>>>>> parent of ff5ea8e (หัวผมหมุ่นแล้วครับ)
