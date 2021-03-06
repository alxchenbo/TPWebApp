package org.tutorial;

import java.util.List;

public interface BookDAO {

	List<Book> findByAll();

	List<Book> findByTitle(String searchText);
}
