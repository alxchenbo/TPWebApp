package org.tutorial;

import java.util.List;

public interface BookService {

	List<Book> getAllBooks();

	List<Book> getBooksByTitle(String searchText);
}
