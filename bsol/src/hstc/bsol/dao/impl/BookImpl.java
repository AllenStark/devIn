package hstc.bsol.dao.impl;

import java.util.List;

import hstc.bsol.dao.BookDao;
import hstc.bsol.pojo.Book;
import hstc.bsol.tool.DbUtil;

public class BookImpl implements BookDao {
	// 查询所有图书
	@Override
	public List<Book> queryAllBook() {
		String sql = "select * from book";
		Object[] obj = {};
		List<Book> bookList = DbUtil.getBeanClassQuery(Book.class, sql, obj);
		return bookList;
	}

	// 根据书号查询所有图书
	public Book queryOneBookByIsbn(Long isbn) {
		String sql = "select * from book where isbn =?";
		Object[] obj = { isbn };
		List<Book> bookList = DbUtil.getBeanClassQuery(Book.class, sql, obj);
		if (bookList.isEmpty()) {
			return null;
		} else {
			return bookList.get(0);
		}
	}

}
