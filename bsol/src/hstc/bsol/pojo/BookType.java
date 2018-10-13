package hstc.bsol.pojo;

public class BookType {
	private String typeid;
	private String typename;
	private String parentnum;
	
	public BookType() {
		
	}

	public BookType(String typeid, String typename, String parentnum) {
		super();
		this.typeid = typeid;
		this.typename = typename;
		this.parentnum = parentnum;
	}

	public String getTypeid() {
		return typeid;
	}

	public void setTypeid(String typeid) {
		this.typeid = typeid;
	}

	public String getTypename() {
		return typename;
	}

	public void setTypename(String typename) {
		this.typename = typename;
	}

	public String getParentnum() {
		return parentnum;
	}

	public void setParentnum(String parentnum) {
		this.parentnum = parentnum;
	}

	@Override
	public String toString() {
		return "BookType [typeid=" + typeid + ", typename=" + typename + ", parentnum=" + parentnum + "]";
	}
	
	
	
}
