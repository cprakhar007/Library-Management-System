package org.library.springlibrary.service;

import java.util.List;

import org.library.springlibrary.model.Librarian;

public interface LibrarianService {
	
	public Librarian getLibrarianById(int id);

	public Librarian getLibrarianByEmail(String email);
	
	public Librarian getLibrarianByEmailAndPassword(String email, String password);

	public List<Librarian> getLibrarians();

	public Librarian postLibrarian(Librarian librarian);

	public Librarian putLibrarian(Librarian librarian);

	public void deleteLibrarianById(int id);
}
