import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name="CorrectServlet", urlPatterns = "/Correct")
public class CorrectServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
        request.getRequestDispatcher("/Guess-game.jsp").forward(request,response);
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException{
        System.out.println("Correct");
    }
}
