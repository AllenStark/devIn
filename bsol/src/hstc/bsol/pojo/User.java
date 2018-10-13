package hstc.bsol.pojo;

public class User {
	private int id;
	private String username;
	private String password;
	private int gender;
	private String consignee;
	private String address;
	private String phone;
	private String tiedmail;
	private String date;
	
	public User() {}
	
	public User(int id, String username, String password, int gender, String tiedmail) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.gender = gender;
		this.tiedmail = tiedmail;
	}

	public User(int id, String username, String password, int gender, String consignee, String address, String phone,
			String tiedmail, String date) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.gender = gender;
		this.consignee = consignee;
		this.address = address;
		this.phone = phone;
		this.tiedmail = tiedmail;
		this.date = date;
	}



	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public int getGender() {
		return gender;
	}
	public void setGender(int gender) {
		this.gender = gender;
	}
	public String getConsignee() {
		return consignee;
	}
	public void setConsignee(String consignee) {
		this.consignee = consignee;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getTiedmail() {
		return tiedmail;
	}
	public void setTiedmail(String tiedmail) {
		this.tiedmail = tiedmail;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	@Override
	public String toString() {
		return "User [id=" + id + ", username=" + username + ", password=" + password + ", gender=" + gender
				+ ", consignee=" + consignee + ", address=" + address + ", phone=" + phone + ", tiedmail=" + tiedmail
				+ ", date=" + date + "]";
	}
	
}
