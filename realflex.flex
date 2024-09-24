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
STRING_CHAR = [^\"\\n]
STRING      = {DOUBLE_QUOTE}{STRING_CHAR}*{DOUBLE_QUOTE}

%%

{STRING} {
    if (yytext().contains("!")) {
        System.out.println("Error: Exclamation mark ('!') found in string: " + yytext());
    } else {
        System.out.println("string: " + yytext());
    }
}

. { /* Ignore any other characters */ }