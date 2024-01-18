

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 * Servlet implementation class LeaveApplied
 */
public class LeaveAppliedServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int no = Integer.parseInt(request.getParameter("Id"));
		String name = request.getParameter("name");
		String selected = request.getParameter("leaveType");
		String reason = request.getParameter("reason");
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Project","****","****");
			PreparedStatement ps = con.prepareStatement("Select * from Staff where sno=?");
			ps.setInt(1,no);
			ResultSet resultset = ps.executeQuery();
			if(resultset.next()) {
				if(no == resultset.getInt("sno") && name.equals(resultset.getString("sname"))){		
				PreparedStatement ps1 = con.prepareStatement("Update Staff set reason=? where sno = ?");
					ps1.setString(1,reason);
					ps1.setInt(2,no);
					ps1.executeUpdate();
					PreparedStatement ps2 = con.prepareStatement("Update Staff set appliedstatus=? where sno = ?");
					ps2.setInt(1,1);
					ps2.setInt(2,no);
					ps2.executeUpdate();
					response.sendRedirect("leaveAppliedmsg.jsp");
				}
				else{
					response.sendRedirect("InvalidStaff.jsp");
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
