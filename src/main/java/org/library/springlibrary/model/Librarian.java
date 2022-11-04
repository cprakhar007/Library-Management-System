package org.library.springlibrary.model;

public class Librarian {

	private int id;
	private String username;
	private String email;
	private String encryptedPassword;

	public Librarian() {
		super();
	}

	public Librarian(String username, String email, String encryptedPassword) {
		super();
		this.username = username;
		this.email = email;
		this.encryptedPassword = encryptedPassword;
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

	public String getEncryptedPassword() {
		return encryptedPassword;
	}

	public void setEncryptedPassword(String encryptedPassword) {
		this.encryptedPassword = encryptedPassword;
	}
	
}
