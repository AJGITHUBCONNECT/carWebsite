package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RegisterServlet extends HttpServlet {
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		String userName = request.getParameter("userName");
		String userPass = request.getParameter("userPass");
		String userEmail = request.getParameter("userEmail");
		String userCountry = request.getParameter("userCountry");

		try {
			if (!userName.isEmpty() && !userPass.isEmpty() && !userEmail.isEmpty() && !userCountry.isEmpty()) {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydatabase", "root", "ajayonmysql");
				System.out.println("connected");

				PreparedStatement ps = con.prepareStatement("insert into registeruser values(?,?,?,?)");

				ps.setString(1, userName);
				ps.setString(2, userPass);
				ps.setString(3, userEmail);
				ps.setString(4, userCountry);

				int i = ps.executeUpdate();
				if (i > 0) {
					response.sendRedirect(request.getContextPath() + "/HomePage.jsp");
				}
			} else {
				out.print("Try Again, Fill complete form.");
				RequestDispatcher rd = request.getRequestDispatcher("register.html");
				rd.include(request, response);
			}
		} catch (Exception ex) {
			System.out.println("Register ex: " + ex.getMessage());
			out.print("An error occured during registration");
		}
		out.close();

	}

}
