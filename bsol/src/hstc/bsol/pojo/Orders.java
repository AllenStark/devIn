package hstc.bsol.pojo;

import java.util.List;

public class Orders {
	private int orderid;
	private int userid;
	private String consignee;
	private String phone;
	private String address;
	private double total;
	private int orderstatus;
	private String chgdate;
	private List<OrderItem> orderItemList;
	
	public List<OrderItem> getOrderItemList() {
		return orderItemList;
	}

	public void setOrderItemList(List<OrderItem> orderItemList) {
		this.orderItemList = orderItemList;
	}

	public Orders() {}
	
	public Orders(int orderid, int userid, String consignee, String phone, String address, Double total,
			int orderstatus, String chgdate) {
		super();
		this.orderid = orderid;
		this.userid = userid;
		this.consignee = consignee;
		this.phone = phone;
		this.address = address;
		this.total = total;
		this.orderstatus = orderstatus;
		this.chgdate = chgdate;
	}

	@Override
	public String toString() {
		return "orders [orderid=" + orderid + ", userid=" + userid + ", consignee=" + consignee + ", phone=" + phone
				+ ", address=" + address + ", total=" + total + ", orderstatus=" + orderstatus + ", chgdate=" + chgdate
				+ "]";
	}

	public int getOrderid() {
		return orderid;
	}

	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}

	public int getUserid() {
		return userid;
	}

	public void setUserid(int userid) {
		this.userid = userid;
	}

	public String getConsignee() {
		return consignee;
	}

	public void setConsignee(String consignee) {
		this.consignee = consignee;
	}

	public String getPhone() {
		return phone;
	}
	
	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}

	public int getOrderstatus() {
		return orderstatus;
	}

	public void setOrderstatus(int orderstatus) {
		this.orderstatus = orderstatus;
	}

	public String getChgdate() {
		return chgdate;
	}

	public void setChgdate(String chgdate) {
		this.chgdate = chgdate;
	}
	
	
}
