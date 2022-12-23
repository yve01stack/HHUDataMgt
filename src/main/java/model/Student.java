package model;

/**
 * User.java
 * This is a model class represents a Student entity
 * @author yvestack01c
 *
 */

public class Student {
	protected int id;
	protected String student_no;
	protected String name;
	protected String email;
	protected String country;
	protected String college;


	public Student() {
	}
	
	public Student(String student_no, String name, String email, String country, String college) {
		super();
		this.student_no = student_no;
		this.name = name;
		this.email = email;
		this.country = country;
		this.college = college;
	}

	public Student(int id, String student_no, String name, String email, String country, String college) {
		super();
		this.id = id;
		this.student_no = student_no;
		this.name = name;
		this.email = email;
		this.country = country;
		this.college = college;
	}

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getStudent_no() {
		return student_no;
	}
	public void setStudent_no(String student_no) {
		this.student_no = student_no;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getCountry() {
		return country;
	}
	public void setCountry(String country) {
		this.country = country;
	}
	public String getCollege() {
		return college;
	}
	public void setCollege(String college) {
		this.college = college;
	}
}
