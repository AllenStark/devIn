package hstc.bsol.service;

import java.util.List;

import hstc.bsol.dao.impl.BookDaoImpl;
import hstc.bsol.pojo.Book;

public class BookService {
	BookDaoImpl bookDaoImpl = null;

	public BookService() {
		bookDaoImpl = new BookDaoImpl();
	}

	// 查询所有图书
	public List<Book> queryAllBook() {
		return bookDaoImpl.queryAllBook();
	}

	// 根据书号查询所有图书
	public Book queryOneBookByIsbn(long isbn) {
		return bookDaoImpl.queryOneBookByIsbn(isbn);
	}
}
