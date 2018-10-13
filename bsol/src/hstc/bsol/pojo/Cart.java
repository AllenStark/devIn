package hstc.bsol.pojo;

public class Cart {
	private int	userid;
	private long isbn;
	private int cartitemcount;

	public Cart() {}

	public Cart(int userid, long isbn, int cartitemcount) {
		super();
		this.userid = userid;
		this.isbn = isbn;
		this.cartitemcount = cartitemcount;
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

	@Override
	public String toString() {
		return "Cart [userid=" + userid + ", isbn=" + isbn + ", cartitemcount=" + cartitemcount + "]";
	}
	
	
}
