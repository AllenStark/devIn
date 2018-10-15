package hstc.bsol.service;

import java.util.List;

import hstc.bsol.dao.impl.CartItemDaoImpl;
import hstc.bsol.pojo.CartItem;

public class CartItemService {
	CartItemDaoImpl cartItemDaoImpl = null;

	public CartItemService() {
		cartItemDaoImpl = new CartItemDaoImpl();
	}

	// 加入购物项
	public boolean insertCartItem(CartItem cartItem) {
		return cartItemDaoImpl.insertCartItem(cartItem);
	}

	// 更改购物车项的数量
	public boolean updateCartItemCountByUseridAndIsbn(CartItem cartItem) {
		return cartItemDaoImpl.updateCartItemCountByUseridAndIsbn(cartItem);
	}

	// 查询购物项的数量
	public int queryCartitemcountByUseridAndIsbn(CartItem cartItem) {
		return cartItemDaoImpl.queryCartitemcountByUseridAndIsbn(cartItem);
	}

	// 查询单个用户的购物车
	public List<CartItem> queryCartItemByUserid(int userid) {
		return cartItemDaoImpl.queryCartItemByUserid(userid);
	}

	// 根据用户id和书号查询购物项
	public CartItem queryCartItemByUseridAndIsbn(CartItem cartItem) {
		return cartItemDaoImpl.queryCartItemByUseridAndIsbn(cartItem);
	}

	// 根据用户id和书号删除购物项
	public boolean deleteCartItemByUseridAndIsbn(CartItem cartItem) {
		return cartItemDaoImpl.deleteCartItemByUseridAndIsbn(cartItem);
	}

	// 根据用户id和书号模糊查询购物车
	public List<CartItem> queryCartItemsByUseridAndIsbn(CartItem cartItem) {
		return cartItemDaoImpl.queryCartItemsByUseridAndIsbn(cartItem);
	}
}
