package hstc.bsol.dao.impl;

import java.util.List;

import hstc.bsol.dao.OrdersDao;
import hstc.bsol.pojo.Orders;
import hstc.bsol.tool.DbUtil;

public class OrdersDaoImpl implements OrdersDao {
	// 根据用户id查询所有订单的记录数
	@Override
	public int queryOrderCountsByUserid(int userid) {
		String sql = "select * from orders where userid =? and orderstatus not in (5)";
		Object[] obj = {userid};
		List<Orders> orderList = DbUtil.getBeanClassQuery(Orders.class, sql, obj);
		return orderList.size();
	}
	// 根据用户id分页查询所有订单信息
	@Override
	public List<Orders> queryAllOrdersByUserid(int userid,int pageNo,int pageSize) {
		String sql = "select * from orders where userid =? and orderstatus not in (5) limit ?,?";
		Object[] obj = {userid,(pageNo-1)*pageSize,pageSize};
		List<Orders> orderList = DbUtil.getBeanClassQuery(Orders.class, sql, obj);
		return orderList;
	}
	
	// 根据用户id和订单状态获取该状态下的订单数量
	@Override
		public int queryOrdersCountByUseridAndOrderstatus(int userid,int orderstatus){
		String sql = "select * from orders where userid =? and orderstatus =? and orderid in (select orderid from orderitem where evastatus = 0)";
		Object[] obj = {userid,orderstatus};
		List<Orders> orderList = DbUtil.getBeanClassQuery(Orders.class, sql, obj);
		if(orderList.isEmpty()) {
			return 0;
		}
		else {
			return orderList.size();
		}
	}
	//根据订单号取消订单
	@Override
	public boolean cancelOrderByOrderid(int orderid) {
		String sql = "update orders set orderstatus = 5 where orderid =?";
		Object[] obj = {orderid};
		return DbUtil.executeUpdate(sql, obj);
	}
		
	//根据订单号删除订单
	@Override
	public boolean deleteOrderByOrderid(int orderid) {
		String sql = "delete from orders where orderid =?";
		Object[] obj = {orderid};
		return DbUtil.executeUpdate(sql, obj);
	}
	//确认收货,将订单状态由3变为4
	@Override
	public boolean updateOrderstatusByOrderid(int orderstatus,int orderid) {
		String sql = " update orders set orderstatus = ?,chgdate=now() where orderid=?";
		Object[] obj= {orderstatus,orderid};
		return DbUtil.executeUpdate(sql, obj);
	}
	
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
	public Orders queryOrdersByOrderid(int orderid) {
		String sql ="select * from orders where orderid=?";
		Object[] obj= {orderid};
		List<Orders> list = DbUtil.getBeanClassQuery(Orders.class, sql, obj);
		return list.get(0);
	}
}
