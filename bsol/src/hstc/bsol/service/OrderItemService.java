package hstc.bsol.service;

import java.util.List;

import hstc.bsol.dao.OrderitemDao;
import hstc.bsol.dao.impl.OrderitemDaoImpl;
import hstc.bsol.pojo.OrderItem;

public class OrderItemService {
	OrderitemDao orderItemDao = new OrderitemDaoImpl();
	/**
	 * 根据订单号获取订单信息
	 * @param Orderid
	 * @return
	 */
	public List<OrderItem> queryOrderitemByOrderid(int orderid){
		return orderItemDao.queryOrderitemByOrderid(orderid);
	}
	/**
	 * 根据订单号和书号更新订单评价信息
	 * @param orderid
	 * @param isbn
	 * @return
	 */
	public boolean updateEvaluation(OrderItem orderitem) {
		return orderItemDao.updateEvaluation(orderitem);
	}
	/**
	 * 插入订单项纪录
	 * @param orderitem
	 * @return
	 */
	public boolean insertOrderitem(OrderItem orderitem) {
		return orderItemDao.insertOrderitem(orderitem);
	}
}
