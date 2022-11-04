package org.library.springlibrary.service;

import java.util.List;

import org.library.springlibrary.model.Author;

public interface AuthorService {
	
	public Author getAuthorById(int id);

	public Author getAuthorByName(String name);

	public List<Author> getAuthors();

	public Author postAuthor(Author author);

	public Author putAuthor(Author author);

	public void deleteAuthorById(int id);
}
