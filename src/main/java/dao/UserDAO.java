package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import model.User;

/**
 * AbstractDAO.java This DAO class provides CRUD database operations for the
 * table users in the database.
 * 
 * @author yvestack01c
 *
 */
public class UserDAO {
	private String jdbcURL = "jdbc:mysql://localhost:3306/hhudatamgt?useSSL=false";
	private String jdbcUsername = "root";
	private String jdbcPassword = "Yvestack01$";

	private static final String INSERT_USERS_SQL = "INSERT INTO users" + "  (username, email, fullname, password) VALUES "
			+ " (?, ?, ?, ?);";

	private static final String SELECT_USER_BY_LOGIN = "select * from users where username = ? and password = ?";
	public UserDAO() {
	}

	protected Connection getConnection() {
		Connection connection = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return connection;
	}

	public void insertUser(User user) throws SQLException {
		System.out.println(INSERT_USERS_SQL);
		// try-with-resource statement will auto close the connection.
		try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
			preparedStatement.setString(1, user.getUsername());
			preparedStatement.setString(2, user.getEmail());
			preparedStatement.setString(3, user.getFullname());
			preparedStatement.setString(4, user.getPassword());			
			System.out.println(preparedStatement);
			preparedStatement.executeUpdate();
		} catch (SQLException e) {
			printSQLException(e);
		}
	}
	
	
	 public boolean validate(String userName, String userPassword){
	        boolean status = false;

	     // Step 1: Establishing a Connection
			try (Connection connection = getConnection();
					// Step 2:Create a statement using connection object
					PreparedStatement preparedStatement = connection.prepareStatement(SELECT_USER_BY_LOGIN);) {
				preparedStatement.setString(1, userName);	            
				preparedStatement.setString(2, userPassword);
				System.out.println(preparedStatement);
				// Step 3: Execute the query or update query
				ResultSet rs = preparedStatement.executeQuery();
	            status = rs.next();

	        } catch (SQLException e) {
	            // process sql exception
	            printSQLException(e);
	        }
	        return status;
	    }


	private void printSQLException(SQLException ex) {
		for (Throwable e : ex) {
			if (e instanceof SQLException) {
				e.printStackTrace(System.err);
				System.err.println("SQLState: " + ((SQLException) e).getSQLState());
				System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
				System.err.println("Message: " + e.getMessage());
				Throwable t = ex.getCause();
				while (t != null) {
					System.out.println("Cause: " + t);
					t = t.getCause();
				}
			}
		}
	}

}
