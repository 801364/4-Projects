import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public class JDBCConnect {
	public static void main(String[] args) {

		try (FileReader filereader = new FileReader("C:\\Users\\Biplab\\OneDrive\\Documents\\JSP\\Day2\\TCNVijayaPrj-20211214-TechBlog\\src\\db.properties");) {

			Properties dbProperties = new Properties();

			dbProperties.load(filereader);

			try (Connection conn = DriverManager.getConnection(dbProperties.getProperty("url"), dbProperties);) {

				boolean b = conn.isValid(0);

				if (b) {

					Statement stmt = conn.createStatement();
					ResultSet rs = stmt.executeQuery("SELECT * FROM sampledb.sample");

					while (rs.next()) {

						System.out.print(rs.getString("Username") + " ");
						System.out.print(rs.getInt("Password") + " ");
					}
				}
			}
		} catch (SQLException | IOException e) {
			System.out.println(e.getMessage());
		}
	}
}