import org.antlr.v4.runtime.*;

public class Driver
{
    public static void main(String[] args) throws Exception
    {
        CharStream iStream = CharStreams.fromStream(System.in); 
        LittleLexer lexer = new LittleLexer(iStream);
        CommonTokenStream tStream = new CommonTokenStream(lexer);
        LittleParser parser = new LittleParser(tStream);
        parser.removeErrorListeners();
        parser.program();
        if(parser.getNumberOfSyntaxErrors() < 1)
        {
            System.out.println("Accepted");
        }
        else
        {
            System.out.println("Not accepted");
        }
    }
}

