

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class DirectorLoginServlet
 */
public class DirectorLoginServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int no = Integer.parseInt(request.getParameter("DirectorId"));
		String name = request.getParameter("DirectorName");
		if(no == 576 && name.equals("harsha")) {
			response.sendRedirect("Directorview.jsp");
		}else {
			response.sendRedirect("Invalid_admin.jsp");
		}
	}

}
