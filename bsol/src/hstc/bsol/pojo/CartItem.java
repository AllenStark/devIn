package hstc.bsol.pojo;

import java.text.DecimalFormat;


public class CartItem {
	private int	userid;
	private long isbn;
	private int cartitemcount;
	private double subtotal;
	private Book book;
	public Book getBook() {
//		BookService bookService = new BookService();
//		book = bookService.queryOneBookByIsbn(isbn);
		return book;
	}
	
	public double getSubtotal() {
		DecimalFormat df = new DecimalFormat("0.00");
		double subtotal = this.book.getPrice()*this.cartitemcount;
		String strSubtotal = df.format(subtotal);
		subtotal = Double.parseDouble(strSubtotal);
		return subtotal;
	}

	public void setSubtotal(double subtotal) {
		this.subtotal = subtotal;
	}

	public void setBook(Book book) {
		this.book = book;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public long getIsbn() {
		return isbn;
	}

	public void setIsbn(long isbn) {
		this.isbn = isbn;
	}

	public int getCartitemcount() {
		return cartitemcount;
	}

	public void setCartitemcount(int cartitemcount) {
		this.cartitemcount = cartitemcount;
	}

	public CartItem() {
		super();
	}

	public CartItem(int userid, long isbn, int cartitemcount) {
		this.userid = userid;
		this.isbn = isbn;
		this.cartitemcount = cartitemcount;
	}
	
	public CartItem(int cartitemcount, int userid, long isbn) {
		super();
		this.userid = userid;
		this.isbn = isbn;
		this.cartitemcount = cartitemcount;
	}

	public CartItem(int userid, long isbn) {
		this.userid = userid;
		this.isbn = isbn;
	}

	@Override
	public String toString() {
		return "CartItem [userid=" + userid + ", isbn=" + isbn + ", cartitemcount=" + cartitemcount + ", subtotal="
				+ subtotal + ", book=" + book + "]";
	}
	
}
