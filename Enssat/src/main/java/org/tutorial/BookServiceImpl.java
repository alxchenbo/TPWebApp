package org.tutorial;

import java.util.List;

public class BookServiceImpl implements BookService {

	// private BookDAO bookDAO = new BookDAOMockImpl();
	private BookDAO bookDAO = new BookDAOImpl();

	@Override
	public List<Book> getAllBooks() {
		return bookDAO.findByAll();
	}

	@Override
	public List<Book> getBooksByTitle(String searchText) {
		return bookDAO.findByTitle(searchText);
	}
}
