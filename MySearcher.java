// DO NOT EDIT
// Generated by JFlex 1.9.1 http://jflex.de/
// source: realflex.flex

import java.util.*;


@SuppressWarnings("fallthrough")
public class MySearcher {

  /** This character denotes the end of file. */
  public static final int YYEOF = -1;

  /** Initial size of the lookahead buffer. */
  private static final int ZZ_BUFFERSIZE = 16384;

  // Lexical states.
  public static final int YYINITIAL = 0;

  /**
   * ZZ_LEXSTATE[l] is the state in the DFA for the lexical state l
   * ZZ_LEXSTATE[l+1] is the state in the DFA for the lexical state l
   *                  at the beginning of a line
   * l is of the form l = 2*k, k a non negative integer
   */
  private static final int ZZ_LEXSTATE[] = {
     0, 0
  };

  /**
   * Top-level table for translating characters to character classes
   */
  private static final int [] ZZ_CMAP_TOP = zzUnpackcmap_top();

  private static final String ZZ_CMAP_TOP_PACKED_0 =
    "\1\0\5\u0100\1\u0200\1\u0300\1\u0100\5\u0400\1\u0500\1\u0600"+
    "\1\u0700\6\u0100\1\u0800\1\u0900\1\u0a00\1\u0b00\1\u0c00\1\u0d00"+
    "\211\u0100\1\u0600\1\u0100\1\u0e00\1\u0f00\1\u1000\1\u1100\123\u0100"+
    "\1\u0900\4\u0100\1\u1200\10\u0100\1\u1300\2\u0100\1\u1400\1\u1500"+
    "\1\u1100\1\u0100\1\u0500\1\u0100\1\u1600\1\u1300\1\u0800\3\u0100"+
    "\1\u1000\1\u1700\114\u0100\1\u1800\1\u1000\153\u0100\1\u1900\11\u0100"+
    "\1\u1a00\1\u1100\6\u0100\1\u1000\u0f16\u0100";

  private static int [] zzUnpackcmap_top() {
    int [] result = new int[4352];
    int offset = 0;
    offset = zzUnpackcmap_top(ZZ_CMAP_TOP_PACKED_0, offset, result);
    return result;
  }

  private static int zzUnpackcmap_top(String packed, int offset, int [] result) {
    int i = 0;       /* index in packed string  */
    int j = offset;  /* index in unpacked array */
    int l = packed.length();
    while (i < l) {
      int count = packed.charAt(i++);
      int value = packed.charAt(i++);
      do result[j++] = value; while (--count > 0);
    }
    return j;
  }


  /**
   * Second-level tables for translating characters to character classes
   */
  private static final int [] ZZ_CMAP_BLOCKS = zzUnpackcmap_blocks();

  private static final String ZZ_CMAP_BLOCKS_PACKED_0 =
    "\12\0\1\1\2\0\1\2\22\0\1\3\1\4\1\5"+
    "\2\0\1\6\1\7\3\0\1\10\1\11\1\0\1\12"+
    "\1\0\1\13\12\14\2\0\1\15\1\16\1\15\2\0"+
    "\32\17\1\0\1\20\2\0\1\21\1\0\1\22\2\17"+
    "\1\23\1\24\1\25\1\17\1\26\1\27\2\17\1\30"+
    "\1\17\1\31\1\32\1\33\1\17\1\34\1\35\1\36"+
    "\2\17\1\37\3\17\1\0\1\40\u01e3\0\12\41\206\0"+
    "\12\41\306\0\12\41\234\0\12\41\166\0\12\41\140\0"+
    "\12\41\166\0\12\41\106\0\12\41\u0116\0\12\41\106\0"+
    "\12\41\u0146\0\12\41\46\0\12\41\u012c\0\12\41\200\0"+
    "\12\41\246\0\12\41\6\0\12\41\266\0\12\41\126\0"+
    "\12\41\206\0\12\41\6\0\12\41\u0176\0\12\41\46\0"+
    "\12\41\306\0\12\41\26\0\12\41\126\0\12\41\u0196\0"+
    "\12\41\246\0\12\41\206\0\12\41\u012c\0\12\41\200\0"+
    "\12\41\74\0\12\41\220\0\12\41\166\0\12\41\146\0"+
    "\12\41\206\0\12\41\106\0\12\41\266\0\12\41\u0164\0"+
    "\62\41\100\0\12\41\266\0";

  private static int [] zzUnpackcmap_blocks() {
    int [] result = new int[6912];
    int offset = 0;
    offset = zzUnpackcmap_blocks(ZZ_CMAP_BLOCKS_PACKED_0, offset, result);
    return result;
  }

  private static int zzUnpackcmap_blocks(String packed, int offset, int [] result) {
    int i = 0;       /* index in packed string  */
    int j = offset;  /* index in unpacked array */
    int l = packed.length();
    while (i < l) {
      int count = packed.charAt(i++);
      int value = packed.charAt(i++);
      do result[j++] = value; while (--count > 0);
    }
    return j;
  }

  /**
   * Translates DFA states to action switch labels.
   */
  private static final int [] ZZ_ACTION = zzUnpackAction();

  private static final String ZZ_ACTION_PACKED_0 =
    "\1\0\1\1\3\2\1\1\1\3\1\4\1\1\3\4"+
    "\1\5\1\4\1\6\1\7\10\6\1\1\1\5\1\4"+
    "\1\0\1\10\1\0\1\2\1\7\1\11\2\6\1\12"+
    "\5\6\2\0\1\2\7\6\1\0\1\2\1\13\4\6"+
    "\1\14\1\15\1\6\1\16\2\6\1\17\1\20\3\6"+
    "\1\21\1\22";

  private static int [] zzUnpackAction() {
    int [] result = new int[71];
    int offset = 0;
    offset = zzUnpackAction(ZZ_ACTION_PACKED_0, offset, result);
    return result;
  }

  private static int zzUnpackAction(String packed, int offset, int [] result) {
    int i = 0;       /* index in packed string  */
    int j = offset;  /* index in unpacked array */
    int l = packed.length();
    while (i < l) {
      int count = packed.charAt(i++);
      int value = packed.charAt(i++);
      do result[j++] = value; while (--count > 0);
    }
    return j;
  }


  /**
   * Translates a state to a row index in the transition table
   */
  private static final int [] ZZ_ROWMAP = zzUnpackRowMap();

  private static final String ZZ_ROWMAP_PACKED_0 =
    "\0\0\0\42\0\42\0\104\0\146\0\210\0\252\0\146"+
    "\0\314\0\356\0\u0110\0\u0132\0\u0154\0\210\0\u0176\0\u0198"+
    "\0\u01ba\0\u01dc\0\u01fe\0\u0220\0\u0242\0\u0264\0\u0286\0\u02a8"+
    "\0\u02ca\0\u02ec\0\42\0\252\0\146\0\u030e\0\u0330\0\u0352"+
    "\0\u0176\0\u0374\0\u0396\0\u0176\0\u03b8\0\u03da\0\u03fc\0\u041e"+
    "\0\u0440\0\u0462\0\u0484\0\u04a6\0\u04c8\0\u04ea\0\u050c\0\u052e"+
    "\0\u0550\0\u0572\0\u0594\0\u05b6\0\u0462\0\u0176\0\u05d8\0\u05fa"+
    "\0\u061c\0\u063e\0\u0176\0\u0176\0\u0660\0\u0176\0\u0682\0\u06a4"+
    "\0\u0176\0\u0176\0\u06c6\0\u06e8\0\u070a\0\u0176\0\u0176";

  private static int [] zzUnpackRowMap() {
    int [] result = new int[71];
    int offset = 0;
    offset = zzUnpackRowMap(ZZ_ROWMAP_PACKED_0, offset, result);
    return result;
  }

  private static int zzUnpackRowMap(String packed, int offset, int [] result) {
    int i = 0;  /* index in packed string  */
    int j = offset;  /* index in unpacked array */
    int l = packed.length() - 1;
    while (i < l) {
      int high = packed.charAt(i++) << 16;
      result[j++] = high | packed.charAt(i++);
    }
    return j;
  }

  /**
   * The transition table of the DFA
   */
  private static final int [] ZZ_TRANS = zzUnpacktrans();

  private static final String ZZ_TRANS_PACKED_0 =
    "\1\2\1\3\1\4\1\5\1\6\1\7\1\10\1\11"+
    "\1\10\1\12\1\13\1\14\1\15\2\16\1\17\1\2"+
    "\1\20\1\17\1\21\1\22\2\17\1\23\1\17\1\24"+
    "\1\17\1\25\1\26\1\17\1\27\1\30\1\31\1\32"+
    "\3\2\1\0\1\2\2\0\1\2\5\0\2\2\1\0"+
    "\2\2\16\0\3\2\1\3\1\2\1\0\1\2\2\0"+
    "\1\2\5\0\2\2\1\0\2\2\16\0\2\2\42\0"+
    "\3\2\1\0\1\2\2\0\1\2\5\0\1\2\1\33"+
    "\1\0\2\2\16\0\2\2\1\34\1\0\3\34\1\35"+
    "\12\34\1\0\21\34\3\2\1\0\1\2\2\0\1\33"+
    "\5\0\2\2\1\0\2\2\16\0\2\2\11\0\1\10"+
    "\42\0\1\10\37\0\1\36\2\0\1\37\42\0\1\15"+
    "\24\0\1\15\14\0\1\17\2\0\1\17\1\0\1\40"+
    "\16\17\2\0\3\2\1\0\1\2\2\0\1\2\4\0"+
    "\1\40\2\2\1\40\1\2\1\20\16\40\2\2\14\0"+
    "\1\17\2\0\1\17\1\0\1\40\10\17\1\41\5\17"+
    "\16\0\1\17\2\0\1\17\1\0\1\40\6\17\1\42"+
    "\1\43\6\17\16\0\1\17\2\0\1\17\1\0\1\40"+
    "\3\17\1\44\12\17\16\0\1\17\2\0\1\17\1\0"+
    "\1\40\2\17\1\45\13\17\16\0\1\17\2\0\1\17"+
    "\1\0\1\40\12\17\1\46\3\17\16\0\1\17\2\0"+
    "\1\17\1\0\1\40\2\17\1\47\13\17\16\0\1\17"+
    "\2\0\1\17\1\0\1\40\4\17\1\50\11\17\16\0"+
    "\1\17\2\0\1\17\1\0\1\40\4\17\1\51\11\17"+
    "\2\0\3\2\1\0\1\2\2\0\1\2\5\0\2\2"+
    "\1\0\2\2\16\0\1\33\4\2\1\0\1\2\2\0"+
    "\1\2\4\0\1\15\2\2\1\0\2\2\16\0\1\2"+
    "\1\32\10\52\1\53\31\52\1\37\1\5\1\54\37\37"+
    "\14\0\1\40\2\0\1\40\1\0\17\40\16\0\1\17"+
    "\2\0\1\17\1\0\1\40\13\17\1\55\2\17\16\0"+
    "\1\17\2\0\1\17\1\0\1\40\1\17\1\56\14\17"+
    "\16\0\1\17\2\0\1\17\1\0\1\40\15\17\1\57"+
    "\16\0\1\17\2\0\1\17\1\0\1\40\5\17\1\60"+
    "\10\17\16\0\1\17\2\0\1\17\1\0\1\40\1\61"+
    "\15\17\16\0\1\17\2\0\1\17\1\0\1\40\2\17"+
    "\1\62\13\17\16\0\1\17\2\0\1\17\1\0\1\40"+
    "\5\17\1\63\10\17\2\0\10\52\1\64\41\52\1\64"+
    "\2\52\1\65\26\52\1\0\1\5\54\0\1\17\2\0"+
    "\1\17\1\0\1\40\2\17\1\66\13\17\16\0\1\17"+
    "\2\0\1\17\1\0\1\40\5\17\1\67\7\17\1\70"+
    "\16\0\1\17\2\0\1\17\1\0\1\40\6\17\1\71"+
    "\7\17\16\0\1\17\2\0\1\17\1\0\1\40\7\17"+
    "\1\72\6\17\16\0\1\17\2\0\1\17\1\0\1\40"+
    "\1\17\1\73\14\17\16\0\1\17\2\0\1\17\1\0"+
    "\1\40\7\17\1\74\6\17\16\0\1\17\2\0\1\17"+
    "\1\0\1\40\6\17\1\75\7\17\2\0\10\52\1\64"+
    "\2\52\1\5\26\52\14\0\1\17\2\0\1\17\1\0"+
    "\1\40\3\17\1\76\12\17\16\0\1\17\2\0\1\17"+
    "\1\0\1\40\4\17\1\77\11\17\16\0\1\17\2\0"+
    "\1\17\1\0\1\40\5\17\1\100\10\17\16\0\1\17"+
    "\2\0\1\17\1\0\1\40\14\17\1\101\1\17\16\0"+
    "\1\17\2\0\1\17\1\0\1\40\2\17\1\102\13\17"+
    "\16\0\1\17\2\0\1\17\1\0\1\40\5\17\1\103"+
    "\10\17\16\0\1\17\2\0\1\17\1\0\1\40\7\17"+
    "\1\104\6\17\16\0\1\17\2\0\1\17\1\0\1\40"+
    "\6\17\1\105\7\17\16\0\1\17\2\0\1\17\1\0"+
    "\1\40\2\17\1\106\13\17\16\0\1\17\2\0\1\17"+
    "\1\0\1\40\2\17\1\107\13\17\2\0";

  private static int [] zzUnpacktrans() {
    int [] result = new int[1836];
    int offset = 0;
    offset = zzUnpacktrans(ZZ_TRANS_PACKED_0, offset, result);
    return result;
  }

  private static int zzUnpacktrans(String packed, int offset, int [] result) {
    int i = 0;       /* index in packed string  */
    int j = offset;  /* index in unpacked array */
    int l = packed.length();
    while (i < l) {
      int count = packed.charAt(i++);
      int value = packed.charAt(i++);
      value--;
      do result[j++] = value; while (--count > 0);
    }
    return j;
  }


  /** Error code for "Unknown internal scanner error". */
  private static final int ZZ_UNKNOWN_ERROR = 0;
  /** Error code for "could not match input". */
  private static final int ZZ_NO_MATCH = 1;
  /** Error code for "pushback value was too large". */
  private static final int ZZ_PUSHBACK_2BIG = 2;

  /**
   * Error messages for {@link #ZZ_UNKNOWN_ERROR}, {@link #ZZ_NO_MATCH}, and
   * {@link #ZZ_PUSHBACK_2BIG} respectively.
   */
  private static final String ZZ_ERROR_MSG[] = {
    "Unknown internal scanner error",
    "Error: could not match input",
    "Error: pushback value was too large"
  };

  /**
   * ZZ_ATTRIBUTE[aState] contains the attributes of state {@code aState}
   */
  private static final int [] ZZ_ATTRIBUTE = zzUnpackAttribute();

  private static final String ZZ_ATTRIBUTE_PACKED_0 =
    "\1\0\3\1\1\11\2\1\1\11\23\1\1\0\1\11"+
    "\1\0\13\1\2\0\10\1\1\0\23\1";

  private static int [] zzUnpackAttribute() {
    int [] result = new int[71];
    int offset = 0;
    offset = zzUnpackAttribute(ZZ_ATTRIBUTE_PACKED_0, offset, result);
    return result;
  }

  private static int zzUnpackAttribute(String packed, int offset, int [] result) {
    int i = 0;       /* index in packed string  */
    int j = offset;  /* index in unpacked array */
    int l = packed.length();
    while (i < l) {
      int count = packed.charAt(i++);
      int value = packed.charAt(i++);
      do result[j++] = value; while (--count > 0);
    }
    return j;
  }

  /** Input device. */
  private java.io.Reader zzReader;

  /** Current state of the DFA. */
  private int zzState;

  /** Current lexical state. */
  private int zzLexicalState = YYINITIAL;

  /**
   * This buffer contains the current text to be matched and is the source of the {@link #yytext()}
   * string.
   */
  private char zzBuffer[] = new char[Math.min(ZZ_BUFFERSIZE, zzMaxBufferLen())];

  /** Text position at the last accepting state. */
  private int zzMarkedPos;

  /** Current text position in the buffer. */
  private int zzCurrentPos;

  /** Marks the beginning of the {@link #yytext()} string in the buffer. */
  private int zzStartRead;

  /** Marks the last character in the buffer, that has been read from input. */
  private int zzEndRead;

  /**
   * Whether the scanner is at the end of file.
   * @see #yyatEOF
   */
  private boolean zzAtEOF;

  /**
   * The number of occupied positions in {@link #zzBuffer} beyond {@link #zzEndRead}.
   *
   * <p>When a lead/high surrogate has been read from the input stream into the final
   * {@link #zzBuffer} position, this will have a value of 1; otherwise, it will have a value of 0.
   */
  private int zzFinalHighSurrogate = 0;

  /** Number of newlines encountered up to the start of the matched text. */
  private int yyline;

  /** Number of characters from the last newline up to the start of the matched text. */
  private int yycolumn;

  /** Number of characters up to the start of the matched text. */
  @SuppressWarnings("unused")
  private long yychar;

  /** Whether the scanner is currently at the beginning of a line. */
  @SuppressWarnings("unused")
  private boolean zzAtBOL = true;

  /** Whether the user-EOF-code has already been executed. */
  @SuppressWarnings("unused")
  private boolean zzEOFDone;

  /* user code: */
    Set<String> IdentifierSet = new HashSet<>();


  /**
   * Creates a new scanner
   *
   * @param   in  the java.io.Reader to read input from.
   */
  public MySearcher(java.io.Reader in) {
    this.zzReader = in;
  }


  /** Returns the maximum size of the scanner buffer, which limits the size of tokens. */
  private int zzMaxBufferLen() {
    return Integer.MAX_VALUE;
  }

  /**  Whether the scanner buffer can grow to accommodate a larger token. */
  private boolean zzCanGrow() {
    return true;
  }

  /**
   * Translates raw input code points to DFA table row
   */
  private static int zzCMap(int input) {
    int offset = input & 255;
    return offset == input ? ZZ_CMAP_BLOCKS[offset] : ZZ_CMAP_BLOCKS[ZZ_CMAP_TOP[input >> 8] | offset];
  }

  /**
   * Refills the input buffer.
   *
   * @return {@code false} iff there was new input.
   * @exception java.io.IOException  if any I/O-Error occurs
   */
  private boolean zzRefill() throws java.io.IOException {

    /* first: make room (if you can) */
    if (zzStartRead > 0) {
      zzEndRead += zzFinalHighSurrogate;
      zzFinalHighSurrogate = 0;
      System.arraycopy(zzBuffer, zzStartRead,
                       zzBuffer, 0,
                       zzEndRead - zzStartRead);

      /* translate stored positions */
      zzEndRead -= zzStartRead;
      zzCurrentPos -= zzStartRead;
      zzMarkedPos -= zzStartRead;
      zzStartRead = 0;
    }

    /* is the buffer big enough? */
    if (zzCurrentPos >= zzBuffer.length - zzFinalHighSurrogate && zzCanGrow()) {
      /* if not, and it can grow: blow it up */
      char newBuffer[] = new char[Math.min(zzBuffer.length * 2, zzMaxBufferLen())];
      System.arraycopy(zzBuffer, 0, newBuffer, 0, zzBuffer.length);
      zzBuffer = newBuffer;
      zzEndRead += zzFinalHighSurrogate;
      zzFinalHighSurrogate = 0;
    }

    /* fill the buffer with new input */
    int requested = zzBuffer.length - zzEndRead;
    int numRead = zzReader.read(zzBuffer, zzEndRead, requested);

    /* not supposed to occur according to specification of java.io.Reader */
    if (numRead == 0) {
      if (requested == 0) {
        throw new java.io.EOFException("Scan buffer limit reached ["+zzBuffer.length+"]");
      }
      else {
        throw new java.io.IOException(
            "Reader returned 0 characters. See JFlex examples/zero-reader for a workaround.");
      }
    }
    if (numRead > 0) {
      zzEndRead += numRead;
      if (Character.isHighSurrogate(zzBuffer[zzEndRead - 1])) {
        if (numRead == requested) { // We requested too few chars to encode a full Unicode character
          --zzEndRead;
          zzFinalHighSurrogate = 1;
        } else {                    // There is room in the buffer for at least one more char
          int c = zzReader.read();  // Expecting to read a paired low surrogate char
          if (c == -1) {
            return true;
          } else {
            zzBuffer[zzEndRead++] = (char)c;
          }
        }
      }
      /* potentially more input available */
      return false;
    }

    /* numRead < 0 ==> end of stream */
    return true;
  }


  /**
   * Closes the input reader.
   *
   * @throws java.io.IOException if the reader could not be closed.
   */
  public final void yyclose() throws java.io.IOException {
    zzAtEOF = true; // indicate end of file
    zzEndRead = zzStartRead; // invalidate buffer

    if (zzReader != null) {
      zzReader.close();
    }
  }


  /**
   * Resets the scanner to read from a new input stream.
   *
   * <p>Does not close the old reader.
   *
   * <p>All internal variables are reset, the old input stream <b>cannot</b> be reused (internal
   * buffer is discarded and lost). Lexical state is set to {@code ZZ_INITIAL}.
   *
   * <p>Internal scan buffer is resized down to its initial length, if it has grown.
   *
   * @param reader The new input stream.
   */
  public final void yyreset(java.io.Reader reader) {
    zzReader = reader;
    zzEOFDone = false;
    yyResetPosition();
    zzLexicalState = YYINITIAL;
    int initBufferSize = Math.min(ZZ_BUFFERSIZE, zzMaxBufferLen());
    if (zzBuffer.length > initBufferSize) {
      zzBuffer = new char[initBufferSize];
    }
  }

  /**
   * Resets the input position.
   */
  private final void yyResetPosition() {
      zzAtBOL  = true;
      zzAtEOF  = false;
      zzCurrentPos = 0;
      zzMarkedPos = 0;
      zzStartRead = 0;
      zzEndRead = 0;
      zzFinalHighSurrogate = 0;
      yyline = 0;
      yycolumn = 0;
      yychar = 0L;
  }


  /**
   * Returns whether the scanner has reached the end of the reader it reads from.
   *
   * @return whether the scanner has reached EOF.
   */
  public final boolean yyatEOF() {
    return zzAtEOF;
  }


  /**
   * Returns the current lexical state.
   *
   * @return the current lexical state.
   */
  public final int yystate() {
    return zzLexicalState;
  }


  /**
   * Enters a new lexical state.
   *
   * @param newState the new lexical state
   */
  public final void yybegin(int newState) {
    zzLexicalState = newState;
  }


  /**
   * Returns the text matched by the current regular expression.
   *
   * @return the matched text.
   */
  public final String yytext() {
    return new String(zzBuffer, zzStartRead, zzMarkedPos-zzStartRead);
  }


  /**
   * Returns the character at the given position from the matched text.
   *
   * <p>It is equivalent to {@code yytext().charAt(pos)}, but faster.
   *
   * @param position the position of the character to fetch. A value from 0 to {@code yylength()-1}.
   *
   * @return the character at {@code position}.
   */
  public final char yycharat(int position) {
    return zzBuffer[zzStartRead + position];
  }


  /**
   * How many characters were matched.
   *
   * @return the length of the matched text region.
   */
  public final int yylength() {
    return zzMarkedPos-zzStartRead;
  }


  /**
   * Reports an error that occurred while scanning.
   *
   * <p>In a well-formed scanner (no or only correct usage of {@code yypushback(int)} and a
   * match-all fallback rule) this method will only be called with things that
   * "Can't Possibly Happen".
   *
   * <p>If this method is called, something is seriously wrong (e.g. a JFlex bug producing a faulty
   * scanner etc.).
   *
   * <p>Usual syntax/scanner level error handling should be done in error fallback rules.
   *
   * @param errorCode the code of the error message to display.
   */
  private static void zzScanError(int errorCode) {
    String message;
    try {
      message = ZZ_ERROR_MSG[errorCode];
    } catch (ArrayIndexOutOfBoundsException e) {
      message = ZZ_ERROR_MSG[ZZ_UNKNOWN_ERROR];
    }

    throw new Error(message);
  }


  /**
   * Pushes the specified amount of characters back into the input stream.
   *
   * <p>They will be read again by then next call of the scanning method.
   *
   * @param number the number of characters to be read again. This number must not be greater than
   *     {@link #yylength()}.
   */
  public void yypushback(int number)  {
    if ( number > yylength() )
      zzScanError(ZZ_PUSHBACK_2BIG);

    zzMarkedPos -= number;
  }




  /**
   * Resumes scanning until the next regular expression is matched, the end of input is encountered
   * or an I/O-Error occurs.
   *
   * @return the next token.
   * @exception java.io.IOException if any I/O-Error occurs.
   */
  public int yylex() throws java.io.IOException
  {
    int zzInput;
    int zzAction;

    // cached fields:
    int zzCurrentPosL;
    int zzMarkedPosL;
    int zzEndReadL = zzEndRead;
    char[] zzBufferL = zzBuffer;

    int [] zzTransL = ZZ_TRANS;
    int [] zzRowMapL = ZZ_ROWMAP;
    int [] zzAttrL = ZZ_ATTRIBUTE;

    while (true) {
      zzMarkedPosL = zzMarkedPos;

      boolean zzR = false;
      int zzCh;
      int zzCharCount;
      for (zzCurrentPosL = zzStartRead  ;
           zzCurrentPosL < zzMarkedPosL ;
           zzCurrentPosL += zzCharCount ) {
        zzCh = Character.codePointAt(zzBufferL, zzCurrentPosL, zzMarkedPosL);
        zzCharCount = Character.charCount(zzCh);
        switch (zzCh) {
        case '\u000B':  // fall through
        case '\u000C':  // fall through
        case '\u0085':  // fall through
        case '\u2028':  // fall through
        case '\u2029':
          yyline++;
          yycolumn = 0;
          zzR = false;
          break;
        case '\r':
          yyline++;
          yycolumn = 0;
          zzR = true;
          break;
        case '\n':
          if (zzR)
            zzR = false;
          else {
            yyline++;
            yycolumn = 0;
          }
          break;
        default:
          zzR = false;
          yycolumn += zzCharCount;
        }
      }

      if (zzR) {
        // peek one character ahead if it is
        // (if we have counted one line too much)
        boolean zzPeek;
        if (zzMarkedPosL < zzEndReadL)
          zzPeek = zzBufferL[zzMarkedPosL] == '\n';
        else if (zzAtEOF)
          zzPeek = false;
        else {
          boolean eof = zzRefill();
          zzEndReadL = zzEndRead;
          zzMarkedPosL = zzMarkedPos;
          zzBufferL = zzBuffer;
          if (eof)
            zzPeek = false;
          else
            zzPeek = zzBufferL[zzMarkedPosL] == '\n';
        }
        if (zzPeek) yyline--;
      }
      zzAction = -1;

      zzCurrentPosL = zzCurrentPos = zzStartRead = zzMarkedPosL;

      zzState = ZZ_LEXSTATE[zzLexicalState];

      // set up zzAction for empty match case:
      int zzAttributes = zzAttrL[zzState];
      if ( (zzAttributes & 1) == 1 ) {
        zzAction = zzState;
      }


      zzForAction: {
        while (true) {

          if (zzCurrentPosL < zzEndReadL) {
            zzInput = Character.codePointAt(zzBufferL, zzCurrentPosL, zzEndReadL);
            zzCurrentPosL += Character.charCount(zzInput);
          }
          else if (zzAtEOF) {
            zzInput = YYEOF;
            break zzForAction;
          }
          else {
            // store back cached positions
            zzCurrentPos  = zzCurrentPosL;
            zzMarkedPos   = zzMarkedPosL;
            boolean eof = zzRefill();
            // get translated positions and possibly new buffer
            zzCurrentPosL  = zzCurrentPos;
            zzMarkedPosL   = zzMarkedPos;
            zzBufferL      = zzBuffer;
            zzEndReadL     = zzEndRead;
            if (eof) {
              zzInput = YYEOF;
              break zzForAction;
            }
            else {
              zzInput = Character.codePointAt(zzBufferL, zzCurrentPosL, zzEndReadL);
              zzCurrentPosL += Character.charCount(zzInput);
            }
          }
          int zzNext = zzTransL[ zzRowMapL[zzState] + zzCMap(zzInput) ];
          if (zzNext == -1) break zzForAction;
          zzState = zzNext;

          zzAttributes = zzAttrL[zzState];
          if ( (zzAttributes & 1) == 1 ) {
            zzAction = zzState;
            zzMarkedPosL = zzCurrentPosL;
            if ( (zzAttributes & 8) == 8 ) break zzForAction;
          }

        }
      }

      // store back cached position
      zzMarkedPos = zzMarkedPosL;

      if (zzInput == YYEOF && zzStartRead == zzCurrentPos) {
        zzAtEOF = true;
        return YYEOF;
      }
      else {
        switch (zzAction < 0 ? zzAction : ZZ_ACTION[zzAction]) {
          case 1:
            { throw new RuntimeException("Program terminated due to invalid character.");
            }
          // fall through
          case 19: break;
          case 2:
            { /* ignore */
            }
          // fall through
          case 20: break;
          case 3:
            { System.out.print(yytext());
            }
          // fall through
          case 21: break;
          case 4:
            { System.out.printf("operator: %s\n", yytext());
            }
          // fall through
          case 22: break;
          case 5:
            { System.out.printf("integer: %s", yytext());
            }
          // fall through
          case 23: break;
          case 6:
            { if (!IdentifierSet.contains(yytext())) System.out.printf("new identifier: %s\n", yytext());
    else System.out.printf("identifier \"%s\" already in symbol table\n", yytext());
    
    IdentifierSet.add(yytext());
            }
          // fall through
          case 24: break;
          case 7:
            { // แสดงข้อความข้อผิดพลาดและหยุดการทำงานเมื่อพบข้อความที่ไม่ได้อยู่ในเครื่องหมายคำพูด
    System.out.println("Error: String is not enclosed in double quotes: " + yytext());
    throw new RuntimeException("Program terminated due to string not enclosed in double quotes.");
            }
          // fall through
          case 25: break;
          case 8:
            { // ตรวจสอบว่ามีเครื่องหมาย ! ในสตริงหรือไม่
    // if (yytext().contains("!")) {
    //     System.out.println("Error: Exclamation mark ('!') found in string: " + yytext());
    //     throw new RuntimeException("Program terminated due to exclamation mark in string.");
    // } else {
        System.out.println("string: " + yytext());
    // }
            }
          // fall through
          case 26: break;
          case 9:
            { System.out.printf("keyword: do");
            }
          // fall through
          case 27: break;
          case 10:
            { System.out.printf("keyword: if");
            }
          // fall through
          case 28: break;
          case 11:
            { System.out.printf("keyword: else");
            }
          // fall through
          case 29: break;
          case 12:
            { System.out.printf("keyword: read");
            }
          // fall through
          case 30: break;
          case 13:
            { System.out.printf("keyword: then");
            }
          // fall through
          case 31: break;
          case 14:
            { System.out.printf("keyword: endif");
            }
          // fall through
          case 32: break;
          case 15:
            { System.out.printf("keyword: print");
            }
          // fall through
          case 33: break;
          case 16:
            { System.out.printf("keyword: while");
            }
          // fall through
          case 34: break;
          case 17:
            { System.out.printf("keyword: newline");
            }
          // fall through
          case 35: break;
          case 18:
            { System.out.printf("keyword: endwhile");
            }
          // fall through
          case 36: break;
          default:
            zzScanError(ZZ_NO_MATCH);
        }
      }
    }
  }

  /**
   * Runs the scanner on input files.
   *
   * This is a standalone scanner, it will print any unmatched
   * text to System.out unchanged.
   *
   * @param argv   the command line, contains the filenames to run
   *               the scanner on.
   */
  public static void main(String[] argv) {
    if (argv.length == 0) {
      System.out.println("Usage : java MySearcher [ --encoding <name> ] <inputfile(s)>");
    }
    else {
      int firstFilePos = 0;
      String encodingName = "UTF-8";
      if (argv[0].equals("--encoding")) {
        firstFilePos = 2;
        encodingName = argv[1];
        try {
          // Side-effect: is encodingName valid?
          java.nio.charset.Charset.forName(encodingName);
        } catch (Exception e) {
          System.out.println("Invalid encoding '" + encodingName + "'");
          return;
        }
      }
      for (int i = firstFilePos; i < argv.length; i++) {
        MySearcher scanner = null;
        java.io.FileInputStream stream = null;
        java.io.Reader reader = null;
        try {
          stream = new java.io.FileInputStream(argv[i]);
          reader = new java.io.InputStreamReader(stream, encodingName);
          scanner = new MySearcher(reader);
          while ( !scanner.zzAtEOF ) scanner.yylex();
        }
        catch (java.io.FileNotFoundException e) {
          System.out.println("File not found : \""+argv[i]+"\"");
        }
        catch (java.io.IOException e) {
          System.out.println("IO error scanning file \""+argv[i]+"\"");
          System.out.println(e);
        }
        catch (Exception e) {
          System.out.println("Unexpected exception:");
          e.printStackTrace();
        }
        finally {
          if (reader != null) {
            try {
              reader.close();
            }
            catch (java.io.IOException e) {
              System.out.println("IO error closing file \""+argv[i]+"\"");
              System.out.println(e);
            }
          }
          if (stream != null) {
            try {
              stream.close();
            }
            catch (java.io.IOException e) {
              System.out.println("IO error closing file \""+argv[i]+"\"");
              System.out.println(e);
            }
          }
        }
      }
    }
  }


}
