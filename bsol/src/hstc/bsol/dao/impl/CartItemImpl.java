package hstc.bsol.dao.impl;

import java.util.List;

import hstc.bsol.dao.CartItemDao;
import hstc.bsol.pojo.CartItem;
import hstc.bsol.tool.DbUtil;

public class CartItemImpl implements CartItemDao {
	// 加入购物项
	@Override
	public boolean insertCartItem(CartItem cartItem) {
		String sql = "insert into cartitem values(?,?,?)";
		Object[] obj = { cartItem.getUserid(), cartItem.getIsbn(), cartItem.getCartitemcount() };
		return DbUtil.executeUpdate(sql, obj);
	}

	// 查询购物项的数量
	@Override
	public int queryCartitemcountByUseridAndIsbn(CartItem cartItem) {
		String sql = "select cartitemcount from cartitem  where userid=? and isbn=?";
		Object[] obj = { cartItem.getUserid(), cartItem.getIsbn() };
		List<CartItem> cartItemList = DbUtil.getBeanClassQuery(CartItem.class, sql, obj);
		if (cartItemList.isEmpty()) {
			return 0;
		} else {
			return cartItemList.get(0).getCartitemcount();
		}
	}

	// 更改购物车项的数量
	@Override
	public boolean updateCartItemCountByUseridAndIsbn(CartItem cartItem) {
		String sql = "update cartitem set cartitemcount =? where userid=? and isbn=?";
		Object[] obj = { cartItem.getCartitemcount(), cartItem.getUserid(), cartItem.getIsbn() };
		return DbUtil.executeUpdate(sql, obj);
	}

	// 查询单个用户的购物车
	@Override
	public List<CartItem> queryCartItemByUserid(int userid) {
		String sql = "select * from cartitem where userid=?";
		Object[] obj = { userid };
		List<CartItem> cartItemList = DbUtil.getBeanClassQuery(CartItem.class, sql, obj);
		return cartItemList;
	}

	// 根据用户id和书号查询购物项
	@Override
	public CartItem queryCartItemByUseridAndIsbn(CartItem cartItem) {
		String sql = "select * from cartitem where userid =? and isbn =?";
		Object[] obj = { cartItem.getUserid(), cartItem.getIsbn() };
		List<CartItem> cartItemList = DbUtil.getBeanClassQuery(CartItem.class, sql, obj);
		if (cartItemList.isEmpty()) {
			return null;
		} else {
			return cartItemList.get(0);
		}
	}

	// 根据用户id和书号删除购物项
	@Override
	public boolean deleteCartItemByUseridAndIsbn(CartItem cartItem) {
		String sql = "delete from cartitem where userid =? and isbn =?";
		Object[] obj = { cartItem.getUserid(), cartItem.getIsbn() };
		return DbUtil.executeUpdate(sql, obj);
	}

	// 根据用户id和书号模糊查询购物车
	public List<CartItem> queryCartItemsByUseridAndIsbn(CartItem cartItem) {
		String sql = "select * from cartitem where userid =? and isbn like ? ";
		Object[] obj = { cartItem.getUserid(), "%"+cartItem.getIsbn()+ "%" };
		List<CartItem> cartItemList = DbUtil.getBeanClassQuery(CartItem.class, sql, obj);
		return cartItemList;
	}

}
