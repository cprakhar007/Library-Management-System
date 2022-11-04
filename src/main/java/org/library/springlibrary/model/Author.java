package org.library.springlibrary.model;


public class Author {


	private int id;
	
	private String name;
	
	public Author() {
		super();
	}
	
	public Author(int id, String name) {
		this.name = name;
		this.id = id;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

}
