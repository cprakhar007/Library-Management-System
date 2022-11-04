package org.library.springlibrary.model;

public enum LibrarianWebClientURI {

	GET_LIBRARIAN_BY_ID("/librarian-service/librarians/{id}"),
	GET_LIBRARIAN_BY_EMAIL("/librarian-service/librarians/email-id/{id}"),
	GET_LIBRARIANS("/librarian-service/librarians/all-librarians"),
	GET_LIBRARIANS_BY_EMAIL_AND_ID("/librarian-service/librarians"),
	POST_LIBRARIAN("/librarian-service/librarians"),
	PUT_LIBRARIAN("/librarian-service/librarians"),
	DELETE_LIBRARIAN("/librarian-service/librarians"),
	DELETE_LIBRARIAN_BY_ID("/librarian-service/librarians/{id}");
	
	private String uri;
	
	private LibrarianWebClientURI(String uri) {
		this.uri = uri;
	}
	
	public String getURI() {
		return uri;
	}
	
}
