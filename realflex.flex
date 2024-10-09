import java.util.*;
import java.io.*;

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

{DOUBLE_QUOTE_PATTERN} {
    System.out.println("string:" + yytext()); // If matched, print the valid string
}

/* ข้อมูลอื่น ๆ ถือว่าเป็นข้อผิดพลาด */
. {
    System.out.println("Error");
    System.exit(1);
} 