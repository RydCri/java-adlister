import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Random;
import java.util.Scanner;
@WebServlet
public class Guessing extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        request.getRequestDispatcher("/Guess-game.jsp").forward(request,response);
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        Random random = new Random();
        int rand = random.nextInt(3 -1) + 1;
        System.out.println("random is " + rand);
        String guess = request.getParameter("guess");
        System.out.println(guess);
        if(Integer.parseInt(guess)== rand) {
            response.sendRedirect("/Correct");
        }else{
            response.sendRedirect("/Incorrect");
        }
    }
}
