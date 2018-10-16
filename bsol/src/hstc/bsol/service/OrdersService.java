package hstc.bsol.service;

import hstc.bsol.dao.OrdersDao;
import hstc.bsol.dao.impl.OrdersDaoImpl;
import hstc.bsol.pojo.Orders;

public class OrdersService {
	/**
	 * 插入一条订单记录
	 * @param orders
	 * @return
	 */
	OrdersDao ordersDao = new OrdersDaoImpl();
	public boolean insertOrder(Orders orders) {
		return ordersDao.insertOrder(orders);
	}
	/**
	 * 获取最新插入数据库的订单号
	 * @param userid
	 * @return
	 */
	public int queryOrderidByUseridAndMaxdate(int userid) {
		return ordersDao.queryOrderidByUseridAndMaxdate(userid);
	}
	/**
	 * 根据订单id修改订单状态
	 * @param orderid
	 * @return
	 */
	public boolean updateOrderstatusByOrderid(int orderstatus,int orderid) {
		return ordersDao.updateOrderstatusByOrderid(orderstatus,orderid);
	}
	/**
	 * 根据订单id得到订单信息
	 * @param orderid
	 * @return
	 */
	public Orders queryOrdersByOrderid(int orderid) {
		return ordersDao.queryOrdersByOrderid(orderid);
	}
}
