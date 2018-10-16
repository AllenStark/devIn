package hstc.bsol.dao;

import hstc.bsol.pojo.Orders;

public interface OrdersDao {
	/**
	 * 插入一条订单记录
	 * @param orders
	 * @return
	 */
	public boolean insertOrder(Orders orders);
	/**
	 * 获取最新插入数据库的订单号
	 * @param userid
	 * @return
	 */
	public int queryOrderidByUseridAndMaxdate(int userid);
	/**
	 * 根据订单id修改订单状态
	 * @param orderid
	 * @return
	 */
	public boolean updateOrderstatusByOrderid(int orderstatus,int orderid);
	/**
	 * 根据订单id得到订单信息
	 * @param orderid
	 * @return
	 */
	public Orders queryOrdersByOrderid(int orderid);
}
