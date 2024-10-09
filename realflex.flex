import java.util.Stack;

%%

%class ParenthesisChecker
%standalone
%line
%column
%unicode
%public

%{
    Stack<Character> parenthesesStack = new Stack<>();  // Stack สำหรับเก็บวงเล็บที่เปิด
%}

/* Macros */
OPEN_PAREN = \(
CLOSE_PAREN = \)
SEMICOLON = ;

%%

// (
{OPEN_PAREN} {
    parenthesesStack.push('(');  // Add an opening parenthesis to stack
    System.out.println("\nFound opening parenthesis '(' at line: " + yyline + ", column: " + yycolumn);
}

// )
{CLOSE_PAREN} {
    if (!parenthesesStack.isEmpty() && parenthesesStack.peek() == '(') {
        parenthesesStack.pop();  // Remove opening parentheses from the stack when closing parentheses are found
        System.out.println("Found closing parenthesis ')' at line: " + yyline + ", column: " + yycolumn);
    } else {
        System.out.println("Error: Unmatched closing parenthesis ')' at line: " + yyline + ", column: " + yycolumn);
    }
}

// ;
{SEMICOLON} {
    System.out.println("Found semicolon ';' at line: " + yyline + ", column: " + yycolumn);
}

// Finish reading the line
\n {
    if (!parenthesesStack.isEmpty()) {
        System.out.println("\nError: Unmatched opening parenthesis '(' at end of line " + yyline);
    }
}

// Check end of file  '\n'
<<EOF>> {
    if (!parenthesesStack.isEmpty()) {
        System.out.println("\nError: Unmatched opening parenthesis '(' before EOF");
    } else {
        System.out.println("\nNo unmatched parentheses found. Parsing completed.");
    }
    System.exit(0);  // Stops work at the end of file processing
}
