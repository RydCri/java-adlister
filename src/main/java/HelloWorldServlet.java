import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name="HelloWorldServlet",urlPatterns = "/hello")
public class HelloWorldServlet extends HttpServlet {
    public static int count = 0;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
        PrintWriter out = res.getWriter();
        out.println("<h1>Hello Servlet</h1>");
        res.getWriter().println("Page count: " + count);
        count++;
        out.println("</div>");
    }
}
