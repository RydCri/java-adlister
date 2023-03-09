import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/Hey")
public class HeyServlet extends HttpServlet {
@Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException{
    PrintWriter out  = res.getWriter();
        out.println("<h1 style=\"color:red\">Hey Servlet</h1>");
    }
}
