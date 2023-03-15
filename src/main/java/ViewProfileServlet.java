import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "ViewProfileServlet", urlPatterns = "/profile")
public class ViewProfileServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        if(session.getAttribute("LoggedIn") == null) {
            response.sendRedirect("/login");
            System.out.println("Session attribute LoggedIn not detected");
        }
        else if ((boolean)session.getAttribute("LoggedIn") != true) {
            response.sendRedirect("/login");
            System.out.println("Session attribute LoggedIn not detected");
        } else
            request.getRequestDispatcher("/WEB-INF/profile.jsp").forward(request, response);
        System.out.println("Session attribute LoggedIn: " + session.getAttribute("LoggedIn"));
        }
    }