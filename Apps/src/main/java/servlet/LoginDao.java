package servlet;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginDao {

	public static boolean validate(String name, String pass) {
		boolean status = false;
		try {
			if (!name.isEmpty() && !pass.isEmpty()) {
				Class.forName("com.mysql.cj.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/mydatabase", "root",
						"ajayonmysql");

				PreparedStatement ps = con.prepareStatement("select * from registeruser where name=? and pass=?");
				ps.setString(1, name);
				ps.setString(2, pass);

				ResultSet resultSet = ps.executeQuery();

				if (resultSet.next()) {
					status = true;
				}
			}
		} catch (Exception e) {
			System.out.println(e);
		}

		return status;
	}
}
