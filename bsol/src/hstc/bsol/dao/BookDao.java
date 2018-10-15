package hstc.bsol.dao;

import java.util.List;

import hstc.bsol.pojo.Book;

public interface BookDao {
	// 查询所有图书
	public List<Book> queryAllBook();

	// 根据书号查询所有图书
	public Book queryOneBookByIsbn(long isbn);
}
