import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/ads/index")
public class AdServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String ads = request.getParameter("ads");
        request.setAttribute("ads", ads);
        request.setAttribute("ads", DaoFactory.getAdsDao().all());
        request.getRequestDispatcher("/ads/index.jsp").forward(request, response);
    }
}