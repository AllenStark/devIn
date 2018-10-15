package hstc.bsol.dao;

import java.util.List;

import hstc.bsol.pojo.CartItem;

public interface CartItemDao {
	// 加入购物车
	public boolean insertCartItem(CartItem cartItem);

	// 查询购物项中商品的数量
	public int queryCartitemcountByUseridAndIsbn(CartItem cartItem);

	// 修改购物项中商品的数量
	public boolean updateCartItemCountByUseridAndIsbn(CartItem cartItem);

	// 查看单个用户的购物车列表
	public List<CartItem> queryCartItemByUserid(int userid);

	// 根据书号和用户id查询购物项
	public CartItem queryCartItemByUseridAndIsbn(CartItem cartItem);

	// 根据用户id和书号删除购物项
	public boolean deleteCartItemByUseridAndIsbn(CartItem cartItem);

	// 根据用户id和书号模糊查询购物车
	public List<CartItem> queryCartItemsByUseridAndIsbn(CartItem cartItem);
}
