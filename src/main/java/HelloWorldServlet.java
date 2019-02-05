import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet(name = "HelloWorldServlet", urlPatterns = "/hello")

public class HelloWorldServlet extends HttpServlet {
private int pageVisits = 0;
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        pageVisits += 1;
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String userName = request.getParameter("name");
        String queryString = request.getQueryString();
        if (queryString == null){
            out.println("<h1>Hello, World!</h1>");
        }else {
            out.format("<h1>Hello, %s!</h1>\n", userName);
        }
        out.format("<h1>Page visits: %s!</h1>\n", pageVisits);
    }
}




