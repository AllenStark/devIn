package hstc.bsol.service;

import java.util.List;

import hstc.bsol.dao.OrdersDao;
import hstc.bsol.dao.impl.OrdersDaoImpl;
import hstc.bsol.pojo.Orders;

public class OrdersService {
	OrdersDaoImpl ordersDaoImpl = null;

	public OrdersService() {
		ordersDaoImpl = new OrdersDaoImpl();
	}

	// 根据用户id查询所有订单的记录数
	public int queryOrderCountsByUserid(int userid) {
		return ordersDaoImpl.queryOrderCountsByUserid(userid);
	}

	// 根据用户id分页查询所有订单信息
	public List<Orders> queryAllOrdersByUserid(int userid, int pageNo, int pageSize) {
		return ordersDaoImpl.queryAllOrdersByUserid(userid, pageNo, pageSize);
	}

	// 根据用户id和订单状态获取该状态下的订单数量
	public int queryOrdersCountByUseridAndOrderstatus(int userid, int orderstatus) {
		return ordersDaoImpl.queryOrdersCountByUseridAndOrderstatus(userid, orderstatus);
	}

	// 根据订单号取消订单
	public boolean cancelOrderByOrderid(int orderid) {
		return ordersDaoImpl.cancelOrderByOrderid(orderid);
	}

	// 根据订单号删除订单
	public boolean deleteOrderByOrderid(int orderid) {
		return ordersDaoImpl.deleteOrderByOrderid(orderid);
	}
	
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
