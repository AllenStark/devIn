package hstc.bsol.dao;

import java.util.List;

import hstc.bsol.pojo.OrderItem;

public interface OrderitemDao {
	/**
	 * 根据订单号获取订单信息
	 * @param Orderid
	 * @return
	 */
	public List<OrderItem> queryOrderitemByOrderid(int orderid);
	/**
	 * 根据订单号和书号更新订单评价信息
	 * @param orderid
	 * @param isbn
	 * @return
	 */
	public boolean updateEvaluation(OrderItem orderitem);
}
