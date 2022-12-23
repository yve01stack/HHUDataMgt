package model;

/**
 * User.java
 * This is a model class represents a User entity
 * @author yvestack01c
 *
 */
public class User {
	protected int id;
	protected String username;
	protected String email;
	protected String fullname;
	protected String password;
	
	public User() {
	}
	
	public User(String username, String email, String fullname, String password) {
		super();
		this.username = username;
		this.email = email;
		this.fullname = fullname;
		this.password = password;
	}

	public User(int id, String username, String email, String fullname, String password) {
		super();
		this.id = id;
		this.username = username;
		this.email = email;
		this.fullname = fullname;		
		this.password = password;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getFullname() {
		return fullname;
	}
	public void setFullname(String fullname) {
		this.fullname = fullname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

}
