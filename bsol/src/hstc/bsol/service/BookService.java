package hstc.bsol.service;

import java.util.List;

import hstc.bsol.impl.BookImpl;
import hstc.bsol.pojo.Book;

public class BookService {
	BookImpl bookImpl = null;

	public BookService() {
		bookImpl = new BookImpl();
	}

	// 查询所有图书
	public List<Book> queryAllBook() {
		return bookImpl.queryAllBook();
	}

	// 根据书号查询所有图书
	public Book queryOneBookByIsbn(Long isbn) {
		return bookImpl.queryOneBookByIsbn(isbn);
	}
}
