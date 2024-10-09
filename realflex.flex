import java.util.*;

%%

%class MySearcher
%standalone
%line
%column
%unicode
%public

%{
    boolean isQuoteOpened = false;  // สถานะการเปิดเครื่องหมายคำพูด
    StringBuilder currentString = new StringBuilder();  // เก็บข้อความในเครื่องหมายคำพูด
%}

/* Macros */
DOUBLE_QUOTE = \"|\u201C|\u201D

%%

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
        System.out.println("string: " + currentString.toString());
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
    System.exit(0);  // หยุดการทำงานเมื่อสิ้นสุดการประมวลผลไฟล์
}