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

public class AddPageServlet extends HttpServlet{
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/jsp");
		PrintWriter out = response.getWriter();
		
		String carname = request.getParameter("carname");
		
		String carpricestring = request.getParameter("carprice") ;
		int carpriceint = Integer.parseInt(request.getParameter("carprice"));
		
		String mileagestring=request.getParameter("mileage");
		int mileageint = Integer.parseInt(request.getParameter("mileage"));
		
		String fueltypestring = request.getParameter("fueltype");
		
		
		String transmission = request.getParameter("transmission");
		
		String seatingcapstring = request.getParameter("seatingcap");
		int seatingcapint = Integer.parseInt(request.getParameter("seatingcap"));
		
		try {
			if (!carname.isEmpty() && !carpricestring.isEmpty() && !mileagestring.isEmpty() && !fueltypestring.isEmpty() && !transmission.isEmpty() && !seatingcapstring.isEmpty()) {
				
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydatabase", "root",
						"ajayonmysql");
				System.out.println("db connected");

				PreparedStatement ps = con.prepareStatement("insert into cars_detail (CarName, CarPrice, Mileage, FuelType, Transmission, SeatingCapacity) values(?,?,?,?,?,?)");

				ps.setString(1, carname);
				ps.setLong(2, carpriceint);
				ps.setLong(3, mileageint);
				ps.setString(4, fueltypestring);
				ps.setString(5, transmission);
				ps.setLong(6, seatingcapint);

				int i = ps.executeUpdate();
				if (i > 0) {
					response.sendRedirect(request.getContextPath() + "/AddPage.jsp");
				}
			} else {
				out.print("Try Again, Fill complete form.");
				RequestDispatcher rd = request.getRequestDispatcher("AddPage.jsp");
				rd.include(request, response);
			}
		} catch (Exception ex) {
			System.out.println("Register ex: " + ex.getMessage());
			out.print("An error occured during Adding Car in Database");
		}
		out.close();
		
		
		
	}
	
	

}
