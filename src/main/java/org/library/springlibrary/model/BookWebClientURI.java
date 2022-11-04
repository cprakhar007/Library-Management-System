package org.library.springlibrary.model;

public enum BookWebClientURI {

	GET_BOOK_BY_ID("/book-service/books/{id}"),
	GET_BOOKS("/book-service/books"),
	POST_BOOK("/book-service/books"),
	PUT_BOOK("/book-service/books"),
	DELETE_BOOK_BY_ID("/book-service/books/{id}");
	
	private String uri;
	
	private BookWebClientURI(String uri) {
		this.uri=uri;
	}
	
	public String getURI() {
		return uri;
	}
	
}
