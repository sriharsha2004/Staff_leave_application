

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

/**
 * Servlet implementation class AdminAddStaffServlet
 */
public class AdminAddStaffServlet extends HttpServlet {	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int no  = Integer.parseInt(request.getParameter("staffid"));
		String name = request.getParameter("staffname"); 
		int leaves = 10;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con  = DriverManager.getConnection("jdbc:mysql://localhost:3306/Project","****","****");
			PreparedStatement ps = con.prepareStatement("Insert into Staff(sno,sname,leaves) values(?,?,?)");
			ps.setInt(1,no);
			ps.setString(2,name);	
			ps.setInt(3, leaves);
			ps.executeUpdate();
			response.sendRedirect("adminlogincomplete.jsp");
		}
		catch(Exception e) {
			System.out.print(e);
		}		
	}

}
