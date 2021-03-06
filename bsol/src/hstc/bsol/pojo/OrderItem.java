package hstc.bsol.pojo;

public class OrderItem {
	private int orderid;
	private long isbn;
	private int orderitemcount;	
	private double subtotal;	
	private int evastatus;	
	private String evacontent;	
	private String evadate;	
	private String evaimg;
	private int evagrade;	
	private Book book;

	public OrderItem() {}
	 
	public OrderItem(int orderid, long isbn, int orderitemcount, double subtotal, int evastatus, String evacontent,
			String evadate, String evaimg, int evagrade,Book book) {
		super();
		this.orderid = orderid;
		this.isbn = isbn;
		this.orderitemcount = orderitemcount;
		this.subtotal = subtotal;
		this.evastatus = evastatus;
		this.evacontent = evacontent;
		this.evadate = evadate;
		this.evaimg = evaimg;
		this.evagrade = evagrade;
		this.book = book;
	}

	public int getOrderid() {
		return orderid;
	}

	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}

	public long getIsbn() {
		return isbn;
	}

	public void setIsbn(long isbn) {
		this.isbn = isbn;
	}

	public int getOrderitemcount() {
		return orderitemcount;
	}

	public void setOrderitemcount(int orderitemcount) {
		this.orderitemcount = orderitemcount;
	}

	public double getSubtotal() {
		return subtotal;
	}

	public void setSubtotal(double subtotal) {
		this.subtotal = subtotal;
	}

	public int getEvastatus() {
		return evastatus;
	}

	public void setEvastatus(int evastatus) {
		this.evastatus = evastatus;
	}

	public String getEvacontent() {
		return evacontent;
	}

	public void setEvacontent(String evacontent) {
		this.evacontent = evacontent;
	}

	public String getEvadate() {
		return evadate;
	}

	public void setEvadate(String evadate) {
		this.evadate = evadate;
	}

	public String getEvaimg() {
		return evaimg;
	}

	public void setEvaimg(String evaimg) {
		this.evaimg = evaimg;
	}

	public int getEvagrade() {
		return evagrade;
	}

	public void setEvagrade(int evagrade) {
		this.evagrade = evagrade;
	}

	public Book getBook() {
		return book;
	}



	public void setBook(Book book) {
		this.book = book;
	}

	

	public OrderItem(int orderid, long isbn, String evacontent, String evaimg, int evagrade) {
		this.orderid = orderid;
		this.isbn = isbn;
		this.evacontent = evacontent;
		this.evaimg = evaimg;
		this.evagrade = evagrade;
	}

	

	public OrderItem(int orderid, long isbn, int orderitemcount, double subtotal) {
		this.orderid = orderid;
		this.isbn = isbn;
		this.orderitemcount = orderitemcount;
		this.subtotal = subtotal;
	}

	@Override
	public String toString() {
		return "OrderItem [orderid=" + orderid + ", isbn=" + isbn + ", orderitemcount=" + orderitemcount + ", subtotal="
				+ subtotal + ", evastatus=" + evastatus + ", evacontent=" + evacontent + ", evadate=" + evadate
				+ ", evaimg=" + evaimg + ", evagrade=" + evagrade + ",book=" + book + "]";
	}

	
	

}
