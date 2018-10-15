package hstc.bsol.dao.impl;

import java.util.List;

import hstc.bsol.dao.OrderitemDao;
import hstc.bsol.pojo.OrderItem;
import hstc.bsol.tool.DbUtil;

public class OrderitemDaoImpl implements OrderitemDao {

	@Override
	public List<OrderItem> queryOrderitemByOrderid(int orderid) {
		String sql = "select * from orderitem where orderid=?";
		Object[] obj= {orderid};
		List<OrderItem> list = DbUtil.getBeanClassQuery(OrderItem.class, sql, obj);
		return list;
	}

	@Override
	public boolean updateEvaluation(OrderItem orderitem) {
		String sql = "update orderitem set evastatus=1,evacontent=?,evadate=now(),evaimg=?,evagrade=?  where orderid=? and isbn=?";
		Object[] obj= {orderitem.getEvacontent(),orderitem.getEvaimg(),orderitem.getEvagrade(),orderitem.getOrderid(),orderitem.getIsbn()};
		return DbUtil.executeUpdate(sql, obj);
	}

}
