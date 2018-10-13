package hstc.bsol.pojo;

public class Book {
	private long isbn;			
	private String bookname;	
	private String author;		
	private int page;			
	private double price;		
	private String publishdate;	
	private String publishhouse;
	private String introduction;
	private int stocks;			
	private String typeid;		
	private int status;			
	private String coverimg;	
	
	public Book() {}
	
	public Book(long isbn, String bookname, String author, int page, double price, String publishdate,
			String publishhouse, String introduction, int stocks, String typeid, int status, String coverimg) {
		super();
		this.isbn = isbn;
		this.bookname = bookname;
		this.author = author;
		this.page = page;
		this.price = price;
		this.publishdate = publishdate;
		this.publishhouse = publishhouse;
		this.introduction = introduction;
		this.stocks = stocks;
		this.typeid = typeid;
		this.status = status;
		this.coverimg = coverimg;
	}

	public long getIsbn() {
		return isbn;
	}
	public void setIsbn(long isbn) {
		this.isbn = isbn;
	}
	public String getBookname() {
		return bookname;
	}
	public void setBookname(String bookname) {
		this.bookname = bookname;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getPublishdate() {
		return publishdate;
	}
	public void setPublishdate(String publishdate) {
		this.publishdate = publishdate;
	}
	public String getPublishhouse() {
		return publishhouse;
	}
	public void setPublishhouse(String publishhouse) {
		this.publishhouse = publishhouse;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	public int getStocks() {
		return stocks;
	}
	public void setStocks(int stocks) {
		this.stocks = stocks;
	}
	public String getTypeid() {
		return typeid;
	}
	public void setTypeid(String typeid) {
		this.typeid = typeid;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getCoverimg() {
		return coverimg;
	}
	public void setCoverimg(String coverimg) {
		this.coverimg = coverimg;
	}

	@Override
	public String toString() {
		return "Book [isbn=" + isbn + ", bookname=" + bookname + ", author=" + author + ", page=" + page + ", price="
				+ price + ", publishdate=" + publishdate + ", publishhouse=" + publishhouse + ", introduction="
				+ introduction + ", stocks=" + stocks + ", typeid=" + typeid + ", status=" + status + ", coverimg="
				+ coverimg + "]";
	}
	
	
	
}
