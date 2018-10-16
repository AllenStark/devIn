package hstc.bsol.dao.impl;

import java.util.List;

import hstc.bsol.dao.OrdersDao;
import hstc.bsol.pojo.Orders;
import hstc.bsol.tool.DbUtil;

public class OrdersDaoImpl implements OrdersDao{

	@Override
	public boolean insertOrder(Orders orders) {
		String sql = "insert into orders values(null,?,?,?,?,?,1,now())";
		Object[] obj = {orders.getUserid(),orders.getConsignee(),orders.getPhone(),orders.getAddress(),orders.getTotal()};
		return DbUtil.executeUpdate(sql, obj);
	}

	@Override
	public int queryOrderidByUseridAndMaxdate(int userid) {
		String sql ="select orderid from orders where chgdate=(select max(chgdate) from orders  where orderstatus=1 and userid=?)";
		Object[] obj= {userid};
		List<Orders> list = DbUtil.getBeanClassQuery(Orders.class, sql, obj);
		return list.get(0).getOrderid();
	}

	@Override
	public boolean updateOrderstatusByOrderid(int orderstatus,int orderid) {
		String sql = " update orders set orderstatus = ?,chgdate=now() where orderid=?";
		Object[] obj= {orderstatus,orderid};
		return DbUtil.executeUpdate(sql, obj);
	}

	@Override
	public Orders queryOrdersByOrderid(int orderid) {
		String sql ="select * from orders where orderid=?";
		Object[] obj= {orderid};
		List<Orders> list = DbUtil.getBeanClassQuery(Orders.class, sql, obj);
		return list.get(0);
	}
	
}
