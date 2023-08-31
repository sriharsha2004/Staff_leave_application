

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

/**
 * Servlet implementation class CoordinatorLoginServlet
 */
public class CoordinatorLoginServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int no = Integer.parseInt(request.getParameter("cordinatorid"));
		String name = request.getParameter("cordinatorName");
		if(no == 576 && name.equals("harsha")) {
			response.sendRedirect("Coordinatorview.jsp");
		}else {
			response.sendRedirect("Invalid_admin.jsp");
		}
	}

}
