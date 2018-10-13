package hstc.bsol.pojo;

public class Admin {
	private int	adminid;		
	private String adminname;	
	private String adminpwd;	
	private String adminregdate;
	private int issuperadmin;	
	
	public Admin() {}

	public Admin(int adminid, String adminname, String adminpwd, String adminregdate, int issuperadmin) {
		super();
		this.adminid = adminid;
		this.adminname = adminname;
		this.adminpwd = adminpwd;
		this.adminregdate = adminregdate;
		this.issuperadmin = issuperadmin;
	}

	public int getAdminid() {
		return adminid;
	}

	public void setAdminid(int adminid) {
		this.adminid = adminid;
	}

	public String getAdminname() {
		return adminname;
	}

	public void setAdminname(String adminname) {
		this.adminname = adminname;
	}

	public String getAdminpwd() {
		return adminpwd;
	}

	public void setAdminpwd(String adminpwd) {
		this.adminpwd = adminpwd;
	}

	public String getAdminregdate() {
		return adminregdate;
	}

	public void setAdminregdate(String adminregdate) {
		this.adminregdate = adminregdate;
	}

	public int getIssuperadmin() {
		return issuperadmin;
	}

	public void setIssuperadmin(int issuperadmin) {
		this.issuperadmin = issuperadmin;
	}

	@Override
	public String toString() {
		return "Admin [adminid=" + adminid + ", adminname=" + adminname + ", adminpwd=" + adminpwd + ", adminregdate="
				+ adminregdate + ", issuperadmin=" + issuperadmin + "]";
	}
	
	

}
