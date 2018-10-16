package hstc.bsol.dao;

import java.util.List;

import hstc.bsol.pojo.Orders;

public interface OrdersDao {
	// 根据用户id查询所有订单的记录数
	public int queryOrderCountsByUserid(int userid);
	
	// 根据用户id分页查询所有订单信息
	/**
	 * 
	 * @param userid :用户id
	 * @param pageNo: 页码数
	 * @param pageSize: 每页显示的条目数
	 * @return
	 */
	public List<Orders> queryAllOrdersByUserid(int userid,int pageNo,int pageSize);

	// 根据用户id和订单状态获取该状态下的订单数量
	public int queryOrdersCountByUseridAndOrderstatus(int userid,int orderstatus);
	
	//根据订单号取消订单
	public boolean cancelOrderByOrderid(int orderid);
	
	//根据订单号删除订单
	public boolean deleteOrderByOrderid(int orderid);
	
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
