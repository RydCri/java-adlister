import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/hello")
public class HelloWorldServlet extends HttpServlet {
    public static int count = 0;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
        String name = req.getParameter("name");
        PrintWriter out = res.getWriter();
        out.println("<div style=\"background:black;color:white;\"<h1 style=\"font-size:3em;\">imma finna http POST</h1>");
        out.println("<form method=\"POST\" action=\"/submit\"><label for=\"name\">Name:</label> <input id=\"name\" name=\"name\" placeholder=\"Enter ur name pls\" /><input id=\"submit\" type=\"submit\"></form>");
        res.getWriter().println("Page count: " + count);
        count++;
        out.println("</div>");
    }
    @WebServlet("/submit")
    public class submitServlet extends HttpServlet {
        @Override
        protected void doGet(HttpServletRequest req, HttpServletResponse res) throws IOException {
            PrintWriter slout = res.getWriter();
            slout.println("<h1 style=\"font-size:3em;\">You submitted lmao</h1>");
        }
    }
}
