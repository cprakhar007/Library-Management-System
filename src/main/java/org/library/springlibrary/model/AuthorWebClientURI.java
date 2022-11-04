package org.library.springlibrary.model;

public enum AuthorWebClientURI {
	GET_AUTHOR_BY_ID("/author-service/authors/{id}"),
	GET_AUTHOR_BY_NAME("/author-service/authors/name/{name}"),
	GET_AUTHORS("/author-service/authors"),
	POST_AUTHOR("/author-service/authors"),
	PUT_AUTHOR("/author-service/authors"),
	DELETE_AUTHOR_BY_ID("/author-service/authors/{id}"),
	DELETE_AUTHOR("/author-service/authors");
	
	private String uri;
	
	private AuthorWebClientURI(String uri) {
		this.uri=uri;
	}
	
	public String getURI() {
		return uri;
	}
	

}
