import org.antlr.v4.runtime.*;
//import org.antlr.v4.runtime.tree.*;
import java.util.Hashtable;

public class Driver {
    public static void main(String[] args) throws Exception {
        Hashtable<Integer, String> tokens = new Hashtable<Integer, String>();
        tokens.put(1, "KEYWORD");
        tokens.put(2, "IDENTIFIER");
        tokens.put(3, "INTLITERAL");
        tokens.put(4, "FLOATLITERAL");
        tokens.put(5, "STRINGLITERAL");
        tokens.put(6, "COMMENT");
        tokens.put(7, "OPERATOR");

        // creates a CharStream that reads from standard input
        // ANTLRInputStream input = new ANTLRInputStream(System.in);
        CharStream input = CharStreams.fromString(tokens.get(1) + tokens.get(2) + tokens.get(3) +
                tokens.get(4) + tokens.get(5) + tokens.get(6) + tokens.get(7));

        // lexer that feeds off of input CharStream
        Little lexer = new Little(input);

        while (true) {
            Token token = lexer.getToken();
            if (token.getType() == Token.EOF) {
                break;
            }

            System.out.println("Token Type: " + tokens.get(token.getType()));
            System.out.println("Value: " + token.getText());
        }
    }
}
