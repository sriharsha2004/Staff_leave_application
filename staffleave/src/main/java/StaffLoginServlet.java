

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.DriverManager;
import java.sql.*;

/**
 * Servlet implementation class StaffLoginServlet
 */
public class StaffLoginServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int no = Integer.parseInt(request.getParameter("staffid"));
		String password = request.getParameter("staffname");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Project","****","****");
			PreparedStatement ps = con.prepareStatement("Select * from Staff where sno=?");
			ps.setInt(1,no);
			ResultSet resultset = ps.executeQuery();
			if(resultset.next()) {
				int status = resultset.getInt("directorleavestatus");
				boolean nullstatus = resultset.wasNull();
				PreparedStatement ps1 = con.prepareStatement("update Staff set directorleavestatus=null where sno=?");
				ps1.setInt(1,no);
				ps1.executeUpdate();	
				if(nullstatus) {
					response.sendRedirect("Staffvalidatedata.jsp");
				}
				else if(status == 1) {
					response.sendRedirect("responsepositivestaffdata.jsp");
				}
				else if(status == 0) {
					response.sendRedirect("responsenegativestaffdata.jsp");
				}
			}else {
				response.sendRedirect("InvalidStaff.jsp");
			}
		}
		catch(Exception e) {
			System.out.println(e);
		}		
	}
}
